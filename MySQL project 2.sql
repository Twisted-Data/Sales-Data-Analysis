create database sales_data;

-- creating table products
create table products (
product_id INT PRIMARY KEY,
product_name VARCHAR (50), 
category VARCHAR (50), 
price DECIMAL(10, 2)
);

SELECT * FROM PRODUCTS;

-- creating table customers 
create table customers( 
customer_id INT PRIMARY KEY, 
first_name VARCHAR(50), 
last_name VARCHAR(50),
email VARCHAR(50),
phone_number INT
);

SELECT * FROM customers;
-- creating table sales
create table  sales(
sale_id INT PRIMARY KEY, 
product_id INT, 
customer_id INT, 
sale_date DATE, 
quantity INT,
total_amount DECIMAL(10,2)
);
SELECT * FROM sales;

-- creating table payments
create table  payments(
payment_id INT PRIMARY KEY, 
sale_id INT, 
payment_method VARCHAR(50), 
payment_date DATE,
amount_paid DECIMAL(10,2)
);
SELECT * FROM payments;

-- --  Insert at least 10 products into the `products` table.
insert into products (product_id, product_name, category, price) values
(1001, 'cooking_chair', 'furniture', 203.00),
(1002, 'cooking_table', 'furniture', 210.00),
(1003, 'centre_table', 'furniture', 250.00),
(1004, 'laptop', 'electronics', 190.00),
(1005, 'Televison', 'electronics', 320.50),
(1006, 'recliner', 'furniture', 133.00),
(1007, 'Freezer', 'electronics', 243.60),
(1008, 'cooking_pot', 'utensils', 63.00),
(1009, 'wrist_watch', 'accesories', 1000.00),
(1010, 'Jalabya', 'clothings', 93.00),
(1011, 'speaker', 'electronics', 77.00),
(1012, 'backpack', 'accesories', 43.00);

-- Insert at least 40 customers into the `customers` table.
insert into customers (customer_id, first_name, last_name, email, phone_number) values
(1, 'James', 'Benton', 'jbutt@gmail.com', 6218927),
(2, 'Josephine', 'Darakjy', 'josephine_darakjy@darakjy.org', 3749840),
(3, 'Art', 'Venere',  'art@venere.org', 2644138),
(4, 'Lenna', 'Paprocki',  'lpaprocki@hotmail.com', 9212010),	
(5, 'Donette', 'Foller', 'donette.foller@cox.net', 5701893),
(6, 'Simona', 'Morasca',  'simona@morasca.com', 8006759),
(7, 'Mitsue', 'Tollner', 'mitsue_tollner@yahoo.com', 5736914),	
(8, 'Leota', 'Dilliard',  'leota@hotmail.com', 8131105),
(9, 'Sage', 'Wieser',  'sage_wieser@cox.net', 7944895),
(10, 'Kris', 'Marrier', 'kris@gmail.com', 8044694),
(11, 'Minna', 'Amigon',	'minna_amigon@yahoo.com', 4228694),
(12, 'Abel', 'Maclead', 'amaclead@gmail.com', 6773675),
(13, 'Kiley', 'Caldarera', 'kiley.caldarera@aol.com', 7689654), 
(14, 'Graciela', 'Ruta',  'gruta@cox.net', 5797763), 
(15, 'Cammy', 'Albares',  'calbares@gmail.com', 8417216),
(16, 'Mattie', 'Poquette', 'mattie@aol.com', 9536360),
(17, 'Meaghan',	'Garufi',  'meaghan@hotmail.com', 2357959),
(18, 'Gladys', 'Rim',  'gladys.rim@rim.org', 3772880),
(19, 'Yuki', 'Wstudentshobrey',  'yuki_whobrey@aol.com', 3414470),
(20, 'Fletcher', 'Flosi',  'fletcher.flosi@yahoo.com', 4265657),
(21, 'Bette', 'Nicka',  'bette_nicka@cox.net', 4924643),
(22, 'Veronika', 'Inouye',  'vinouye@aol.com', 8134592),
(23, 'Willard', 'Kolmetz', 'willard@hotmail.com', 8964882),
(24, 'Maryann',	'Royster',  'mroyster@royster.com', 4488982),
(25, 'Alisha', 'Slusarski' , 'alisha@slusarski.com', 6353453),
(26, 'Allene',	'Iturbide',  'allene_iturbide@cox.net', 6626764),
(27, 'Chanel', 'Caudy',  'chanel.caudy@caudy.org', 8991103 ),
(28, 'Ezekiel',	'Chui',  'ezekiel@chui.com', 2358738 ),
(29, 'Willow', 'Kusko',  'wkusko@yahoo.com', 9345167 ),
(30, 'Bernardo', 'Figeroa',  'bfigeroa@aol.com', 3363951 ),
(31, 'Bernar', 'Figero',  'figeroa@aol.com', 3363751 ),
(32, 'Bejdjdo', 'jhdhda',  'bfigoa@aol.com', 3363851 ),
(33, 'nardo', 'Figeroa',  'bfigeroa@aol.com', 3364551 ),
(34, 'Bernardo', 'Figeroa',  'bfigoa@aol.com', 3263951 ),
(35, 'Berdo', 'geroa',  'geroa@aol.com', 3763951 ),
(36, 'Bard', 'Figer',  'figer@aol.com', 8763951 ),
(37, 'nardo', 'Figera',  'bfiger@aol.com', 3363990 ),
(38, 'Berndo', 'gero',  'bfger@aol.com', 3389951 ),
(39, 'Bernard', 'Fige',  'bfige@aol.com', 3363953 ),
(40, 'Berard', 'gero',  'bgero@aol.com', 3873951 );


-- Insert at least 20 records into the `sales` table, making sure some customers buy multiple products.
insert into sales (sale_id, product_id, customer_id, sale_date, quantity, total_amount) values
(101, 1001, 1, '2009-09-09', 4, 812.00),
(102, 1003, 2, '2009-06-09', 2, 500.00 ),
(103, 1004, 3, '2009-09-12', 2, 380.00),
(104, 1005, 40, '2009-02-09', 1, 320.50),
(105, 1007, 34, '2009-01-01', 1, 243.60),
(106, 1002, 35, '2009-02-23', 2, 420.00),
(107, 1008, 40, '2009-07-03', 10, 630.00),
(108, 1010, 1, '2009-09-09', 10, 930.00),
(109, 1009, 16, '2009-03-02', 2, 2000.00),
(110, 1012, 17, '2009-09-01', 10, 430.00),
(111, 1006, 17, '2009-09-01', 1, 133.00),
(112, 1011, 33, '2009-09-01', 1, 77.00),
(113, 1004, 26, '2009-12-12', 1, 190.00),
(114, 1011, 25, '2009-09-08', 1, 77.00),
(115, 1006, 23, '2009-08-03', 2, 266.00),
(116, 1001, 23, '2009-08-03', 1, 203.00),
(117, 1009, 16, '2009-02-01', 1, 1000.00),
(118, 1010, 1, '2009-02-03', 1, 93.00),
(119, 1002, 4, '2009-06-02', 2, 420.00),
(120, 1001, 21, '2009-04-02', 1, 203.00),
(121, 1009, 22, '2009-09-02', 3, 3000.00),
(122, 1005, 39, '2009-09-09', 1, 320),
(123, 1009, 33, '2009-01-01', 5, 5000);


-- Insert payment records corresponding to the sales, with varying amounts and dates.
insert into payments (payment_id, sale_id, payment_method, payment_date, amount_paid) values
(1211, 101, 'cash', '2009-09-09', 812.00),
(1212, 102, 'card', '2009-06-09', 500.00 ),
(1213, 103, 'cash', '2009-09-12', 380.00),
(1214, 104, 'card', '2009-02-09', 320.50),
(1215, 105, 'card', '2009-01-01', 243.60),
(1216, 106, 'card', '2009-02-23', 420.00),
(1217, 107, 'cash', '2009-07-03', 630.00),
(1218, 108, 'cash', '2009-09-09', 930.00),
(1219, 109, 'cash', '2009-03-02', 2000.00),
(1220, 110, 'card', '2009-09-01', 430.00),
(1221, 111, 'card', '2009-09-01', 133.00),
(1222, 112, 'card', '2009-09-01', 77.00),
(1223, 113, 'card', '2009-12-12', 190.00),
(1224, 114, 'card', '2009-09-08', 77.00),
(1225, 115, 'cash', '2009-08-03', 266.00),
(1226, 116, 'cash', '2009-08-03', 203.00),
(1227, 117, 'cash', '2009-02-01', 1000.00),
(1228, 118, 'cash', '2009-02-03', 93.00),
(1229, 119, 'cash', '2009-06-02', 420.00),
(1230, 120, 'cash', '2009-04-02', 203.00),
(1231, 121, 'cash', '2009-09-02', 3000.00),
(1232, 122, 'cash', '2009-09-09', 320),
(1233, 123, 'cash', '2009-01-01', 5000);

select* from sales;


-- Write a query to calculate the total quantity sold for each product category.
SELECT category, SUM(quantity) AS total_quantity_sold
FROM sales 
join products
on sales.product_id = products.product_id
GROUP BY category;

-- Write a query to count the number of sales for each customer.
SELECT customer_id, COUNT(sale_id) AS total_sales
FROM sales
GROUP BY customer_id;

-- Write a query to find the total revenue generated by each payment method.
SELECT payment_method, SUM(amount_paid) AS total_revenue
FROM payments
GROUP BY payment_method;

-- Write a query to retrieve a list of products, sorted by price in descending order.
select * from products
order by price desc;

-- Write a query to get the sales records ordered by `sale_date` in ascending order.
select * from sales 
order by sale_date;

-- Write a query to display customers sorted by their last name alphabetically.
select * from customers 
order by last_name;

-- Write a query to find products that have been sold more than 5 times, using `HAVING` with the `GROUP BY` statement.
SELECT product_id, COUNT(sale_id) AS total_sales
FROM sales
GROUP BY product_id
Having total_sales > 5;

 
-- Write a query to find categories with a total sales revenue greater than $500.
SELECT customer_id, SUM(total_amount) AS total_purchases
FROM sales
GROUP BY customer_id
HAVING SUM(total_amount) > 500;

-- Write a query to display the top 5 most expensive products.
select * from products order by price desc limit 5;

-- Write a query to display the 3 most recent sales.
select * from sales order by sale_date desc limit 3;

-- Write a query to list the first 5 customers who made purchases.
select c.customer_id, first_name, last_name, sale_date 
from customers c 
join sales s 
on c.customer_id = s.customer_id 
order by sale_date 
limit 5;

--  Write a query to calculate the total revenue (sum of `total_amount`) for each product and use an alias `total_revenue` for the calculated field.
select product_id, sum(total_amount) as total_revenue
from sales
group by product_id;


-- Write a query to display each customer's full name as `customer_name` by concatenating `first_name` and `last_name`.
select concat(first_name, last_name) customer_name from customers;

-- Use aliasing to create a column called `sales_value` representing the product of `price` and `quantity` for each sale.
select p.price, s.quantity, (p.price * s.quantity) AS sales_value
from sales s
join products p
on p.product_id = s.product_id;

--  Write a query to display the product names in uppercase.
select upper(product_name) from products;

-- Write a query to extract the domain from the `email` field of each customer.
SELECT email, SUBSTRING_INDEX(email, '@', -1) AS domain
FROM customers;

-- Write a query to display the first three characters of each customer's `last_name`.    
select substring(last_name, 1, 3) from customers;

-- Write a query that trims extra spaces around product names and displays them.
select trim(product_name) from products;
 
-- Write a query to calculate the average price of all products.
select avg(price) from products;

-- Write a query to find the maximum `total_amount` from the `sales` table.
select max(total_amount) from sales;

-- Write a query to calculate the total amount paid for all sales.
select sum(total_amount) from sales;

--  Write a query to calculate the minimum and maximum sale quantities.
select min(quantity), max(quantity) from sales;

--  Write a query to determine the number of distinct product categories available
select count(distinct(category)) from products;

--  Write a query to identify the customer with the highest total purchase amount
SELECT customer_id, SUM(total_amount) AS total_purchase
FROM sales
GROUP BY customer_id
order by total_purchase desc
limit 1;

-- Calculate the total number of products sold for each product category and sort the result in descending order
select s.product_id, sum(quantity), category
from sales s 
join products p 
on s.product_id = p.product_id
group by p.category, s.product_id
order by sum(quantity) desc;

--  Write a query that retrieves the details of sales made in the last 30 days.
select * from sales 
where sale_date between  '2009-12-11'and '2009-11-11';

-- Create a query to display the top 3 customers with the most sales in terms of quantity.
select c.customer_id, first_name, last_name, quantity
from customers c
join sales s 
on c.customer_id = s.customer_id
order by quantity desc
limit 3;

--  Write a query to list all customers whose names start with the letter "J".
SELECT * FROM customers  
WHERE concat(first_name, last_name) LIKE 'J%';

-- Write a query to calculate the total unpaid amount for each sale by subtracting `amount_paid` from `total_amount`.
select p.sale_id, amount_paid, total_amount, (total_amount - amount_paid )
from sales s 
join payments p
on p.sale_id = s.sale_id;

-- Write a query to find sales where the payment method was "Credit Card" and the `total_amount` is greater than $50.
select total_amount, payment_method 
from sales s
join payments p
on s.sale_id = p.sale_id
where payment_method = 'card' and total_amount > 50;

--  Write a query that lists all sales made by customers whose last names contain the letter "e"
select last_name, product_id, sale_date, total_amount
from customers c
join sales s
on s.customer_id = c.customer_id
where last_name LIKE '%e%';



