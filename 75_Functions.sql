drop function if exists get_risk_factor_for_client;

delimiter $$

create function get_risk_factor_for_client(
	p_client_id int
)
returns int

-- deterministic -- returns always the same values
reads sql data
-- modifies sql data

begin
	DECLARE risk_factor DECIMAL(9, 2) default 0;
    DECLARE invoices_total DECIMAL(9, 2);
    declare invoices_count int;
    
    select count(*), sum(invoice_total)
    into invoices_count, invoices_total
    from invoices
    where client_id = p_client_id
    ;
    
    set risk_factor = invoices_total / invoices_count *5;
    
return ifnull(risk_factor, 0);
end$$

delimiter ;

select
	client_id,
    name,
    get_risk_factor_for_client(client_id) as risk_factor
from clients;