
create view sales_by_client as
SELECT 
    c.client_id,
    c.name,
    sum(invoice_total) as total_sales
FROM clients as c
join invoices as i
    using (client_id)
GROUP BY c.client_id, name;

select *
from sales_by_client

join clients USING (client_id)
order by total_sales DESC;

create view clients_balance as
select
    c.client_id,
    c.name,
    sum(payment_total) - sum(invoice_total) as balance
from invoices as i
join clients as c using(client_id)
GROUP by client_id;

select * from clients_balance