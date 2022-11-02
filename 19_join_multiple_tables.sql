USE sql_store;

SELECT 
	o.order_id, 
    o.order_date,
    c.first_name,
    c.last_name,
    os.name AS status
FROM orders AS o
JOIN customers AS c ON o.customer_id = c.customer_id
JOIN order_statuses AS os ON o.status = os.order_status_id;

USE sql_invoicing;

SELECT p.payment_id,
	p.date,
	c.name, 
    c.address,
    pm.name as payment_method
FROM payments as p
join clients as c 
	on p.client_id = c.client_id
join payment_methods as pm
	on p.payment_method = pm.payment_method_id