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



