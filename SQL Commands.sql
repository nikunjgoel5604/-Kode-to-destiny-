CREATE DATABASE CollegeDB;
USE CollegeDB;

CREATE TABLE StudentCourse (
    StudentID VARCHAR(5),
    StudentName VARCHAR(50),
    CourseID VARCHAR(5),
    CourseName VARCHAR(50),
    Instructor VARCHAR(50),
    InstructorPhone VARCHAR(15)
);
INSERT INTO StudentCourse VALUES
('S1', 'Alice', 'C1', 'DBMS', 'Dr. Rao', '999111'),
('S1', 'Alice', 'C2', 'OS', 'Dr. Mehta', '999222'),
('S2', 'Bob',   'C1', 'DBMS', 'Dr. Rao', '999111'),
('S3', 'Carol', 'C3', 'CN',   'Dr. Singh', '999333');

SET SQL_SAFE_UPDATES = 0;

select * from StudentCourse;
UPDATE StudentCourse
SET InstructorPhone = '888111'
WHERE Instructor = 'Dr. Rao';
select * from StudentCourse;

UPDATE StudentCourse
SET StudentID = NULL
WHERE Instructor = 'Dr. Rao';
select * from StudentCourse;

UPDATE StudentCourse
SET StudentID = NULL,
    StudentName = NULL,
    CourseID = NULL
WHERE Instructor = 'Dr. Rao';
select * from StudentCourse;


