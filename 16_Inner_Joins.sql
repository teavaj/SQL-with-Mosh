SELECT order_id, o.customer_id, first_name, last_name
FROM orders o
INNER JOIN customers c 
	ON o.customer_id = c.customer_id;
    
SELECT order_id, o.product_id, name, quantity, o.unit_price
FROM order_items o
JOIN products p on
	o.product_id = p.product_id;
