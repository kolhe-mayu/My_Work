create database cars;
use cars;
SELECT * FROM cars.car_dekho;
-- Read cars data --
select * from car_dekho;

-- Total cars: To get a count of total records --
select count(*) from car_dekho;

-- The manager asked the employee how many cars will available in 2023? --
select count(*) from car_dekho where year = 2023;

-- The manager asked the employee how many cars will available in 2020,2021,2022? --
select count(*) from car_dekho where year in (2020,2021,2023) group by year;

-- Clint asked me to print the total of all cars by year. I dont see all the reports.
select year, count(*) from car_dekho group by year;

-- Clint asked to car dealer agent how many disel cars will there in 2020? --
select count(*) from car_dekho where year=2020 and fuel='Diesel';

-- Clint requested a car dealer agent how many petrol cars will there in 2020? --
select count(*) from car_dekho where year=2020 and fuel='Petrol';

-- The manager told the employee to give a print all the fuel cars (petrol,diesel,cng)? --
select year,count(*) from car_dekho where fuel ='Petrol'group by year;
select year,count(*) from car_dekho where fuel ='Diesel'group by year;
select year,count(*) from car_dekho where fuel ='Electric'group by year;
select year,count(*) from car_dekho where fuel ='CNG'group by year;

-- Manager said there were more than 100 cars in a given year, which year had more than 100 cars? --
select year, count(*) from car_dekho group by year having count(*)>100;
select year, count(*) from car_dekho group by year having count(*)<50;

-- The manager said to employee all cars count details between 2015 and 2023? --
select count(*) from car_dekho where year between 2015 and 2023;

-- The manager said to employee all cars count details between 2015 and 2023? we need complete report --
select * from  car_dekho where year between 2015 and 2023;

-- END --

