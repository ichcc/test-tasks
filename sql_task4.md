# SQL Task #4

## Question

You have a table:

```sql
create table test (name VARCHAR(20), email VARCHAR(20));
```

How to find a duplicate record?

1. Duplicate records with one field
2. Duplicate records with more than one field (both name and email).

## Answer

1. Use the next query:

    ```sql
    SELECT name, COUNT(*)
    FROM  test
    GROUP BY name
    HAVING  COUNT(*) > 1
    ```

2. Modify previous query:

    ```sql
    SELECT name, email, COUNT(*)
    FROM  test
    GROUP BY name, email
    HAVING  COUNT(*) > 1
    ```
