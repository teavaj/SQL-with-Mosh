SELECT
    invoice_id,
    invoice_total,
    (SELECT AVG(invoice_total)
    FROM invoices) as invoice_avrage,
    invoice_total - (SELECT invoice_avrage) as difference
FROM  invoices;

SELECT 
    c.client_id,
    c.name,
    sum(i.invoice_total) as total_sales,
    (SELECT AVG(invoice_total) FROM invoices) as avrage
    --sum(i.invoice_total) - (SELECT avrage)
FROM invoices as i
JOIN clients as c 
    USING(client_id)
GROUP BY client_id;

SELECT
    client_id,
    name,
    (SELECT SUM(invoice_total) FROM invoices WHERE client_id = c.client_id) AS total_sales,
    (SELECT avg(invoice_total) FROM invoices) AS average,
    (SELECT total_sales - average) AS diffreence
FROM clients AS c