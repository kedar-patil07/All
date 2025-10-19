CREATE TABLE employee2(
	employee_id INT PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	position VARCHAR(50),
	department VARCHAR(50),
	hire_date DATE,
	salary DECIMAL(10,2)
);

SELECT * FROM employee2;

INSERT INTO employee2(employee_id,name , position, department , hire_date,salary)
	values(101,'Ajit Sharma','Data analyst','Data science','2022-05-15',65000.00),
		  (102,'Priya Desai','Software Engineer','IT','2021-09-20',75000),
		  (103,'Rajesh Kumar','HR manager','Human Resources','2021-09-12',82000),
		  (104,'Sneha Patel','Marketing Specialist','Marketing','2021-05-04',58000),
		  (105,'Vikram Singh','Sales Executive','Sales','2023-02-12',62000);

DELETE FROM employee2
WHERE department = 'Sales'

ALTER TABLE employee2
DROP COLUMN name;

DROP TABLE IF EXISTS employee2;



CREATE TABLE users(
	user_id INT PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	email VARCHAR(50) UNIQUE,
	age INTEGER CHECK (age >= 18),
	reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE USERS

INSERT INTO users(user_id,name,email,age)
VALUES(101,'John Doe','john3413@gmail.com',25);

SELECT * FROM USERS;

