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
  LastEnteryDate varchar(30) NOT NULL
);

CREATE TABLE Marketing (
  CustomerID int NOT NULL,
  MarketingConsent boolean DEFAULT FALSE,
  MannerOfContac varchar(15) DEFAULT NULL,
  LastChangeDate varchar(15) DEFAULT NULL,
  LastContactDate varchar(20) DEFAULT NULL,
  LastEntryRefresh varchar(30) DEFAULT NULL
);

CREATE TABLE `customersacc` (
  `CustomerID` int NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Pass` varchar(20) NOT NULL,
  `LastChangeDate` varchar(70) NOT NULL,
  `AccType` varchar(20) NOT NULL,
  PRIMARY KEY (`CustomerID`)
);


CREATE TABLE `productsinformation` (
  `ProductID` int NOT NULL,
  `ScientificName` varchar(30) DEFAULT NULL,
  `CommonName` varchar(15) NOT NULL,
  `Dimension` varchar(20) NOT NULL,
  `Colour` varchar(15) NOT NULL,
  `Price` double NOT NULL,
  `Maturity` varchar(15) NOT NULL,
  `Availability` int NOT NULL,
  `LastEntryRefresh` varchar(30) NOT NULL,
  `DeleteStatus` tinyint NOT NULL DEFAULT '0',
  `ModifiedBy` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ProductID`)
);

CREATE TABLE `transactionshistory` (
  `ProductID` int NOT NULL,
  `CustomerID` int NOT NULL,
  `Quantity` varchar(15) NOT NULL,
  `TotalValue` varchar(20) NOT NULL,
  `TransactionDate` varchar(30) NOT NULL
);

CREATE TABLE `productshistory` (
  `ProductID` int NOT NULL,
  `Availability` int DEFAULT NULL,
  `DeleteStatus` tinyint DEFAULT NULL,
  `ModifiedBy` int DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
);

CREATE TABLE `productimages` (
  `ImageID` int NOT NULL,
  `ProductID` int DEFAULT NULL,
  `Location` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ImageID`)
);

CREATE TABLE `contactformlog` (
  `ContactFormLogID` int NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `PhoneNumber` varchar(20) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Message` longtext NOT NULL,
  `ResponseStatus` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ContactFormLogID`)
);

insert into customersacc (CustomerID, Username, Pass, LastChangeDate, AccType) values(1, "Alex", "Alex", "20/20/2020","normal");
insert into customersacc (CustomerID, Username, Pass, LastChangeDate, AccType) values(2, "Rex", "Rex", "20/20/2020","admin");

insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("0", "ScientificName", "CommonName", "Dimension", "Colour", "50.00", "Maturity", "100", "2021/04/18 20:23:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("1", "Abutilon", "CommonName", "Dimension", "Colour", "55.40", "Maturity", "100", "2021/04/18 20:24:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("2", "Acacia Flower", "CommonName", "Dimension", "Colour", "53.00", "Maturity", "100", "2021/04/18 20:26:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("3", "Ballon Flower", "CommonName", "Dimension", "Colour", "50.00", "Maturity", "100", "2021/04/18 20:22:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("4", "Bee Balm", "CommonName", "Dimension", "Colour", "52.00", "Maturity", "100", "2020/04/18 20:22:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("5", "Bergenia Flower", "CommonName", "Dimension", "Colour", "50.00", "Maturity", "100", "2021/03/18 20:22:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("6", "California Poppy", "CommonName", "Dimension", "Colour", "53.00", "Maturity", "100", "2021/02/18 20:22:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("7", "Broom Flower", "CommonName", "Dimension", "Colour", "20.00", "Maturity", "100", "2019/12/18 20:22:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("8", "Calendula", "CommonName", "Dimension", "Colour", "25.00", "Maturity", "100", "2018/12/18 20:22:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("9", "Cyclamen Flower", "CommonName", "Dimension", "Colour", "27.00", "Maturity", "100", "2018/10/18 20:22:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("10", "Canna Lilly", "CommonName", "Dimension", "Colour", "30.00", "Maturity", "100", "2018/10/18 22:22:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("11", "Cape Leadwort", "CommonName", "Dimension", "Colour", "30.00", "Maturity", "100", "2018/10/16 22:22:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("12", "Color Ful Pansies", "CommonName", "Dimension", "Colour", "31.00", "Maturity", "100", "2018/10/17 22:22:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("13", "Daffodils", "CommonName", "Dimension", "Colour", "33.00", "Maturity", "100", "2018/10/17 22:24:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("14", "Desert Rose", "CommonName", "Dimension", "Colour", "39.00", "Maturity", "100", "2018/10/17 22:30:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("15", "Disa Uniflora", "CommonName", "Dimension", "Colour", "39.99", "Maturity", "100", "2018/11/17 22:30:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("16", "Dotted Pink Cattleya", "CommonName", "Dimension", "Colour", "49.99", "Maturity", "100", "2019/11/17 22:30:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("17", "Fall crocus", "CommonName", "Dimension", "Colour", "59.99", "Maturity", "100", "2019/11/17 22:50:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("18", "Forget me not Flower", "CommonName", "Dimension", "Colour", "509.99", "Maturity", "100", "2019/11/17 22:56:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("19", "Four o Clock Flower", "CommonName", "Dimension", "Colour", "20.99", "Maturity", "100", "2019/11/17 22:57:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("20", "Flowering Dodwood", "CommonName", "Dimension", "Colour", "20.99", "Maturity", "100", "2019/11/17 23:57:17", "0", "0");

insert into productimages (ImageID, ProductID, Location) values('0', '0', './Images-Products/flowers/mix/blue-hibiscus-1.jpg');
insert into productimages (ImageID, ProductID, Location) values('1', '1', './Images-Products/flowers/mix/abutilon.jpg');
insert into productimages (ImageID, ProductID, Location) values('2', '2', './Images-Products/flowers/mix/acacia.jpg');
insert into productimages (ImageID, ProductID, Location) values('3', '3', './Images-Products/flowers/mix/balloon-flower.jpg');
insert into productimages (ImageID, ProductID, Location) values('4', '4', './Images-Products/flowers/mix/bee-balm.jpg');
insert into productimages (ImageID, ProductID, Location) values('5', '5', './Images-Products/flowers/mix/bergenia.jpg');
insert into productimages (ImageID, ProductID, Location) values('6', '6', './Images-Products/flowers/mix/california-poppy.jpg');
insert into productimages (ImageID, ProductID, Location) values('7', '7', './Images-Products/flowers/mix/broom.jpg');
insert into productimages (ImageID, ProductID, Location) values('8', '8', './Images-Products/flowers/mix/calendula.jpg');
insert into productimages (ImageID, ProductID, Location) values('9', '9', './Images-Products/flowers/mix/cyclamen.jpg');
insert into productimages (ImageID, ProductID, Location) values('10', '10', './Images-Products/flowers/mix/canna-lily.jpg');
insert into productimages (ImageID, ProductID, Location) values('11', '11', './Images-Products/flowers/mix/cape-leadwort.jpg');
insert into productimages (ImageID, ProductID, Location) values('12', '12', './Images-Products/flowers/mix/colorful-pansies.jpg');
insert into productimages (ImageID, ProductID, Location) values('13', '13', './Images-Products/flowers/mix/daffodil.jpg');
insert into productimages (ImageID, ProductID, Location) values('14', '14', './Images-Products/flowers/mix/desert-rose.jpg');
insert into productimages (ImageID, ProductID, Location) values('15', '15', './Images-Products/flowers/mix/disa-uniflora.jpg');
insert into productimages (ImageID, ProductID, Location) values('16', '16', './Images-Products/flowers/mix/dotted-pink-cattleya.jpg');
insert into productimages (ImageID, ProductID, Location) values('17', '17', './Images-Products/flowers/mix/fall-crocus.jpg');
insert into productimages (ImageID, ProductID, Location) values('18', '18', './Images-Products/flowers/mix/forget-me-not-flower.jpg');
insert into productimages (ImageID, ProductID, Location) values('19', '19', './Images-Products/flowers/mix/four-oclock-flower.jpg');
insert into productimages (ImageID, ProductID, Location) values('20', '20', './Images-Products/flowers/mix/flowering-dogwood.jpg');

insert into contactformlog (ContactFormLogID, FirstName, LastName, PhoneNumber, Email, Message, ResponseStatus,LastEnteryDate) values('1', 'Liviu', 'Nastase', '0892241743', 'liviu.nastase2@mail.dcu.ie', 'Will the price change if I but over 100 pices?', 'Panding','2021/04/23 11:45:10');
insert into contactformlog (ContactFormLogID, FirstName, LastName, PhoneNumber, Email, Message, ResponseStatus,LastEnteryDate) values('2', 'Alex', 'Nastase', '0892053543', 'liviu.nastase3@mail.dcu.ie', 'How long it will take to deliver to Dublin?', 'Panding','2021/04/23 11:50:10');
