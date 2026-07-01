-- Revenue by Region
SELECT
region,
ROUND(SUM(sales),2) AS revenue
FROM store
GROUP BY region
ORDER BY revenue DESC;

-- Revenue by State
SELECT
state,
ROUND(SUM(sales),2) AS revenue
FROM store
GROUP BY state
ORDER BY revenue DESC;

-- Top State
SELECT
state,
ROUND(SUM(sales),2) AS revenue
FROM store
GROUP BY state
ORDER BY revenue DESC
LIMIT 10;

-- Customers by Region
SELECT
region,
COUNT(DISTINCT customer_id) AS customers
FROM store
GROUP BY region
ORDER BY customers DESC;
