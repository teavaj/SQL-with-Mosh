select *
from products
where unit_price > (
    SELECT unit_price
    from products
    where product_id = 3
)
;

use sql_hr;

select *
from employees
where salary > (
    select avg(salary)
    from employees)