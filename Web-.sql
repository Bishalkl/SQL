use college;

-- create table into it 
CREATE TABLE students(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
	grade VARCHAR(1),
    city VARCHAR(20)
);

-- insert a data into table 
INSERT INTO students
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"), 
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

-- now view it all we use *
SELECT * FROM student; 

-- SELECT COMMAND DETAIL

-- WHERE FOR CONDITION 

SELECT DISTINCT city FROM student; -- Distinct is use to no duplicate data
SELECT  * 
FROM student
WHERE marks BETWEEN 80 AND 90;

SELECT *
FROM student
WHERE marks > 75
LIMIT 3;



-- Aggregate Function
SELECT COUNT(marks)
FROM student;

-- Group by Clause
SELECT city, avg(marks)
FROM student
GROUP BY city
ORDER BY avg(marks); 

-- another practise question
Use college;

-- creating table for payment  
CREATE TABLE payment(
	customer_id INT PRIMARY KEY,
    customer VARCHAR(50),
    mode VARCHAR(20),
    city VARCHAR(30)
);

-- now insert a data on it 
INSERT INTO payment
(customer_id, customer, mode, city)
VALUES
(101, "Olivia Barrett", "Netbanking", "Portland"),
(102, "Ethan Sinclair", "Credit Card", "Miami"),
(103, "Maya Hernandez", "Credit Card", "Settle"),
(104, "Liam Donovan", "Netbanking", "Denver"), 
(105, "Sophia Nguyen", "Credit Card", "New Orleans"), 
(106, "Caleb Foster", "Debit Card", "Mineapolis"), 
(107, "Ava Patel", "Debit Card", "Phoenix"), 
(108, "Lucas Carter", "Netbanking", "Boston"), 
(109, "Isabella Martinez", "Netbanking", "Nashville"), 
(110, "Jackson Brooks", "Credit Card", "Boston");

--  Using group by 
SELECT mode , COUNT(customer)
FROM payment
GROUP BY mode
ORDER BY COUNT(customer) ASC;

-- using group by basis in grade 
SELECT grade, COUNT(name)
FROM student
GROUP BY grade
ORDER BY grade;


-- Having clause use with grouping and applicable with grouping
SELECT city
FROM student
WHERE grade = "A"
GROUP BY city
HAVING MAX(marks) > 90
ORDER BY city;

--  First remove a safe mode into off for updata or changes 
SET  SQL_SAFE_UPDATES = 0;

SELECT * FROM student;

UPDATE student
SET grade = "O"
WHERE grade = "A";

UPDATE student
SET grade = "B"
WHERE marks + 1;

SELECT * FROM student;

-- DELETE CLAUSE 
DELETE FROM student
WHERE marks < 33; 

SELECT * FROM students;

-- Revisiting Foreign key
CREATE TABLE dept (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE teacher(
id INT PRIMARY KEY,
name VARCHAR(50),
dept_id int,
FOREIGN KEY (dept_id) REFERENCES dept(id)
-- cascading foreign key  TO CHANGES 
ON UPDATE CASCADE
ON DELETE CASCADE
);



-- add drop and rename
USE college;
SELECT * FROM students;

ALTER TABLE student
ADD COLUMN age INT;

ALTER TABLE student
DROP COLUMN age;

ALTER TABLE students
RENAME TO students;

SELECT * FROM student;

ALTER TABLE student
MODIFY COLUMN  marks FLOAT;

ALTER TABLE student
CHANGE marks mark INT;

-- Truncate table 
TRUNCATE TABLE student;


CREATE DATABASE personal;
USE personal;

-- create table into it 
CREATE TABLE students(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
	grade VARCHAR(1),
    city VARCHAR(20)
);

-- insert a data into table 
INSERT INTO students
(rollno, name, marks, grade, city)
VALUES
(101, "anil", 78, "C", "Pune"), 
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

SELECT * FROM students;

-- alter table first
ALTER TABLE students

-- now change name of column name to full name 
CHANGE name full_name VARCHAR(50);

-- TO DISABLE A SAFE MODE 
SET SQL_SAFE_UPDATES = 1;

-- Now delete all the studets who scored marks less than 80
DELETE FROM students
WHERE marks < 80;

-- DELETE THE COLUMN OF GRADES
ALTER TABLE students
DROP COLUMN grade;

DROP TABLE students;

-- JOINS IN SQL

-- Inner Join
USE personal;
CREATE TABLE student(
	student_id int PRIMARY KEY,
    name VARCHAR(50)
);
INSERT INTO student
(student_id, name)
VALUES
(101, "adam"),
(102, "bob"),
(103, "casey");
SELECT * FROM course;

CREATE TABLE course(
	student_id int,
    course VARCHAR(50),
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);

INSERT INTO course
(student_id, courses)
VALUES
(101, 'english'),
(102, 'math'),
(101, 'science'),
(103, 'computer science');


SELECT * FROM course;

SELECT * 
FROM student as s
LEFT JOIN course as c
ON s.student_id = c.student_id;

SELECT * 
FROM student as s
RIGHT JOIN course as c
ON s.student_id = c.student_ID
WHERE s.student_id is NUll;
-- done it  

















