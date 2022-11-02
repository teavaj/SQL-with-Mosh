use sql_hr;

SELECT
    e.employee_id,
    e.first_name,
    m.first_name as manager
FROM employees AS e
left outer join employees m
    on e.reports_to = m.employee_id