-- create database Game;
CREATE SCHEMA IF NOT EXISTS `VideoGames` ;
CREATE DATABASE IF NOT EXISTS `VideoGames`;

use VideoGames;

drop table if exists Customer;
create table Customer(
	Customer_Name varchar(500) not null,
	DOB date, 
    Email varchar(500) not null,
	CustomerID int,
    PRIMARY KEY (CustomerID));


drop table if exists Vendor;
  
create table Vendor(
	Vendor_Name varchar(500) not null,
	VendorID int,
    Email varchar(500) not null,
	Location varchar(500),PRIMARY KEY (VendorID)); 
	
    
    drop table if exists Game;
    
    create table Game(
    GameID int,
	Title varchar(500) not null,
	Year_Rel date,
    price dec not null,
	Review varchar(500),
	Rating varchar(500),PRIMARY KEY ( GameID)); 
    
	drop table if exists Sales_Customer;
    create table Sales_Customer(
    SaleID int,
    GameID int not null,
    CustomerID int not null,
    Quantity int not null,
	Sale_Date date not null,
	Sale_Price dec not null,
    PRIMARY KEY (SaleID),
    FOREIGN KEY (GameID) REFERENCES Game(GameID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID));
   
   drop table if exists Sales_Vendor;
    create table Sales_Vendor(
    SaleID int,
    GameID int not null,
    VendorID int not null,
    Quantity int not null,
	Sale_Date date not null,
	Sale_Price dec not null,
    PRIMARY KEY (SaleID),
    FOREIGN KEY (GameID) REFERENCES Game(GameID),
    FOREIGN KEY (VendorID) REFERENCES Vendor(VendorID));

