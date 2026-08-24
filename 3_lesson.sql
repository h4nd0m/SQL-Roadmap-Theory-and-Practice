select count(*)
from users;

select count(city) 
-- count по колонне считает только не нулевые значения
from users;

select sum(age)
from users;

select avg(age) as average_age
from users;

select min(age)
from users;

select max(age)
from users;

select 
	count(*) as user_count,
	avg(age) as average_age,
	min(age) as min_age,
	max(age) as max_age
from users;

select 
	city,
	count(*) as user_count
from users
group by city;

SELECT
    city,
    AVG(age) AS average_age
FROM users
GROUP BY city;

select 
	city,
	count(*) as user_count
from users
where age>25
group by city
order by user_count desc;

-- homework

select count(*) as user_count
from users;

select 
	avg(age) as average_age,
	min(age) as min_age,
	max(age) as max_age
from users;

select
	city,
	count(*) as user_count
from users
group by city;

select
	city,
	avg(age) as average_age
from users
group by city;

select
	city,
	count(*) as user_count,
	min(age) as min_age,
	max(age) as max_age
from users
group by city;

select
	city,
	count(*) as user_count
from users
where age > 25
group by city;

select
	city,
	count(*) as user_count,
	avg(age) as average_age
from users
where registration_date > '2023-01-01'
group by city;

select 
	city,
	count(*) as user_count
from users
group by city
order by user_count desc;

select 
	city,
	avg(age) as average_age
from users
group by city
order by average_age desc
limit 3;

select 
	city,
	avg(age) as average_age
from users
where age>20
group by city
order by average_age desc
limit 2;






