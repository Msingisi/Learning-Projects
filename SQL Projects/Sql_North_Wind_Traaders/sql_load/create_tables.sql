DROP TABLE IF EXISTS order_details;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS shippers;

-- Create categories table with primary key
CREATE TABLE categories (
    categoryID INT PRIMARY KEY,
    categoryName VARCHAR(255) NOT NULL,
    description TEXT
);

-- Create customers table with primary key
CREATE TABLE customers (
    customerID VARCHAR(10) PRIMARY KEY,
    companyName VARCHAR(255) NOT NULL,
    contactName VARCHAR(255),
    contactTitle VARCHAR(255),
    city VARCHAR(100),
    country VARCHAR(100)
);

-- Create employees table with primary key
CREATE TABLE employees (
    employeeID INT PRIMARY KEY,
    employeeName VARCHAR(255) NOT NULL,
    title VARCHAR(255),
    city VARCHAR(100),
    country VARCHAR(100),
    reportsTo INT,
    FOREIGN KEY (reportsTo) REFERENCES employees(employeeID)
);

-- Create products table with primary key
CREATE TABLE products (
    productID INT PRIMARY KEY,
    productName VARCHAR(255) NOT NULL,
    quantityPerUnit VARCHAR(255),
    unitPrice NUMERIC,
    discontinued BOOLEAN,
    categoryID INT,
    FOREIGN KEY (categoryID) REFERENCES categories(categoryID)
);

-- Create order_details table
CREATE TABLE order_details (
    orderID INT,
    productID INT,
    unitPrice NUMERIC,
    quantity INT,
    discount NUMERIC,
    PRIMARY KEY (orderID, productID),
    FOREIGN KEY (productID) REFERENCES products(productID)
);

-- Create shippers table with primary key
CREATE TABLE shippers (
    shipperID INT PRIMARY KEY,
    companyName VARCHAR(255) NOT NULL
);

-- Create orders table with primary key
CREATE TABLE orders (
    orderID INT PRIMARY KEY,
    customerID VARCHAR(10),
    employeeID INT,
    orderDate DATE,
    requiredDate DATE,
    shippedDate DATE,
    shipperID INT,
    freight NUMERIC,
    FOREIGN KEY (customerID) REFERENCES customers(customerID),
    FOREIGN KEY (employeeID) REFERENCES employees(employeeID),
    FOREIGN KEY (shipperID) REFERENCES shippers(shipperID)
);
