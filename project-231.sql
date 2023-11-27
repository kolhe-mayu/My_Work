create table sales.Append(
select*from sales.fes_1 union select*from sales.fsn
);
select * from sales.append;
select count(productkey) from sales.append;
alter table sales.append add date date;
update sales.append set date=DATE_FORMAT(orderdatekey, '%Y-%m-%d');
select *from sales.append ;



Alter table Sales.append add profit text;
select*from sales.append;
UPDATE sales.append  SET profit = salesamount-totalproductcost;
select*from sales.append;

#getting year month table
Select orderdatekey,date from sales.append;
select orderdatekey,date,monthname(date) as Month_Name from sales.append;
select orderdatekey,date,monthname(date) as Month_Name,quarter(date) as Quarter from sales.append;

select year(orderdatekey)as year,round(sum(profit))as Total_Profit,round(sum(SalesAmount)) from sales.append group by year;
select quarter(date) as quarter,sum(salesAmount) from sales.append group by quarter order by quarter asc;