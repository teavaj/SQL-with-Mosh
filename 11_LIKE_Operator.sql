SELECT *
FROM customers
-- WHERE last_name LIKE 'b%'
-- WHERE last_name LIKE '%b%'
-- WHERE last_name LIKE '%y'
WHERE last_name LIKE 'b____y';

SELECT * 
FROM customers
WHERE address LIKE '%trail%' OR address LIKE '%avenue%';

SELECT *
FROM customers
WHERE phone LIKE '%9'