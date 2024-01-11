CREATE DATABASE IF NOT EXISTS college;

USE college;

CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(30) NOT NULL,
subject VARCHAR(30) NOT NULL,
salary INT NOT NULL
);

INSERT INTO teacher
(id,name,subject,salary)
VALUES 
(23,"Ajay","Maths",50000),
(47,"Bharat","English",60000),
(18,"Chetan","Chemistry",45000),
(9,"Divya","Physics",75000);


SELECT * FROM teacher
where salary>55000;

ALTER TABLE teacher
CHANGE COLUMN salary ctc INT NOT NULL;

SELECT * FROM teacher;

SET SQL_SAFE_UPDATES=0;

UPDATE teacher
SET ctc=1.25*ctc;

ALTER TABLE teacher
ADD COLUMN city VARCHAR(30) DEFAULT "Gurgaon";

ALTER TABLE teacher
DROP COLUMN ctc;