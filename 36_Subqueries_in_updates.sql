use sql_invoicing;

update invoices
set
 payment_total = invoice_total + 20,
 payment_date = due_date
where client_id in (
select client_id
from clients
where state in ('CA', 'NY'));

use sql_store;

update orders
set comments = 'Gold Customer'
where customer_id in(
    select customer_id from customers 
    where points > 3000
);