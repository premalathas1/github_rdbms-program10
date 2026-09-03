-- LEFT JOIN

SELECT
    c.CourseID,
    c.CourseName,
    c.Credits,
    e.EnrollmentID,
    e.StudentID
FROM Course c
LEFT JOIN Enrollment e
    ON c.CourseID = e.CourseID
ORDER BY c.CourseID, e.EnrollmentID;


-- RIGHT JOIN

SELECT
    c.CourseID,
    c.CourseName,
    c.Credits,
    e.EnrollmentID,
    e.StudentID
FROM Course c
RIGHT JOIN Enrollment e
    ON c.CourseID = e.CourseID
ORDER BY c.CourseID, e.EnrollmentID;
