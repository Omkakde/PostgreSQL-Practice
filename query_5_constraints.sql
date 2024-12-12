CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL,
    budget NUMERIC CHECK (budget > 0)
);

CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    department_id INT,
    salary NUMERIC NOT NULL CHECK (salary >= 30000),
    hire_date DATE DEFAULT CURRENT_DATE,
    email VARCHAR(100) UNIQUE,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

INSERT INTO departments (department_name, budget)
VALUES
('HR', 500000),
('Engineering', 1500000);

INSERT INTO employees (name, department_id, salary, email)
VALUES
('Amit Sharma', 1, 50000, 'amit.sharma@example.com'),
('Om Kakde', 2, 70000, 'om.kakde@example.com');
