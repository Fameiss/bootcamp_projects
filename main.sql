/* Table 1 - Fact */
CREATE TABLE orders (
  order_id INT NOT NULL PRIMARY KEY,
  order_date DATE,
  menu_id INT,
  amount REAL,
  total_calories REAL,
  FOREIGN KEY (menu_id) REFERENCES menu(menu_id)
);

INSERT INTO orders values
(1,'2022-12-05', 5, 50, 90),
(2,'2022-12-06', 3, 50, 150),
(3,'2022-12-07', 1, 70, 600),
(4,'2022-12-08', 2, 150, 550),
(5,'2022-12-09', 4, 80, 350); 

/* Table 2 - Dimention */
CREATE TABLE menu (
  menu_id INT NOT NULL PRIMARY KEY,
  food_name TEXT,
  price_per_unit REAL,
  calories REAL
);

INSERT INTO menu values
(1,'hamburger', 70, 600),
(2,'spaghetti', 150, 550),
(3,'sausages', 50, 150),
(4,'cupcake', 80, 350),
(5,'orange juice', 50, 90);

/* Table 3 - Dimention */
CREATE TABLE customer (
  customer_id INT NOT NULL PRIMARY KEY,
  customer_name TEXT,
  member BOOLEAN, 
  Tel TEXT
);

INSERT INTO customer VALUES
(1, "Jeff", TRUE, "0857680046"),
(2, "Maysa", FALSE, "0967788002"),
(3, "Meena", FALSE, "0874562581"),
(4, "Pure", TRUE, "0823567788"),
(5, "Cheese", TRUE, "0954926789")
;

/* Table 4 - Dimention */
CREATE TABLE payment (
  payment_id INT NOT NULL PRIMARY KEY,
  customer_no INT,
  order_no INT,
  member BOOLEAN,
  amount REAL,
  payment_type TEXT,
  FOREIGN KEY (customer_no) REFERENCES customer(customer_id),
  FOREIGN KEY (order_no) REFERENCES orders(order_id)
);

INSERT INTO payment VALUES
(1, 1, 1, TRUE, 350, "cash"),
(2, 2, 2, FALSE, 550, "credit card"),
(3, 3, 3, FALSE, 420, "cash"),
(4, 4, 4, TRUE, 500, "credit card"),
(5, 5, 5, TRUE, 800, "credit card");

/* Table 5 - Dimention */
CREATE TABLE rating (
  rating_id INT NOT NULL PRIMARY KEY,
  rating REAL,
  customer_no INT,
  FOREIGN KEY (customer_no) REFERENCES customer(customer_id)
);

INSERT INTO rating VALUES 
(1, 4.5, 1),
(2, 4, 2),
(3, 3.5, 3),
(4, 4, 4),
(5, 5, 5);

/* -------- Query -------- */
.mode markdown
.header on

/* -- Query -1 -- Total_income -- */ 
select sum(amount) as Total_income
from orders;

/* --Sub Query -2 -- ratings from members and orders the results by the amount spent*/
with mem_paym as (
  select * from customer as cust
  join payment as paym
    on cust.customer_id = paym.customer_no
  where cust.member = 1 
  order by amount DESC
)
select customer_id, customer_name, amount, rating
from mem_paym
join rating
on mem_paym.customer_id = rating.customer_no
;

/* -- Query 3 -- The names of all customers who are members */
select customer_name 
from customer 
where member = TRUE;

/* -- Query 4 -- Average amount each payment type */
select avg(amount) as average_amount, 
  payment_type 
from customer as cust
join payment as paym
  on cust.customer_id = paym.customer_no
group by payment_type;

/* -- Query 5 -- */
select * from menu where calories > 500;
