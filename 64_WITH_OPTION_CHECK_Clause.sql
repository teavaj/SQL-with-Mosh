UPDATE invoices_with_balance
SET payment_total = invoice_total
WHERE invoice_id = 2;

DROP VIEW invoices_with_balance;

CREATE OR REPLACE VIEW invoices_with_balance AS
SELECT
    invoice_id,
    number,
    client_id,
    invoice_total,
    payment_total,
    invoice_total - payment_total as balance,
    invoice_date,
    due_date,
    payment_date
from invoices
where (invoice_total - payment_total) > 0
-- having balance > 0 
WITH CHECK OPTIon 