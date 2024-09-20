CREATE TABLE Customer (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    address VARCHAR(255),
    phone_number VARCHAR(20)
);

CREATE TABLE DeliveryPerson (
    delivery_person_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    address VARCHAR(255),
    phone_number VARCHAR(20),
    vehicle_type VARCHAR(50),
    availability BOOLEAN
);

CREATE TABLE Order (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,
    delivery_person_id INT,
    total_amount DECIMAL(10, 2),
    delivery_address VARCHAR(255),
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
    FOREIGN KEY (delivery_person_id) REFERENCES DeliveryPerson(delivery_person_id)
);

CREATE TABLE OrderItem (
    order_item_id INT PRIMARY KEY AUTO_INCREMENT,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Order(order_id)
);

CREATE TABLE Product (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10, 2),
    image VARCHAR(255)
);

CREATE TABLE RetailStore (
    store_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    address VARCHAR(255),
    contact_information VARCHAR(100)
);
