# SQL Documentation

## Overview

SQL was used for data cleaning, KPI calculation, customer analysis, product analysis, regional analysis, and time-based trend analysis before building the Power BI dashboard.

---

## 01_Data_Cleaning.sql

Purpose:

* Validate dataset quality
* Check null values
* Verify duplicates
* Convert date columns into SQL DATE format
* Verify date ranges

Key Techniques:

* DESC
* COUNT
* CASE WHEN
* STR_TO_DATE
* GROUP BY
* HAVING

---

## 02_KPI_Analysis.sql

Purpose:

Calculate core business KPIs used in the dashboard.

KPIs Calculated:

* Total Revenue
* Total Orders
* Total Customers
* Total Products
* Revenue by Year

Key Techniques:

* SUM
* COUNT DISTINCT
* GROUP BY
* ORDER BY

---

## 03_Regional_Analysis.sql

Purpose:

Analyze revenue performance across regions and states.

Insights Generated:

* Highest Revenue Region
* Lowest Revenue Region
* Revenue by State
* Customer Distribution by Region

Key Techniques:

* SUM
* GROUP BY
* ORDER BY
* LIMIT

---

## 04_Customer_Analysis.sql

Purpose:

Understand customer contribution and customer behavior.

Insights Generated:

* Top Customers
* Revenue by Segment
* Average Revenue per Customer
* Customer Ranking

Key Techniques:

* RANK()
* Window Functions
* Aggregate Functions

---

## 05_Product_Analysis.sql

Purpose:

Identify top-performing categories, subcategories, and products.

Insights Generated:

* Revenue by Category
* Revenue by Subcategory
* Top Revenue Products

Key Techniques:

* SUM
* GROUP BY
* ORDER BY
* LIMIT

---

## 06_Time_Intelligence.sql

Purpose:

Analyze revenue trends over time.

Insights Generated:

* Yearly Revenue
* Previous Year Revenue
* Year-over-Year Growth %

Key Techniques:

* LAG()
* Window Functions
* Common Table Expressions (CTE)
* Date Functions

---

## SQL Skills Demonstrated

* Data Cleaning
* Data Validation
* Aggregations
* Grouping & Filtering
* Window Functions
* Ranking Functions
* Time Intelligence
* Business KPI Analysis

