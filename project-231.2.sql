select year(date) as year,round(sum(SalesAmount)) as sales_Amount,round(sum(profit)) as profit 
from sales.append group by year order by year asc;

select monthname(date) as Month_Name,round(sum(SalesAmount)) as sales_Amount,round(sum(profit)) as profit 
from sales.append group by Month_Name;

select quarter(date) as quarter,round(sum(SalesAmount)) as sales_Amount,round(sum(profit)) as profit 
from sales.append group by quarter order by quarter asc;

Select salesterritorycountry as country,round(sum(profit)) as profit from sales.append as sa
left join territory.ter as tt 
on tt.SalesTerritoryKey=sa.SalesTerritoryKey group by tt.salesterritorycountry order by profit asc;

Select EnglishProductCategoryName As Product_Name ,
count(EnglishProductCategoryName) as Product_Count,round(sum(SalesAmount)) as Sale_Amount,
round(sum(profit)) as profit from sales.append as Sa
left join product.pdt as pdt on pdt.ProductKey=sa.ProductKey
left join product.psc as psc on psc.ProductSubcategoryKey=pdt.ProductSubcategoryKey
left join product.pc as pc on pc.ProductCategoryKey=psc.ProductCategoryKey
group by product_Name order by profit desc;


Select SalesTerritoryGroup as TerritoryGroup, count(SalesTerritoryGroup ) as Territory_Order,
round(sum(SalesAmount))as Sales_Amount,
round(sum(profit)) as profit from sales.append as sa
left join territory.ter as tt 
on tt.SalesTerritoryKey=sa.SalesTerritoryKey group by TerritoryGroup  order by profit desc;