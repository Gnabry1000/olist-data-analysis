SELECT * FROM v_order_items_integrity;

CREATE VIEW v_order_items_analytics AS
SELECT
    oi.order_id,
	oi.order_item_id AS order_item_qty,
    oi.product_id,
    oi.seller_id,
    oi.price,
    oi.freight_value,
    (oi.price + oi.freight_value) AS item_revenue
FROM v_order_items_integrity oi
WHERE oi.price > 0
  AND oi.freight_value >= 0;




SELECT * FROM v_orders_integrity;

CREATE VIEW v_orders_analytics AS
SELECT
    o.order_id,
    o.customer_id,
    o.order_purchase,
    o.order_delivered_customer,
	o.order_estimate 
FROM v_orders_integrity o
WHERE o.order_status = 'delivered'
  AND o.order_delivered_customer IS NOT NULL;





