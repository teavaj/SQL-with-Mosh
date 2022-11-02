delimiter $$

drop trigger if exists payments_after_insert$$

create trigger payments_after_insert
	after insert on payments
    for each row 
begin
	update invoices
    set payment_total = payment_total + new.amount
    where invoice_id = new.invoice_id;
end$$

delimiter ;

insert into payments
values (DEFAULT, 5, 3, '2020-02-02', 10, 1);

delimiter $$
create trigger payments_after_delete
	after delete on payments
    for each row
begin
	UPDATe invoices
    set payment_total = payment_total - old.amount
    where invoice_id = old.invoice_id
    ;
end$$
delimiter ;

delete from payments
where payment_id in (10, 11, 12);