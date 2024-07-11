-- Dispaly all the  databases 
show databases;
-- Drop the databases
Drop database database_name
--use schema 
use data
-- Display how many table available in data schema
show tables
-- drop the  existing talbe  of the databaes
drop table products
-- create Table structure for table `products`
CREATE TABLE products (
  ID int  NOT NULL,
  book_name varchar(245) NOT NULL,
  author varchar(245) NOT NULL,
  price decimal(10,2) NOT NULL,
  quantity int NOT NULL
);

-- display the table structure 
desc products

-- insert the data of existing product table

INSERT INTO products (`ID`, `book_name`, `author`, `price`, `quantity`) VALUES
(1, 'The Overstory', 'Richard Powers', '11.99', 4),
(2, 'Sapiens', 'Yuval Noah Harari', '18.99', 14),
(3, 'Letters to a Young Poet', 'Rainer Marie Rilke', '5.00', 40),
(4, 'Tropic of Cancer (First Edition)', 'Henry Miller', '39.00', 1),
(5, 'Pilot G-Tec-C4 Pens', '', '4.99', 8),
(6, 'Big Magic', 'Elizabeth Gilbert', '12.99', 6),
(7, 'Wild', 'Cheryl Strayed', '11.99', 5),
(8, 'Homo Dues', 'Yuval Noah Harari', '15.99', 5),
(9, 'The Bullet Journal ', 'Ryder Carroll', '19.99', 10),
(10, 'Denial of Death', 'Ernest Becker', '12.99', 6),
(11, 'Harry Potter And The Goblet Of Fire', 'J. K. Rowling', '9.99', 4);


-- Display the data of the  existing  table 
select * from products

-- add primary key of the existing column
alter table  products  ADD PRIMARY KEY (`ID`);

-- auto_Increment for id to the product table
alter table products modify id int not null  auto_increment;

INSERT INTO products ( `book_name`, `author`, `price`, `quantity`) VALUES
('Harry Potter And The Goblet Of Fire', 'J. K. Rowling', '9.99', 4);

-- aggregation function
select count(quantity) from products 

select  book_name , count(quantity) from products  group by book_name
