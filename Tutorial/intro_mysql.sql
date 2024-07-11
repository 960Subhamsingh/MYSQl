--show databases
show databases
-- create the new  databases 
create database sql_info
 --use the existing databases
 use sql_info
 --Display the existing  tables
 show tables 
 -- Drop the existing table 
 drop table emp
 --create the emp table 
 CREATE TABLE emp (Name VARCHAR(25), Age int,
sex CHAR(1), DOB DATE, City varchar(15), salary float);

-- display the structure of the existing table
desc emp;

-- insert the row and  values of the existing table ;

insert into emp values
("subham", 15, "M", "2005-05-30", "Chicago", 70000),
("Mohan", 30, "M", "1999-06-25", "Madhya pradesh", 55000),
("Ram", 28, "M", "2009-03-10", "Boston", 62000),
("Sita", 37, "F", "2011-07-12", "Delhi", 57000),
("Sonu", 32, "M", "2017-10-27", "Bihar", 72000),
("Rita", 32, "F", "2017-10-27", "Bihar", 72000),
("Sita", 32, "F", "2017-10-27", "Bhopal", 72000)
,("Moni", 32, "F", "2017-10-27", "Bhopal", 72000),
("Akta", 32, "F", "2017-10-27", "chennai", 72000),
("Anjali", 32, "F", "2017-10-27", "Bihar", 72000),
("Monu", 35, "M", "2014-12-20", "Gaya", 80000);

-- delete the existing row of emp table 
Truncate table emp 
 
-- dispaly the existing row and column
select * from emp
-- display  the rows  with  unique  city 
  select distinct city  from  emp  ) 
 
 --count how many employee in emp table
 select count(name) from emp;
-- sum of all salary  in the emp table
select sum(salary) from emp;
-- avg salary of emp table 
select avg(salary) from emp;
-- display the emp of whose age is 30 years old
select * from emp  where age > 30;
-- display anem , sex city from emp table whose sex is Female(F)
select name, sex, city from emp  where sex = 'F';

select * from emp where City =  'patna' or city = 'Bhopal';

select * from emp  where city in ('Bhopal',' Delhi');

select * from emp  where dob between '2000-01-01' and '2010-12-31';

select * from emp  where age>30 and sex = 'M';

select sex, sum(salary) as total_salary from emp group by sex;

select * from emp order by salary desc;


select (10 + 20) as addition;

select 30-50 as subtract;

select length('India') as total_len;

select repeat('@', 10);

select upper('India');

select lower('India');

select curdate();

select day(curdate());

select now();
