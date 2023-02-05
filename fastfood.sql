-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2023 at 02:23 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fastfood`
--

-- --------------------------------------------------------

--
-- Table structure for table `menuitems`
--

CREATE TABLE `menuitems` (
  `ItemID` int(4) NOT NULL,
  `ItemName` varchar(50) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `Price` double(4,2) NOT NULL,
  `Calories` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menuitems`
--

INSERT INTO `menuitems` (`ItemID`, `ItemName`, `Description`, `Price`, `Calories`) VALUES
(356, 'Double Bacon Quater Pounder with Cheese', 'Half pound of patty with bacon, onions, pickles, cheese, mustard, and ketchup.', 7.98, 820),
(390, 'Quarter Pounder with Cheese', 'Quarter pound of patty with onions, pickles, cheese, mustard, and ketchup.', 5.34, 510),
(717, 'Big Mac', '3 toasted buns, 2 patties, lettuce, pickles, onions, and secrete sauce.', 5.17, 540),
(783, 'McChicken', 'It’s a classic for a reason. Savor the satisfying crunch of our juicy chicken patty, topped with shredded lettuce and just the right amount of creamy mayonnaise, all served on a perfectly toasted bun.', 2.35, 380),
(1012, '20 Pc Nuggets', '20 pieces of chicken nuggets.', 12.12, 1490),
(1043, 'Double Quarter Pounder with Cheese', 'Half pound of patty with onions, pickles, cheese, mustard, and ketchup.', 7.30, 830),
(3901, 'Triple Cheese Burger', 'he McDonald\'s Triple Cheeseburger features three 100% pure all beef patties seasoned with just a pinch of salt and pepper. It\'s topped with tangy pickles, chopped onions, ketchup, mustard, and two mel', 3.69, 530),
(5674, 'Spicy Crispy McChicken', 'With our Spicy Pepper Sauce topping the southern style fried chicken fillet on a toasted potato roll, this sandwich was made for those who like it crispy, juicy, tender and hot', 4.50, 390),
(9122, 'Fish-O-Filet', 'A fish filet patty, cheese and tar tar sauce with a steamed bun.', 4.95, 380);

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `OrderNum` int(11) NOT NULL,
  `CustomerName` varchar(60) NOT NULL,
  `Total` double NOT NULL,
  `Timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `receipt_info`
--

CREATE TABLE `receipt_info` (
  `OrderNum` int(11) NOT NULL,
  `ItemID` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menuitems`
--
ALTER TABLE `menuitems`
  ADD PRIMARY KEY (`ItemID`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`OrderNum`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `OrderNum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
