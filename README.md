# Course and Enrollment – SQL JOIN Exercise

## Objective

Create and use two SQL tables:

* `Course`
* `Enrollment`

Then perform:

1. LEFT JOIN
2. RIGHT JOIN

using `CourseID`.

## Course Table

| CourseID | CourseName       | Credits |
| -------- | ---------------- | ------: |
| 201      | Database Systems |       4 |
| 202      | Data Structures  |       3 |
| 203      | Mathematics      |       4 |

## Enrollment Table

| EnrollmentID | StudentID | CourseID |
| -----------: | --------: | -------: |
|            1 |      1001 |      201 |
|            2 |      1001 |      202 |
|            3 |      1002 |      203 |
|            4 |      1003 |      201 |

## Student Instructions

### Step 1

Open `starter.sql`.

The tables and sample data are already provided.

### Step 2

Write a **LEFT JOIN** between `Course` and `Enrollment`.

The JOIN condition should be:

```sql
Course.CourseID = Enrollment.CourseID
```

The LEFT JOIN must include every record from the `Course` table.

### Step 3

Write a **RIGHT JOIN** between `Course` and `Enrollment`.

The RIGHT JOIN must include every record from the `Enrollment` table.

### Expected LEFT JOIN Output

```text
201 | Database Systems | 4 | 1 | 1001
201 | Database Systems | 4 | 4 | 1003
202 | Data Structures  | 3 | 2 | 1001
203 | Mathematics      | 4 | 3 | 1002
```

### Expected RIGHT JOIN Output

```text
201 | Database Systems | 4 | 1 | 1001
201 | Database Systems | 4 | 4 | 1003
202 | Data Structures  | 3 | 2 | 1001
203 | Mathematics      | 4 | 3 | 1002
```

## Running Locally

Install SQLite and run:

```bash
sqlite3 database.db
```

Then:

```sql
.read starter.sql
```

To run the tests:

```bash
sqlite3 database.db < test.sql
```

## GitHub

Push your changes to GitHub.

GitHub Actions will automatically execute the tests.

A green check mark means the tests passed.

A red cross means one or more tests failed.

## Learning Outcome

After completing this exercise, students should be able to:

* Create SQL tables.
* Insert records.
* Understand primary keys.
* Understand foreign-key relationships.
* Perform LEFT JOIN.
* Perform RIGHT JOIN.
* Use `ON` conditions in JOIN operations.
