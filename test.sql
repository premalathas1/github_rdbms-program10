-- ==========================================
-- TEST DATABASE STRUCTURE
-- ==========================================

SELECT
    CASE
        WHEN (SELECT COUNT(*) FROM Course) = 3
        THEN 'PASS'
        ELSE 'FAIL'
    END AS Course_Test;

SELECT
    CASE
        WHEN (SELECT COUNT(*) FROM Enrollment) = 4
        THEN 'PASS'
        ELSE 'FAIL'
    END AS Enrollment_Test;


-- ==========================================
-- LEFT JOIN TEST
-- ==========================================

WITH LeftJoinResult AS (
    SELECT
        c.CourseID,
        c.CourseName,
        c.Credits,
        e.EnrollmentID,
        e.StudentID
    FROM Course c
    LEFT JOIN Enrollment e
        ON c.CourseID = e.CourseID
)
SELECT
    CASE
        WHEN COUNT(*) = 4
        THEN 'PASS'
        ELSE 'FAIL'
    END AS Left_Join_Test
FROM LeftJoinResult;


-- ==========================================
-- RIGHT JOIN TEST
-- ==========================================

WITH RightJoinResult AS (
    SELECT
        c.CourseID,
        c.CourseName,
        c.Credits,
        e.EnrollmentID,
        e.StudentID
    FROM Course c
    RIGHT JOIN Enrollment e
        ON c.CourseID = e.CourseID
)
SELECT
    CASE
        WHEN COUNT(*) = 4
        THEN 'PASS'
        ELSE 'FAIL'
    END AS Right_Join_Test;
