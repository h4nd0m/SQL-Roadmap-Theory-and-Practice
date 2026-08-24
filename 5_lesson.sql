--CREATE TABLE orders (
--    id INTEGER PRIMARY KEY,
--    user_id INTEGER,
--    amount NUMERIC(10, 2),
--    order_date DATE
--);
--
--INSERT INTO orders (id, user_id, amount, order_date)
--VALUES
--    (1, 1, 1500.00, '2024-01-20'),
--    (2, 1, 700.00, '2024-02-03'),
--    (3, 2, 2500.00, '2024-01-15'),
--    (4, 3, 1200.00, '2024-03-15'),
--    (5, 3, 800.00, '2024-03-20'),
--    (6, 4, 3000.00, '2023-12-10'),
--    (7, 5, 4500.00, '2024-01-05'),
--    (8, 5, 1000.00, '2024-02-11'),
--    (9, 5, 500.00, '2024-03-01'),
--    (10, 6, 900.00, '2024-02-20'),
--    (11, 7, 1800.00, '2023-06-01');

select *
from orders;

select
	users.name,
	orders.amount
from users
join orders
	on users.id = orders.user_id;

-- join из PostgeSQL
SELECT
    users.name,
    orders.amount
FROM users
INNER JOIN orders
    ON users.id = orders.user_id;

-- PostgreSQL 
-- конце будут пользователи которые ничего не заказали
SELECT
    users.name,
    orders.amount
FROM users
LEFT JOIN orders 
    ON users.id = orders.user_id;

select
	u.name,
	o.amount
from users u
left join orders o
	on u.id = o.user_id
where u.city = 'Moscow';

select 
	u.city,
	sum(o.amount)
from users u 
inner join orders o
	on u.id = o.user_id 
group by u.city
order by sum(o.amount) desc;

SELECT
    u.name,
    SUM(o.amount) AS total_amount
FROM users u
JOIN orders o
    ON u.id = o.user_id
GROUP BY u.name;

-- Homework:
select
	u.name,
	o.amount
from users u
join orders o
	on u.id = o.user_id;

select
	u.name,
	o.order_date
from users u
join orders o
	on u.id = o.user_id;

select
	u.name,
	o.amount,
	o.order_date
from users u
join orders o
	on u.id = o.user_id
where u.city = 'Moscow';

select 
	u.name,
	sum(o.amount) as total_amount
from users u 
inner join orders o
	on u.id = o.user_id 
group by u.name;

select 
	u.city,
	sum(o.amount) as total_amount
from users u 
inner join orders o
	on u.id = o.user_id 
group by u.city;

select
	u.name
from users u 
inner join orders o
	on u.id = o.user_id
group by u.name;

select
	u.name
from users u 
left join orders o
	on u.id = o.user_id
where o.amount is null
group by u.name;

select 
	u.name,
	count(o.amount) as order_count,
	sum(o.amount) as total_amount
from users u
inner join orders o
	on u.id = o.user_id
group by u.name;

select 
	u.name,
	sum(o.amount) as total_amount
from users u
inner join orders o
	on u.id = o.user_id
group by u.name
order by sum(o.amount) desc
limit 3;

select 
	u.city,
	sum(o.amount) as total_amount
from users u 
inner join orders o
	on u.id = o.user_id 
group by u.city
having sum(o.amount) > 4000;

select
	u.name,
	count(o.amount) as order_count,
	coalesce(sum(o.amount), 0) as total_amount
from users u
left join orders o 
	on u.id = o.user_id
group by u.name;


