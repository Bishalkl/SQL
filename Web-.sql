-- using a subquery 
USE practise;
SELECT * FROM students;

SELECT AVG(marks)
FROM students;

SELECT rollno
FROM students
WHERE rollno % 2 = 0;

SELECT name 
FROM students
WHERE rollno IN (
 SELECT rollno
 FROM students
 WHERE rollno % 2 = 0);
 
--  DONE I HAVE FINISED ALL THE SQL BASIC AND FOUNNDATION 

 
 

