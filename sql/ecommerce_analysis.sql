-- E-commerce Revenue & Customer Performance
-- UCI Online Retail dataset

WITH completed_sales AS (
    SELECT *, Quantity * UnitPrice AS Revenue
    FROM online_retail
    WHERE InvoiceNo NOT LIKE 'C%' AND Quantity > 0 AND UnitPrice > 0
)
SELECT COUNT(*) AS valid_rows,
       SUM(Revenue) AS revenue,
       COUNT(DISTINCT InvoiceNo) AS orders,
       COUNT(DISTINCT CustomerID) AS identified_customers,
       SUM(Quantity) AS units_sold,
       SUM(Revenue) / NULLIF(COUNT(DISTINCT InvoiceNo), 0) AS average_order_value
FROM completed_sales;

-- Revenue by country
WITH completed_sales AS (
    SELECT *, Quantity * UnitPrice AS Revenue
    FROM online_retail
    WHERE InvoiceNo NOT LIKE 'C%' AND Quantity > 0 AND UnitPrice > 0
)
SELECT Country, SUM(Revenue) AS revenue
FROM completed_sales
GROUP BY Country
ORDER BY revenue DESC;

-- Monthly revenue trend
WITH completed_sales AS (
    SELECT *, Quantity * UnitPrice AS Revenue
    FROM online_retail
    WHERE InvoiceNo NOT LIKE 'C%' AND Quantity > 0 AND UnitPrice > 0
)
SELECT EXTRACT(YEAR FROM InvoiceDate) AS sales_year,
       EXTRACT(MONTH FROM InvoiceDate) AS sales_month,
       SUM(Revenue) AS revenue,
       COUNT(DISTINCT InvoiceNo) AS orders
FROM completed_sales
GROUP BY EXTRACT(YEAR FROM InvoiceDate), EXTRACT(MONTH FROM InvoiceDate)
ORDER BY sales_year, sales_month;

-- Cancellation value
SELECT SUM(ABS(Quantity * UnitPrice)) AS cancellation_value
FROM online_retail
WHERE InvoiceNo LIKE 'C%';
