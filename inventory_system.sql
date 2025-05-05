-- Create Suppliers Table
CREATE TABLE suppliers (
    supplier_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    contact_email VARCHAR(100),
    phone VARCHAR(15)
);

-- Create Products Table
CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    sku VARCHAR(50) UNIQUE NOT NULL,
    supplier_id INT,
    quantity_in_stock INT DEFAULT 0,
    price DECIMAL(10, 2),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

-- Create Stock Entries Table
CREATE TABLE stock_entries (
    entry_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    quantity_received INT NOT NULL,
    received_date DATE NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Create Stock Movements Table (e.g., sales, disposals)
CREATE TABLE stock_movements (
    movement_id INT AUTO_INCREMENT PRIMARY KEY,
    product_id INT NOT NULL,
    quantity_removed INT NOT NULL,
    movement_type VARCHAR(50), -- e.g., 'sale', 'damage'
    movement_date DATE NOT NULL,
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Sample Data
INSERT INTO suppliers (name, contact_email, phone)
VALUES ('ABC Distributors', 'contact@abc.com', '0700123456');

INSERT INTO products (name, sku, supplier_id, quantity_in_stock, price)
VALUES ('Wireless Mouse', 'WM123', 1, 50, 850.00),
       ('Keyboard', 'KB456', 1, 30, 1200.00);

INSERT INTO stock_entries (product_id, quantity_received, received_date)
VALUES (1, 20, '2025-05-01');

INSERT INTO stock_movements (product_id, quantity_removed, movement_type, movement_date)
VALUES (1, 5, 'sale', '2025-05-02');


INSERT INTO suppliers (name, contact_email, phone)
VALUES ('ABC Distributors', 'contact@abc.com', '0700123456');

INSERT INTO products (name, sku, supplier_id, quantity_in_stock, price)
VALUES 
('Wireless Mouse', 'WM123', 1, 50, 850.00),
('Keyboard', 'KB456', 1, 30, 1200.00);

INSERT INTO stock_entries (product_id, quantity_received, received_date)
VALUES (1, 20, '2025-05-01');

INSERT INTO stock_movements (product_id, quantity_removed, movement_type, movement_date)
VALUES (1, 5, 'sale', '2025-05-02');



















































































































































































