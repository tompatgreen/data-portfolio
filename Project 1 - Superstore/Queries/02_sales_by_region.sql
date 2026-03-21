-- Query 2: Sales by region
-- Business question: Which region generates the most revenue?
-- Answer: West	725457.82450000255
-- Columns used: Sales, Region

SELECT
  Region,
  SUM(Sales) AS total_sales
FROM `portfolio-490909.project1.superstore`
GROUP BY
  Region
ORDER BY
  total_sales DESC
LIMIT 1