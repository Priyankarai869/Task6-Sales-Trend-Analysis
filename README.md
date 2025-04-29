# Task6-Sales-Trend-Analysis
Data Analyst internship project: SQL aggregation and time-series analysis on sales data.<br>

## 📌 Objective<br>
Analyze monthly revenue and order volume from online sales data using SQL aggregation techniques.<br><br>

## 🧰 Tools Used<br>
- **Excel** – Data cleaning and preparation<br>
- **MySQL** – Querying and analysis<br>
- **Command Line Client** – For data import and execution<br>
- **GitHub** – Code and result sharing<br><br>

## 📊 Task Overview<br>
This task involved using SQL to extract insights from a cleaned online sales dataset. The main goals were:<br>
- Grouping data by year and month using `EXTRACT()`<br>
- Calculating total monthly revenue using `SUM(Amount)`<br>
- Calculating total monthly order volume using `COUNT(DISTINCT InvoiceNo)`<br>
- Sorting results chronologically<br>
- Filtering results for a specific year (2011)<br><br>

## 🧼 Data Preparation<br>
The original dataset (`Online Retail.xlsx`) was cleaned in Excel:<br>
- Time was removed from the `OrderDate`<br>
- A new column `Amount` was created using: `Quantity × UnitPrice`<br>
- Blank cells were replaced with `"N/A"`<br>
- The file was saved as `online_sales_clean.csv`<br><br>

> ⚠️ **Note:** The full CSV file exceeds GitHub's 25MB upload limit and is not included here.<br>  
>  screenshots are provided for reference.<br><br>

## 💻 SQL Query Sample<br><br>

```sql<br>
SELECT
    EXTRACT(YEAR FROM OrderDate) AS order_year,
    EXTRACT(MONTH FROM OrderDate) AS order_month,
    SUM(Amount) AS total_revenue,
    COUNT(DISTINCT InvoiceNo) AS total_orders
FROM online_sales
GROUP BY order_year, order_month
ORDER BY order_year, order_month;
