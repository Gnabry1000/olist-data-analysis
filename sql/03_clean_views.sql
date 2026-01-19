-- Set unspecified products to a default category 
UPDATE products
SET product_category = 'OTHER', product_name_length = 0, product_description_length = 0, product_photo_qty = 0
WHERE product_category IS NULL;


-- Get the english translations for the categories
ALTER TABLE products 
ADD COLUMN english_category TEXT;

UPDATE products p
SET english_category = c.product_category_english
FROM category_name c
WHERE p.product_category = c.product_category;




-- Create suitable views
CREATE VIEW v_orders_integrity AS
SELECT o.*
FROM orders o
JOIN customers c
  ON o.customer_id = c.customer_id;

CREATE VIEW v_order_items_integrity AS
SELECT oi.*
FROM order_items oi
JOIN v_orders_integrity o
  ON oi.order_id = o.order_id
JOIN products p
  ON oi.product_id = p.product_id
JOIN sellers s
  ON oi.seller_id = s.seller_id;

  
CREATE VIEW v_payments_integrity AS
SELECT op.*
FROM order_payments op
JOIN v_orders_integrity o
  ON op.order_id = o.order_id;







