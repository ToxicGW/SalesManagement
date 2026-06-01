CREATE TABLE Customers(
    customer_id INT PRIMARY KEY,
    cusomer_name VARCHAR(25) NOT NULL,
    city VARCHAR(20) NOT NULL,
    country VARCHAR(15) NOT NULL,
    postal_code INT,
    phone INT NOT NULL,
  
  UNIQUE(phone)
);

CREATE TABLE Employees(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(25) NOT NULL,
    emp_birth DATE NOT NULL,
    Role VARCHAR(20) NOT NULL,
    expertise VARCHAR(255) NOT NULL
);

CREATE TABLE Items(
    item_id INT PRIMARY KEY,
    item_name VARCHAR(25) NOT NULL,
    category_id INT NOT NULL,
    supplier_id INT NOT NULL,
    Price DECIMAL(5, 2) NOT NULL,
    Description VARCHAR(255)
);

CREATE TABLE Categories(
    category_id INT PRIMARY KEY,
    category_name VARCHAR(12) NOT NULL,
    Description VARCHAR(255)
);

CREATE TABLE Orders(
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    emp_id INT NOT NULL,
    order_date DATETIME DEFAULT SYSDATE(),
    shipper_id INT NOT NULL
);

CREATE TABLE Shippers(
    shipper_id INT PRIMARY KEY,
    shipper_name VARCHAR(32) NOT NULL,
    phone INT NOT NULL
);

CREATE TABLE suppliers(
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(32) NOT NULL,
    Address VARCHAR(64) NOT NULL,
    email VARCHAR(20) NOT NULL,
    phone INT NOT NULL
);

CREATE TABLE OrderDetails(
    order_details_id INT PRIMARY KEY,
    item_id INT NOT NULL,
    order_id INT NOT NULL,
    Amount INT NOT NULL
);




-- DATABASE INTEGRITY CONSTRAINTS & RELATIONSHIP DECLARATIONS (DDL)


-- 1. EXTEND SUPPLIER UNIQUE IDENTIFIERS
ALTER TABLE suppliers 
ADD CONSTRAINT suppliers_email_phone_unique UNIQUE(email, phone);


-- 2. CONFIGURE ORDERS AUTO-INCREMENT
ALTER TABLE Orders 
MODIFY order_id INT AUTO_INCREMENT;


-- 3. ESTABLISH ORDERS RELATIONSHIPS (FOREIGN KEYS)
ALTER TABLE Orders 
ADD CONSTRAINT orders_emp_id_foreign 
FOREIGN KEY(emp_id) REFERENCES Employees(emp_id)


ALTER TABLE Orders 
ADD CONSTRAINT orders_customer_id_foreign 
FOREIGN KEY(customer_id) REFERENCES Customers(customer_id)


ALTER TABLE Orders 
ADD CONSTRAINT orders_shipper_id_foreign 
FOREIGN KEY(shipper_id) REFERENCES Shippers(shipper_id)


-- 4. ESTABLISH Item RELATIONSHIPS (FOREIGN KEYS)
ALTER TABLE Items 
ADD CONSTRAINT items_category_id_foreign FOREIGN KEY(category_id) REFERENCES Categories(category_id);


ALTER TABLE Items 
ADD CONSTRAINT items_supplier_id_foreign FOREIGN KEY(supplier_id) REFERENCES suppliers(supplier_id);


-- 5. CONFIGURE ORDER AUTO-INCREMENT
ALTER TABLE OrderDetails 
MODIFY order_details_id INT AUTO_INCREMENT;


-- 6. ESTABLISH MANY-TO-MANY RELATIONSHIPS
ALTER TABLE OrderDetails 
ADD CONSTRAINT orderdetails_order_id_foreign 
FOREIGN KEY(order_id) REFERENCES Orders(order_id)


ALTER TABLE OrderDetails 
ADD CONSTRAINT orderdetails_item_id_foreign FOREIGN KEY(item_id) REFERENCES Items(item_id);

-- 7. Adding new column (Currency Indicator)
ALTER TABLE Items
ADD Currency varchar(4);

UPDATE Items
SET Currency= "TL";

UPDATE Items
SET Currency= "USD"
WHERE item_id IN(2204,2207,2208,2209,2210);


-- 8. Memory utilization by limiting the amount of characters
ALTER TABLE Customers
MODIFY phone varchar(15);

ALTER TABLE suppliers
MODIFY phone varchar(15);

ALTER TABLE Shippers
MODIFY phone varchar(15);

ALTER TABLE Employees
MODIFY role varchar(32);

ALTER TABLE suppliers
MODIFY email varchar(32);
