-- CREATE OR REPLACE PROCEDURE increase_salary_by_city(
--     p_city VARCHAR,         -- The city where salary increase will be applied
--     p_percentage NUMERIC   -- The percentage increase (e.g., 10 for 10% salary increase)
-- )
-- LANGUAGE plpgsql
-- AS $$
-- BEGIN
--     -- Update the salary by the specified percentage for the given city
--     UPDATE person
--     SET salary = salary * (1 + p_percentage / 100)
--     WHERE citys = p_city;
-- END;
-- $$;



-- CALL increase_salary_by_city('Mumbai', 10);




-- SELECT * FROM person WHERE citys = 'Mumbai';


-- CREATE OR REPLACE PROCEDURE add_person(
--     p_name VARCHAR,    -- Person's name
--     p_city VARCHAR,    -- Person's city
--     p_salary NUMERIC   -- Person's salary
-- )
-- LANGUAGE plpgsql
-- AS $$
-- BEGIN
--     -- Insert a new person into the 'person' table
--     INSERT INTO person (name, citys, salary)
--     VALUES (p_name, p_city, p_salary);
-- END;
-- $$;



-- CALL add_person('John Doe', 'New York', 55000);


-- SELECT * FROM person WHERE name = 'John Doe';

-- UPDATE person
-- set citys='Goa'
-- where id=20

select * from person

-- select * from person