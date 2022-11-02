UPDATE invoices
SET payment_total = 10, payment_date = '2019-01-01'
WHERE invoice_id = 1;

UPDATE invoices
SET payment_total = DEFAULT, payment_date = NULL
WHERE invoice_id = 1;

UPDATE invoices
SET 
 payment_total = invoice_total * 0.5,
 payment_date = '2019-01-01'
WHERE invoice_id = 1;

