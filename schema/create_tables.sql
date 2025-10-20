-- E-COMMERCE DATABASE SCHEMA (MySQL)
-- Created by: Supriya Priyadarsani Pati

CREATE DATABASE ecommerce_db;
USE ecommerce_db;

-- Customers Table
CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone VARCHAR(15),
    address VARCHAR(255),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Products Table
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL,
    stock INT DEFAULT 0,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Orders Table
CREATE TABLE orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    order_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Order Items Table (Relationship between orders and products)
CREATE TABLE order_items (
    order_item_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT DEFAULT 1,
    subtotal DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Payments Table
CREATE TABLE payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    order_id INT NOT NULL,
    payment_date DATETIME DEFAULT CURRENT_TIMESTAMP,
    amount DECIMAL(10,2),
    payment_method ENUM('Credit Card', 'Debit Card', 'UPI', 'Cash on Delivery'),
    FOREIGN KEY (order_id) REFERENCES orders(order_id)
);










--  SAMPLE DATA INSERTION

-- Customers
INSERT INTO customers (name, email, phone, address) VALUES
('Akash shaoo', 'akash.shaoo@example.com', '9876543210', 'Bhubaneswar, Odisha'),
('Priya Das', 'priya.das@example.com', '9876543211', 'Cuttack, Odisha'),
('Ravi Kumar', 'ravi.kumar@example.com', '9876543212', 'Puri, Odisha');

-- Products
INSERT INTO products (name, description, price, stock) VALUES
('Wireless Mouse', 'Ergonomic wireless mouse with 2.4GHz USB receiver', 799.00, 50),
('Bluetooth Headphones', 'Noise-cancelling over-ear headphones', 2499.00, 30),
('Laptop Bag', 'Waterproof laptop backpack for 15-inch laptops', 1199.00, 40),
('USB Keyboard', 'Standard USB keyboard with smooth keys', 599.00, 60);

-- Orders
INSERT INTO orders (customer_id, total_amount) VALUES
(1, 3298.00),
(2, 1798.00),
(3, 599.00);

-- Order Items
INSERT INTO order_items (order_id, product_id, quantity, subtotal) VALUES
(1, 2, 1, 2499.00),
(1, 1, 1, 799.00),
(2, 3, 1, 1199.00),
(2, 4, 1, 599.00),
(3, 4, 1, 599.00);

-- Payments
INSERT INTO payments (order_id, amount, payment_method) VALUES
(1, 3298.00, 'Credit Card'),
(2, 1798.00, 'UPI'),
(3, 599.00, 'Cash on Delivery');