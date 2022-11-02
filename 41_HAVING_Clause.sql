SELECT  client_id
       ,sum (invoice_total) AS total_sales,
       COUNT(*) as number_of_invoices
FROM invoices
GROUP BY  client_id
HAVING total_sales > 500 and number_of_invoices > 5

;


-- UPDATE customers
-- set state = 'VA'
-- where last_name = 'MacCaffrey';

select 
    o.order_id,
    c.last_name,
    c.state,
    sum(oi.quantity * oi.unit_price) as total_spending
from orders as o
join customers as c
    USING (customer_id)
join order_items as oi
    USING (order_id)
where c.state = 'VA'
GROUP BY o.customer_id
--HAVING total_spending  > 100
;
