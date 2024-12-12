INSERT INTO employees (name, department, salary)
VALUES
('Amit Sharma', 'HR', 50000),
('Priya Patel', 'Engineering', 60000),
('Ravi Kumar', 'Sales', 55000),
('Neha Singh', 'Marketing', 48000),
('Vikram Reddy', 'Engineering', 75000);

SELECT * FROM employees;

SELECT name, department FROM employees;

SELECT * FROM employees WHERE department = 'Engineering';

UPDATE employees
SET salary = 65000
WHERE name = 'Priya Patel';

UPDATE employees
SET salary = salary + 5000
WHERE department = 'Engineering';

DELETE FROM employees WHERE name = 'Neha Singh';

DELETE FROM employees;

SELECT COUNT(*) FROM employees;

SELECT department, SUM(salary) AS total_salary FROM employees GROUP BY department;

SELECT * FROM employees ORDER BY salary DESC;

SELECT * FROM employees LIMIT 3;

INSERT INTO employees (name, department, salary)
SELECT 'John Doe', 'Finance', 70000
WHERE NOT EXISTS (SELECT 1 FROM employees WHERE name = 'John Doe');
