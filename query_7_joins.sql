
SELECT 
    orders.order_id,
    orders.order_date,
    customers.name AS customer_name
FROM orders
CROSS JOIN customers;


-- SELECT 
--     orders.order_id,
--     orders.order_date,
--     customers.name AS customer_name
-- FROM orders
-- JOIN customers ON orders.customer_id = customers.customer_id

-- SELECT 
--     orders.order_id,
--     orders.order_date,
--     customers.name AS customer_name

-- FROM orders
-- LEFT JOIN customers ON orders.customer_id = customers.customer_id;

-- SELECT 
--     orders.order_id,
--     orders.order_date,
--     customers.name AS customer_name
-- FROM orders
-- RIGHT JOIN customers ON orders.customer_id = customers.customer_id;


-- SELECT 
--     orders.order_id,
--     orders.order_date,
--     customers.name AS customer_name
-- FROM orders
-- FULL JOIN customers ON orders.customer_id = customers.customer_id;

