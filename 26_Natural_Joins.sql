use sql_store;

SELECT
    o.order_id,
       c.first_name
FROM orders as o
natural  join customers AS c;