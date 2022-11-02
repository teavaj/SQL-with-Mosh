use sql_store;

SELECT
    o.order_id,
    c.first_name,
    sh.name AS shipper
FROM orders AS o
JOIN customers as c
    USING (customer_id)
left JOIN shippers AS sh
    using (shipper_id);

select *
from order_items AS oi
join order_item_notes AS oin
    using (order_id, product_id);

use sql_invoicing;

select
    p.date,
    c.name as client,
    p.amount,
    pm.name as payment_method
from payments AS p
join clients as c
    using  (client_id)
join payment_methods pm on p.payment_method = pm.payment_method_id;

