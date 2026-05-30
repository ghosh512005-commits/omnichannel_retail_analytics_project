CREATE DATABASE retail_project;
USE retail_project;
CREATE TABLE retail_sales (
    Order_ID VARCHAR(20),
    Date DATE,
    Customer_ID VARCHAR(20),
    Product_ID VARCHAR(20),
    Channel VARCHAR(50),
    Quantity INT,
    Unit_Price FLOAT,
    Total_Sales FLOAT,
    Customer_Name VARCHAR(255),
    Gender VARCHAR(20),
    Age INT,
    City VARCHAR(100),
    Loyalty_Status VARCHAR(50),
    Product_Name VARCHAR(255),
    Category VARCHAR(100),
    Brand VARCHAR(100),
    Price FLOAT,
    Supplier VARCHAR(255),
    Month VARCHAR(20),
    Year INT,
    Day VARCHAR(20)
);

SELECT COUNT(*) FROM retail_sales;
SELECT * FROM retail_sales;

-- Total_Revenue --
SELECT SUM(Total_Sales) AS Total_Revenue FROM retail_sales;

-- Average_Order_Value --
SELECT AVG(Total_Sales) AS Average_Order_Value
FROM retail_sales;

-- Revenue_By_Channel --
SELECT Channel,
       SUM(Total_Sales) AS Revenue
FROM retail_sales
GROUP BY Channel
ORDER BY Revenue DESC;

-- Top_10_Products --
SELECT Product_Name,
       SUM(Total_Sales) AS Revenue
FROM retail_sales
GROUP BY Product_Name
ORDER BY Revenue DESC
LIMIT 10;

-- Revenue_By_Category --
SELECT Category,
       SUM(Total_Sales) AS Revenue
FROM retail_sales
GROUP BY Category
ORDER BY Revenue DESC;

-- Top_10_Cities --
SELECT City,
       SUM(Total_Sales) AS Revenue
FROM retail_sales
GROUP BY City
ORDER BY Revenue DESC
LIMIT 10;

-- Orders_By_Channel --
SELECT Channel,
       COUNT(*) AS Orders
FROM retail_sales
GROUP BY Channel;

-- Customer_Count_By_City --
SELECT City,
       COUNT(DISTINCT Customer_ID) AS Customers
FROM retail_sales
GROUP BY City
ORDER BY Customers DESC;
