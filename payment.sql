CREATE TABLE payment (
  payment_id INTEGER PRIMARY KEY,
  mode VARCHAR(50) NOT NULL,
  amount INT NULL
);

insert into payment (payment_id, mode, amount)
VALUES
(1, 'UPI', 500),
(2, 'CASH', 300),
(3, 'UPI', 700),
(4, 'Card', 1000),
(5, 'Cash', 200),
(6, 'UPI', 800);

-- order by clause
SELECT mode, SUM(amount) AS total
FROM payment
GROUP BY mode
ORDER BY total DESC;

-- having clause
SELECT mode, COUNT(amount) AS total
FROM payment
GROUP BY mode
HAVING COUNT(amount) >= 3
ORDER BY total DESC;

SELECT * FROM payment;
