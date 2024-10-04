create database bank;

use bank;

drop table  financial_loan;

-- Total loan Application
select count(*) as Total_loan_Application from financial_loan;

-- MTD Loan Application

select count(id) as Total_Application from financial_loan where month(issue_date)=12;

select to_char(issue_date,'%yyyy') from financial_loan;

-- PMTD Loan Application

select count(id) as Total_Application from financial_loan  where month(issue_date)=11;

--  Total loan Application 

select sum(loan_amount) as Total_number_amount from  financial_loan 
where month(issue_date)=12 and year(issue_date)= 2021;

-- Average Interest Rate 

select round(avg(int_rate),4)*100 as Avg_Interest_rate from 
financial_loan where month(issue_date)=12 and year(issue_date)= 2021;

-- Loan Application 
select count(id) as Loan_Application  from financial_loan where loan_status= 'Fully Paid' or 
loan_status = 'Current';

-- Bad Loan Application 
select count(id) as Bad_Loan_Application  from financial_loan where loan_status= 'Charged off';

-- Bad laon Amount Received  
select sum(total_payment) as Bad_Loan_amount_received from
 financial_loan  where loan_status= 'Charged off';

select loan_status, 
sum(total_payment) as Total_amount_received,
sum(loan_amount) as total_fund_amount from financial_loan
-- where month(issue_date)=12
group by loan_status;


select loan_status, 
sum(total_payment) as Total_amount_received,
sum(loan_amount) as total_fund_amount ,
avg(int_rate*100) as Interest_rate,
avg(dti*100) as DTI
from financial_loan
-- where month(issue_date)=12
group by loan_status;
 
 
 