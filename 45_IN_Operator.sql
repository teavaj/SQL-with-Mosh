SELECT  *
FROM products
WHERE product_id not IN ( SELECT distinct product_id FROM order_items);

select * 
from clients
where client_id not in (
    select distinct client_id
    from invoices
)

;