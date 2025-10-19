CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2) CHECK (salary > 0),
    joining_date DATE NOT NULL,
    age INT CHECK (age >= 18)
);

SELECT * FROM employees;

-- Insert data into employees table
INSERT INTO employees (first_name, last_name, department, salary, joining_date, age) VALUES
('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29),
('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
('Ravi', 'Kumar', 'Finance', 70000.00, '2020-03-10', 35),
('Anjali', 'Verma', 'IT', 65000.00, '2019-11-22', 28),
('Suresh', 'Reddy', 'Operations', 50000.00, '2023-01-10', 26);

-- Assignment Questions
--Q1: Retrieve all employees’ first_name and their departments.
SELECT first_name , department FROM employees


--Q2: Update the salary of all employees in the 'IT' department by increasing it by 10%.
UPDATE employees
SET salary = salary + (salary*0.1)
WHERE department = 'IT'

--Q3: Delete all employees who are older than 34 years.
DELETE FROM employees
where age > 34

--Q4: Add a new column `email` to the `employees` table.
ALTER TABLE EMPLOYEES
ADD COLUMN email VARCHAR(50)

--Q5: Rename the `department` column to `dep_name`.
ALTER TABLE EMPLOYEES
RENAME COLUMN department to dep_name

--Q6: Retrieve the names of employees who joined after January 1, 2021.
SELECT first_name  , last_name FROM employees
where joining_date > '2021-01-01'


--Q7: Change the data type of the `salary` column to `INTEGER`.
ALTER TABLE EMPLOYEES
ALTER COLUMN salary TYPE INTEGER


--Q8: List all employees with their age and salary in descending order of salary.
SELECT age , salary FROM EMPLOYEES
Order by salary desc


--Q9: Insert a new employee with the following details: 
		-- ('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30)
INSERT INTO EMPLOYEES(first_name, last_name, dep_name, salary, joining_date, age)
VALUES('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30);
		
--Q10: Update age of employee +1 to every employee 

UPDATE EMPLOYEES
SET age = age+1;


