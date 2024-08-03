USE [Kachi_Nwano]
GO

SELECT [pizza_id]
      ,[order_id]
      ,[pizza_name_id]
      ,[quantity]
      ,[order_date]
      ,[order_time]
      ,[unit_price]
      ,[total_price]
      ,[pizza_size]
      ,[pizza_category]
      ,[pizza_ingredients]
      ,[pizza_name]
  FROM [dbo].[pizza_sales$]

GO

--1. Total Revenue

SELECT SUM (total_price) AS [Total Revenue]
FROM [dbo].[pizza_sales$]

--2. Total Pizzas Sold

SELECT SUM ([quantity]) AS [Total Pizzas Sold]
FROM [dbo].[pizza_sales$]

--3. Total number of Orders

SELECT COUNT ([order_id]) AS [Total Orders]
FROM [dbo].[pizza_sales$]

SELECT COUNT (*)
FROM [dbo].[pizza_sales$]

--4. How many order Veggie pizza category was sold

SELECT SUM ([quantity]) AS [Veggie Pizza Sold]
FROM [dbo].[pizza_sales$]
WHERE [pizza_category] = 'Veggie'

--5.How many  The Hawaiian Pizza and  The Greek Pizza  was sold

SELECT SUM ([quantity]) AS [Hawaiian and Greek Pizza Sold]
FROM [dbo].[pizza_sales$]
WHERE [pizza_name] IN ('The Hawaiian Pizza', 'The Greek Pizza')

--6. List of pizza ordered in January 2015

SELECT *
FROM [dbo].[pizza_sales$]
WHERE [order_date] BETWEEN '2015-01-01' AND '2015-01-31'

SELECT SUM ([quantity]) AS [Total Pizza ordered in Jan 2015]
FROM [dbo].[pizza_sales$]
WHERE [order_date] BETWEEN '2015-01-01' AND '2015-01-31'

SELECT [pizza_name]
FROM [dbo].[pizza_sales$]
WHERE [order_date]  BETWEEN '2015-01-01' AND '2015-01-31'

--7. List of pizza ordered between 1st of November till 31st December 2015

SELECT [pizza_name]
FROM [dbo].[pizza_sales$]
WHERE [order_date] BETWEEN '2015-11-01' AND '2015-12-31'

-- For pizza order 2012-01-01 and 2015-12-01
SELECT [pizza_name]
FROM [dbo].[pizza_sales$]
WHERE [order_date] IN ('Nov 2015','Dec 2015')
GROUP BY [pizza_name]

--8. What is the quantity of The Spinach Supreme Pizza sold in March 2015

SELECT COUNT ([quantity]) AS Quantity
FROM [dbo].[pizza_sales$]
WHERE [pizza_name] = 'The Spinach Supreme Pizza' AND [order_date] BETWEEN '2015-03-01' AND '2015-03-31'

--9. List of Medium pizza sold

SELECT [pizza_name] AS [List of Medium Pizza]
FROM [dbo].[pizza_sales$]
WHERE [pizza_size] = 'M'

SELECT [pizza_name] AS [List of Medium Pizza]
FROM [dbo].[pizza_sales$]
WHERE [pizza_size] = 'M'
GROUP BY [pizza_name]

--10. List of pizza that sold for more than 12.5

SELECT *
FROM [dbo].[pizza_sales$]
WHERE [unit_price] > 12.5

Select [pizza_name]
FROM [dbo].[pizza_sales$]
WHERE [unit_price] > 12.5
GROUP BY [pizza_name]
