ALTER TABLE orders ALTER COLUMN _order_date TYPE DATE 
using to_date(orders._order_date, 'DD/MM/YYYY');
SELECT first_name, last_name
FROM orders
JOIN users ON orders.user_id =users.id
WHERE _order_date >= '2022-09-01'
  AND _order_date <  '2022-11-30'