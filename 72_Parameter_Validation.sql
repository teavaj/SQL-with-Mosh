DROP PROCEDURE IF EXISTS make_payment;

DELIMITER $$
CREATE PROCEDURE make_payment(
	
    p_invoice_id INT,
    p_payment_amount DECIMAL (9, 2),
    p_payment_date DATE
)
BEGIN
	IF p_payment_amount <= 0 THEN
		SIGNAL SQLSTATE '22003'
			SET MESSAGE_TEXT = 'Invalid payment amount';
	END IF;
	UPDATE invoices AS i
    SET
		i.payment_total = p_payment_amount,
        payment_date = p_payment_date
	WHERE invoice_id = p_invoice_id;
END$$
DELIMITER ;

call sql_invoicing.make_payment(2, -100, '2020-01-03');