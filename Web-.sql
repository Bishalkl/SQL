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




