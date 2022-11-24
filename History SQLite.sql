--- 24-11-2022 10:32:51
--- SQLite.1
CREATE TABLE cakes (
    cake_id INT NOT NULL PRIMARY KEY,
    flavor VARCHAR(100) NOT NULL
);

INSERT INTO cakes VALUES 
  ('1', 'sugary'),
  ('2', 'Sugary'),
  ('3', 'Milky');

--- 24-11-2022 10:33:24
--- SQLite.2
SELECT * FROM cakes;

--- 24-11-2022 10:39:24
--- SQLite.3
/***** ERROR ******
near "(": syntax error
 ----- 
CREATE TABLE customers (
   customer_id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    phone VARCHAR(15),
    street_address VARCHAR(255),
    city VARCHAR(255),
    zip_code VARCHAR(5),
    referrer_id INT,
    FOREIGN KEY (referrer_id) REFERENCES customers (customer_id)
);


INSERT INTO customers VALUES 
('1', 'OSCAR', 'ACHIENG', '0799885744', 'ES200', 'NAIROBI', '00201', '1')
('2', 'OSCAM', 'ACHILO', '0790805704', 'ES0', 'NAIROBI', '00291', '2')
('3', 'ALLAN', 'ACHIENG', '0739685754', 'ES430', 'NANYUKI', '06201', '3')
('4', 'ENOCK', 'SAMSON', '0129988574', 'ES05', 'NAROK', '00261', '2');
*****/

--- 24-11-2022 10:39:44
--- SQLite.3
/***** ERROR ******
table customers already exists
 ----- 
CREATE TABLE customers (
   customer_id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    phone VARCHAR(15),
    street_address VARCHAR(255),
    city VARCHAR(255),
    zip_code VARCHAR(5),
    referrer_id INT,
    FOREIGN KEY (referrer_id) REFERENCES customers (customer_id)
);


INSERT INTO customers VALUES 
('1', 'OSCAR', 'ACHIENG', '0799885744', 'ES200', 'NAIROBI', '00201', '1'),
('2', 'OSCAM', 'ACHILO', '0790805704', 'ES0', 'NAIROBI', '00291', '2'),
('3', 'ALLAN', 'ACHIENG', '0739685754', 'ES430', 'NANYUKI', '06201', '3'),
('4', 'ENOCK', 'SAMSON', '0129988574', 'ES05', 'NAROK', '00261', '2');
*****/

--- 24-11-2022 10:40:14
--- SQLite.3
CREATE TABLE IF NOT EXISTS customers (
   customer_id INT NOT NULL PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    phone VARCHAR(15),
    street_address VARCHAR(255),
    city VARCHAR(255),
    zip_code VARCHAR(5),
    referrer_id INT,
    FOREIGN KEY (referrer_id) REFERENCES customers (customer_id)
);


INSERT INTO customers VALUES 
('1', 'OSCAR', 'ACHIENG', '0799885744', 'ES200', 'NAIROBI', '00201', '1'),
('2', 'OSCAM', 'ACHILO', '0790805704', 'ES0', 'NAIROBI', '00291', '2'),
('3', 'ALLAN', 'ACHIENG', '0739685754', 'ES430', 'NANYUKI', '06201', '3'),
('4', 'ENOCK', 'SAMSON', '0129988574', 'ES05', 'NAROK', '00261', '2');

--- 24-11-2022 10:40:37
--- SQLite.4
SELECT * FROM customers;

--- 24-11-2022 10:44:28
--- SQLite.5
/***** ERROR ******
table customers has 8 columns but 4 values were supplied
 ----- 
CREATE TABLE if not EXISTS orders (
    order_id INT NOT NULL PRIMARY KEY,
    cake_id INT NOT NULL,
    customer_id INT,
    pickup_date DATE NOT NULL,
    FOREIGN KEY (cake_id) REFERENCES cakes (cake_id),
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);

INSERT INTO customers VALUES 
  ('1', '1', '2', '12/01/2019'),
  ('2', '1', '2', '12/01/2019'),
  ('3', '1', '2', '12/02/ 2019'),
  ('4', '1', '2', '12/02/ 2019');
*****/

--- 24-11-2022 10:45:07
--- SQLite.5
CREATE TABLE if not EXISTS orders (
    order_id INT NOT NULL PRIMARY KEY,
    cake_id INT NOT NULL,
    customer_id INT,
    pickup_date DATE NOT NULL,
    FOREIGN KEY (cake_id) REFERENCES cakes (cake_id),
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);

INSERT INTO orders VALUES 
  ('1', '1', '2', '12/01/2019'),
  ('2', '1', '2', '12/01/2019'),
  ('3', '1', '2', '12/02/ 2019'),
  ('4', '1', '2', '12/02/ 2019');

--- 24-11-2022 10:45:35
--- SQLite.6
SELECT * FROM orders;

--- 24-11-2022 10:46:45
--- SQLite.7
DROP TABLE demo;

--- 24-11-2022 10:49:14
--- SQLite.7
SELECT DISTINCT orders.order_id, orders.cake_id, orders.pickup_date,
customers.first_name, customers.last_name, customers.city, customers.street_address
FROM orders, customers;

--- 24-11-2022 10:50:24
--- SQLite.7
SELECT DISTINCT orders.order_id, orders.cake_id, orders.pickup_date,
customers.first_name, customers.last_name, customers.city, customers.street_address
FROM orders, customers
WHERE orders.pickup_date;

--- 24-11-2022 10:51:15
--- SQLite.6
SELECT * FROM orders;

--- 24-11-2022 10:51:28
--- SQLite.7
/***** ERROR ******
near "BETWEEN": syntax error
 ----- 
SELECT DISTINCT orders.order_id, orders.cake_id, orders.pickup_date,
customers.first_name, customers.last_name, customers.city, customers.street_address
FROM orders, customers
WHERE orders.pickup_date IS BETWEEN;
*****/

--- 24-11-2022 10:51:41
--- SQLite.7
SELECT DISTINCT orders.order_id, orders.cake_id, orders.pickup_date,
customers.first_name, customers.last_name, customers.city, customers.street_address
FROM orders, customers
WHERE orders.pickup_date;

