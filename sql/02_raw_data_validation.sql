-- Checking if data import was successful 
SELECT 'customers' AS table, COUNT(*) FROM customers
UNION ALL
SELECT 'orders', COUNT(*) FROM orders
UNION ALL
SELECT 'order_items', COUNT(*) FROM order_items
UNION ALL
SELECT 'products', COUNT(*) FROM products
UNION ALL
SELECT 'sellers', COUNT(*) FROM sellers
UNION ALL
SELECT 'category_name', COUNT(*) FROM category_name
UNION ALL
SELECT 'order_payments', COUNT(*) FROM order_payments
ORDER BY count DESC;



-- Checking referential intergrity
-- Every important relationship
SELECT COUNT(*)
FROM orders o
LEFT JOIN customers c
ON o.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

SELECT COUNT(*)
FROM order_payments op
LEFT JOIN orders o
ON o.order_id = op.order_id
WHERE o.order_id IS NULL;

SELECT COUNT(*)
FROM order_items ot
LEFT JOIN orders o
ON o.order_id = ot.order_id
WHERE o.order_id IS NULL;

SELECT COUNT(*)
FROM order_items ot
LEFT JOIN products p
ON p.product_id = ot.product_id
WHERE p.product_id IS NULL;

SELECT COUNT(*)
FROM order_items ot
LEFT JOIN sellers s
ON s.seller_id = ot.seller_id
WHERE s.seller_id IS NULL;



