USE sql_hr;

SELECT 
	e.employee_id,
    e.first_name,
    m.first_name as manager
fROM employees as e
join employees as m
	on e.reports_to = m.employee_id