-- Primary Key
CREATE TABLE departments (
    department_id SERIAL PRIMARY KEY,
    department_name VARCHAR(100)
);

-- Foreign Key and a Primary Key
CREATE TABLE employees (
    employee_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    department_id INT,
    salary NUMERIC,
    FOREIGN KEY (department_id) REFERENCES departments(department_id)
);

--Unique Keys
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(100) UNIQUE,
    email VARCHAR(100) UNIQUE
);
