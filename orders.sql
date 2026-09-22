-- create
CREATE TABLE orders (
  order_id INTEGER PRIMARY KEY,
  customer Varchar(50),
  order_date TIMESTAMP
);

-- insert
INSERT INTO orders (order_id,customer,order_date)
VALUES
(1,'Sam','2026-09-22 14:30:45'),
(2, 'Ram', '2026-07-15 10:20:30'),
(3, 'Pam', '2025-12-05 18:45:10');

-- Extract Year
SELECT EXTRACT(YEAR FROM order_date) AS year
FROM orders;

-- extract month
SELECT EXTRACT(MONTH FROM order_date) AS month
FROM orders;

-- extract quarter
SELECT EXTRACT(QUARTER FROM order_date) AS quarter
FROM orders;
