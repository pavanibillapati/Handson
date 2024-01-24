select * from dbo.superstore;

select distinct Category from superstore where Discount between 0.5 and 0.9;

select distinct Product_Name from superstore where Quantity > 10 and Quantity < 15;

select distinct Category from superstore where Profit < 0

select * from superstore where Country != 'United States'

select distinct Country from superstore

select top 10 Product_Name, Profit from superstore order by Profit desc

select distinct Sub_Category from superstore where Category in ('Furniture', 'Office Supplies','Technology')

select top 1 Product_Name from superstore 
where Region = 'Central' 
group by Product_Name
order by COUNT(Product_Name)


SELECT top 1 Product_Name, MAX(Profit) AS MaxProfit
FROM superstore
WHERE State = 'California'
GROUP BY Product_Name
ORDER BY MaxProfit DESC


select top 10 City, count(Profit) as maxprofit from superstore
group by City
order by maxprofit DESC


