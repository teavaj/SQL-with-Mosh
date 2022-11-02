SELECT  MAX(invoice_total)   AS highest
       ,MIN(invoice_total)   AS lowest
       ,AVG(invoice_total)   AS avrage
       ,SUM(invoice_total * 1.1)   AS total
       ,COUNT(invoice_total) AS number_of_invoice
       ,MAX(payment_date)
       ,COUNT(payment_date)  AS count_of_payment
       ,COUNT(*)             AS total_record
       ,COUNT(distinct client_id) as total_clinet
FROM invoices
where invoice_date > '2019-07-01'
;


select
    'First half of 2019' as data_range,
    sum(invoice_total) as total_sales,
    sum(payment_total) as total_payments,
    sum(invoice_total - payment_total) as what_we_expect
from invoices
where invoice_date BETWEEN '2019-01-01' AND '2019-06-30'
UNION
select
    'Second half of 2019' as data_range,
    sum(invoice_total) as total_sales,
    sum(payment_total) as total_payments,
    sum(invoice_total) - sum(payment_total) as what_we_expect
from invoices
where invoice_date >= '2019-07-01'
UNION
select
    'Total of 2019' as data_range,
    sum(invoice_total) as total_sales,
    sum(payment_total) as total_payments,
   sum(invoice_total) - sum(payment_total) as what_we_expect
from invoices
--where invoice_date > '2019-07-01'
;

select
    'First half of 2019' as data_range,
    sum(invoice_total) as total_sales,
   sum(payment_total) as total_payments,
    sum(invoice_total) - sum(payment_total) as what_we_expect
from invoices
where invoice_date > '2019-07-01'