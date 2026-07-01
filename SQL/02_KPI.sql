-- Total Revenue
SELECT
ROUND(SUM(sales),2) AS total_revenue
FROM store;

-- Total Orders
SELECT
COUNT(DISTINCT order_id) AS total_orders
FROM store;

-- Total Customers
SELECT
COUNT(DISTINCT customer_id) AS total_customers
FROM store;

-- Total Products
SELECT
COUNT(DISTINCT product_id) AS total_products
FROM store;

-- Revenue by Year
SELECT
YEAR(order_date_clean) AS order_year,
ROUND(SUM(sales),2) AS revenue
FROM store
GROUP BY YEAR(order_date_clean)
ORDER BY order_year;
