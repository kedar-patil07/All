CREATE TABLE employee(
	employee_id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	position VARCHAR(50),
	department VARCHAR(50),
	hire_date DATE,
	salary DECIMAL(10,2)
);

SELECT * FROM employee;

INSERT INTO employee(name , position, department , hire_date,salary)
	values('Ajit Sharma','Data analyst','Data science','2022-05-15',65000.00),
		  ('Priya Desai','Software Engineer','IT','2021-09-20',75000),
		  ('Rajesh Kumar','HR manager','Human Resources','2021-09-12',82000),
		  ('Sneha Patel','Marketing Specialist','Marketing','2021-05-04',58000),
		  ('Vikram Singh','Sales Executive','Sales','2023-02-12',62000);

TRUNCATE TABLE employee;

TRUNCATE TABLE employee RESTART IDENTITY;



		