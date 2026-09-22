CREATE TABLE customer (
  customer_Id INTEGER PRIMARY KEY,
  first_name Varchar(50),
  last_name Varchar(50),
  address_id int
);

-- insert
insert into customer(customer_Id,first_name,last_name,address_id)
values
(1,'Mery','Smith', 5),
(2, 'Madan', 'Mohan', 6),
(3, 'Linda', 'Williams', 7),
(4, 'Barbara', 'Jones', 8),
(5, 'Elizabeth', 'Brown', 9);

CREATE TABLE payment (
  customer_Id INTEGER PRIMARY KEY,
  amount int,
  mode Varchar(50),
  payment_date DATE
);

insert into payment(customer_Id,amount,mode,payment_date)
values
(1,60, 'Cash', '2020-09-24'),
(2, 30, 'Credit Card', '2020-04-27'),
(3, 90, 'Credit Card', '2020-07-07'),
(4, 50, 'Debit Card', '2020-02-12'),
(5, 40, 'Mobile Payment', '2020-11-20');

Select amount, mode, payment_date
from customer c
join payment p
on c.customer_Id= p.customer_Id
WHERE c.first_name = 'Madan';




