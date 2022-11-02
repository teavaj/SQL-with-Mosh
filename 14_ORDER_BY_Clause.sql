SELECT *
FROM customers
ORDER BY state, first_name DESC ;

SELECT 
	first_name, 
	last_name,
    10 AS points
FROM customers
ORDER BY birth_date, points, first_name;

SELECT 
	first_name, 
	last_name   
FROM customers
ORDER BY 1 desc, 2;

SELECT *, 
	quantity * unit_price AS total_price
FROM order_items
WHERE order_id = 2
ORDER BY (quantity * unit_price) DESC;