SELECT * FROM products;

--NOW() - Current DATE and TIME
SELECT NOW() AS Current_Time;

--CURRENT_DATE - Get Current date
SELECT CURRENT_DATE AS Today_date;

SELECT added_date ,current_date ,  (CURRENT_DATE - added_date) AS Days_difference
FROM products;

--Exctract() - Exctract Parts of date
SELECT product_id,product_name,
		EXTRACT (YEAR FROM added_date) AS Year_added,
		EXTRACT (Month FROM added_date) AS Month_added,
		EXTRACT (Day FROM added_date) AS Day_added
FROM products;

--AGE() - Calculate age between dates
SELECT product_name,
	AGE(CURRENT_DATE,added_date) AS Age_since_added
FROM products;

--TO_CHAR - Format dates to strings
SELECT product_name,
	TO_CHAR(added_date,'DD-Mon-YYYY') AS DATE_TO_CHAR
FROM products;

--DATE_PART() - Get specific date part
--extract the day of the week from added_date
SELECT product_name , added_date,
		DATE_PART('dow',added_date) AS Day_of_week
FROM products;

--INTERVAL - add or substract time intervals
SELECT product_name , added_date,
		added_date + INTERVAL '6 months , 6 days' AS new_Date
FROM products;

--CURRENT_TIME
SELECT CURRENT_TIME AS Current_time;

--TO_DATE() - convert strings to date

	
