CREATE DATABASE IF NOT EXISTS college;
CREATE DATABASE IF NOT EXISTS instagram;
CREATE DATABASE IF NOT EXISTS posts;
CREATE TABLE user (
id INT,
age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR (50) UNIQUE,
followers INT DEFAULT 0,
following INT,
CONSTRAINT age_check CHECK (age>=13),
PRIMARY KEY(id)
);



INSERT INTO user
(id,age,name,email,followers,following)
VALUES
(1,14,"adam","adam@yahoo.in",123,653),
(2,15,"smith","smith@yahoo.in",122,63),
(3,16,"alia","alia@gmail.com",1543,43),
(4,17,"samir","samir@hotmail.in",1423,	93);

INSERT INTO user
(id,age,name,email,followers,following)
VALUES
(5,14,"susan","susan@yahoo.in",133,61),
(6,15,"akshita","akshita@hotmail.in",143,	69);

SELECT age, max(followers) FROM user
GROUP BY age
HAVING max(followers)>200
ORDER BY age DESC;

UPDATE user
SET followers=600
WHERE age=16;

DELETE FROM user
WHERE age=17;

ALTER TABLE user
ADD COLUMN city VARCHAR(30) DEFAULT "Kathmandu";

ALTER TABLE user
DROP COLUMN age;

ALTER TABLE user
CHANGE COLUMN followers subscribers INT DEFAULT 0;

ALTER TABLE user
MODIFY subscribers INT DEFAULT 5;

INSERT INTO USER
(id,name,email,following)
VALUES
(7,"Gemini","gemini@yahoo.com",120);

SELECT * FROM posts;

TRUNCATE TABLE user;


SET SQL_SAFE_UPDATES=0;


CREATE TABLE posts(
post_id INT PRIMARY KEY,
content VARCHAR(100),
user_id INT,
FOREIGN KEY(user_id) REFERENCES user(id)
);

ALTER TABLE posts
CHANGE COLUMN id post_id INT;

USE instagram; 

INSERT INTO POSTS
(post_id,content,user_id)
VALUES 
(10,"hello",1),
(12,"hii",2);

SELECT * FROM posts;

TRUNCATE TABLE posts;

ALTER 