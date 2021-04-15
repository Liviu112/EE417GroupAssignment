CREATE DATABASE TheGardenCenterDataBase;

use TheGardenCenterDataBase;

CREATE TABLE CustomersInformation (
  CustomerID int NOT NULL,
  FirstName varchar(30) NOT NULL,
  Surname varchar(30) NOT NULL,
  Email varchar(50) DEFAULT NULL,
  MobileNumber varchar(30) DEFAULT NULL,
  Address varchar(50) DEFAULT NULL,
  Eircode varchar(10) DEFAULT NULL,
  Town varchar(15) DEFAULT NULL,
  County varchar(10) DEFAULT NULL,
  LastEnteryDate varchar(12) NOT NULL
);

CREATE TABLE Marketing (
  CustomerID int NOT NULL,
  MarketingConsent boolean DEFAULT FALSE,
  MannerOfContac varchar(15) DEFAULT NULL,
  LastChangeDate varchar(15) DEFAULT NULL,
  LastContactDate varchar(20) DEFAULT NULL,
  LastEntryRefresh varchar(15) DEFAULT NULL
);

CREATE TABLE `customersacc` (
  `CustomerID` int NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Pass` varchar(20) NOT NULL,
  `LastChangeDate` varchar(70) NOT NULL,
  `AccType` varchar(20) NOT NULL,
  PRIMARY KEY (`CustomerID`)
);

CREATE TABLE ProductsInformation (
  ProductID int NOT NULL,
  ScientificName varchar(30) DEFAULT NULL,
  CommonName varchar(15) NOT NULL,
  Dimension varchar(20) NOT NULL,
  Colour varchar(15) NOT NULL,
  Price double NOT NULL,
  Maturity varchar(15) NOT NULL,
  Availability int NOT NULL, 
  LastEntryRefresh varchar(13) NOT NULL
);

CREATE TABLE `transactionshistory` (
  `ProductID` int NOT NULL,
  `CustomerID` int NOT NULL,
  `Quantity` varchar(15) NOT NULL,
  `TotalValue` varchar(20) NOT NULL,
  `TransactionDate` varchar(15) NOT NULL
);

insert into customersacc (CustomerID, Username, Pass, LastChangeDate, AccType) values(1, "Alex", "Alex", "20/20/2020","normal");
insert into customersacc (CustomerID, Username, Pass, LastChangeDate, AccType) values(2, "Rex", "Rex", "20/20/2020","admin");