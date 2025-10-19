SELECT * FROM products;

--Assign a unique row number to each product within the same category
SELECT product_name , category , price ,
	ROW_NUMBER() OVER (PARTITION BY category order by price DESC) AS row_num
FROM products;

SELECT product_name , category , price ,
	DENSE_RANK () OVER (PARTITION BY category order by price DESC) AS row_num
FROM products;

SELECT product_name , category , price ,
	SUM(price) OVER (order by price) AS running_total
FROM products;