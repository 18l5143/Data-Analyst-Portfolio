select * from PortfolioProject.. CarData

--Select Car_Name that have Driven_kms >10000

select Car_Name,Year,Driven_kms
from PortfolioProject.. CarData
where Driven_kms > 10000
order by Year

--looking at selling price in year 2015
select Year, round (avg(Selling_Price),2) as Av_SellingPrice
from PortfolioProject.. CarData
where Year = 2015 
group by Year

--looking at cars that uses petrol

select Car_name,Year,Present_Price,Fuel_Type
from PortfolioProject.. CarData
where Fuel_Type = 'Petrol'

--checking types of fuel

select  distinct(Fuel_Type)
from PortfolioProject.. CarData

--total number of fuel_types
select  Fuel_Type, count(Fuel_Type) as Total
from PortfolioProject.. CarData
group by Fuel_Type

--looking at cars that are manual and have an owner

select Car_Name,Transmission,Owner
from PortfolioProject.. CarData
where Transmission = 'Manual' and Owner > 0

--difference between selling_price and present_price

select Car_Name, Selling_Price, Present_Price, (Present_Price-Selling_Price) as Difference
from PortfolioProject.. CarData

--using case statement

select Car_Name,Year,
case
   when Year <= 2015 then 'Old model'
   else 'New model'
end as Model
from PortfolioProject.. CarData

--checking type of cars

select Car_Name, count(Car_Name) TotalCars
from PortfolioProject.. CarData
group by Car_Name

--looking at cars between 2008 and 2013

select Car_Name,Year
from PortfolioProject.. CarData
where Year between 2008 and 2013

--checking selling type
select Car_Name,Selling_Type
from PortfolioProject.. CarData
where Selling_type = 'Dealer'

--min and max prices

select  min(Selling_Price)as MinPrice, max(Present_Price) as MaxPrice
from PortfolioProject.. CarData