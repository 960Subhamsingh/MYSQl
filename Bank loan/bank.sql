create database bank;

use bank;

drop table  financial_loan;

-- Total loan Application
select count(*) as Total_loan_Application from financial_loan;

-- MTD Loan Application

select count(id) as Total_Application from 
financial_loan where month(issue_date)=12;

select to_char(issue_date,'%yyyy') from financial_loan;

-- PMTD Loan Application

select count(id) as Total_Application from financial_loan 
 where month(issue_date)=11;

--  Total loan Application 

select sum(loan_amount) as Total_number_amount from  financial_loan 
where month(issue_date)=12 and year(issue_date)= 2021;

-- Average Interest Rate 

select round(avg(int_rate),4)*100 as Avg_Interest_rate from 
financial_loan where month(issue_date)=12 and year(issue_date)= 2021;



-- Loan Application 
select count(id) as Loan_Application  from financial_loan where
 loan_status= 'Fully Paid' or 
loan_status = 'Current';

-- Bad Loan Application 
select count(id) as Bad_Loan_Application  from financial_loan 
where loan_status= 'Charged off';

-- Bad Loan Funded Amount 

 select sum(loan_amount) as Basd_Loan_fund_amount 
 from financial_loan where loan_status = 'Charged off';

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
 
 
 select (count(case when loan_status = 'Fully Paid' 
 OR loan_status= 'Current'
 then id end)*100) /
 count(id) as Good_loan_pecentage
 from financial_loan;
 
 
 -- loan funded Amount
 
 select sum(loan_amount) as Loan_Funded_Amount  from financial_loan where
 loan_status= 'Fully Paid' or 
loan_status = 'Current';


 select (count(case when loan_status = 'Charged off' 
 then id end)*100) /
 count(id) as Bad_loan_pecentage
 from financial_loan;
 
 -- 
 select
 month(issue_date) as Month_number,
 -- datename(month(,issue_date) as month _name,
 count(id) as Total_loan_Appl,
 sum(loan_amount) as Total_fund_Amount,
 sum(total_payment) as Total_Received_Amount
 from financial_loan 
 group by month(issue_date); -- datename(month,issue_date)
 -- order by datename(month, issue_date);
 
select
 address_state,
 count(id) as Total_loan_Appl,
 sum(loan_amount) as Total_fund_Amount,
 sum(total_payment) as Total_Received_Amount
 from financial_loan 
 group by  address_state
 order by count(id) desc;
 
 
 select
 emp_length,
 count(id) as Total_loan_Appl,
 sum(loan_amount) as Total_fund_Amount,
 sum(total_payment) as Total_Received_Amount
 from financial_loan 
 group by  emp_length
 order by count(id) desc;
 
 
 select
  home_ownership,
 count(id) as Total_loan_Appl,
 sum(loan_amount) as Total_fund_Amount,
 sum(total_payment) as Total_Received_Amount
 from financial_loan
where grade = 'A' and address_state = 'CA'
 group by  home_ownership
 order by count(id) desc;