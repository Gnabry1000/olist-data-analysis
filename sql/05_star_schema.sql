

-- Fact tables
CREATE VIEW fact_sales AS
SELECT
    oi.order_id,
    oi.product_id,
    oi.seller_id,
    o.customer_id,
    o.order_purchase,
    o.order_delivered_customer,
	o.order_estimate,
	oi.order_item_qty,
    oi.price,
    oi.freight_value,
    oi.item_revenue
FROM v_order_items_analytics oi
JOIN v_orders_analytics o
  ON oi.order_id = o.order_id;



-- Dimension tables
CREATE VIEW dim_customers AS
SELECT
    customer_id,
    customer_city,
    customer_state
FROM customers;


CREATE VIEW dim_products AS
SELECT
    product_id,
    english_category
FROM products;

CREATE VIEW dim_sellers AS
SELECT
    seller_id,
    seller_city,
    seller_state
FROM sellers;

