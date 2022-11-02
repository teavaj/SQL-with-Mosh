select *
from employees AS e
where salary > (
    select AVG(salary)
    from employees
    where office_id = e.office_id
);

select *
from invoices as i
where invoice_total > (
    select avg(invoice_total)
    from invoices
    where client_id = i.client_id
)
