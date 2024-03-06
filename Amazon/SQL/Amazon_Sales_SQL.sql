SELECT*
FROM `amazon _sales`;

##Total Sales

SELECT SUM(sales) AS Total_Sales
FROM `amazon _sales`;

##Average Sales Transation

SELECT avg(sales) AS Average_sales
FROM `amazon _sales`;

##Most Sold Product

SELECT product_name , sum(Sales) AS Total_sales
FROM `amazon _sales`
group by Product_name
order by  total_sales DESC
limit 1;

##Sales By Product Category

SELECT Category, sum(Sales) AS Total_sales
FROM `amazon _sales`
group by Category;


##Top Customers
SELECT EmailID, sum(Sales) AS Total_Spending
FROM `amazon _sales`
GROUP BY EmailID
ORDER BY Total_Spending DESC
limit 1;

##Monthly Sales Trend

SELECT format(Order_Date, 'MM-ff-yyyy') AS Month, SUM(Sales) AS Monthly_sales
FROM `amazon _sales`
GROUP BY Month
ORDER BY Month;


##Average Order Value
SELECT AVG(sales) AS avergae_order_value
FROM `amazon _sales`;

##Top Selling Products
SELECT Product_name, SUM(quantity) AS total_quantity_sold
FROM `amazon _sales`
GROUP BY Product_name
ORDER BY total_quantity_sold DESC;

##Monthly Customer Spending
SELECT EmailID, format(Order_Date, 'MM-ff-yyyy') AS Month, SUM(sales) AS monthly_spending
FROM `amazon _sales`
GROUP BY EmailID, month
ORDER BY EmailID, month;

##Average Quantity Sold per Order
SELECT AVG(quantity) AS avg_quantity_sold
FROM `amazon _sales`;

##Best Selling Categories By revenue
SELECT category, sum(sales) AS total
 FROM `amazon _sales`
group by Category
ORDER BY total;

##Customers with multiple purchases
SELECT EmailID, COUNT(DISTINCT order_id) AS Total_purchases
FROM `amazon _sales`
GROUP BY EmailID
ORDER by total_purchases > 1;








