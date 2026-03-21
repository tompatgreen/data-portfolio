-- Query 1: Total sales
-- Business question: What is the total sales value?
-- Answer: 2297200.8602999472
-- Columns used: Sales
SELECT
  SUM(Sales) AS total_sales
FROM `portfolio-490909.project1.superstore`