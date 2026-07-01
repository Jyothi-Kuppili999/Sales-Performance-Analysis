-- Revenue by Category
SELECT
category,
ROUND(SUM(sales),2) AS revenue
FROM store
GROUP BY category
ORDER BY revenue DESC;

-- Revenue by Sub Category
SELECT
sub_category,
ROUND(SUM(sales),2) AS revenue
FROM store
GROUP BY sub_category
ORDER BY revenue DESC;

-- Top Products
SELECT
product_name,
ROUND(SUM(sales),2) AS revenue
FROM store
GROUP BY product_name
ORDER BY revenue DESC
LIMIT 10;

-- Product Count
SELECT
COUNT(DISTINCT product_id) AS total_products
FROM store;
