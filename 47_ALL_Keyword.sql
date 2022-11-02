select *
from invoices
WHERE invoice_total > (


select max(invoice_total)
from invoices
where client_id = 3);

select *
from invoices
where invoice_total > ALL (
    select invoice_total
    from invoices

)