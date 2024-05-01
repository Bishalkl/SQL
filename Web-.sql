-- creating database 
CREATE DATABASE college;

-- to use the database we created 
USE college;

-- Creating a table in Database 
CREATE TABLE student (
	id INT PRIMARY KEY,
    name VARCHAR (50),
    age INT NOT NULL
);

-- Inserting a data in table 
INSERT INTO student VALUES(1, "Bishal", 22);
INSERT INTO student VALUES(2, "Suvu", 19); 

-- selecting and printing output of data to view 
SELECT * FROM student;

-- Best practise  
CREATE DATABASE  IF NOT EXISTS college;
DROP DATABASE IF EXISTS company;

-- to view all the database
SHOW DATABASES;

-- to view all the table 
SHOW TABLES;  

CREATE TABLE account (
	id INT PRIMARY KEY,
    name VARCHAR(50),
    salary BLOB(1000)
);

SELECT * FROM account;

-- to delete a table of database 
DROP TABLE account;

-- to insert a data in table 
DROP TABLE IF EXISTS student;

-- create a database
CREATE DATABASE XYZ;

-- FIRST USE A DATABASE
USE XYZ;

DROP TABLE IF EXISTS employee;

-- creating a table for employee again 
CREATE TABLE employee (
	id INT PRIMARY KEY,
    name VARCHAR(100),
    salary INT
);

-- now select the table to see or view
SELECT * FROM employee; 

-- insert a value of data in table employee
INSERT INTO employee
(id, name, salary)
VALUES
(1, "adam", 25000),
(2, "bob", 30000 ),
(3, "casey", 40000);

-- to view a table
SELECT * FROM employee; 




 





