# Advanced SQL
This directory contains sql scripts that seek to practicalize advanced querying concepts

## Joins
Joins combine rows from two or more tables based on related columns. They combine row data connected across two separate tables using a unique key.

- Inner Join/Join: Retrieves records with matching values from both tables
- Left Join/Left Outer Join: Retrieves all records from the right table and matching records from the right table. LEFT JOIN simply includes rows from A regardless of whether a matching row is found in B
- Right Join/right outer join: Retrieves all records from the right table and matching records from the left table. RIGHT JOIN is the same, but reversed, keeping rows in B regardless of whether a match is found in A
- Full outer join: Retrieves records when there is a match on either tables. FULL JOIN simply means that rows from both tables are kept, regardless of whether a matching row exists in the other table

### Notes
Why call it `inner` and `outer` join? inner join: matching rows from both tables, outer join: all rows from one or both tables

## Subqueries
A subquery is a query nested within another SQL query. It can either be a **Correlated** or **Non-Corelated** subquery.
- **Correlated Subquery**: Subquery that references columns from an outer table
- **Non-correlated Subquery**: A subquery that runs independently from an outer query

## Aggregations
Aggregations are operations that summarize or perform calculations on a set of values, returning a single value. They are commonly used in conjunction with the `GROUP BY` clause to group rows that share a property and perform calculations on each group.

### Common Aggregation Functions
- **COUNT**: Returns the number of rows that match
- **SUM**: Calculates the total sum of a numeric column.
- **AVG**: Calculates the average value of a numeric column.
- **MAX**: Returns the maximum value in a column.
- **MIN**: Returns the minimum value in a column.

## Window Functions
Window functions perform calculations across a set of table rows that are related to the current row within a defined "window" or subset of data. Unlike aggregations, window functions do not collapse rows into a single result; instead, they return a value for each row.

### Types of Window Functions
1. **Aggregate Window Functions**: Perform aggregate calculations over a window of rows.
     - Examples: `SUM()`, `AVG()`, `COUNT()`, `MAX()`, `MIN()`
     - Example Query:
         ```sql
         SELECT column_name, SUM(column_name) OVER (PARTITION BY another_column) AS window_sum
         FROM table_name;
         ```

2. **Ranking Window Functions**: Assign a rank or position to rows within a window.
     - **RANK**: Assigns a rank to each row, with gaps in ranking for ties.
     - **DENSE_RANK**: Similar to `RANK`, but without gaps in ranking for ties.
     - **ROW_NUMBER**: Assigns a unique sequential integer to rows within a window.
     - Example Query:
         ```sql
         SELECT column_name, RANK() OVER (ORDER BY column_name DESC) AS rank
         FROM table_name;
         ```

### Notes
- The `OVER` clause defines the window for the function. It can include:
    - `PARTITION BY`: Divides rows into groups (similar to `GROUP BY`).
    - `ORDER BY`: Specifies the order of rows within the window.

