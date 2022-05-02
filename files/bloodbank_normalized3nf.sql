

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
  `transactID` int(11) DEFAULT NULL,
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
  `firstName` varchar(50) DEFAULT NULL,
  `lastName` varchar(50) DEFAULT NULL,
  `recepientID` int(11) NOT NULL,
  `bloodType` varchar(3) DEFAULT NULL,
  `address` varchar(60) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `age` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
  ADD KEY `recepientID` (`recepientID`),
  ADD KEY `empID` (`empID`),
  ADD KEY `bloodBankID` (`bloodBankID`);

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
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `donorID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `medicalpersonnel`
--
ALTER TABLE `medicalpersonnel`
  MODIFY `empID` int(11) NOT NULL AUTO_INCREMENT;

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
