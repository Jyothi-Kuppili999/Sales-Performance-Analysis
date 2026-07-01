-- View structure
DESC store;

-- Check row count
SELECT COUNT(*) AS total_rows
FROM store;

-- Check null values
SELECT
SUM(CASE WHEN order_id IS NULL THEN 1 ELSE 0 END) AS null_order_id,
SUM(CASE WHEN customer_id IS NULL THEN 1 ELSE 0 END) AS null_customer_id,
SUM(CASE WHEN sales IS NULL THEN 1 ELSE 0 END) AS null_sales
FROM store;

-- Convert dates
ALTER TABLE store
ADD COLUMN order_date_clean DATE;

UPDATE store
SET order_date_clean =
STR_TO_DATE(order_date,'%d/%m/%Y');

ALTER TABLE store
ADD COLUMN ship_date_clean DATE;

UPDATE store
SET ship_date_clean =
STR_TO_DATE(ship_date,'%d/%m/%Y');

-- Verify date range
SELECT
MIN(order_date_clean) AS min_date,
MAX(order_date_clean) AS max_date
FROM store;

-- Check duplicates
SELECT
order_id,
product_id,
COUNT(*) cnt
FROM store
GROUP BY order_id, product_id
HAVING COUNT(*) > 1;
