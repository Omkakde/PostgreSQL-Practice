-- CREATE FUNCTION add_numbers(a INT, b INT) 
-- RETURNS INT AS
-- $$
-- BEGIN
--    RETURN a + b;
-- END;
-- $$ LANGUAGE plpgsql;


-- CREATE FUNCTION multiply_numbers(a INT, b INT DEFAULT 2)
-- RETURNS INT AS
-- $$
-- BEGIN
--    RETURN a * b;
-- END;
-- $$ LANGUAGE plpgsql;


-- CREATE FUNCTION get_even_numbers(limits INT)
-- RETURNS SETOF INT AS
-- $$
-- BEGIN
--    RETURN QUERY
--    SELECT generate_series(1, limits) WHERE generate_series % 2 = 0;
-- END;
-- $$ LANGUAGE plpgsql;

-- SELECT add_numbers(3, 5); -- Returns 8

-- CREATE FUNCTION random_number() 
-- RETURNS INT AS 
-- $$
-- BEGIN
--    RETURN floor(random() * 100);
-- END;
-- $$ LANGUAGE plpgsql VOLATILE;

-- SELECT random_number();


-- CREATE FUNCTION display_info(a TEXT) RETURNS TEXT AS
-- $$
-- BEGIN
--    RETURN 'Text: ' || a;
-- END;
-- $$ LANGUAGE plpgsql;

-- CREATE FUNCTION display_info(a INT) RETURNS TEXT AS
-- $$
-- BEGIN
--    RETURN 'Integer: ' || a;
-- END;
-- $$ LANGUAGE plpgsql;

select display_info('Om Kakde')

