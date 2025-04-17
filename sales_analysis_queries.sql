-- E-Commerce Sales Analysis Queries
-- Used in my BTech project (Sales Data Analyzer)

-- 1. Top 5 Selling Products
SELECT product_name, SUM(quantity) as total_sold
FROM sales
GROUP BY product_name
ORDER BY total_sold DESC
LIMIT 5;

-- 2. Regional Sales Performance
SELECT region, SUM(revenue) as total_revenue
FROM sales
JOIN customers ON sales.customer_id = customers.id
GROUP BY region;

-- 3. Monthly Growth Trends
SELECT 
  MONTH(order_date) as month,
  SUM(revenue) as monthly_revenue
FROM sales
GROUP BY month;