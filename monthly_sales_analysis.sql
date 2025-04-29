-- Monthly Revenue and Order Volume Analysis

#Step 1: Extract Year and Month
SELECT 
  EXTRACT(YEAR FROM OrderDate) AS order_year,
  EXTRACT(MONTH FROM OrderDate) AS order_month
FROM online_sales
LIMIT 50;

# Step 2: Add Aggregations
SELECT 
  EXTRACT(YEAR FROM OrderDate) AS order_year,
  EXTRACT(MONTH FROM OrderDate) AS order_month,
  SUM(Amount) AS total_revenue,
  COUNT(DISTINCT InvoiceNo) AS total_orders
FROM online_sales
GROUP BY order_year, order_month;

#Step 3: Sort the Results by Year and Month
SELECT 
  EXTRACT(YEAR FROM OrderDate) AS order_year,
  EXTRACT(MONTH FROM OrderDate) AS order_month,
  SUM(Amount) AS total_revenue,
  COUNT(DISTINCT InvoiceNo) AS total_orders
FROM online_sales
GROUP BY order_year, order_month
ORDER BY order_year, order_month;

#Step 4: Filter for a Specific Time Period
SELECT 
  EXTRACT(YEAR FROM OrderDate) AS order_year,
  EXTRACT(MONTH FROM OrderDate) AS order_month,
  SUM(Amount) AS total_revenue,
  COUNT(DISTINCT InvoiceNo) AS total_orders
FROM online_sales
WHERE EXTRACT(YEAR FROM OrderDate) = 2011
GROUP BY order_year, order_month
ORDER BY order_year, order_month;