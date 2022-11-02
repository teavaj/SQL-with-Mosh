use sql_store;

--create TABLE orders_archived AS
--select * from orders;


insert into order_archive
SELECT *
from orders
WHERE order_date < '2019-01-01';

use sql_invoicing;

INSERT INTO invoices_archived 
select 
    i.invoice_id,
    i.number,
    c.name as customer_name,
    i.invoice_total,
    i.payment_total,
    i.invoice_date,
    i.due_date,
    i.payment_date
from invoices as i
join clients AS c
    on i.client_id = c.client_id
where payment_date is not  NULL;
