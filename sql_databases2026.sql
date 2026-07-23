show databases;
create database BankingDB;  #DDL Command
use BankingDB;

CREATE TABLE Customers(

CustomerID INT primary key,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Email VARCHAR(100),
Phone VARCHAR(15),
accountcreation_date date
);
drop table customers;
Create Table Accounts (
AccountID INT,
AccountType varchar(20),
Balance DECIMAL(10,2)
);
Create table transactions (
TransactionID INT,
Transactiondate DATE,
Amount decimal(10,2),
transactionType varchar(20)

);
drop  table transaction;
CREATE TABLE Branches(
BranchID INT,
BranchName varchar(100),
BranchAddress varchar(200),
Branchphone varchar(15)
);

CREATE TABLE AccountBranches (
AssingmentDate DATE);
CREATE TABLE loans(
LoanID INT,
LoanAmount decimal(10,2),
InterestRate decimal(5,2),
Startdate DATE,
Enddate DATE
);
Alter Table Customers Add DateOBirth DATE;
Select * from customers;
Alter Table Customers Modify Phone Varchar(20);
Alter Table Customers drop DateOBirth;
Alter Table Accounts ADD Primary key(AccountID);
Select * from Accounts;
Create Table DR332 (
Learnerid int primary key,
first_name varchar(50) not null,
last_name varchar(50) unique,
progress decimal (5,2) check (progress>75),
branch varchar(50) default "Dadar"
);
use BankingDB;
Alter Table branches
ADD PRIMARY KEY (BranchID);
Alter Table branches
ADD brancheslocation varchar(50);
select*from branches;
Alter Table DR332
ADD location varchar(50);
select*from  DR332;
alter table Accounts add CustomerID int;
Alter Table Accounts
add constraint Fk_Accounts_Customers
FOREIGN KEY (CustomerID)
REFERENCES customers(CustomerID);
select*from customers;
#DML
INSERT INTO customers (CustomerID,firstName,LastName,Email,Phone,accountcreation_date)
VALUES( 6,"Sana","Khan","sanark223@gmail.com","8108758066","2026-07-17");
select * from customers;
use BankingDB;
INSERT INTO customers (customerID,firstName,LastName,Email,Phone,accountcreation_date)
VALUES(7,"aman","gupta","amang123@gmail.com","123456789","2026-07-18");
select*from customers;
use BankingDB;
INSERT INTO customers (customerID,firstName,LastName,Email,Phone,accountcreation_date)
value(8,"shardha","yadav","shardha123@gmail.com","1234567810","2026-07-29");
INSERT INTO customers (customerID,firstName,LastName,Email,phone,accountcreation_date)
values(009,"sumit","khaire","sumit@123","1234567980","2026-07-25");
#update
update customers set phone="2323232900" where firstname="sumit";
set sql_safe_updates=0;
select*from customers;
create database pizza_sales_analysis;
show databases;
update customers set phone="1234567819" where customerID="8";
INSERT INTO customers (customerID,firstName,LastName,Email,phone,accountcreation_date)
values (10,"anisha","khan","anisha@gmail.com" ,"1212121211","2026-07-30");
#delete,truncate
delete from customers where firstName="sumit";
rollback;
start transaction;
delete from customers where firstName="sumit";
rollback;
select *from customers;
truncate table customers;
#dql
select*from customers;
select*from customers where firstname="anisha";
select *from customers where email="anisha@gmail.com";
select email,phone from customers where firstname="sumit"; #selectfilter
select*from customers where firstname like "a%";  #startswith
select*from customers where firstname like "%a";  #endswith
select*from customers where lastname like "%k%"; #justletter



select*from customers order by firstname;
select*from customers order by firstname desc;
select*from customers order by accouncreation_date desc;
select*from customers order by accountcreation_date desc limit 2; # latest customers
select*from customers order by accountcreation_date limit 2; # oldest customers
select*from customers order by accountreation_date limit 3 offset 1;
select*from customers order by email limit 1 offset 1;


select * from customers;
insert into accounts (accountid,accounttype,balance)
values (101,"savings",10000);
insert into accounts (accountid,accounttype,balance)
values (102,"salary",20000);
insert into accounts (accountid,accounttype,balance)
values (103,"current",30000);
select*from accounts;
insert into accounts (accountid,accounttype,balance)
values (103,"current",30000);
insert into accounts (accountid,accounttype,balance, CustomerID)
values (104,"current",30000,6);
alter table accounts add column customerid int;
insert into accounts (accountid,accounttype,balance, CustomerID)
values (105,"current",70000,7);
insert into accounts (accountid,accounttype,balance, CustomerID)
values (106,"saving",80000,8);
select*from accounts order by  Balance ;
select*from accounts order by Balance limit 2;
select*from accounts  where Balance >15000;
select*from accounts where Balance>15000 and AccountType="saving"; #where clause
select*from accounts where Balance>15000 and AccountType="current";
select*from accounts where Balance>15000 or AccountType="current";
select*from accounts where Balance>20000 or AccountType="salary";
select*from accounts where Balance between 5000 and 16000;
select*from accounts;
#group by 21-07-26
select min(Amount) transactionType  from transactions group by transactionType
having (min(Amount)<10000) order by min (Amount); # 1630 error 22-07-26
select min(balance) AccountType  from accounts group by AccountType
having (min(Balance)<10000) order by min (Balance);
use bankingdb;
select*from loans;
select datediff(enddate,startdate)as duration_loan from loans;
select current_date();
select sysdate();
select current_timestamp();
select datediff(now(),accountcreation_date )as total_days from customers;
select datediff(now(),accountcreation_date )as total_days from customers order by total_days limit 1;

use bankingdb;    --- 23-07-26
select*from loans;
select datediff(enddate,startdate)as duration_loan from loans;
select current_date();
select sysdate();
select current_timestamp();
select datediff(now(),accountcreation_date )as total_days from customers;
select datediff(now(),accountcreation_date )as total_days from customers order by total_days limit 1;
select date_add(now(), interval 6 month);
select date_add(now(), interval 6 day);

select customerid,date_add(accountcreation_date, interval 6 month) as lockingperiod from customers;

select max(accountcreation_date) from customers;
select greatest("2026-07-16","2036-08-16","2025-08-17") as the_greatest_value  from customers;
select greatest(450,345,234,567)from accounts limit 1;
select least(450,345,234,567)from accounts limit 1;


#stringfunction---23-07-26


select upper(firstname),lower(lastname),
lower(concat(firstname,"",lastname))as full_name from customers;
select length(firstname)from customers;
select left(firstname,2),right(firstname,2) from customers;



#mathfunction---
select 3+5,3-5,3*2,3/3,6percentage4;

update accounts set Balance=+20000 where AccountID=101 and 102 ;
select * from accounts;
select round (270.34,1),floor(234.23);
select ceil(234.23),floor(234.23);
select ceil(234.53),floor(234.53);
select truncate(234.533,2);
select round(23.56,1),truncate(23.56,1);
select abs(-235),abs(235);
select power (2,3),2%3;
select exp(2);

