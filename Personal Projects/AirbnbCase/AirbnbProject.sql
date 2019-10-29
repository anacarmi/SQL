select *
from Airbnb.Airbnbtabla

# average price per city
select neighbourhood_group as City, avg(price) as Price
from Airbnb.Airbnbtabla
where price <> 0
group by City
order by Price DESC;

# average price per room type
select room_type as RoomType, avg(price) as Price
from Airbnb.Airbnbtabla
where price <> 0
group by RoomType
order by Price Desc;

# max and min price per city
select neighbourhood_group as City, max(price) as MaximumPrice, min(price) as MinimumPrice
from Airbnb.Airbnbtabla
where price <> 0
group by City

# null values in price
select *
from Airbnb.Airbnbtabla
where price = 0

# price per city per year > 100 dlls
select YEAR(last_review) as Year1 ,neighbourhood_group as City, avg(price) as Price
from Airbnb.Airbnbtabla
where last_review between '2014-01-01' and '2019-12-31'
group by Year1, neighbourhood_group
having avg(price) > 100
order by Year1

#number of airbnbs per city
select neighbourhood_group, count(neighbourhood_group) as NumberofAirbnbs
from Airbnb.Airbnbtabla
group by neighbourhood_group
order by NumberofAirbnbs desc

#number of roomtypes per city
select neighbourhood_group as City, room_type, count(neighbourhood_group) as NumberofAirbnbs
from Airbnb.Airbnbtabla
group by City, room_type
order by City

 
# maximum number of reviews per city
select neighbourhood_group as City, max(number_of_reviews) as MaxReviews
from Airbnb.Airbnbtabla
group by City

# Number of Properties per host
select distinct host_id as Host, count(host_id) as Number_of_Properties
from Airbnb.Airbnbtabla
group by host_id

# average availability per city
select neighbourhood_group as City, avg(availability_365) as Availability_per_Year
from Airbnb.Airbnbtabla
group by  City

# number of airbnbs per city per month through years
select month(last_review) as Month, Year(last_review) as Year,neighbourhood_group as City, count(neighbourhood_group) as Number_of_Airbnbs
from Airbnb.Airbnbtabla
group by City, Year, Month
order by Month, Year

select neighbourhood_group as City, avg(number_of_reviews) as AverageReviews
from Airbnb.Airbnbtabla
group by City
