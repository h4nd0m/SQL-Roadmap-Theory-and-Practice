select 
	city,
	count(*) as user_count
from users
group by city
having count(*)>2;

select 
	city,
	avg(age) as average_age
from users
group by city
having avg(age)>20;

select 
	city,
	count(*) as user_count
from users
where age>20
group by city
having count(*)>2;

select 
	city
from users
where age>20
group by city 
having avg(age)>25;

select
	city,
	max(age) as max_age
from users
group by city
having max(age)>35;

select 
	city,
	count(*) as user_count,
	avg(age) as average_age
from users
group by city
having count(*)>=2 and avg(age)>25;

select
	city
from users
where age>25
group by city
having count(*)>=2
order by count(*) desc;

select 
	city,
	count(*) as user_count,
	max(age) as max_age
from users
group by city
having max(age)>30
	and count(*)>=2;

select 
	city,
	count(*) as user_count,
	avg(age) as average_age
from users
where registration_date > '2023-01-01'
group by city 
having count(*)>2 and avg(age)>25;

SELECT
    city,
    COUNT(*) AS user_count,
    AVG(age) AS average_age
FROM users
WHERE age > 20
GROUP BY city
HAVING COUNT(*) >= 2
   AND AVG(age) > 25
ORDER BY average_age DESC
LIMIT 3;
