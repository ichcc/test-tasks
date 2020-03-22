# SQL Task #3

## Question

Write a query how do you copy data from one table to another table?

## Answer

Simple way:

```sql
INSERT INTO table2
SELECT * FROM table1
```

or

```sql
INSERT INTO table2 (column1, column2, column3, ...)
SELECT column1, column2, column3, ...
FROM table1
```

to prepare structure in PostgreSQL

```sql
CREATE TABLE table2
AS table1
WITH NO DATA;
```
