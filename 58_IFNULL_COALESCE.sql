SELECT 
    order_id,
    IFNULL(shipper_id, 'Not assigned') AS shipper
FROM orders;

SELECT
    order_id,
    COALESCE(shipper_id, comments, 'NaN') AS shipper
FROM orders;

SELECT
    CONCAT(first_name, ' ', last_name) as customer,
    IFNULL(phone, 'Unknown')
FROM  customers