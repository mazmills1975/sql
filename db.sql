-- phpMyAdmin SQL Dump
-- version 4.1.13
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 26, 2016 at 12:26 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `DONOTDELETE`
--

-- --------------------------------------------------------

--
-- Table structure for table `Customer details`
--

CREATE TABLE IF NOT EXISTS `Customer details` (
  `idCustomer details` int(11) NOT NULL AUTO_INCREMENT,
  `Surname` varchar(45) DEFAULT NULL,
  `First names` varchar(45) DEFAULT NULL,
  `address line 1` varchar(45) DEFAULT NULL,
  `address line 2` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `postcode` varchar(45) DEFAULT NULL,
  `tel no` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCustomer details`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `Customer details`
--

INSERT INTO `Customer details` (`idCustomer details`, `Surname`, `First names`, `address line 1`, `address line 2`, `city`, `postcode`, `tel no`, `email`) VALUES
(1, 'Brown', 'Belinda', '16 FLOWERGATE', NULL, 'Hull', 'hu9 222', '234567', 'BLUES@YAHOO.COM\n'),
(2, 'Orange', 'Ollie', '14 MILL LANE', NULL, 'Hull', 'Hu8 546', '765432', 'GREENS1@GOOGLE.COM\n'),
(3, 'Black', 'Barbara', '23 Village Road', 'Preston Road', 'Hull', 'hu9 4tr', '696544', 'BLACKS00@GMAIL.COM\n'),
(4, 'Pink', 'Panther', '74 Very Mill', NULL, 'Hull', 'Hu7 6yt', '535776', 'BLACKS00@GMAIL.COM\n'),
(5, 'Yellow', 'Yoda', '64 Lilliput Lane', NULL, 'Hull', 'Hu9 fh6', '656568', NULL),
(6, 'Blue', 'Billy', '64 The Ledge', NULL, 'Hull', 'Hu7 yfh', NULL, NULL),
(7, 'Green', 'Gail', '46 Trumpton Town', NULL, 'Hull', 'Hu8 hd5', '645375', NULL),
(8, 'White', 'Willy', '75 Hull Road', 'Preston Road', 'Hull', 'Hu7 h64', '5936475', 'GREENS1@GOOGLE.COM\n');

-- --------------------------------------------------------

--
-- Table structure for table `Customer_orders`
--

CREATE TABLE IF NOT EXISTS `Customer_orders` (
  `idCustomer  order` int(11) NOT NULL AUTO_INCREMENT,
  `Customer details_idCustomer details` int(11) NOT NULL,
  `total order price` varchar(45) NOT NULL,
  `Description` varchar(45) NOT NULL,
  PRIMARY KEY (`idCustomer  order`,`Customer details_idCustomer details`),
  KEY `fk_Customer order table_Customer details1_idx` (`Customer details_idCustomer details`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `Customer_orders`
--

INSERT INTO `Customer_orders` (`idCustomer  order`, `Customer details_idCustomer details`, `total order price`, `Description`) VALUES
(1, 1, '35.00', 'Wine and Beer'),
(2, 2, '20.00', 'Wine'),
(3, 3, '0.39', 'Dog Food'),
(4, 4, '4.99', 'Wine'),
(5, 5, '0.99', 'Mils Chocolate'),
(6, 6, '0.28', 'Baby Wipes'),
(7, 7, '0.49', 'Eclairs');

-- --------------------------------------------------------

--
-- Table structure for table `Deliveries`
--

CREATE TABLE IF NOT EXISTS `Deliveries` (
  `idDeliveries` int(11) NOT NULL AUTO_INCREMENT,
  `Customer order table_idCustomer order table` int(11) NOT NULL,
  `Delivery Address Line 1` varchar(45) NOT NULL,
  `City` varchar(45) NOT NULL,
  `Post Code` varchar(45) NOT NULL,
  `Delivery time` varchar(45) NOT NULL,
  PRIMARY KEY (`idDeliveries`,`Customer order table_idCustomer order table`),
  KEY `fk_Deliveries_Customer order table1_idx` (`Customer order table_idCustomer order table`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `Deliveries`
--

INSERT INTO `Deliveries` (`idDeliveries`, `Customer order table_idCustomer order table`, `Delivery Address Line 1`, `City`, `Post Code`, `Delivery time`) VALUES
(1, 1, '16 Flowergate', 'Hull', 'Hu9 222', '11.30'),
(2, 2, '14 Mill Lane', 'Hull', 'Hu8 546', '12.00'),
(3, 3, '23 Village Road', 'Hull', 'Hu9 4tr', '12.00'),
(4, 4, '74 Very Mill', 'Hull', 'Hu7 6yt', '12.00'),
(5, 5, '64 Lilliput Lane', 'Hull', 'Hu9 fh6', '13.00'),
(6, 6, '64 The Ledge', 'Hull', 'Hu7 yfh', '12.00');

-- --------------------------------------------------------

--
-- Table structure for table `Manager`
--

CREATE TABLE IF NOT EXISTS `Manager` (
  `idManager` int(11) NOT NULL AUTO_INCREMENT,
  `Surname` varchar(45) NOT NULL,
  `First Name` varchar(45) NOT NULL,
  `Contact number` varchar(45) NOT NULL,
  PRIMARY KEY (`idManager`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Manager`
--

INSERT INTO `Manager` (`idManager`, `Surname`, `First Name`, `Contact number`) VALUES
(1, 'Brown', 'Bill', '123456'),
(2, 'Blue', 'Bob', '234567'),
(3, 'Green', 'Garry', '345678');

-- --------------------------------------------------------

--
-- Table structure for table `Order contents`
--

CREATE TABLE IF NOT EXISTS `Order contents` (
  `idOrder contents` int(11) NOT NULL AUTO_INCREMENT,
  `Customer order table_idCustomer order table` int(11) NOT NULL,
  `Products_idProducts` int(11) NOT NULL,
  `Quantity` varchar(45) NOT NULL,
  PRIMARY KEY (`idOrder contents`,`Customer order table_idCustomer order table`,`Products_idProducts`),
  KEY `fk_Order contents_Customer order table1_idx` (`Customer order table_idCustomer order table`),
  KEY `fk_Order contents_Products1_idx` (`Products_idProducts`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `Order contents`
--

INSERT INTO `Order contents` (`idOrder contents`, `Customer order table_idCustomer order table`, `Products_idProducts`, `Quantity`) VALUES
(1, 1, 2, '3'),
(2, 6, 6, '5'),
(3, 2, 3, '1'),
(3, 5, 5, '4'),
(4, 3, 3, '0'),
(6, 4, 5, '7');

-- --------------------------------------------------------

--
-- Table structure for table `Product category`
--

CREATE TABLE IF NOT EXISTS `Product category` (
  `idProduct catagory` int(11) NOT NULL AUTO_INCREMENT,
  `Products_idProducts` int(11) NOT NULL,
  `Special_Offers` varchar(45) DEFAULT NULL,
  `241 products` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idProduct catagory`,`Products_idProducts`),
  KEY `fk_Product catergory_Products_idx` (`Products_idProducts`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Product category`
--

INSERT INTO `Product category` (`idProduct catagory`, `Products_idProducts`, `Special_Offers`, `241 products`) VALUES
(1, 1, 'White Wine', NULL),
(2, 2, 'Dog Food', NULL),
(3, 3, '', 'Baby Wipes');

-- --------------------------------------------------------

--
-- Table structure for table `Products`
--

CREATE TABLE IF NOT EXISTS `Products` (
  `idProducts` int(11) NOT NULL AUTO_INCREMENT,
  `Product Name` varchar(45) NOT NULL,
  `Description` varchar(45) NOT NULL,
  `Price` varchar(45) NOT NULL,
  PRIMARY KEY (`idProducts`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `Products`
--

INSERT INTO `Products` (`idProducts`, `Product Name`, `Description`, `Price`) VALUES
(1, 'Le Blanc', 'White Wine', '4.99'),
(2, 'Winalot', 'Dog Food', '0.49'),
(3, 'Pampers', 'Baby Wipes', '0.29'),
(4, 'Heinz Beans', 'Tinned Beans', '0.49'),
(5, 'Carling', 'Lager', '10.00'),
(6, 'Jack Daniels', 'Spirits', '14.99'),
(7, 'Carlsberg', 'Lager', '10.00'),
(8, 'Archers', 'Spirits', '8.99'),
(9, 'Pampers', 'Nappies', '6.99'),
(10, 'Blossom Hill', 'Red Wine', '5.99'),
(11, 'Dairy Milk', 'Milk Chocolate', '0.99'),
(12, 'Love Hearts', 'Sweets', '0.29'),
(13, 'Hovis', 'Brown Bread', '0.99'),
(14, 'Eclairs', 'Cakes', '0.49'),
(15, 'Sausages', 'Meat', '1.99'),
(16, 'Ham', 'Meat', '1.79'),
(17, 'Beef', 'Meat', '6.49'),
(18, 'Flash', 'Floor Cleaner', '0.99'),
(19, 'Mr Sheen', 'Polish', '0.99'),
(20, 'Daz', 'Washing Powder', '2.99');

-- --------------------------------------------------------

--
-- Table structure for table `Stock`
--

CREATE TABLE IF NOT EXISTS `Stock` (
  `idStock` int(11) NOT NULL AUTO_INCREMENT,
  `Stores_idStores` int(11) NOT NULL,
  `Stock_level` int(11) NOT NULL,
  `Products_idProducts` int(11) NOT NULL,
  PRIMARY KEY (`idStock`,`Stores_idStores`,`Products_idProducts`),
  KEY `fk_Stock_Stores1_idx` (`Stores_idStores`),
  KEY `fk_Stock_Products1_idx` (`Products_idProducts`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `Stock`
--

INSERT INTO `Stock` (`idStock`, `Stores_idStores`, `Stock_level`, `Products_idProducts`) VALUES
(1, 1, 0, 1),
(2, 2, 234, 2),
(3, 3, 23, 3),
(4, 2, 3, 4),
(5, 1, 0, 12),
(6, 3, 245, 14),
(7, 2, 45, 15),
(8, 1, 0, 5),
(9, 3, 56465, 11),
(10, 2, 76, 7),
(11, 3, 335, 8),
(12, 2, 43, 10),
(13, 1, 56, 6);

-- --------------------------------------------------------

--
-- Table structure for table `Stores`
--

CREATE TABLE IF NOT EXISTS `Stores` (
  `idStores` int(11) NOT NULL AUTO_INCREMENT,
  `Manager_idManager` int(11) NOT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Phone number` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idStores`,`Manager_idManager`),
  KEY `fk_Stores_Manager1_idx` (`Manager_idManager`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `Stores`
--

INSERT INTO `Stores` (`idStores`, `Manager_idManager`, `Address`, `Phone number`, `Email`) VALUES
(1, 1, '1 THE STREET , HULL,  HU7 362', '098765', 'BROWNS@HOTMAIL.COM'),
(2, 2, '2 THE LANE, WHITBY ,Y021 567', '543210', 'GREENS1@GOOGLE.COM'),
(3, 3, '3 GARDEN VILLAGE , HULL , HU6 364', '654321', 'PINKS@YAHOO.CO.UK');

-- --------------------------------------------------------

--
-- Table structure for table `Supplier`
--

CREATE TABLE IF NOT EXISTS `Supplier` (
  `idSupplier` int(11) NOT NULL AUTO_INCREMENT,
  `Products_idProducts` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Tel No` varchar(45) NOT NULL,
  PRIMARY KEY (`idSupplier`,`Products_idProducts`),
  KEY `fk_Supplier_Products1_idx` (`Products_idProducts`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `Supplier`
--

INSERT INTO `Supplier` (`idSupplier`, `Products_idProducts`, `Name`, `Address`, `Tel No`) VALUES
(1, 1, 'BrROWNS', '1 THE STREET , HULL,  HU7 362', '111111'),
(2, 2, 'PINKS', '3 GARDEN VILLAGE , HULL , HU6 364', '222222'),
(3, 3, 'ORANGES', '14 MILL LANE, WHITBY,Y022 584', '333333'),
(4, 4, 'MR GREEN', '16 FLOWERGATE, WHITBY, Y021 678', '444444'),
(5, 5, 'MR BLACKS', '22 CARR LANE,  HULL, HU03 555', '555555'),
(6, 6, 'BLUES', '3 GARDEN VILLAGE , HULL , HU6 364', '666666');

-- --------------------------------------------------------

--
-- Table structure for table `Van routes`
--

CREATE TABLE IF NOT EXISTS `Van routes` (
  `idVan _routes` int(11) NOT NULL AUTO_INCREMENT,
  `Deliveries_idDeliveries` int(11) NOT NULL,
  `Deliveries_Customer order table_idCustomer order table` int(20) NOT NULL,
  PRIMARY KEY (`idVan _routes`,`Deliveries_idDeliveries`,`Deliveries_Customer order table_idCustomer order table`),
  KEY `fk_Van routes_Deliveries1_idx` (`Deliveries_idDeliveries`,`Deliveries_Customer order table_idCustomer order table`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `Van routes`
--

INSERT INTO `Van routes` (`idVan _routes`, `Deliveries_idDeliveries`, `Deliveries_Customer order table_idCustomer order table`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Customer_orders`
--
ALTER TABLE `Customer_orders`
  ADD CONSTRAINT `fk_Customer order table_Customer details1` FOREIGN KEY (`Customer details_idCustomer details`) REFERENCES `Customer details` (`idCustomer details`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Deliveries`
--
ALTER TABLE `Deliveries`
  ADD CONSTRAINT `fk_Deliveries_Customer order table1` FOREIGN KEY (`Customer order table_idCustomer order table`) REFERENCES `Customer_orders` (`idCustomer  order`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Order contents`
--
ALTER TABLE `Order contents`
  ADD CONSTRAINT `fk_Order contents_Customer order table1` FOREIGN KEY (`Customer order table_idCustomer order table`) REFERENCES `Customer_orders` (`idCustomer  order`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Order contents_Products1` FOREIGN KEY (`Products_idProducts`) REFERENCES `Products` (`idProducts`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Product category`
--
ALTER TABLE `Product category`
  ADD CONSTRAINT `fk_Product catergory_Products` FOREIGN KEY (`Products_idProducts`) REFERENCES `Products` (`idProducts`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Stock`
--
ALTER TABLE `Stock`
  ADD CONSTRAINT `fk_Stock_Products1` FOREIGN KEY (`Products_idProducts`) REFERENCES `Products` (`idProducts`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Stock_Stores1` FOREIGN KEY (`Stores_idStores`) REFERENCES `Stores` (`idStores`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Stores`
--
ALTER TABLE `Stores`
  ADD CONSTRAINT `fk_Stores_Manager1` FOREIGN KEY (`Manager_idManager`) REFERENCES `Manager` (`idManager`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Supplier`
--
ALTER TABLE `Supplier`
  ADD CONSTRAINT `fk_Supplier_Products1` FOREIGN KEY (`Products_idProducts`) REFERENCES `Products` (`idProducts`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `Van routes`
--
ALTER TABLE `Van routes`
  ADD CONSTRAINT `fk_Van routes_Deliveries1` FOREIGN KEY (`Deliveries_idDeliveries`, `Deliveries_Customer order table_idCustomer order table`) REFERENCES `Deliveries` (`idDeliveries`, `Customer order table_idCustomer order table`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
