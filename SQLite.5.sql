CREATE TABLE if not EXISTS orders (
    order_id INT NOT NULL PRIMARY KEY,
    cake_id INT NOT NULL,
    customer_id INT,
    pickup_date DATE NOT NULL,
    FOREIGN KEY (cake_id) REFERENCES cakes (cake_id),
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);

INSERT INTO orders VALUES 
  ('5', '1', '2', '01/01/2019'),
  ('6', '1', '2', '01/03/2019'),
  ('7', '1', '2', '02/02/ 2019'),
  ('8', '1', '2', '02/20/ 2019');
