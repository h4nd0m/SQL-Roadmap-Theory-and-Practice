select name, age
from users
order by age; --ask

select name, age
from users
order by age desc;

select name, city, age
from users
order by city asc, age desc;

select name, city, age
from users
order by city asc, age desc
limit 3;

select name, age
from users
where city = 'Moscow'
order by age desc
limit 3;

select distinct city
from users;

select distinct city, age
from users;

select name
from users
where city is null;
--Найдет пользователей, у которых город неизвестен.

SELECT name
FROM users
WHERE city IS NOT NULL;

select *
from users;

--homework

select name
from users
order by age;

select name
from users
order by age desc;

select name, age
from users
order by age desc
limit 3;

select *
from users
where city = 'Moscow'
order by age 
limit 3;

select distinct city
from users;

select distinct city
from users
where city is not null
order by city;

select name, age
from users 
where city is null;

select name, age, registration_date
from users
where registration_date > '2023-01-01'
order by age desc
limit 2;

select name, age, city
from users
where age > 20 and city <> 'Moscow'
order by age desc
limit 5;

select distinct city
from users
where age > 25 
order by city;



