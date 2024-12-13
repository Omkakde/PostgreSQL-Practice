-- SELECT * FROM departments
-- NATURAL JOIN customers

-- SELECT * FROM departments
--  NATURAL JOIN customers
--  where department_id IN (1,2,4,5)


-- SELECT d.department_id, d.department_name, c.name
-- FROM departments as d
-- JOIN customers as c on d.department_id = c.customer_id
-- where d.department_name LIKE "%a"

	
SELECT d.department_id, d.department_name, c.name
FROM departments as d
JOIN customers as c on d.department_id = c.customer_id