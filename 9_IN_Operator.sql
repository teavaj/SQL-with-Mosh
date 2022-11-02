SELECT *
from customers 
-- where STATE = 'va' OR state = 'GA' OR state = 'FL'
-- WHERE state IN ('VA', 'FL', 'GL')
WHERE state NOT IN ('VA', 'FL', 'GL');

SELECT *
FROM products
WHERE quantity_in_stock IN (49, 38, 72)