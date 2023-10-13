ALTER TABLE orders ADD  discount REAL, ADD  new_price REAL;
UPDATE orders
SET discount = 0;
UPDATE orders
SET discount = price/10
where price = (SELECT  max(price) FROM orders);
UPDATE orders
SET new_price = price - discount;

SELECT * FROM orders
