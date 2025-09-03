# Index Performance Optimization
This document outlines the process of identifying high-usage columns in the `User`, `Booking`, and `Property` tables, creating appropriate indexes for those columns, and measuring query performance improvements.

## 1. Identify High-Usage Columns
To find high-usage columns one needs to analyze the SQL queries executed on the database to find out. These are typically found in:
- `WHERE` clauses
- `JOIN` conditions
- `ORDER BY` clauses

### High-Usage Columns:
- **User Table**: `email`
- **Booking Table**: `user_id`, `property_id`, `booking_date`
- **Property Table**: `location`, `price`

---

## 2. Create Indexes
Indexes significantly improve query performance by reducing the time it takes to locate rows in a table.The `CREATE INDEX` command is used to add indexes to columns. Here's the syntax:

```sql
CREATE INDEX index_name ON table_name(column_name);
```

### 
```sql
-- User Table
CREATE INDEX idx_user_email ON User(email);

-- Booking Table
CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_date ON Booking(booking_date);

-- Property Table
CREATE INDEX idx_property_location ON Property(location);
CREATE INDEX idx_property_price ON Property(price);
```

---

## 3. Measure Query Performance
`EXPLAIN` and `ANALYZE` are SQL commands used to understand and optimize query performance.

---

### `EXPLAIN`
The `EXPLAIN` command provides a query execution plan, detailing how the database will execute a query. It shows the steps involved, such as table scans, index usage, and join methods.

#### Syntax:
```sql
EXPLAIN query;
```
---
### `ANALYZE`
The `ANALYZE` command executes the query and provides a detailed execution plan, including actual runtime statistics for each step. It is useful for understanding the real-world performance of a query.

#### Syntax:
```sql
ANALYZE query;
```
---
### Examples:
```sql
EXPLAIN ANALYZE SELECT * FROM Booking WHERE user_id = 1;
```