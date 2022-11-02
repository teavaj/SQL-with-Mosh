use sql_invoicing;

-- session var
set @invoices_count = 0;


-- local var

delimiter $$
create procedure get_risk_factor()
BEGIN 
	DECLARE risk_factor DECIMAL(9, 2) default 0;
    DECLARE invoices_total DECIMAL(9, 2);
    declare invoices_count int;
    
    select count(*), sum(invoice_total)
    into invoices_count, invoices_total
    from invoices;
    
    set risk_factor = invoices_total / invoices_count *5;
    
    select risk_factor;

END$$

delimiter ;	

call get_risk_factor();