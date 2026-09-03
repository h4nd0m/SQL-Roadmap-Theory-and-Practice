--CREATE TABLE products (
--    id INTEGER PRIMARY KEY,
--    name VARCHAR(100),
--    category VARCHAR(100),
--    price NUMERIC(10, 2)
--);
--
--INSERT INTO products (id, name, category, price)
--VALUES
--    (1, 'Laptop', 'Electronics', 80000.00),
--    (2, 'Phone', 'Electronics', 50000.00),
--    (3, 'Headphones', 'Electronics', 7000.00),
--    (4, 'Keyboard', 'Accessories', 5000.00),
--    (5, 'Mouse', 'Accessories', 3000.00);

--ALTER TABLE orders
--ADD COLUMN product_id INTEGER;
--
--UPDATE orders
--SET product_id = CASE id
--    WHEN 1 THEN 1
--    WHEN 2 THEN 3
--    WHEN 3 THEN 2
--    WHEN 4 THEN 4
--    WHEN 5 THEN 3
--    WHEN 6 THEN 1
--    WHEN 7 THEN 1
--    WHEN 8 THEN 5
--    WHEN 9 THEN 3
--    WHEN 10 THEN 4
--    WHEN 11 THEN 2
--END;

select 
	u.name as user_name,
	p.name as product_name,
	o.amount
from users u 
join orders o 
	on u.id = o.user_id
join products p
	on o.product_id = p.id;

select 
	u.name,
	p.name as product_name,
	o.amount
from users u
join orders o
	on u.id = o.user_id
join products p
	on o.product_id = p.id
where u.city = 'Moscow'
	and p.category = 'Electronics';

select 
	p.category,
	sum(o.amount) as total_amount
from orders o
join products p
	on o.product_id = p.id
group by p.category;

SELECT
    u.name,
    o.amount
FROM users u
LEFT JOIN orders o
    ON u.id = o.user_id
   AND o.amount > 1000; -- сохранит юзеров с NULL

   
select 
	count(distinct(u.name)) as user_count
from users u
join orders o
	on u.id = o.user_id
join products p
	on o.product_id = p.id
where p.category = 'Electronics';

--SELECT ...
--FROM table_a a
--JOIN table_b b
--    ON ...
--JOIN table_c c
--    ON ...
--WHERE ...
--GROUP BY ...
--HAVING ...
--ORDER BY ...
--LIMIT ...;

-- HOMEWORK

select 
	u.name as user_name,
	p.name as product_name,
	p.category,
	o.amount
from users u
join orders o
	on u.id = o.user_id
join products p 
	on o.product_id = p.id;
	
select 
	u.name as user_name,
	p.name as product_name,
	o.amount
from users u
join orders o 
	on u.id = o.user_id
join products p
	on o.product_id = p.id 
where u.city = 'Moscow';

select 
	p.category,
	sum(o.amount) as total_amount
from orders o
join products p 
	on o.product_id = p.id
group by p.category;

select
	u.name as user_name,
	sum(o.amount)
from users u
join orders o
	on u.id = o.user_id
group by u.id, u.name;

select count(distinct(u.name)) as user_count
from users u
join orders o
	on u.id = o.user_id
join products p
	on o.product_id = p.id
where p.category = 'Electronics';

select
	u.name as user_name,
	p.category,
	sum(o.amount)
from users u
join orders o 
	on u.id = o.user_id 
join products p 
	on o.product_id = p.id
group by u.id, u.name, p.category;

select 
	p.category,
	count(o.id) as order_count
from users u
join orders o
	on u.id = o.user_id
join products p
	on o.product_id = p.id
group by p.category
order by count(o.id) desc;

select 
	p.category,
	avg(o.amount) as average_order_amount
from users u
join orders o 
	on u.id = o.user_id
join products p
	on o.product_id = p.id 
group by p.category;

select 
	u.name
from users u
left join orders o 
	on u.id = o.user_id
where o.id is null;

select 
	u.name,
	sum(o.amount) as total_amount
from users u
join orders o 
	on u.id = o.user_id
join products p
	on o.product_id = p.id
group by u.id, u.name
having sum(o.amount) > 3000;

select 
	u.city,
	sum(o.amount) as total_amount
from users u
join orders o 
	on u.id = o.user_id
join products p
	on o.product_id = p.id
where p.category = 'Electronics'
group by u.city
having sum(o.amount) > 3000;

SELECT
    u.name,
    o.amount
FROM users u
LEFT JOIN orders o
    ON u.id = o.user_id
   AND o.amount > 1000;

SELECT
    u.name,
    o.amount
FROM users u
LEFT JOIN orders o
    ON u.id = o.user_id
WHERE o.amount > 1000;



