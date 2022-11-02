SELECT *
FROM orders as o
join customers as c
	on o.customer_id = c.customer_id;
    
SELECT *
FROM orders as o, customers as c
	where o.customer_id = c.customer_id
    