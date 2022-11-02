use sql_store;

select order_id,
       order_date,
       'Active' as status
from orders
where order_date >= '2019-01-01'
union
select order_id,
       order_date,
       'Archived' as status
from orders
where order_date < '2019-01-01';

select first_name
from customers
union
select  name
from shippers;

--@block
select
    customer_id,
    first_name,
    points,
    'Bronze' as type
from customers
where points < 2000
union
select
    customer_id,
    first_name,
    points,
    'Bronze' as type
from customers
where points > 2000 and points < 3000
union
select
    customer_id,
    first_name,
    points,
    'Bronze' as type
from customers
where points > 3000
order by first_name

