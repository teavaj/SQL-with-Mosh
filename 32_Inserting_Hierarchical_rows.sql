insert into orders (customer_id, order_date, status)
values(1, '2021-01-05', 1);

insert into order_items
values (last_insert_id(), 1, 1, 2.76), (last_insert_id(), 2, 3, 5.63)
