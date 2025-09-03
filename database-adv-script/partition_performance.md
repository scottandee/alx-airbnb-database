# Partitioning Performance Report
The `bookings` table was partitioned by the `start_date` column to improve query performance. The table was divided into yearly partitions (`bookings_2025`, `bookings_2026`) with an optional default partition for out-of-range dates. Indexes were added to the partitions for `user_id` and `property_id` columns.

## Observed Improvements
1. **Query Speed**: Queries filtering by `start_date` (e.g., fetching bookings within a specific year) showed significant performance improvements. The database scanned only relevant partitions instead of the entire table.
2. **Index Efficiency**: Indexes on partitions further reduced query execution time for searches involving `user_id` and `property_id`.
3. **Resource Utilization**: Reduced memory and CPU usage due to smaller data scans in partitioned tables.
 