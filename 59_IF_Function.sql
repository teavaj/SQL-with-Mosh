SELECT  
    order_id,
    order_date,
    IF(YEAR(order_date) = YEAR(NOW()), 'Active', 'Archived') as category
FROM orders;

SELECT 
    p.product_id,
    p.name,
    (SELECT 
        COUNT(product_id)
    FROM order_items
    WHERE product_id = p.product_id) AS order_count,
    IF((SELECT order_count) > 1, 'Many times', 'Once') AS frequency
FROM products AS p
-- WHERE order_count <> 0