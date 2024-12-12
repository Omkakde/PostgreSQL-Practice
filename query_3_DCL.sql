GRANT SELECT, INSERT, UPDATE ON employees TO user1;

REVOKE INSERT, UPDATE ON employees FROM user1;

GRANT ALL PRIVILEGES ON DATABASE mydb TO user1;

GRANT SELECT ON employees TO user2;

REVOKE ALL PRIVILEGES ON DATABASE mydb FROM user2;

GRANT EXECUTE ON FUNCTION get_employee_salary TO user3;

REVOKE EXECUTE ON FUNCTION get_employee_salary FROM user3;

CREATE ROLE manager WITH LOGIN PASSWORD 'password123';

GRANT manager TO user4;

ALTER ROLE manager WITH SUPERUSER;