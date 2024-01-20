CREATE FUNCTION youngest_employee()
RETURNS TABLE (
    first_name VARCHAR(20),
    last_name VARCHAR(20)
)
AS $$
    SELECT first_name,last_name FROM employees ORDER BY birth_date DESC LIMIT 1
$$ LANGUAGE SQL;

CREATE FUNCTION oldest_employee()
RETURNS TABLE (
    first_name VARCHAR(20),
    last_name VARCHAR(20)
)
AS $$
    SELECT first_name,last_name FROM employees ORDER BY birth_date ASC LIMIT 1
$$ LANGUAGE SQL;

SELECT youngest_employee();
SELECT oldest_employee();

