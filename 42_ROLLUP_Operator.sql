SELECT 
    state,
    city, 
    sum (invoice_total) as total_sales
from invoices as i
JOIN clients as c USING (client_id)
GROUP BY state, city with rollup;

select 
    pm.name as payment_method,
    sum(p.amount)
from payments as p
join payment_methods as pm
    on p.payment_method = pm.payment_method_id
GROUP BY pm.name with rollup;