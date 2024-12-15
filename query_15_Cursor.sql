DO $$
DECLARE
    rec person%ROWTYPE;  -- Declare a variable to hold each row
    person_cursor CURSOR FOR SELECT id, name, citys, salary FROM person;  -- Declare the cursor
BEGIN
    OPEN person_cursor;  -- Open the cursor

    LOOP
        FETCH person_cursor INTO rec;  -- Fetch the next row into the variable 'rec'
        EXIT WHEN NOT FOUND;  -- Exit the loop if no more rows are found
        
        -- Print the name and salary of the person
        RAISE NOTICE 'Name: %, Salary: %', rec.name, rec.salary;
    END LOOP;

    CLOSE person_cursor;  -- Close the cursor after processing all rows
END $$;
