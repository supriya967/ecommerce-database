 E-Commerce Database Schema (MySQL)

/// Project Overview///
This project defines a **well-structured MySQL database schema** for an E-commerce system.  
It demonstrates the design of entities, relationships, and use of primary and foreign keys — fulfilling the internship task requirements.

The schema covers core entities such as **Customers**, **Products**, **Orders**, **Order Items**, and **Payments**, ensuring proper normalization and referential integrity.


/// Database Structure///

/// Entities////
| Entity | Description |
|--------|--------------|
| `customers` | Stores customer details like name, email, phone, and address |
| `products` | Contains information about products available for sale |
| `orders` | Records each customer order |
| `order_items` | Links orders and products (many-to-many relationship) |
| `payments` | Tracks payment details for each order |



/// Relationships///
- One **Customer → Many Orders**  
- One **Order → Many Order Items**  
- One **Product → Many Order Items**  
- One **Order → One Payment**



/// SQL Schema File///
**File Name:** `ecommerce_schema.sql`

You can execute the script in:
- **MySQL Workbench**(used)
- **phpMyAdmin**
- **XAMPP / WAMP**
- Or using MySQL CLI (`mysql -u root -p`)



/// How to Use///

 Create the Database
```sql
CREATE DATABASE ecommerce_db;
USE ecommerce_db;




Name-Supriya Priyadarsani Pati
Role-Sql Developer Intern
Tools Used-MySql,VS Code,Git,GitHub
