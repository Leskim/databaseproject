-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2022 at 05:43 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bloodbank_normalized3nf`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE `blood` (
  `bloodBankID` int(11) NOT NULL,
  `datedonated` datetime DEFAULT NULL,
  `donorID` int(11) DEFAULT NULL,
  `quantity` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bloodbank`
--

CREATE TABLE `bloodbank` (
  `bloodBank_name` varchar(50) DEFAULT NULL,
  `bloodBank_address` varchar(60) DEFAULT NULL,
  `bloodBankID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bloodtransaction`
--

CREATE TABLE `bloodtransaction` (
  `transactID` int(11) NOT NULL,
  `bloodType` varchar(3) DEFAULT NULL,
  `recepientID` int(11) DEFAULT NULL,
  `bloodBankID` int(11) NOT NULL,
  `dateOut` datetime DEFAULT NULL,
  `empID` int(11) DEFAULT NULL,
  `quantity` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `donorID` int(11) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `bloodType` varchar(3) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `age` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`donorID`, `firstName`, `lastName`, `bloodType`, `address`, `email`, `phone`, `age`) VALUES
(1, 'Faith Hutchinson', 'Kiara Townsend', 'A+', '1223-30100', 'bibytav@mailinator.com', '+1 (419) 656-5101', 70),
(2, 'Morgan Lloyd', 'Lilah Booth', 'O+', '4565-30100', 'nepozifibo@mailinator.com', '+1 (697) 102-2479', 92),
(3, 'Lac', 'Anthony', 'A+', '4567-4587', 'dexulogo@mailinator.com', '+1 (336) 281-6153', 88),
(4, 'Fallon', ' Frost', 'AB+', '558-108743', 'cebi@mailinator.com', '+1 (137) 416-3196', 65),
(5, 'Xyla', 'Long', 'O+', '54-58956', 'femamuqef@mailinator.com', '+1 (231) 854-1572', 81),
(6, 'Shelley ', 'Cooke', 'AB-', '345-85586', 'likare@mailinator.com', '+1 (781) 155-5471', 98),
(7, 'Connor ', 'Stewart', 'O-', '333-587978', 'deju@mailinator.com', '+1 (318) 951-5523', 29),
(8, 'Ebony ', 'Roberson', 'AB-', '283-10245', 'bedon@mailinator.com', '+1 (877) 416-3586', 82),
(9, 'Elliott ', 'Pitts', 'AB-', '234-6799', 'pyqigoloh@mailinator.com', '+1 (379) 849-5711', 42),
(10, 'Nerea ', 'Drake', 'AB-', '333-5677', 'madoqif@mailinator.com', '+1 (952) 576-2139', 90),
(11, 'Patricia ', 'Morton', 'AB+', '22454-2356', 'vobededac@mailinator.com', '+1 (231) 534-9132', 67),
(12, 'Jesse ', 'Riddle', 'B+', 'Incididunt quod in e', 'pytuxiwut@mailinator.com', '+1 (377) 334-9804', 99),
(13, 'Aiko ', 'Howard', 'AB+', '234-65543', 'zycohejol@mailinator.com', '+1 (355) 278-7223', 90),
(14, 'Maya Mercado', 'Samantha Nelson', 'A+', '467-11356', 'noqoqa@mailinator.com', '+1 (945) 152-9736', 35),
(15, 'Nolan ', 'Johnston', 'B-', '134-90018', 'cojixy@mailinator.com', '+1 (451) 535-5945', 89),
(16, 'Oprah ', 'Nicholson', 'AB-', '2345-12345', 'hyco@mailinator.com', '+1 (925) 894-2335', 60),
(17, 'Sylvia ', 'Huff', 'A-', '358-345568', 'lofo@mailinator.com', '+1 (464) 164-2345', 37),
(18, 'Hope ', 'Sloan', 'AB+', '224-40100', 'celynejame@mailinator.com', '+1 (174) 307-3758', 100),
(19, 'Walker ', 'Gibson', 'B+', '345-70100', 'zunip@mailinator.com', '+1 (387) 633-9497', 21),
(20, 'Charity ', 'Benton', 'O-', '3466-22984', 'cigasidi@mailinator.com', '+1 (799) 398-9584', 50),
(21, 'Caleb ', 'Kirk', 'O-', '343-11918', 'qejy@mailinator.com', '+1 (797) 745-5175', 77),
(22, 'Quamar ', 'Deleon', 'O+', '134-50100', 'syqi@mailinator.com', '+1 (179) 172-2494', 99),
(23, 'Deacon ', 'Fowler', 'AB-', '678-10100', 'moraze@mailinator.com', '+1 (268) 104-4135', 67),
(24, 'Jerome ', 'Schmidt', 'O-', '60-30100', 'nona@mailinator.com', '+1 (394) 718-8826', 42),
(25, 'Anne ', 'Saunders', 'B+', '3456-49901', 'jigowofuk@mailinator.com', '+1 (694) 372-6365', 66),
(26, 'Larissa ', 'Hanson', 'A-', '355-13467', 'filewoxi@mailinator.com', '+1 (489) 989-5784', 68),
(27, 'Hamish ', 'Savage', 'AB-', '566-56867', 'gaby@mailinator.com', '+1 (382) 141-7199', 51),
(28, 'Gregory ', 'Cruz', 'A+', '445-10193', 'woso@mailinator.com', '+1 (385) 394-4141', 37),
(29, 'Charde ', 'Sparks', 'B-', '346-10004', 'nukocutyp@mailinator.com', '+1 (478) 967-4778', 38),
(30, 'Tate', ' Kennedy', 'B+', '445-14676', 'watumu@mailinator.com', '+1 (548) 667-6181', 76),
(31, 'Orla ', 'Hodges', 'B-', '134-13577', 'rena@mailinator.com', '+1 (467) 579-5877', 54),
(32, 'Denise ', 'Shepard', 'A-', '577-2467', 'kacaxodula@mailinator.com', '+1 (632) 439-7195', 60),
(33, 'Maia ', 'Rutledge', 'B-', '4596-14588', 'katugynoc@mailinator.com', '+1 (518) 964-1802', 27),
(34, 'Reed ', 'Macias', 'A-', '134-37789', 'fowaf@mailinator.com', '+1 (176) 117-5591', 6),
(35, 'Damian ', 'Bush', 'A-', '4332-55078', 'quzaxu@mailinator.com', '+1 (681) 774-8473', 49),
(36, 'Faith Guy', 'Quyn Patterson', 'O+', '444-15678', 'lejyqeko@mailinator.com', '+1 (953) 463-1725', 75),
(37, 'Althea ', 'Farley', 'A-', '55-30110', 'vuduser@mailinator.com', '+1 (311) 152-4382', 23),
(38, 'Abra', 'Lucas', 'A+', '567-34678', 'faqac@mailinator.com', '+1 (995) 991-7145', 70),
(39, 'Odessa', 'Hurley', 'A-', '123-56954', 'bitiwokoce@mailinator.com', '+1 (887) 705-5096', 15),
(40, 'Ryan', ' Mcgowan', 'A-', '533-14567', 'xyta@mailinator.com', '+1 (415) 671-9421', 100),
(41, 'Kai ', 'Crawford', 'O+', '335-8999', 'dylene@mailinator.com', '+1 (641) 642-7645', 97),
(42, 'William ', 'Sawyer', 'A-', '434-90100', 'jexolop@mailinator.com', '+1 (509) 461-5992', 47),
(43, 'Josiah ', 'Gardner', 'O+', '3553-10045', 'xyleny@mailinator.com', '+1 (868) 763-2213', 50),
(44, 'Snyder', 'Echo', 'B-', 'Quod neque qui esse ', 'domyba@mailinator.com', '+1 (303) 512-5307', 17),
(45, 'Petra ', 'Elliott', 'AB+', '3560-13467', 'xazaroceno@mailinator.com', '+1 (963) 433-9151', 96),
(46, 'Shoshana ', 'Mohammad', 'O+', '346-67949', 'rumamifu@mailinator.com', '+1 (789) 537-3222', 62),
(47, 'Kaseem ', 'Duran', 'A-', '1345-26892', 'fevirihec@mailinator.com', '+1 (992) 764-9163', 65),
(48, 'Jaden', 'Burt', 'A-', '2344-10111', 'vafotes@mailinator.com', '+1 (596) 242-9246', 48),
(49, 'Ifeoma', ' Palmer', 'O+', '134-35784', 'nyjoqu@mailinator.com', '+1 (789) 744-9608', 8),
(50, 'Cleveland', 'Madeline', 'A+', 'Fugit sint reprehe', 'hicu@mailinator.com', '+1 (543) 737-1182', 19),
(51, 'Channing', 'Ford', 'O-', '456-57896', 'mesa@mailinator.com', '+1 (184) 703-2384', 98);

-- --------------------------------------------------------

--
-- Table structure for table `medicalpersonnel`
--

CREATE TABLE `medicalpersonnel` (
  `empID` int(11) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `recepient`
--

CREATE TABLE `recepient` (
  `recepientID` int(11) NOT NULL,
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `bloodType` varchar(3) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `age` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recepient`
--

INSERT INTO `recepient` (`recepientID`, `firstName`, `lastName`, `bloodType`, `address`, `email`, `phone`, `age`) VALUES
(1, 'Tanek Phillips', 'Abbot Browning', 'O-', '1246-00100', 'hanopovika@mailinator.com', '+1 (867) 682-8288', 11),
(2, 'Daniel Ford', 'Mohammad Alvarado', 'O+', '345-3221', 'bupikumy@mailinator.com', '+1 (569) 889-2323', 93),
(3, 'Kasper', 'Talley', 'AB-', '5777-24334', 'qotabop@mailinator.com', '+1 (481) 961-7612', 38),
(4, 'Luke ', 'Mayo', 'O-', '1223-30100', 'javur@mailinator.com', '+1 (593) 508-4924', 9),
(5, 'Chancellor', 'Cross', 'O+', '1346-35455', 'pelita@mailinator.com', '+1 (457) 615-3378', 45),
(6, 'Hanna ', 'Horn', 'AB-', '1334-4392', 'nyjec@mailinator.com', '+1 (448) 581-9873', 70),
(7, 'Erica', 'Acosta', 'B+', '345-10234', 'jowodyn@mailinator.com', '+1 (921) 852-4274', 7),
(8, 'Yardley ', 'Gill', 'O+', '345-10234', 'fume@mailinator.com', '+1 (691) 463-1245', 97),
(9, 'Rae ', 'Shaffer', 'AB+', '33-10000', 'saros@mailinator.com', '+1 (226) 828-9671', 98),
(10, 'Josephine ', 'Murphy', 'AB+', '124-30100', 'mulonitot@mailinator.com', '+1 (996) 272-6276', 59),
(11, 'Jason ', 'Stewart', 'AB-', '1233-4567', 'resy@mailinator.com', '+1 (594) 367-4714', 89),
(12, 'Connor ', 'Hughes', 'A+', '234-30100', 'mysomelazy@mailinator.com', '+1 (375) 196-6748', 30),
(13, 'Whoopi ', 'Turner', 'AB-', '332-10100', 'ririma@mailinator.com', '+1 (729) 134-9717', 45),
(14, 'Melyssa ', 'Dodson', 'AB-', '145-23656', 'kydaqabi@mailinator.com', '+1 (413) 149-4585', 83),
(15, 'Kevin ', 'Carrillo', 'O-', '3444-1949', 'jixanit@mailinator.com', '+1 (958) 549-5775', 85),
(16, 'Fulton Mack', 'Leroy Harrell', 'A-', '134-14585', 'cemoze@mailinator.com', '+1 (877) 805-8343', 43),
(17, 'Tarik ', 'Hurley', 'A-', '134-5678', 'citidi@mailinator.com', '+1 (989) 794-6688', 96),
(18, 'Debra', 'Pierce', 'B+', '446-32rt67', 'zywamo@mailinator.com', '+1 (317) 682-6547', 21),
(19, 'Amela ', 'Blanchard', 'B+', '134-4677', 'jokyjale@mailinator.com', '+1 (902) 536-5155', 50),
(20, 'Brock ', 'Mayer', 'B+', '134-56889', 'wycapem@mailinator.com', '+1 (784) 928-4411', 89),
(21, 'Genevieve', 'Leonard', 'AB-', '234-25778', 'cysokety@mailinator.com', '+1 (541) 783-7016', 48),
(22, 'Gloria', 'Knowles', 'B+', '466-101123', 'zypawawave@mailinator.com', '+1 (738) 814-6945', 77),
(23, 'Laurel', 'Sutton', 'A+', '113-4578', 'xuhug@mailinator.com', '+1 (549) 197-7929', 37),
(24, 'Cooper', 'James', 'B+', '1233-46788', 'qubaheciq@mailinator.com', '+1 (686) 858-8628', 61),
(25, 'Ernest', 'Ondieki', 'A+', '1572-30100', '1@gmail.com', '073445678', 22),
(26, 'Kevyn', 'Lane', 'B+', '45-31001', 'kicukatanu@mailinator.com', '+1 (698) 888-9678', 63),
(27, 'Honorato', 'Durham', 'B-', '322-2456', 'qeqyq@mailinator.com', '+1 (681) 881-6228', 63),
(28, 'Tanya ', 'Campbell', 'AB-', '245-5432', 'tore@mailinator.com', '+1 (676) 951-9338', 45),
(29, 'Marcia', 'Little', 'O+', '224-135677', 'ciqeru@mailinator.com', '+1 (569) 152-5398', 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood`
--
ALTER TABLE `blood`
  ADD PRIMARY KEY (`bloodBankID`),
  ADD KEY `donorID` (`donorID`);

--
-- Indexes for table `bloodbank`
--
ALTER TABLE `bloodbank`
  ADD PRIMARY KEY (`bloodBankID`),
  ADD KEY `bloodBankID` (`bloodBankID`);

--
-- Indexes for table `bloodtransaction`
--
ALTER TABLE `bloodtransaction`
  ADD PRIMARY KEY (`transactID`),
  ADD KEY `empID` (`empID`),
  ADD KEY `bloodBankID` (`bloodBankID`),
  ADD KEY `recepientID` (`recepientID`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`donorID`);

--
-- Indexes for table `medicalpersonnel`
--
ALTER TABLE `medicalpersonnel`
  ADD PRIMARY KEY (`empID`);

--
-- Indexes for table `recepient`
--
ALTER TABLE `recepient`
  ADD PRIMARY KEY (`recepientID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blood`
--
ALTER TABLE `blood`
  MODIFY `bloodBankID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bloodbank`
--
ALTER TABLE `bloodbank`
  MODIFY `bloodBankID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bloodtransaction`
--
ALTER TABLE `bloodtransaction`
  MODIFY `transactID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `donorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `medicalpersonnel`
--
ALTER TABLE `medicalpersonnel`
  MODIFY `empID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recepient`
--
ALTER TABLE `recepient`
  MODIFY `recepientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blood`
--
ALTER TABLE `blood`
  ADD CONSTRAINT `blood_ibfk_1` FOREIGN KEY (`donorID`) REFERENCES `donor` (`donorID`),
  ADD CONSTRAINT `blood_ibfk_2` FOREIGN KEY (`bloodBankID`) REFERENCES `bloodbank` (`bloodBankID`);

--
-- Constraints for table `bloodtransaction`
--
ALTER TABLE `bloodtransaction`
  ADD CONSTRAINT `bloodtransaction_ibfk_1` FOREIGN KEY (`recepientID`) REFERENCES `recepient` (`recepientID`),
  ADD CONSTRAINT `bloodtransaction_ibfk_2` FOREIGN KEY (`empID`) REFERENCES `medicalpersonnel` (`empID`) ON DELETE SET NULL,
  ADD CONSTRAINT `bloodtransaction_ibfk_3` FOREIGN KEY (`bloodBankID`) REFERENCES `bloodbank` (`bloodBankID`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
