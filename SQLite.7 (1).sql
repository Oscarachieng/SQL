SELECT DISTINCT orders.order_id, orders.cake_id, orders.pickup_date,
customers.first_name, customers.last_name, customers.city, customers.street_address
FROM orders, customers
WHERE orders.pickup_date BETWEEN '01/01/2019' AND '02/31/2019';