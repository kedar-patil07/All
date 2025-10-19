SELECT * FROM EMPLOYEE2;

---------------------- ARITHMATIC OPERATORS(+ ,- , * , / , %)-------------------------------------------------
-- Retrieve the first_name , salary and calculate A 10% bonus on the salary
SELECT first_name , salary,(salary*0.1) as Bonus
FROM employee2

-- calculate annual salary amd salary increment by 5% - show the monthly new salary s well
SELECT first_name, salary,
		(salary*12) AS Annual_salary,
		(salary*0.05) AS increment_salary,
		(salary+salary*0.05) AS new_salary
FROM employee2;


-----------------------------------COMPARISON OPERATORS(= , != or <> , < , > , <= , >=)---------------------
SELECT * FROM employee2
where age = 30;

SELECT * FROM employee2
WHERE age != 30;

---------------------- LOGICAL OPERATORS(AND , OR ,NOT)---------------------------------------------------------
SELECT * FROM EMPLOYEE2
WHERE age > 30 AND salary > 50000

SELECT * FROM EMPLOYEE2
WHERE NOT (department = 'HR');


------------------------ BETWEEN , LIK AND IN OPERATOR---------------------------------------------------
-- RETRIEVE employees whose salary is between 40000 and 60000 - USE BETWEEN OPERATOR
SELECT first_name , last_name , salary FROM EMPLOYEE2
WHERE salary BETWEEN 40000 AND 60000;

SELECT first_name from employee2
where first_name LIKE 'A%'

--Retrieve employee who belong to either the 'finance' or 'Marketing' departments - USE IN OPERATOR

SELECT first_name , last_name , department FROM employee2
WHERE department IN ('Finance','Marketing')


--Find employee where the email column is NULL (if applicable)
SELECT first_name , last_name , email FROM EMPLOYEE2
WHERE email is NULL;

SELECT first_name , last_name , salary 
FROM employee2
ORDER BY salary DESC;

--Retrive the top 5 highest paid employees
SELECT First_name , salary
FROM EMPLOYEE2
ORDER BY salary DESC
LIMIT 5;

--Retrieve a list of unique department
SELECT COUNT (DISTINCT department) AS DEPT_COUNT FROM employee2;


-----------------SET OPERATORS------------------------------------------------------------


DROP TABLE IF EXISTS students_2023;
CREATE TABLE students_2023 (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    course VARCHAR(50)
);

INSERT INTO students_2023 (student_id, student_name, course) VALUES
(1, 'Aarav Sharma', 'Computer Science'),
(2, 'Ishita Verma', 'Mechanical Engineering'),
(3, 'Kabir Patel', 'Electronics'),
(4, 'Ananya Desai', 'Civil Engineering'),
(5, 'Rahul Gupta', 'Computer Science');

SELECT * FROM students_2023;

DROP TABLE IF EXISTS students_2024;
CREATE TABLE students_2024 (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100),
    course VARCHAR(50)
);

INSERT INTO students_2024 (student_id, student_name, course) VALUES
(3, 'Kabir Patel', 'Electronics'),   -- Same as students_2023
(4, 'Ananya Desai', 'Civil Engineering'), -- Same as students_2023
(6, 'Meera Rao', 'Computer Science'),
(7, 'Vikram Singh', 'Mathematics'),
(8, 'Sanya Kapoor', 'Physics');


SELECT * FROM students_2024;


-------------------
----------
-- UNION - Combines results, removes duplicates
SELECT student_name , course
FROM students_2023
UNION
SELECT student_name, course
FROM students_2024;

-- UNION ALL - Combines results, keeps duplicates
SELECT student_name , course
FROM students_2023
UNION ALL
SELECT student_name, course
FROM students_2024;

-- INTERSECT - Returns common results in both tables
SELECT student_name, course 
FROM students_2023
INTERSECT
SELECT student_name, course
FROM students_2024;


-- EXCEPT  -- Returns results in the first table but not in the second

SELECT student_name, course 
FROM students_2023
EXCEPT
SELECT student_name, course
FROM studentS_2024


