use sql_store;

select
c.first_name as customer,
       p.name as product
from customers as c
cross join  products as p
order by  customer;


select
c.first_name as customer,
       p.name as product
from customers as c, products p
order by  customer;

select *
from products as p, shippers as sh;

select  *
from products as p
cross join shippers as sh;
