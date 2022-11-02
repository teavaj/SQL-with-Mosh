SELECT  
    order_id,
    order_date,
    CASE
        WHEN YEAR(order_date) = YEAR(NOW()) THEN 'Active'
        WHEN YEAR(order_date) = YEAR(NOW()) - 1 THEN 'Last Year'
        WHEN YEAR(order_date) < YEAR(NOW()) - 1 THEN 'Archived'
        ELSE 'Future'
    END AS category
FROM orders;

SELECT 
    CONCAT(first_name, ' ', last_name) AS customer,
    points,
    CASE
        when points > 3000 THEN 'Gold'
        WHEN points < 2000 THEN 'Bronze'
        ELSE 'Silver'
    END AS category
FROM customers