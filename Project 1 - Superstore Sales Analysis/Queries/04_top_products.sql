-- Query 4: Top products by sales
-- Business question: Which products have the highest sales?
-- Answer:
1	Canon imageCLASS 2200 Advanced Copier	61599.82
2	Fellowes PB500 Electric Punch Plastic Comb Binding Machine with Manual Bind	27453.38
3	Cisco TelePresence System EX90 Videoconferencing Unit	22638.48
4	HON 5400 Series Task Chairs for Big and Tall	21870.58
5	GBC DocuBind TL300 Electric Binding System	19823.48
6	GBC Ibimaster 500 Manual ProClick Binding System	19024.5
7	Hewlett Packard LaserJet 3310 Copier	18839.69
8	HP Designjet T520 Inkjet Large Format Printer - 24" Color	18374.9

-- Columns used: Sales, Product Name

SELECT
  `Product Name`,
  ROUND(SUM(Sales),2) AS total_sales
FROM `portfolio-490909.project1.superstore`
GROUP BY
  `Product Name`
ORDER BY
  total_sales DESC
LIMIT 10
