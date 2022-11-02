select * 
from clients
where client_id not in (
    select distinct client_id
    from invoices
);

select * 
from clients
LEFT join invoices USING (client_id)
where invoice_id is null;

select customer_id,
    first_name,
    last_name
from customers
where customer_id in (
    select customer_id
    from orders
    where order_id in (
        select order_id
        from order_items
        where product_id = 3
    )
);

select 
    distinct c.customer_id,
    c.first_name,
    c.last_name
from orders as o
join customers  as c
    USING (customer_id)
join order_items as oi
    USING (order_id)
where oi.product_id = 3
ORDER BY c.customer_id;