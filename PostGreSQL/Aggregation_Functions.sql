DROP TABLE IF EXISTS products;
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price NUMERIC(10, 2),
    quantity INT,
    added_date DATE,
    discount_rate NUMERIC(5, 2)
);

INSERT INTO products (product_name, category, price, quantity, added_date, discount_rate) VALUES
('Laptop', 'Electronics', 75000.50, 10, '2024-01-15', 10.00),
('Smartphone', 'Electronics', 45000.99, 25, '2024-02-20', 5.00),
('Headphones', 'Accessories', 1500.75, 50, '2024-03-05', 15.00),
('Office Chair', 'Furniture', 5500.00, 20, '2023-12-01', 20.00),
('Desk', 'Furniture', 8000.00, 15, '2023-11-20', 12.00),
('Monitor', 'Electronics', 12000.00, 8, '2024-01-10', 8.00),
('Printer', 'Electronics', 9500.50, 5, '2024-02-01', 7.50),
('Mouse', 'Accessories', 750.00, 40, '2024-03-18', 10.00),
('Keyboard', 'Accessories', 1250.00, 35, '2024-03-18', 10.00),
('Tablet', 'Electronics', 30000.00, 12, '2024-02-28', 5.00);


SELECT * FROM products;

--Total quantity available of all products
SELECT SUM(quantity) AS Total_quantity
FROM products;

SELECT SUM(quantity) AS quantity_of_electronic
FROM products
WHERE  category = 'Electronics' AND price > 20000;

--Total no of product
SELECT COUNT(*) AS Total_Product
FROM products
WHERE product_name LIKE '%phone%'

SELECT AVG(price) AS AVG_PRICE
FROM products;

--MAXIMUM AND MINIMUM PRICE
SELECT MAX(price) AS Maximum_price , MIN(price) AS Minimum_price
FROM products;

-------------------------------------STRING FUNCTIONS---------------------------------------------
--UPPER()
SELECT UPPER(category) AS category_upper
FROM products;

--LOWER()
SELECT LOWER(category) AS category_upper
FROM products;

--CONCAT()
SELECT CONCAT(product_name,'-',category) AS Join_Columns
FROM products;

---SUBSTRING()
SELECT SUBSTRING(category,1,3) AS Exctracting_category
FROM products;

--LENGTH()
SELECT product_name , LENGTH(product_name) AS LENGTH_product
FROM products;

--TRIM()
SELECT TRIM('  Monitor  ') AS TRIMMED_TEXT
FROM products;

--REPLACE()
SELECT REPLACE(product_name,'Phone','fone')
FROM products;

--LEFT
--RIGHT

