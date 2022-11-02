UPDATE invoices
set
    payment_total = invoice_total * 0.5,
    payment_date = due_date
where client_id in (3, 4);

use sql_store;

update customers 
set points = points + 50
where birth_date < '1990-01-01';