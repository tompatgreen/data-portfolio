-- Query 7: Product category profit
-- Business question: Which product category has the highest total profit?
-- Answer:
1	Technology	145454.95
2	Office Supplies	122490.8
3	Furniture	18451.27
-- Columns used: Profit, Category

SELECT
  Category,
  ROUND(SUM(Profit),2) AS total_profit
FROM `portfolio-490909.project1.superstore`
GROUP BY
  Category
ORDER BY
  total_profit DESC