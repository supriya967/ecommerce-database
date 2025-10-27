# 🛍️ E-Commerce Database Schema (MySQL)

## 📋 Overview

This project defines a **relational database schema** for an **E-Commerce System** using **MySQL**.  
The database efficiently manages customers, products, orders, order items, and payments — ensuring smooth operations for any online shopping platform.

---

## 👩‍💻 Author

**Created by:** Supriya Priyadarsani Pati

---

## 🗄️ Database Information

- **Database Name:** `ecommerce_db`
- **Database Type:** MySQL
- **Purpose:** To handle the core functionalities of an e-commerce system — customer management, product catalog, orders, and payments.

---

## 🧱 Tables Structure

### 1. `customers`

Stores information about users who register or place orders.

| Column        | Type         | Description                       |
| ------------- | ------------ | --------------------------------- |
| `customer_id` | INT (PK)     | Unique customer ID                |
| `name`        | VARCHAR(100) | Customer's full name              |
| `email`       | VARCHAR(100) | Unique email ID                   |
| `phone`       | VARCHAR(15)  | Contact number                    |
| `address`     | VARCHAR(255) | Customer address                  |
| `created_at`  | DATETIME     | Auto-stored date/time of creation |

---

### 2. `products`

Contains details of all products available in the store.

| Column        | Type          | Description                    |
| ------------- | ------------- | ------------------------------ |
| `product_id`  | INT (PK)      | Unique product ID              |
| `name`        | VARCHAR(100)  | Product name                   |
| `description` | TEXT          | Product details                |
| `price`       | DECIMAL(10,2) | Product price                  |
| `stock`       | INT           | Available quantity in stock    |
| `created_at`  | DATETIME      | Auto-stored creation timestamp |

---

### 3. `orders`

Stores each order placed by customers.

| Column         | Type          | Description                         |
| -------------- | ------------- | ----------------------------------- |
| `order_id`     | INT (PK)      | Unique order ID                     |
| `customer_id`  | INT (FK)      | References `customers(customer_id)` |
| `order_date`   | DATETIME      | Date/time of order placement        |
| `total_amount` | DECIMAL(10,2) | Total order amount                  |

---

### 4. `order_items`

Handles the **many-to-many relationship** between `orders` and `products`.

| Column          | Type          | Description                          |
| --------------- | ------------- | ------------------------------------ |
| `order_item_id` | INT (PK)      | Unique item ID                       |
| `order_id`      | INT (FK)      | References `orders(order_id)`        |
| `product_id`    | INT (FK)      | References `products(product_id)`    |
| `quantity`      | INT           | Number of units ordered              |
| `subtotal`      | DECIMAL(10,2) | Total for this product (price × qty) |

---

### 5. `payments`

Tracks payment information for each order.

| Column           | Type          | Description                                                              |
| ---------------- | ------------- | ------------------------------------------------------------------------ |
| `payment_id`     | INT (PK)      | Unique payment ID                                                        |
| `order_id`       | INT (FK)      | References `orders(order_id)`                                            |
| `payment_date`   | DATETIME      | Date/time of payment                                                     |
| `amount`         | DECIMAL(10,2) | Amount paid                                                              |
| `payment_method` | ENUM          | Mode of payment (`Credit Card`, `Debit Card`, `UPI`, `Cash on Delivery`) |

---

## 🔗 Relationships

- **One-to-Many:**
  - A customer can have multiple orders.
  - An order can have multiple order items.
- **Many-to-Many (via `order_items`):**
  - Products can belong to multiple orders and vice versa.
- **One-to-One:**
  - Each order has one corresponding payment.

---

name:supriya priyadarsani pati
Tools used:mysql workbench,vscode,git/github;


Name-Supriya Priyadarsani Pati
Role-Sql Developer Intern
Tools Used-MySql,VS Code,Git,GitHub
