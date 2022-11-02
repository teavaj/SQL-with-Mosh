USE sql_store

select
	c.customer_id,
    c.first_name,
    o.order_id,
    sh.name as shipper
from customers as c
LEFT join orders as o
	ON c.customer_id = o.customer_id
left join shippers as sh
	on o.shipper_id = sh.shipper_id
order by c.customer_id;

SELECT
	o.order_date, 
    o.order_id, 
    c.first_name,
    sh.name as shipper,
    os.name as status
FROM orders as o
join customers as c 
	on o.customer_id = c.customer_id
left join shippers as sh
	on o.shipper_id = sh.shipper_id
left join order_statuses as os
	on o.status = os.order_status_id
order by shipper