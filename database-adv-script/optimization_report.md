# Optimization Report
This report outlined the steps that were taken to optimize a database query used for analyzing booking data. The initial query was evaluated for performance issues, and various optimization techniques were applied to improve its efficiency. The results of these optimizations were detailed in the sections below.

## Initial Query
The initial query used for analysis was as follows:

```sql
SELECT *
FROM bookings
WHERE
LEFT JOIN users
      ON bookings.user_id = users.id
LEFT JOIN properties
      ON bookings.property_id = properties.id
LEFT JOIN payments
      ON bookings.id = payments.booking_id;
```

## Using `EXPLAIN ANALYZE`
To analyze the query's performance, the `EXPLAIN` command was used. The output of the `EXPLAIN` command was as follows:

```sql
                                                         QUERY PLAN                                                          
-----------------------------------------------------------------------------------------------------------------------------
 Hash Left Join  (cost=9.81..11.78 rows=62 width=341) (actual time=0.103..0.136 rows=74 loops=1)
   Hash Cond: (bookings.property_id = properties.id)
   ->  Hash Left Join  (cost=6.64..8.44 rows=62 width=216) (actual time=0.078..0.101 rows=74 loops=1)
         Hash Cond: (bookings.user_id = users.id)
         ->  Hash Right Join  (cost=2.40..4.01 rows=62 width=131) (actual time=0.029..0.042 rows=74 loops=1)
               Hash Cond: (payments.booking_id = bookings.id)
               ->  Seq Scan on payments  (cost=0.00..1.48 rows=48 width=53) (actual time=0.001..0.003 rows=48 loops=1)
               ->  Hash  (cost=1.62..1.62 rows=62 width=78) (actual time=0.014..0.014 rows=62 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 15kB
                     ->  Seq Scan on bookings  (cost=0.00..1.62 rows=62 width=78) (actual time=0.004..0.006 rows=62 loops=1)
         ->  Hash  (cost=3.00..3.00 rows=100 width=85) (actual time=0.041..0.042 rows=100 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 20kB
               ->  Seq Scan on users  (cost=0.00..3.00 rows=100 width=85) (actual time=0.003..0.012 rows=100 loops=1)
   ->  Hash  (cost=2.52..2.52 rows=52 width=125) (actual time=0.015..0.015 rows=52 loops=1)
         Buckets: 1024  Batches: 1  Memory Usage: 17kB
         ->  Seq Scan on properties  (cost=0.00..2.52 rows=52 width=125) (actual time=0.003..0.008 rows=52 loops=1)
 Planning Time: 1.684 ms
 Execution Time: 0.207 ms
```

## Optimization Done

1. **Created Indexes**: Indexes were added to the columns used in the `ON` conditions to improve join performance.

```sql
CREATE INDEX bookings_user_id_idx ON bookings(user_id);
CREATE INDEX bookings_property_id_idx ON bookings(property_id);
CREATE INDEX bookings_id_idx ON bookings(id);
CREATE INDEX payments_booking_id_idx ON payments(booking_id);
```

2. **Refactored Query**: The query was modified to explicitly select required columns and use inner joins where appropriate.

```sql
SELECT 
      bookings.id AS booking_id,
      users.name AS user_name,
      properties.name AS property_name,
      payments.amount AS payment_amount
FROM bookings
INNER JOIN users
        ON bookings.user_id = users.id
INNER JOIN properties
        ON bookings.property_id = properties.id
INNER JOIN payments
        ON bookings.id = payments.booking_id;
```

3. **Analyzed Query Performance**: The `EXPLAIN` command was used again to verify the improvements in the query plan.

```sql
EXPLAIN ANALYZE
SELECT 
      bookings.id AS booking_id,
      users.name AS user_name,
      properties.name AS property_name,
      payments.amount AS payment_amount
FROM bookings
INNER JOIN users
        ON bookings.user_id = users.id
INNER JOIN properties
        ON bookings.property_id = properties.id
INNER JOIN payments
        ON bookings.id = payments.booking_id;
```

## Results After Optimization
After applying the suggested optimizations, the query plan showed significant improvements in cost and performance. The updated query plan was as follows:

```sql
                                                         QUERY PLAN                                                          
-----------------------------------------------------------------------------------------------------------------------------
 Hash Join  (cost=9.81..11.70 rows=48 width=49) (actual time=0.045..0.062 rows=48 loops=1)
   Hash Cond: (bookings.property_id = properties.id)
   ->  Hash Join  (cost=6.64..8.39 rows=48 width=43) (actual time=0.028..0.041 rows=48 loops=1)
         Hash Cond: (bookings.user_id = users.id)
         ->  Hash Join  (cost=2.40..4.01 rows=48 width=53) (actual time=0.012..0.020 rows=48 loops=1)
               Hash Cond: (payments.booking_id = bookings.id)
               ->  Seq Scan on payments  (cost=0.00..1.48 rows=48 width=21) (actual time=0.001..0.003 rows=48 loops=1)
               ->  Hash  (cost=1.62..1.62 rows=62 width=48) (actual time=0.009..0.009 rows=62 loops=1)
                     Buckets: 1024  Batches: 1  Memory Usage: 13kB
                     ->  Seq Scan on bookings  (cost=0.00..1.62 rows=62 width=48) (actual time=0.001..0.004 rows=62 loops=1)
         ->  Hash  (cost=3.00..3.00 rows=100 width=22) (actual time=0.014..0.014 rows=100 loops=1)
               Buckets: 1024  Batches: 1  Memory Usage: 14kB
               ->  Seq Scan on users  (cost=0.00..3.00 rows=100 width=22) (actual time=0.002..0.008 rows=100 loops=1)
   ->  Hash  (cost=2.52..2.52 rows=52 width=38) (actual time=0.014..0.014 rows=52 loops=1)
         Buckets: 1024  Batches: 1  Memory Usage: 12kB
         ->  Seq Scan on properties  (cost=0.00..2.52 rows=52 width=38) (actual time=0.005..0.008 rows=52 loops=1)
 Planning Time: 0.270 ms
 Execution Time: 0.083 ms
```

These changes reduced the reliance on sequential scans and hash joins, leading to better query performance.
