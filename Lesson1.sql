CREATE DATABASE IF NOT EXISTS college;
USE college;

CREATE TABLE student(
rollno INT,
name VARCHAR(30),
age INT
); 

INSERT INTO student
VALUES
(101,"adam",12),
(102,"bob", 14),
(103,"casey",11);

SELECT * FROM student;
SHOW TABLES;
