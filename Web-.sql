use college;

-- create table into it 
CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
	grade VARCHAR(1),
    city VARCHAR(20)
);

-- insert a data into table 
INSERT INTO student
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

SELECT * FROM student;

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























