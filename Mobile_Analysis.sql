create database mobile;
use mobile;
SELECT * FROM mobile.mobile_analysis;

-- Check mobile features and price list. --
select phone_name,price from mobile_analysis;

-- Find out the price of most expensive phones --
select Phone_name,Price from mobile_analysis order by Price desc limit 5;

-- Find out the price of most chepest phones --
select Phone_name,Price from mobile_analysis order by Price asc limit 5;

-- List of top 5 samsung phones with price and all features --
select * from mobile_analysis where Brands ='samsung' order by Price desc limit 5;

-- Must have android phones list then top 5 high price android phones --
select * from mobile_analysis where Operating_System_Type ='Android' order by Price desc limit 5;

-- Must have android phones list then top 5 lower price android phones --
select * from mobile_analysis where Operating_System_Type ='Android' order by Price asc limit 5;

-- Must have IOS phones list then top 5 high price IOS phones --
select * from mobile_analysis where Operating_System_Type ='IOS' order by Price desc limit 5;

--  Must have IOS phones list then top 5 high price IOS phones --
select * from mobile_analysis where Operating_System_Type ='IOS' order by Price asc limit 5;

-- Write a query which phone support 5g and top 5 phones with 5g support --
select * from mobile_analysis where 5G_Availability = 'yes'order by Price desc limit 5;

-- Total pricre of all mobile is to be with brand name --
select brands,sum(Price) as total_price from mobile_analysis group by Brands;

-- END --












