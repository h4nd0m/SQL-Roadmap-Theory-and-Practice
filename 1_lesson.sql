SELECT *
FROM users;

SELECT name,
age,
city,
age+5 as age_in_5_years,
age * 2 as d_age
FROM users
WHERE (city = 'Moscow' OR city = 'Kazan')
	AND age>20;

-- 1.
select name
from users 

-- 2.
select name, age
from users 

-- 3.
select name
from users
where city = 'Moscow'

-- 4.
select name, city
from users
where age>25

-- 5.
select name, age, city
from users
where city = 'Moscow' and age > 30

-- 6.
select name, city
from users
where city = 'Moscow' or city = 'Kazan'

-- 7.
select name, age, city
from users
where (city = 'Moscow' or city = 'Kazan')
	and age >25
	
-- 8.
select age,
	age + 5 as age_in_5_years
from users

-- 9.
select name,
	registration_date
from users
where registration_date>'2024-01-01'


	
	
