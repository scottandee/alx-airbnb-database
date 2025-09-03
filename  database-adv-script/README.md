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

## Aggregates

