DROP PROCEDURE IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state(
p_state char(2)
)
BEGIN
    SELECT *
    FROM clients
    WHERE state = p_state;
END$$

DELIMITER ;

DROP PROCEDURE IF EXISTS get_invoices_by_client;
DELIMITER $$
CREATE PROCEDURE get_invoices_by_client(
p_client_id INT
)
BEGin
	select *
    FROM invoices
    WHERE client_id = p_client_id;
END$$
DELIMITER ;