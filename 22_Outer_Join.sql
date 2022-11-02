use sql_store;

select 
	c.customer_id,
    c.first_name,
    o.order_id
from customers as c
join orders as o
	ON c.customer_id = o.customer_id
order by c.customer_id;

select 
	c.customer_id,
    c.first_name,
    o.order_id
from customers as c
LEFT join orders as o
	ON c.customer_id = o.customer_id
order by c.customer_id;

select 
	c.customer_id,
    c.first_name,
    o.order_id
from orders as o
right join customers as c
	ON c.customer_id = o.customer_id
order by c.customer_id;

select p.product_id,
	p.name, 
    oi.quantity
FROM products as p
right JOIN order_items as oi
	on p.product_id = oi.product_id