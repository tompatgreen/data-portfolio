-- Query 3: Top 10 customers by sales
-- Business question: Who are the top 10 customers by sales?
-- Answer:
1	Sean Miller	25043.05
2	Tamara Chand	19052.22
3	Raymond Buch	15117.34
4	Tom Ashbrook	14595.62
5	Adrian Barton	14473.57
6	Ken Lonsdale	14175.23
7	Sanjit Chand	14142.33
8	Hunter Lopez	12873.3
9	Sanjit Engle	12209.44
10	Christopher Conant	12129.07
-- Columns used: Sales, Customer Name

SELECT
  `Customer Name`,
  ROUND(SUM(Sales),2) AS total_sales
FROM `portfolio-490909.project1.superstore`
GROUP BY
  `Customer Name`
ORDER BY
  total_sales DESC
LIMIT 10
