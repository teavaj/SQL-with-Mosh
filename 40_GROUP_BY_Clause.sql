SELECT 
    client_id,
    sum (invoice_total) as total_sales
from invoices
GROUP BY client_id
ORDER BY total_sales DESC
;

SELECT 
    client_id,
    sum (invoice_total) as total_sales
from invoices
where invoice_date >= '2019-07-01'
GROUP BY client_id
ORDER BY total_sales DESC
;

SELECT 
    client_id,
    state, 
    city,
    sum (invoice_total) as total_sales
from invoices as i
join clients USING (client_id)
GROUP BY state, city
ORDER BY total_sales 
;

select 
    p.date,
    pm.name  as payment_method,
    sum(p.amount)
from payments as p
join payment_methods as pm
    on p.payment_method = pm.payment_method_id
GROUP BY p.date, pm.name
ORDER BY p.date ASC;