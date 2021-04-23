CREATE DATABASE TheGardenCenterDataBase;

use TheGardenCenterDataBase;

CREATE TABLE `customersinformation` (
  `CustomerID` int NOT NULL,
  `FirstName` varchar(30) NOT NULL,
  `Surname` varchar(30) NOT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `MobileNumber` varchar(30) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Eircode` varchar(10) DEFAULT NULL,
  `Town` varchar(15) DEFAULT NULL,
  `County` varchar(10) DEFAULT NULL,
  `LastEnteryDate` varchar(30) NOT NULL
) ;

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
  `ScientificName` varchar(50) DEFAULT NULL,
  `CommonName` varchar(50) NOT NULL,
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
  `transactionID` int NOT NULL,
  `PaymentID` int NOT NULL,
  `ProductsID` varchar(45) NOT NULL,
  `CustomerID` int NOT NULL,
  `Quantity` varchar(15) NOT NULL,
  `TotalValue` double NOT NULL,
  `TransactionDate` varchar(30) NOT NULL,
  `billingDetailsID` varchar(45) NOT NULL,
  `DeliveryMethod` varchar(45) NOT NULL,
  PRIMARY KEY (`transactionID`)
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
  `LastEnteryDate` varchar(30) NOT NULL,
  PRIMARY KEY (`ContactFormLogID`)
);

CREATE TABLE `paymentsdetails` (
  `PaymentID` int NOT NULL,
  `CardType` varchar(45) NOT NULL,
  `CardNumber` varchar(25) NOT NULL,
  `ExpirationDate` varchar(7) NOT NULL,
  `SecurityCode` int NOT NULL,
  `CardHolderName` varchar(45) NOT NULL,
  `EnteryDate` varchar(30) NOT NULL,
  PRIMARY KEY (`PaymentID`)
);

CREATE TABLE `billingdetails` (
  `billingDetailsID` int NOT NULL,
  `Email` varchar(45) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `Country` varchar(45) NOT NULL,
  `Region` varchar(45) NOT NULL,
  `LastEnteryDate` varchar(20) NOT NULL,
  `PostalCode` varchar(20) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  PRIMARY KEY (`billingDetailsID`)
);

insert into customersacc (CustomerID, Username, Pass, LastChangeDate, AccType) values(1, "Alex", "Alex", "20/20/2020","normal");
insert into customersacc (CustomerID, Username, Pass, LastChangeDate, AccType) values(2, "Rex", "Rex", "20/20/2020","admin");

insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("0", "Alyogyne Huegelii", "Blue Hibiscus", "3x2m", "Blue", "10.00", "Fully Grown", "20", "2021/04/18 20:23:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("1", "Indian Mallow","Abutilon", "0.5x1m", "Orange", "5.50", "Flowering", "5", "2021/04/18 20:24:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("2", "Acacia", "Acacia Flower", "1x5", "White", "6.00", "Fully Grown", "10", "2021/04/18 20:26:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("3", "Platycodon Grandiflorus", "Ballon Flower", "0.5x0.4", "Violet", "10.00", "Flowering", "150", "2021/04/18 20:22:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("4", "Monarda", "Bee Balm", "2x4", "Pink", "2.00", "Seedlings", "20", "2020/04/18 20:22:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("5", "Bergenia", "Bergenia Flower", "0.3x0.45", "Pink", "5.00", "Flowering", "30", "2021/03/18 20:22:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("6", "Eschscholzia californica", "California Poppy", "0.2x1.5", "Yellow", "13.00", "Flowering", "10", "2021/02/18 20:22:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("7", "Genisteae", "Broom Flower", "Dimension", "Yellow", "22.00", "Flowering", "70", "2019/12/18 20:22:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("8", "Calendula", "Calendula", "1x1", "Yellow", "5.00", "Flowering", "26", "2018/12/18 20:22:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("9", "Cyclamen", "Cyclamen Flower", "0.7x0.5", "Pink White", "17.00", "Flowering", "80", "2018/10/18 20:22:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("10", "Canna", "Canna Lilly", "0.5x1", "Orange", "24.00", "Flowering", "120", "2018/10/18 22:22:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("11", "Plumbago auriculata", "Cape Leadwort", "0.5x1.2", "Blue", "8.00", "Flowering", "200", "2018/10/16 22:22:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("12", "Viola tricolor var. hortensis", "Colorful Pansies", "0.2x0.5", "Mixed", "11.00", "Flowering", "150", "2018/10/17 22:22:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("13", "Narcissus", "Daffodils", "0.5x0.5", "Yellow", "14.00", "Flowering", "90", "2018/10/17 22:24:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("14", "Adenium obesum", "Desert Rose", "0.4x0.3", "Red White", "18.00", "Seedlings", "600", "2018/10/17 22:30:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("15", "Disa Uniflora", "Pride of Table Mountain", "0.1x0.4", "Purple", "39.99", "Mature", "26", "2018/11/17 22:30:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("16", "Laeliinae Cattleya", "Dotted Pink Cattleya", "0.5x0.15", "Mixed", "29.00", "Flowering", "83", "2019/11/17 22:30:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("17", "Colchicum autumnale", "Autumn Crocus", "0.2x0.4", "Blue", "39.99", "Flowering", "15", "2019/11/17 22:50:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("18", "Myosotis", "Forget me not", "0.1x2.0", "Blue", "7.99", "Flowering", "27", "2019/11/17 22:56:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("19", "Mirabilis jalapa", "Four o Clock Flower", "0.15x0.5", "White", "20.99", "Early Growth", "42", "2019/11/17 22:57:17", "0", "0");
insert into productsinformation (ProductID, ScientificName, CommonName, Dimension, Colour, Price, Maturity, Availability, LastEntryRefresh, DeleteStatus, ModifiedBy) values("20", "Cornus florida", "Flowering Dogwood", "0.2x0.35", "Pink White", "5.99", "Fully Grown", "25", "2019/11/17 23:57:17", "0", "0");

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

insert into contactformlog (ContactFormLogID, FirstName, LastName, PhoneNumber, Email, Message, ResponseStatus,LastEnteryDate) values('1', 'Liviu', 'Nastase', '0892241743', 'liviu.nastase2@mail.dcu.ie', 'Will the price change if I but over 100 pices?', 'Pending','2021/04/23 11:45:10');
insert into contactformlog (ContactFormLogID, FirstName, LastName, PhoneNumber, Email, Message, ResponseStatus,LastEnteryDate) values('2', 'Alex', 'Nastase', '0892053543', 'liviu.nastase3@mail.dcu.ie', 'How long it will take to deliver to Dublin?', 'Pending','2021/04/23 11:50:10');
insert into contactformlog (ContactFormLogID, FirstName, LastName, PhoneNumber, Email, Message, ResponseStatus,LastEnteryDate) values('3', 'AJ', 'McELwee', '0852456432', 'anthony.mcelwee2@mail.dcu.ie', 'Will you send the plants as a present to my friend?', 'Pending','2021/04/24 10:00:23');
