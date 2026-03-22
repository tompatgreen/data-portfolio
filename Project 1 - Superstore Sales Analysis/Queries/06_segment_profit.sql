-- Query 6: Customer segment profit
-- Business question: Which customer segment generates the most profit?
-- Answer:
1	Consumer	134119.21
2	Corporate	91979.13
3	Home Office	60298.68
-- Columns used: Profit, Segment

SELECT
  Segment,
  ROUND(SUM(Profit),2) AS total_profit
FROM `portfolio-490909.project1.superstore`
GROUP BY
  Segment
ORDER BY
  total_profit DESC