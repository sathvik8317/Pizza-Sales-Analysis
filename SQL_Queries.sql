select * from dbo.pizza_sales;

select sum(total_price) as Total_Revenue from pizza_sales;

select sum(total_price) / count(distinct(order_id)) as Average_Order_Value from pizza_sales;

select sum(quantity) as Total_Pizzas_Sold from pizza_sales;

select count(distinct(order_id)) as Total_Orders from pizza_sales;

select cast(cast(sum(quantity) as decimal(10,2))/ cast(count(distinct order_id) as decimal(10,2)) as decimal(10,2)) as Avg_Pizzas_Per_Order from pizza_sales;


select datename(dw,order_date) as Order_Day, 
count(distinct order_id) as Total_orders
from pizza_sales 
group by datename(dw, order_date);

select datename(month, order_date) as Month_Name, 
count(distinct order_id) as Total_Orders
from pizza_sales
group by datename(month, order_date)
order by Total_Orders DESC;

select pizza_category,
cast(sum(total_price) as decimal(10,2)) as Total_Revenue,
cast(sum(total_price)*100/(select sum(total_price) from pizza_sales) as decimal(10,2)) as PCT_Sales_per_category
from pizza_sales group by pizza_category;

select pizza_size,
cast(sum(total_price) as decimal(10,2)) as Total_Revenue,
cast(sum(total_price)*100/(select sum(total_price) from pizza_sales) as decimal(10,2)) as PCT_Sales_per_category
from pizza_sales group by pizza_size;

select pizza_category, sum(quantity) as Total_Quantity_Sold 
from pizza_sales 
group by pizza_category
order by Total_Quantity_Sold desc;

select top 5 pizza_name, sum(total_price) as Total_Revenue from pizza_sales
group by pizza_name
order by Total_Revenue asc

select top 5 pizza_name, sum(quantity) as Total_Quantity
from pizza_sales 
group by pizza_name
order by Total_Quantity asc;

select top 5 pizza_name, count(distinct order_id) as Total_Orders
from pizza_sales 
group by pizza_name
order by Total_Orders asc;