# 📊 SQL for E-Commerce Sales Analysis

This repository contains SQL queries I developed for my **Sales Data Analyzer** project during my BTech studies. These queries helped extract business insights from an e-commerce dataset.

## 🛠️ Skills Demonstrated
- **Data Aggregation** (SUM, COUNT, GROUP BY)
- **Table Joins** (INNER JOIN, LEFT JOIN)
- **Business Intelligence** (Revenue trends, product performance)
- **Excel Integration** (Exported results for PivotTable dashboards)

## 📂 Files
| File | Description |
|------|-------------|
| [`sales_analysis.sql`](./sales_analysis.sql) | Core queries for sales reporting |
| [`query_screenshots/`](./query_screenshots/) | Sample outputs (optional) |

## ✨ Highlighted Queries
```sql
-- Top 5 Products by Sales
SELECT product_name, SUM(quantity) as total_units_sold
FROM products
JOIN order_details ON products.id = order_details.product_id
GROUP BY product_name
ORDER BY total_units_sold DESC
LIMIT 5;

-- Monthly Revenue Growth
SELECT 
  DATE_FORMAT(order_date, '%Y-%m') as month,
  SUM(quantity * price) as monthly_revenue
FROM orders
JOIN order_details ON orders.id = order_details.order_id
GROUP BY month;
