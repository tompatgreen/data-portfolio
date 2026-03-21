-- Query 8: Discount vs profit
-- Business question: How does discount impact profit?
-- Answer:
Row	total_profit	discount_bins
1	331435.77170000027	0-20%
2	77576.890900000071	20-40%
3	-46056.589599999985	40-60%
4	-46020.012099999934	60-80%
5	-30539.03919999997	80%-100%
-- Columns used: Discount, Profit

SELECT
  SUM(Profit) AS total_profit,
  CASE
      WHEN Discount < 0.2 THEN '0-20%'
      WHEN Discount < 0.4 THEN '20-40%'
      WHEN Discount < 0.6 THEN '40-60%'
      WHEN Discount < 0.8 THEN '60-80%'
      ELSE '80%-100%' END AS discount_bins
FROM
  `portfolio-490909.project1.superstore`
GROUP BY 2