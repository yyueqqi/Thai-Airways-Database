DROP DATABASE IF EXISTS airline; 
CREATE DATABASE IF NOT EXISTS airline;
USE airline; 

CREATE TABLE `airlinebooking` (
  `bookingID` int(11) NOT NULL,
  `bookingDate` date NOT NULL,
  `userID` int(11) NOT NULL
);

CREATE TABLE `baggage` (
  `baggageID` int(11) NOT NULL,
  `size` int(11) NOT NULL,
  `baggageStatus` varchar(255) NOT NULL,
  `passengerID` int(11) NOT NULL,
  `baggageNumber` int(11) NOT NULL
);

CREATE TABLE `flight` (
  `flightID` int(11) NOT NULL,
  `flightNum` varchar(20) NOT NULL,
  `destination` varchar(50) NOT NULL,
  `delay` varchar(50) NOT NULL,
  `departureGate` varchar(50) NOT NULL,
  `boardingTime` time NOT NULL,
  `departureTime` time NOT NULL,
  `flight_Type` varchar(50) NOT NULL,
  `standard_dining` varchar(50) NOT NULL,
  `lounge_location` varchar(50) NOT NULL,
  `quantity_dining` varchar(50) NOT NULL,
  `fine_dining` varchar(50) NOT NULL
);

CREATE TABLE `membership` (
  `membershipID` int(11) NOT NULL,
  `registrationM` varchar(50) NOT NULL,
  `frequentFlyerMiles` int(100) NOT NULL,
  `userID` int(11) NOT NULL
);

CREATE TABLE `passenger` (
  `passengerID` int(11) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `LName` varchar(50) NOT NULL,
  `contactInfo` varchar(50) NOT NULL,
  `registerM` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(11) NOT NULL,
  `flightID` int(11) NOT NULL,
  `bookingID` int(11) NOT NULL,
  `userID` int(11) NOT NULL
);

CREATE TABLE `payment` (
  `paymentID` int(11) NOT NULL,
  `paymentMethod` varchar(50) NOT NULL,
  `paymetnStatus` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL,
  `paymentDate` date NOT NULL,
  `userID` int(11) NOT NULL,
  `RewardID` int(11) NOT NULL
);

CREATE TABLE `premium_service` (
  `premium_serviceID` int(11) NOT NULL,
  `serviceType` varchar(255) NOT NULL,
  `membershipID` int(11) NOT NULL
);

CREATE TABLE `promotionoffer` (
  `RpromotionOffer` int(11) NOT NULL,
  `RewardRID` int(11) NOT NULL
);

CREATE TABLE `rewardredemption` (
  `rewardRID` int(11) NOT NULL,
  `rewardPoint` int(11) NOT NULL,
  `membershipID` int(11) NOT NULL
);

CREATE TABLE `ticket` (
  `ticketID` int(11) NOT NULL,
  `seatNo` varchar(20) NOT NULL,
  `class` varchar(50) NOT NULL,
  `passengerName` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `time` time NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `bookingID` int(11) NOT NULL,
  `flightID` int(11) NOT NULL
);

CREATE TABLE `user` (
  `userID` int(11) NOT NULL,
  `Fname` varchar(50) NOT NULL,
  `Lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phoneNumber` bigint(11) NOT NULL,
  `address` varchar(255) NOT NULL
);


-- Indexes for table `airlinebooking`
ALTER TABLE `airlinebooking`
  ADD PRIMARY KEY (`bookingID`),
  ADD KEY `userID` (`userID`);

-- Indexes for table `baggage`
ALTER TABLE `baggage`
  ADD PRIMARY KEY (`baggageID`),
  ADD KEY `passengerID` (`passengerID`);

-- Indexes for table `flight`
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flightID`);

-- Indexes for table `membership`
ALTER TABLE `membership`
  ADD PRIMARY KEY (`membershipID`),
  ADD KEY `userID` (`userID`);

-- Indexes for table `passenger`
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`passengerID`),
  ADD KEY `flightID` (`flightID`,`bookingID`,`userID`),
  ADD KEY `userID` (`userID`),
  ADD KEY `bookingID` (`bookingID`);

-- Indexes for table `payment`
ALTER TABLE `payment`
  ADD PRIMARY KEY (`paymentID`),
  ADD KEY `userID` (`userID`,`RewardID`),
  ADD KEY `RewardID` (`RewardID`);

-- Indexes for table `premium_service`
ALTER TABLE `premium_service`
  ADD PRIMARY KEY (`premium_serviceID`),
  ADD KEY `membershipID` (`membershipID`);

-- Indexes for table `promotionoffer`
ALTER TABLE `promotionoffer`
  ADD PRIMARY KEY (`RpromotionOffer`),
  ADD KEY `RewardRID` (`RewardRID`);

-- Indexes for table `rewardredemption`
ALTER TABLE `rewardredemption`
  ADD PRIMARY KEY (`rewardRID`),
  ADD KEY `membershipID` (`membershipID`);

-- Indexes for table `ticket`
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`ticketID`),
  ADD KEY `bookingID` (`bookingID`),
  ADD KEY `flightID` (`flightID`);

-- Indexes for table `user`
ALTER TABLE `user`
  ADD PRIMARY KEY (`userID`);


-- AUTO_INCREMENT for table `airlinebooking`
ALTER TABLE `airlinebooking`
  MODIFY `bookingID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

-- AUTO_INCREMENT for table `baggage`
ALTER TABLE `baggage`
  MODIFY `baggageID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

-- AUTO_INCREMENT for table `flight`
ALTER TABLE `flight`
  MODIFY `flightID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

-- AUTO_INCREMENT for table `membership`
ALTER TABLE `membership`
  MODIFY `membershipID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

-- AUTO_INCREMENT for table `passenger`
ALTER TABLE `passenger`
  MODIFY `passengerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

-- AUTO_INCREMENT for table `payment`
ALTER TABLE `payment`
  MODIFY `paymentID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

-- AUTO_INCREMENT for table `premium_service`
ALTER TABLE `premium_service`
  MODIFY `premium_serviceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

-- AUTO_INCREMENT for table `promotionoffer`
ALTER TABLE `promotionoffer`
  MODIFY `RpromotionOffer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

-- AUTO_INCREMENT for table `rewardredemption`
ALTER TABLE `rewardredemption`
  MODIFY `rewardRID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

-- AUTO_INCREMENT for table `ticket`
ALTER TABLE `ticket`
  MODIFY `ticketID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

-- AUTO_INCREMENT for table `user`
ALTER TABLE `user`
  MODIFY `userID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;


-- Constraints for table `baggage`
ALTER TABLE `baggage`
  ADD CONSTRAINT `baggage_ibfk_1` FOREIGN KEY (`passengerID`) REFERENCES `passenger` (`passengerID`);

-- Constraints for table `membership`
ALTER TABLE `membership`
  ADD CONSTRAINT `membership_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`);

-- Constraints for table `passenger`
ALTER TABLE `passenger`
  ADD CONSTRAINT `passenger_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`),
  ADD CONSTRAINT `passenger_ibfk_2` FOREIGN KEY (`flightID`) REFERENCES `flight` (`flightID`),
  ADD CONSTRAINT `passenger_ibfk_3` FOREIGN KEY (`bookingID`) REFERENCES `airlinebooking` (`bookingID`);

-- Constraints for table `payment`
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`userID`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`RewardID`) REFERENCES `rewardredemption` (`rewardRID`);

-- Constraints for table `premium_service`
ALTER TABLE `premium_service`
  ADD CONSTRAINT `premium_service_ibfk_1` FOREIGN KEY (`membershipID`) REFERENCES `membership` (`membershipID`);

-- Constraints for table `promotionoffer`
ALTER TABLE `promotionoffer`
  ADD CONSTRAINT `promotionoffer_ibfk_1` FOREIGN KEY (`RewardRID`) REFERENCES `rewardredemption` (`rewardRID`);

-- Constraints for table `rewardredemption`
ALTER TABLE `rewardredemption`
  ADD CONSTRAINT `rewardredemption_ibfk_1` FOREIGN KEY (`membershipID`) REFERENCES `membership` (`membershipID`);

-- Constraints for table `ticket`
ALTER TABLE `ticket`
  ADD CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`bookingID`) REFERENCES `airlinebooking` (`bookingID`),
  ADD CONSTRAINT `ticket_ibfk_2` FOREIGN KEY (`flightID`) REFERENCES `flight` (`flightID`);
