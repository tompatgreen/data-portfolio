-- Query 5: Monthly sales trend
-- Business question: What is the monthly sales trend?
-- Answer:
1	2014-01	14236.9
2	2014-02	4519.89
3	2014-03	55691.01
4	2014-04	28295.34
-- Columns used: Sales, Order Date

SELECT
  FORMAT_DATE('%Y-%m', `Order Date`) AS month,
  ROUND(SUM(Sales),2) AS total_sales
FROM `portfolio-490909.project1.superstore`
GROUP BY
  1
ORDER BY
  month


WITH table AS(
  SELECT
  FORMAT_DATE('%Y-%m', `Order Date`) AS month,
  ROUND(SUM(Sales),2) AS total_sales
FROM `portfolio-490909.project1.superstore`
GROUP BY
  1
)

SELECT
  month,
  total_sales,
  LAG(total_sales,1)OVER(ORDER BY month) AS prev_month,
  ROUND(100*(total_sales - LAG(total_sales,1)OVER(ORDER BY month)) / LAG(total_sales,1)OVER(ORDER BY month),2) AS month_inc
FROM
  table

Row	month	total_sales	prev_month	month_inc
1	2014-01	14236.9	null	null
2	2014-02	4519.89	14236.9	-68.25
3	2014-03	55691.01	4519.89	1132.13
4	2014-04	28295.34	55691.01	-49.19