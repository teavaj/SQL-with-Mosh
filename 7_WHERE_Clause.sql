SELECT *
FROM customers
-- WHERE points > 3000
-- WHERE state = 'VA'
-- WHERE state = 'va'
-- WHERE state <> 'VA'
WHERE birth_date > '1990-01-01';

SELECT *
FROM orders
WHERE order_date >= '2018-01-01'