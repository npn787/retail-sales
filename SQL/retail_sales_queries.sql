-- Retail Sales Analysis Queries (SQLite)
-- Use after running schema/data.
-- 0) Readable sales report
SELECT
  s.sale_id,
  c.full_name,
  c.city,
  p.product_name,
  p.category,
  s.quantity,
  p.unit_price,
  ROUND(s.quantity * p.unit_price, 2) AS total_amount,
  s.sale_date
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN products p  ON s.product_id  = p.product_id
ORDER BY s.sale_date;

-- 1) Monthly revenue
SELECT
  strftime('%Y-%m', s.sale_date) AS month,
  ROUND(SUM(s.quantity * p.unit_price), 2) AS revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY month
ORDER BY month;

-- 2) Top 5 products by revenue
SELECT
  p.product_name,
  ROUND(SUM(s.quantity * p.unit_price), 2) AS revenue
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY revenue DESC
LIMIT 5;

-- 3) Revenue by city
SELECT
  c.city,
  ROUND(SUM(s.quantity * p.unit_price), 2) AS revenue
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN products p ON s.product_id = p.product_id
GROUP BY c.city
ORDER BY revenue DESC;

-- 4) Average order value (AOV)
SELECT
  ROUND(AVG(order_total), 2) AS avg_order_value
FROM (
  SELECT
    s.sale_id,
    (s.quantity * p.unit_price) AS order_total
  FROM sales s
  JOIN products p ON s.product_id = p.product_id
);

-- 5) Top customers by lifetime spend
SELECT
  c.full_name,
  c.city,
  ROUND(SUM(s.quantity * p.unit_price), 2) AS total_spent
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN products p  ON s.product_id  = p.product_id
GROUP BY c.customer_id, c.full_name, c.city
ORDER BY total_spent DESC
LIMIT 5;

-- 6) Simple customer segmentation
SELECT
  c.full_name,
  c.city,
  ROUND(SUM(s.quantity * p.unit_price), 2) AS total_spent,
  COUNT(DISTINCT s.sale_id) AS orders,
  CASE
    WHEN SUM(s.quantity * p.unit_price) >= 150 THEN 'High Value'
    WHEN SUM(s.quantity * p.unit_price) >= 60  THEN 'Medium Value'
    ELSE 'Low Value'
  END AS customer_segment
FROM sales s
JOIN customers c ON s.customer_id = c.customer_id
JOIN products p  ON s.product_id  = p.product_id
GROUP BY c.customer_id, c.full_name, c.city
ORDER BY total_spent DESC;
