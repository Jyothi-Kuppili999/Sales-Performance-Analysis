-- Top Customers
SELECT
customer_name,
ROUND(SUM(sales),2) AS revenue
FROM store
GROUP BY customer_name
ORDER BY revenue DESC
LIMIT 10;

-- Revenue by Segment
SELECT
segment,
ROUND(SUM(sales),2) AS revenue
FROM store
GROUP BY segment
ORDER BY revenue DESC;

-- Average Revenue per Customer
SELECT
ROUND(
SUM(sales) /
COUNT(DISTINCT customer_id),2
) AS avg_revenue_per_customer
FROM store;

-- Customer Rank
SELECT
customer_name,
SUM(sales) AS revenue,
RANK() OVER(
ORDER BY SUM(sales) DESC
) AS customer_rank
FROM store
GROUP BY customer_name;
