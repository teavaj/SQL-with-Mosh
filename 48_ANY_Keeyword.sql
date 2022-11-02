select client_id, count(*)
from invoices
GROUP BY client_id
HAVING count(*) >= 2;


select *
from clients
where client_id in(
select client_id
from invoices
GROUP BY client_id
HAVING count(*) >= 2)
;

select *
from clients
where client_id = ANY (
select client_id
from invoices
GROUP BY client_id
HAVING count(*) >= 2);