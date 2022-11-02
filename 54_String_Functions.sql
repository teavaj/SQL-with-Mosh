--SELECT LENGTH('sklmdfgm')
--SELECT UPPER('sklmdfgm')
--SELECT LOWER('DFGklmdfgm')
--SELECT LTRIM('   sklmd   fgm   ')
--SELECT RTRIM('   sklmd   fgm   ')
--SELECT TRIM('   sklmd   fgm   ')
--SELECT LEFT('   sklmd   fgm   ', 10)
--SELECT RIGHT('   sklmd   fgm   ', 10)
--SELECT SUBSTRING('   sklmd   fgm   ', 4, 10)
--SELECT SUBSTRING('   sklmd   fgm   ', 4)
--SELECT LOCATE('dfg', 'sdfgosdlks')
--SELECT replace('kuki', 'ku', 'pu')
SELECT CONCAT('first', 'last');

SELECT CONCAT(first_name, ' ', last_name) as full_name
from customers