DROP PROCEDURE IF EXISTS get_unpaid_invoices_for_client;

DELIMITER $$
CREATE PROCEDURE get_unpaid_invoices_for_client(
	p_client_id INT,
    OUT p_invoices_count INT,
    OUT p_invoices_total DECIMAL(9,2 )
)
BEGIN
SELECT
	COUNT(*),
    SUM(invoice_total)
    into p_invoices_count, p_invoices_total
from invoices
where client_id = p_client_id AND
	payment_total = 0
;
END$$