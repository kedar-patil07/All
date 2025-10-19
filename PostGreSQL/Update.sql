CREATE TABLE user2(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	age INT,
	city VARCHAR(50)
);

SELECT * FROM user2;

INSERT INTO user2(username,email,age,city)
	VALUES('Rajesh','rajesh1234@gmail.com',22,'Mumbai'),
	('Sneha', 'sneha5678@google.com', 25, 'Pune'),
    ('Amit', 'amit2345@gmail.com', 28, 'Delhi'),
    ('Priya', 'priya7890@yahoo.com', 21, 'Bangalore'),
    ('Vikram', 'vikram3456@gmail.com', 30, 'Chennai');


UPDATE user2
SET age = 28
where username = 'Rajesh';

SELECT * FROM user2 
Order BY user_id asc;

UPDATE user2
SET email = 'vikram3417@hotmail.com'
where username = 'Vikram'

UPDATE user2
SET age=age+1
where email like '%@gmail.com'


DROP TABLE USER2