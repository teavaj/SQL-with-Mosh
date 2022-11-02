DROP PROCEDURE IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state(
p_state char(2)
)
BEGIN
	IF p_state IS NULL THEN
		SET p_state = 'CA';        
	END IF;
    
    SELECT *
    FROM clients
    WHERE state = p_state;
END$$

DELIMITER ;

DROP PROCEDURE IF EXISTS get_clients_by_state;

DELIMITER $$
CREATE PROCEDURE get_clients_by_state(
p_state char(2)
)
BEGIN
    SELECT *
    FROM clients
    WHERE state = ifnull(p_state, state);
END$$

DELIMITER ;

use sql_invoicing;

DROP PROCEDURE IF EXISTS get_payments;

DELIMITER $$
CREATE PROCEDURE get_payments(
	p_client_id INT,
    p_payment_method TINYINT
)
BEGIN
	SELECT *
    FROM payments
    WHERE client_id = IFNULL(p_client_id, client_id) and
		payment_method = ifnull(p_payment_method, payment_method);
END$$

DELIMITER ;

call get_payments (1, NULL);