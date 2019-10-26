# average price per city
select neighbourhood_group, avg(price) as Price
from Airbnb.Airbnbtabla
where price <> 0
group by neighbourhood_group
order by Price DESC;

# average price per room type
select room_type, avg(price) as Price
from Airbnb.Airbnbtabla
where price <> 0
group by room_type
order by Price Desc;

# max and min price per city
select neighbourhood_group, max(price) as MaximumPrice, min(price) as MinimumPrice
from Airbnb.Airbnbtabla
where price <> 0
group by neighbourhood_group

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

# average price per minimum night per city
select minimum_nights, neighbourhood_group as City, avg(price) as Price
from Airbnb.Airbnbtabla
group by neighbourhood_group, minimum_nights
order by minimum_nights 

# maximum number of reviews per city
select neighbourhood_group as City, max(number_of_reviews) as MaxReviews
from Airbnb.Airbnbtabla
group by City
