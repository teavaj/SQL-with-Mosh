SELECT*
FROM customers
-- WHERE last_name LIKE '%field%'
-- WHERE last_name regexp 'field'
-- WHERE last_name regexp '^field' beginning
-- WHERE last_name regexp 'field$' end of 
-- WHERE last_name regexp 'field|mac|rose'  or 
-- WHERE last_name regexp '^field|mac|rose'
-- WHERE last_name regexp 'field$|mac|rose'
-- WHERE last_name regexp '[gim]e' any char befor e
-- WHERE last_name regexp 'e[f]'
WHERE last_name regexp '[a-h]e';

SELECT *
FROM customers
WHERE first_name REGEXP 'elka|ambur';

SELECT *
FROM customers
WHERE last_name REGEXP 'ey$|on$';

SELECT *
FROM customers
WHERE last_name REGEXP '^my|se';

SELECT *
FROM customers
WHERE last_name REGEXP 'b[ru]';