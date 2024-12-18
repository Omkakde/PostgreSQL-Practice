CREATE OR REPLACE FUNCTION get_names(IN id1 INT, IN id2 INT)
RETURNS TABLE(id INT, name TEXT)  -- Define the columns to return
LANGUAGE plpgsql
AS $$
BEGIN
   RETURN QUERY
   SELECT id, name FROM person WHERE id BETWEEN id1 AND id2;
END;
$$;

SELECT * FROM get_names(1, 10);

 -- CALL get_names(1, 10);
-- FETCH ALL IN result;
