CREATE TABLE customers (
    customer_id TEXT,
    customer_unique_id TEXT,
    customer_zip_code_prefix TEXT,
    customer_city TEXT,
    customer_state TEXT
);


CREATE TABLE order_items (
	order_id TEXT,
	order_item_id TEXT,
	product_id TEXT,
	seller_id TEXT,
	shipping_limit_date TIMESTAMP,
	price DECIMAL(10,2),
	freight_value DECIMAL(5,2)
);


CREATE TABLE order_payments (
	order_id TEXT,
	payment_sequential INT,
	payment_type TEXT,
	payment_installments INT,
	payment_value DECIMAL(10,2)
	
);

CREATE TABLE orders (
	order_id TEXT,
	customer_id TEXT,
	order_status TEXT,
	order_purchase TIMESTAMP,
	order_approved_at TIMESTAMP,
	order_delivered_carrier TIMESTAMP,
	order_delivered_customer TIMESTAMP,
	order_estimate TIMESTAMP
	
);


CREATE TABLE products (
	product_id TEXT,
	product_category TEXT,
	product_name_length INT,
	product_description_length INT,
	product_photo_qty INT,
	product_weight DECIMAL(10,2),
	product_height DECIMAL(10,2),
	product_length DECIMAL(10,2),
	product_width DECIMAL(10,2)
);

CREATE TABLE sellers (
	seller_id TEXT,
	seller_zip_code INT,
    seller_city TEXT,
    seller_state CHAR
);

CREATE TABLE category_name (
    product_category TEXT,
	product_category_english TEXT
);




