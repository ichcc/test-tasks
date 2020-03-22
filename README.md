# test-tasks

## Task 1 Calculate Sum of elements from the matrix main diagonal

### Input Format

The first line contains the integer, the size of the matrix (N). The next lines contains the matrix elements separated by a space.

### Output Format

Print one line: Sum of elements from the matrix main diagonal.

### Constraints

`2 < N < 100`

### Sample Input 0

```text
3
1 2 3
4 5 6
7 8 9
```

### Sample Output 0

15

## Task 2. Find the average of the marks obtained by the particular student

### Input Format

The first line contains the integer, the number of students (N). The next lines contains the name and marks obtained by that student separated by a space. The final line contains the name of a particular student previously listed.

### Constraints

```text
2 < N < 100
0 < Marks < 100
```

### Output Format

Print one line: The average of the marks obtained by the particular student correct to 2 decimal places.

### Sample Input 0

```text
3
Krishna 67 68 69
Arjun 70 98 63
Malika 52 56 60
Malika
```

### Sample Output 0

`56.00`

### Explanation 0

Marks for Malika are {52 56 60} whose average is (52+56+60)/3 is 56.

### Sample Input 1

```text

2
Harsh 25 26.5 28
Anurag 26 28 30
Harsh
```

### Sample Output 1

`26.50`

### Task 3. SQL Task 1

Given the following tables:

```text
sql> SELECT * FROM runners;
+----+--------------+
| id | name         |
+----+--------------+
|  1 | John Doe     |
|  2 | Jane Doe     |
|  3 | Alice Jones  |
|  4 | Bobby Louis  |
|  5 | Lisa Romero  |
+----+--------------+
```

```sql> SELECT * FROM races;
+----+----------------+-----------+
| id | event          | winner_id |
+----+----------------+-----------+
|  1 | 100 meter dash |  2        |
|  2 | 500 meter dash |  3        |
|  3 | cross-country  |  2        |
|  4 | triathalon     |  NULL     |

+----+----------------+-----------+
```

What will be the result of the query below?

```sql
SELECT * FROM runners WHERE id NOT IN (SELECT winner_id FROM races)
```

Explain your answer and also provide an alternative version of this query that will avoid the issue that it exposes.

### Task 4 SQL Task 2

Assume a schema of Emp ( Id, Name, DeptId ) , Dept ( Id, Name).
If there are 10 records in the Emp table and 5 records in the Dept table, how many rows will be displayed in the result of the following SQL query:

```sql
Select * From Emp, Dept
```

Explain your answer.

### Task 5. SQL Task 3

Write a query how do you copy data from one table to another table?

### Task 6. SQL Task 4

You have a table:
 `create table test (name VARCHAR(20), email VARCHAR(20));`

How to find a duplicate record?

1. Duplicate records with one field
2. Duplicate records with more than one field (both name and email).
