# RDBMS Program 10 - LEFT JOIN and RIGHT JOIN

## Objective

Create `Course` and `Enrollment` tables, insert the given records, and perform LEFT JOIN and RIGHT JOIN operations.

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

## Student Task

Students must:

1. Create the `CollegeDB` database.
2. Create the `Course` table.
3. Insert the three Course records.
4. Create the `Enrollment` table.
5. Insert the four Enrollment records.
6. Perform a **LEFT JOIN** between `Course` and `Enrollment`.
7. Perform a **RIGHT JOIN** between `Course` and `Enrollment`.
8. Display Course and Enrollment details.

## LEFT JOIN

The LEFT JOIN should use:

```sql
SELECT Course.CourseID,
       Course.CourseName,
       Enrollment.EnrollmentID,
       Enrollment.StudentID
FROM Course
LEFT JOIN Enrollment
ON Course.CourseID = Enrollment.CourseID;
```

Expected number of rows: **4**

## RIGHT JOIN

The RIGHT JOIN should use:

```sql
SELECT Course.CourseID,
       Course.CourseName,
       Enrollment.EnrollmentID,
       Enrollment.StudentID
FROM Course
RIGHT JOIN Enrollment
ON Course.CourseID = Enrollment.CourseID;
```

Expected number of rows: **4**

## Submission Instructions

* Complete `student_solution.sql`.
* Do not modify `test.sh`.
* Do not modify `.github/workflows/autograding.yml`.
* Commit and push your changes to GitHub.
* Open the **Actions** tab to check the autograding result.

## Total Marks

**10 Marks**
