-- E-COMMERCE DATABASE SCHEMA (MySQL)
-- Created by: Supriya Priyadarsani Pati
-- I used the previous table that i used for task-1

-- Customers
USE ecommerce_db;
-- Values insertion using INSERT INTO...
INSERT INTO customers (name, email, phone, address) VALUES
('manoj kumar pradhan', 'manoj.pradhan@gmail.com', '9876543210', 'Bhubaneswar, Odisha'),
('supriya pati', 'supriya.pati@gmail.com', '9876543211', 'berhmpur, Odisha'),
('manas mahanta', 'manas.mahanta@gmail.com', '9876543212', 'keonjhar, Odisha'),
('Ipsita sahoo',null,'8923765230','roulkela,odisha'), 
('divya das','divya.das@gmail.com','7609349215','khordha,odisha'),
('soubhagya pani','soubhagya.pani@gmail.com','6370947219','chennai,tamilnadu');
 select * from customers;
 
INSERT INTO products (name, description, price, stock) VALUES
('Wireless Mouse', 'Ergonomic wireless mouse with 2.4GHz USB receiver', 799.00, 50),
('Bluetooth Headphones', 'Noise-cancelling over-ear headphones', 2499.00, 30),
('Laptop Bag', 'Waterproof laptop backpack for 15-inch laptops', 1199.00, 40),
('USB Keyboard', 'Standard USB keyboard with smooth keys', 599.00, 60),
('cusmetic product','sun proof and water proof makeup product','1299.00'),
('sunscreen','protect from sun damage','289.00',70);
select * from products;

INSERT INTO orders (customer_id, total_amount)
VALUES
(7, 3298.00),
(8, 1798.00),
(9, 599.00),
(10, 1290.00),
(11, 398.00),
(12, 781.00);
select * from orders;


INSERT INTO order_items (order_id, product_id, quantity, subtotal) VALUES
(1, 2, 1, 2499.00),
(1, 1, 1, 799.00),
(2, 3, 1, 1199.00),
(2, 4, 1, 599.00),
(3, 4, 1, 599.00);
select * from order_items;

INSERT INTO payments (order_id, amount, payment_method) VALUES
(1, 3298.00, 'Credit Card'),
(2, 1798.00, 'UPI'),
(3, 599.00, 'Cash on Delivery');
select * from payments;

UPDATE customers
SET address = 'bhubaneswar, Odisha'
WHERE name = 'Ipsita Sahoo';


UPDATE products
SET price = price * 1.10
WHERE price < 1000;
