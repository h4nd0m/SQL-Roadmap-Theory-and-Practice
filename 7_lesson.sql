SELECT city
FROM users
WHERE age > 40;

SELECT name
FROM users
WHERE city IN (
    SELECT city
    FROM users
    WHERE age > 40
);

SELECT name
FROM users
WHERE city NOT IN (
    SELECT city
    FROM users
    WHERE age > 40
);

SELECT name
FROM users
WHERE age > 28.666;

SELECT
    name,
    age
FROM users
WHERE age > (
    SELECT AVG(age)
    FROM users
);

select 
	u.name,
	(
		select count(*)
		from orders o
		where o.user_id = u.id
	) as order_count
from users u;

select
	u.id,
	u.name
from users u
where exists (
	select 1
	from orders o
	where o.user_id = u.id
);

select
	u.id,
	u.name
from users u
where not exists (
	select 1
	from orders o
	where o.user_id = u.id
);

select 
	u.id,
	u.name
from users u
where exists (
	select 1
	from orders o
	where o.user_id = u.id
		and o.amount > 2000
);

SELECT
    u.id,
    u.name
FROM users u
WHERE EXISTS (
    SELECT 1
    FROM orders o
    JOIN products p
        ON o.product_id = p.id
    WHERE o.user_id = u.id
      AND p.category = 'Electronics'
);

SELECT *
FROM (
    SELECT
        city,
        AVG(age) AS average_age
    FROM users
    GROUP BY city
) AS city_stats;

WITH city_stats AS (
    SELECT
        city,
        AVG(age) AS average_age
    FROM users
    GROUP BY city
)
SELECT *
FROM city_stats;

--homework
--1
select 
	u.name,
	u.age
from users u
where u.age > (
	select
		AVG(age)
	from users);

--2
select
	u.name
from users u
where u.city in (
	select distinct(city) 
	from users
	where age > 35
);

--3
select
	u.name
from users u
where exists(
	select 1
	from orders o
	where o.user_id = u.id
		and o.amount > 2000);

--4
select
	u.name
from users u
where not exists(
	select 1
	from orders o
	where u.id = o.user_id
);

--5
select 
	u.name
from users u
where exists (
	select 1
	from orders o
	join products p
		on o.product_id = p.id
	where u.id = o.user_id 
		and p.category = 'Accessories'
)

--6
select u.name
from users u
where exists (
	select 1
	from orders o
	where u.id = o.user_id
		and o.amount> (
			select avg(amount)
			from orders)
);

--7
select
	u.name
from users u
where exists(
	select 1
	from orders o
	where u.id = o.user_id
		and u.city = 'Moscow'
);

--8
select 
	u.name,
	(select count(*)
	from orders o
	where u.id = o.user_id) as order_count
from users u;

--9
select u.name
from users u
join orders o
	on u.id = o.user_id
group by u.name;

select u.name
from users u 
where exists (
	select 1
	from orders o 
	where o.user_id = u.id
);

--10
select u.id, u.name
from users u
where exists(
	select 1
	from orders o
	join products p 
		on o.product_id = p.id
	where o.user_id = u.id
		and p.category = 'Electronics'
) and not exists(
	select 1
	from orders o
	join products p 
		on o.product_id = p.id
	where o.user_id = u.id
		and p.category = 'Accessories'
);







