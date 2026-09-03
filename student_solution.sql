-- ============================================
-- RDBMS PROGRAM 10
-- LEFT JOIN and RIGHT JOIN
-- Course and Enrollment Tables
-- ============================================

CREATE DATABASE IF NOT EXISTS CollegeDB;
USE CollegeDB;

-- Create Course Table
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Credits INT
);

-- Insert Course Records
INSERT INTO Course VALUES
(201, 'Database Systems', 4),
(202, 'Data Structures', 3),
(203, 'Mathematics', 4);

-- Create Enrollment Table
CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT
);

-- Insert Enrollment Records
INSERT INTO Enrollment VALUES
(1, 1001, 201),
(2, 1001, 202),
(3, 1002, 203),
(4, 1003, 201);

-- LEFT JOIN
SELECT Course.CourseID,
       Course.CourseName,
       Enrollment.EnrollmentID,
       Enrollment.StudentID
FROM Course
LEFT JOIN Enrollment
ON Course.CourseID = Enrollment.CourseID;

-- RIGHT JOIN
SELECT Course.CourseID,
       Course.CourseName,
       Enrollment.EnrollmentID,
       Enrollment.StudentID
FROM Course
RIGHT JOIN Enrollment
ON Course.CourseID = Enrollment.CourseID;
