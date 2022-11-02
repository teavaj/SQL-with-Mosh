DROP VIEW sales_by_client;

create or replace view sales_by_client as
SELECT 
    c.client_id,
    c.name,
    sum(invoice_total) as total_sales
FROM clients as c
join invoices as i
    using (client_id)
GROUP BY c.client_id, name;