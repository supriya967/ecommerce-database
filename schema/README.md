E-Commerce Database Schema (MySQL)
📄 Project Overview

This task demonstrates basic SQL data manipulation operations performed on an ecommerce_db database.
The goal is to practice adding, updating, and deleting records while maintaining clean and consistent data across multiple tables (customers, products, and orders).

🎯 Objectives

Use INSERT INTO to add rows to tables.

Handle missing values using NULL or default values.

Apply UPDATE and DELETE with proper WHERE conditions.

Ensure the database remains clean, consistent, and well-structured.

🧩 Database Used

Database Name: ecommerce_db
Tables:

customers

products

orders

⚙️ Steps and SQL Commands
1️⃣ Insert Data into Tables

Added customer and product records using the INSERT INTO command.

INSERT INTO customers (name, email, phone, address) VALUES
('Manoj Kumar Pradhan', 'manoj.pradhan@gmail.com', '9876543210', 'Bhubaneswar, Odisha'),
('Supriya Pati', 'supriya.pati@gmail.com', '9876543211', 'Berhampur, Odisha'),
('Manas Mahanta', 'manas.mahanta@gmail.com', '9876543212', 'Keonjhar, Odisha'),
('Ipsita Sahoo', NULL, '8923765230', 'Rourkela, Odisha');

2️⃣ Handle Missing Values

Used NULL for missing or unknown values.

Used DEFAULT to auto-fill predefined values for certain columns.

INSERT INTO products (name, description, price, stock) VALUES
('Wireless Mouse', 'Ergonomic mouse', 799.00, 50),
('Laptop Bag', 'Waterproof bag', 1199.00, DEFAULT),
('USB Keyboard', NULL, 599.00, 60);

3️⃣ Update Data

Used UPDATE with WHERE to correct or modify data.

UPDATE customers
SET address = 'Rourkela, Odisha'
WHERE name = 'Ipsita Sahoo';

UPDATE products
SET price = price \* 1.10
WHERE price < 1000;

4️⃣ Delete Records

Used DELETE with WHERE to remove specific or unwanted entries.

DELETE FROM customers
WHERE name = 'Manas Mahanta';

DELETE FROM products
WHERE stock = 0;

5️⃣ Final Verification

Displayed final records to confirm updates and deletions:

SELECT _ FROM customers;
SELECT _ FROM products;
SELECT \* FROM orders;

Name-Supriya Priyadarsani Pati
Role-Sql Developer Intern
Tools Used-MySql,VS Code,Git,GitHub
