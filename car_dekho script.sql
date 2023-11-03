create schema cars;
use cars;
--- READ DATA ---
select*from car_dekho;
--- Total cars: to get a count of total records---
select count(*) from car_dekho;
--- The manager asked the employee How many cars will be available in 2023?
select count(*) from car_dekho where year = 2023; #6
--- The manager asked the employee How many cars is available in 2020,2021,2022 ---
select count(*) from car_dekho where year = 2020; #74
select count(*) from car_dekho where year = 2021; #7
select count(*) from car_dekho where year = 2022; #7
    --- GROUP BY---
select count(*) from car_dekho where year in (2020,2021,2022) group by year; #7,#7,#74 
--- Clint asked me to print the total of all cars by year.I dont see all details---
select year,count(*)from car_dekho group by year; 
--- Clint asked to car dealer agent how many diesel car will be their in 2020?---
select count(*)from car_dekho where year = 2020 and fuel ="diesel"; 
--- Clint reqested car dealer agent how many petrol cars will be available in 2020?---
select count(*)from car_dekho where year = 2020 and fuel ="petrol";
--- The manager told the employee to give a print of all the fuel cars (petrol,diesel and CNG) come by all the year.---
select year ,count(*)from car_dekho where fuel = "petrol" group by year;
select year ,count(*)from car_dekho where fuel = "diesel" group by year;
select year ,count(*)from car_dekho where fuel = "CNG" group by year;
--- The manager said there were more than 100 cars in a given year , which year had more than 100 year?;---
select year ,count(*)from car_dekho group by year having count(*)>100;
--- The manager said the employee all cars count details between 2015 and 2023---
select count(*)from car_dekho where year between 2015 and 2023;
--- The manager said to the employee all teh car details between 2015 to 2023;
select*from car_dekho where year between 2015 and 2023;
  ------------------ THE END ------------