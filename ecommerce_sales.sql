CREATE DATABASE ecommerce;
USE ecommerce;

CREATE TABLE orders (
order_id INT,
order_date DATE,
customer_name VARCHAR(50),
region VARCHAR(50),
product VARCHAR(100),
quantity INT,
sales INT,
cost INT,
profit INT
);

SELECT SUM(sales) AS total_revenue
FROM orders;

SELECT SUM(profit) AS total_profit
FROM orders;

SELECT region,
SUM(sales) AS total_sales
FROM orders
GROUP BY region
ORDER BY total_sales DESC;

SELECT product,
SUM(sales) AS revenue
FROM orders
GROUP BY product
ORDER BY revenue DESC
LIMIT 10;

SELECT category,
SUM(sales) AS total_sales
FROM orders
GROUP BY category;

SELECT
MONTH(order_date) AS month,
SUM(sales) AS monthly_sales
FROM orders
GROUP BY month
ORDER BY month;

SELECT customer_name,
SUM(sales) AS total_purchase
FROM orders
GROUP BY customer_name
ORDER BY total_purchase DESC
LIMIT 10;

SELECT product,
SUM(quantity) AS total_units
FROM orders
GROUP BY product
ORDER BY total_units DESC;















