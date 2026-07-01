-- Revenue by Year
SELECT
YEAR(order_date_clean) AS order_year,
ROUND(SUM(sales),2) AS revenue
FROM store
GROUP BY YEAR(order_date_clean);

-- Previous Year Revenue using LAG
SELECT
order_year,
revenue,
LAG(revenue) OVER(
ORDER BY order_year
) AS previous_revenue
FROM
(
SELECT
YEAR(order_date_clean) AS order_year,
SUM(sales) AS revenue
FROM store
GROUP BY YEAR(order_date_clean)
) t;

-- Year-over-Year Growth
WITH yearly_sales AS
(
SELECT
YEAR(order_date_clean) AS order_year,
SUM(sales) AS revenue
FROM store
GROUP BY YEAR(order_date_clean)
)
SELECT
order_year,
revenue,
LAG(revenue) OVER(
ORDER BY order_year
) AS previous_revenue,
ROUND(
(
(revenue -
LAG(revenue) OVER(
ORDER BY order_year))
/
LAG(revenue) OVER(
ORDER BY order_year)
) * 100,
2
) AS growth_percentage
FROM yearly_sales;
