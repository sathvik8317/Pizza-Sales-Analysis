# 🍕 Pizza Sales Analysis

This project provides an in-depth analysis of pizza sales using **SQL** and **Power BI** to extract meaningful insights, visualize trends, and support business decisions. The interactive dashboard helps stakeholders understand sales performance, customer preferences, and revenue trends.

---

## 🎯 Objectives
- Identify top-selling pizza categories and sizes.
- Analyze sales trends over time.
- Evaluate revenue contributions by product lines.
- Determine customer preferences for targeted marketing.

---

## 🗃️ Dataset
The dataset used in this analysis contains detailed sales information, including:

- **order_id**: Unique identifier for each order.  
- **order_date**: Date of the order.  
- **pizza_name**: Name of the pizza sold.  
- **pizza_category**: Category of the pizza (e.g., Veg, Non-Veg).  
- **pizza_size**: Size of the pizza (Small, Medium, Large).  
- **quantity**: Number of pizzas sold.  
- **total_price**: Total price of the order.  

---

## 🔍 Analysis Overview

### 📊 Key Insights  
- **Total Revenue:** $817.86K  
- **Total Pizzas Sold:** 49,574  
- **Total Number of Orders:** 21,350  
- **Average Order Value:** $38.31  
- **Average Pizzas Per Order:** 2.32  

### 🔎 Detailed Analysis  
- **Sales Performance by Category:**  
  - The **Classic** category is the top performer, contributing **30%** of total orders.  
  - **Large-sized pizzas** dominate, accounting for **45.89%** of total sales.  

- **Customer Behavior Patterns:**  
  - **Highest Sales Days:** Weekends, especially **Friday** and **Saturday** evenings.  
  - **Monthly Trends:** Sales peak during **July** and **January** due to seasonal demand.  

- **Best & Worst Sellers:**  
  - **Top Revenue Generator:** Thai Chicken Pizza ($43K)  
  - **Least Popular:** Brie Carre Pizza with the lowest orders and revenue.  

---

## 🔑 KPIs and SQL Queries
### KPIs:
1. **Total Revenue:**
    ```sql
    SELECT SUM(total_price) AS Total_Revenue FROM pizza_sales;
    ```

2. **Total Pizzas Sold:**
    ```sql
    SELECT SUM(quantity) AS Total_Pizza_Sold FROM pizza_sales;
    ```

3. **Total Orders Placed:**
    ```sql
    SELECT COUNT(DISTINCT(order_id)) AS Total_Orders FROM pizza_sales;
    ```

4. **Average Order Value:**
    ```sql
    SELECT SUM(total_price) / COUNT(DISTINCT(order_id)) AS Average_Order_Value FROM pizza_sales;
    ```

### Trends:
1. **Monthly Trend for Orders:**
    ```sql
    SELECT DATENAME(month, order_date) AS Month_Name, 
           COUNT(DISTINCT order_id) AS Total_Orders 
    FROM pizza_sales 
    GROUP BY DATENAME(month, order_date) 
    ORDER BY Total_Orders DESC;
    ```

### Sales Breakdown:
1. **Total Pizzas Sold by Category:**
    ```sql
    SELECT pizza_category, 
           SUM(quantity) AS Total_Quantity_Sold 
    FROM pizza_sales 
    GROUP BY pizza_category 
    ORDER BY Total_Quantity_Sold DESC;
    ```

2. **Percentage of Sales by Pizza Size:**
    ```sql
    SELECT pizza_size, 
           CAST(SUM(total_price) AS DECIMAL(10,2)) AS Total_Revenue, 
           CAST(SUM(total_price) * 100 / (SELECT SUM(total_price) FROM pizza_sales) AS DECIMAL(10,2)) AS PCT_Sales_per_category 
    FROM pizza_sales 
    GROUP BY pizza_size;
    ```

---

## 📅 Time Period Analyzed  
**January 2015 - December 2015**  

---

## 🚀 Features  
- Dynamic filtering by **pizza category** and **time period**.  
- Detailed breakdown of **Top/Bottom Pizzas** by revenue, quantity, and total orders.  
- Visualizations include pie charts, bar graphs, and trend lines for easy analysis.  

---

## 💼 Business Value  
This dashboard empowers decision-makers to:  
- Enhance sales strategies based on customer behavior insights.  
- Optimize inventory management by identifying high-demand products.  
- Increase revenue by leveraging top-selling categories and peak sales periods.  

---

## 📊 Dashboards
The Power BI dashboard includes:
- **Sales Overview**: Total revenue, order count, and average order value.
- **Category Analysis**: Revenue and order breakdown by pizza category.
- **Time Series Analysis**: Monthly and weekly sales trends.
- **Customer Insights**: Popular products and size preferences.

---

## 🛠️ Tools Used
- **SQL**: For data extraction, transformation, and querying.  
- **Power BI**: To create interactive dashboards and visualize sales insights.  

---

## 🔗 Repository Contents
- `Data`: The dataset (`pizza_sales.csv`) used for analysis.  
- `SQL_Queries.sql`: SQL queries for data extraction and transformation.  
- `Pizza_Dashboard.pbix`: Power BI dashboard file.  
- `PIZZA SQL QUERIES.docx`: Documentation of SQL queries.  
- `Dashboard_Images`: Images of the Dashboard.  
- `Images_used`: Icons used for the dashboard.  

---

## 🚀 How to Run
1. Clone the repository:
    ```bash
    git clone https://github.com/sathvik8317/Pizza-Sales-Analysis
    ```
2. Import the dataset into your preferred database.
3. Use the provided SQL queries for analysis.
4. Open the Power BI file to view and interact with the dashboard.

---

## 📜 License
This project is licensed under the **MIT License**.  
