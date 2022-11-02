SELECT*
FROM customers
-- WHERE phone IS NULL
WHERE phone IS not NULL;

SELECT *
FROM orders
WHERE shipped_date IS NULL