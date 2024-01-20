CREATE FUNCTION get_average_price()
RETURNS DECIMAL
AS $$
    SELECT AVG(unit_price)
    FROM products
$$ LANGUAGE SQL;

SELECT get_average_price()

CREATE FUNCTION get_average_price_of_all_products()
RETURNS DECIMAL
AS $$
    SELECT SUM(unit_price)/COUNT(product_id)
    FROM products
$$ LANGUAGE SQL;

SELECT get_average_price_of_all_products()