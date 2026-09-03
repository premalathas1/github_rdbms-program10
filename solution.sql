DROP TABLE IF EXISTS Enrollment;
DROP TABLE IF EXISTS Course;

CREATE TABLE Course (
    CourseID INTEGER PRIMARY KEY,
    CourseName TEXT NOT NULL,
    Credits INTEGER NOT NULL
);

INSERT INTO Course (CourseID, CourseName, Credits) VALUES
(201, 'Database Systems', 4),
(202, 'Data Structures', 3),
(203, 'Mathematics', 4);

CREATE TABLE Enrollment (
    EnrollmentID INTEGER PRIMARY KEY,
    StudentID INTEGER NOT NULL,
    CourseID INTEGER NOT NULL
);

INSERT INTO Enrollment (EnrollmentID, StudentID, CourseID) VALUES
(1, 1001, 201),
(2, 1001, 202),
(3, 1002, 203),
(4, 1003, 201);

-- ==========================================
-- STUDENT TASK
-- ==========================================

-- Write a LEFT JOIN query below.
-- Expected columns:
-- CourseID, CourseName, Credits, EnrollmentID, StudentID


-- Write a RIGHT JOIN query below.
-- Expected columns:
-- CourseID, CourseName, Credits, EnrollmentID, StudentID
