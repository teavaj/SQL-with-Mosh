SELECT *
FROM (
    SELECT
    client_id,
    name,
    (SELECT SUM(invoice_total) FROM invoices WHERE client_id = c.client_id) AS total_sales,
    (SELECT avg(invoice_total) FROM invoices) AS average,
    (SELECT total_sales - average) AS diffreence
    FROM clients AS c
) AS sales_summary
WHERE total_sales IS NOT NULL