USE airline; 

INSERT INTO `user` (`userID`, `Fname`, `Lname`, `email`, `phoneNumber`, `address`) VALUES
(1, 'John', 'Doe', 'john@example.com', 9996754576, '123 Main St, Apt 4B, Springfield, IL 62704'),
(2, 'Alice', 'Smith', 'alice@example.com', 9876543210, '456 Oak Lane, Suite 203, Denver, CO 80202'),
(3, 'Bob', 'Johnson', 'bob@example.com', 5554443333, '789 Maple Avenue, Unit 12, Raleigh, NC 27601'),
(4, 'Emma', 'Wilson', 'emma@example.com', 1112223333, '101 Pine Street, Apt 567, San Francisco, CA 94105'),
(5, 'Michael', 'Brown', 'michael@example.com', 4445556666, '234 Elm Drive, Unit 8D, Atlanta, GA 30301'),
(6, 'Sophia', 'Lee', 'sophia@example.com', 7778889999, '345 Cedar Court, Apt 101, Dallas, TX 75201'),
(7, 'Daniel', 'Garcia', 'daniel@example.com', 9998887777, '678 Birch Street, Suite 304, Seattle, WA 98101'),
(8, 'Olivia', 'Martinez', 'olivia@example.com', 6669991111, '901 Walnut Avenue, Apt 22, Miami, FL 33101'),
(9, 'William', 'Lopez', 'william@example.com', 2223334444, '1123 Spruce Lane, Unit 45, New York, NY 10001'),
(10, 'Ava', 'Gonzalez', 'ava@example.com', 8887776666, '4567 Sycamore Road, Apt 67, Chicago, IL 60601');


INSERT INTO `membership` (`membershipID`, `registrationM`, `frequentFlyerMiles`, `userID`) VALUES
(1, 'Gold', 10000, 1),
(2, 'Silver', 7500, 2),
(3, 'Bronze', 5000, 3),
(4, 'Gold', 11000, 4),
(5, 'Silver', 8000, 5),
(6, 'Bronze', 5500, 6),
(7, 'Gold', 10500, 7),
(8, 'Silver', 7000, 8),
(9, 'Bronze', 5200, 9),
(10, 'Gold', 9500, 10);


INSERT INTO `rewardredemption` (`rewardRID`, `rewardPoint`, `membershipID`) VALUES
(51, 50, 1),
(52, 60, 2),
(53, 70, 3),
(54, 80, 4),
(55, 90, 5),
(56, 100, 6),
(57, 110, 7),
(58, 120, 8),
(59, 130, 9),
(60, 140, 10),
(61, 150, 1),
(62, 160, 2),
(63, 170, 3),
(64, 180, 4),
(65, 190, 5),
(66, 200, 6),
(67, 210, 7),
(68, 220, 8),
(69, 230, 9),
(70, 240, 10),
(71, 250, 1),
(72, 260, 2),
(73, 270, 3),
(74, 280, 4),
(75, 290, 5),
(76, 300, 6),
(77, 310, 7),
(78, 320, 8),
(79, 330, 9),
(80, 340, 10);


INSERT INTO `promotionoffer` (`RpromotionOffer`, `RewardRID`) VALUES
(1, 51),
(2, 52),
(3, 53),
(4, 54),
(5, 55),
(6, 56),
(7, 57),
(8, 58),
(9, 59),
(10, 60);


INSERT INTO `flight` (`flightID`, `flightNum`, `destination`, `delay`, `departureGate`, `boardingTime`, `departureTime`, `flight_Type`, `standard_dining`, `lounge_location`, `quantity_dining`, `fine_dining`) VALUES
(1, 'AA123', 'New York', 'No Delay', 'Gate A1', '12:00:00', '13:00:00', 'Domestic', 'Yes', 'Lounge A', 'Full', 'Yes'),
(2, 'DL456', 'Los Angeles', '10 mins', 'Gate B2', '14:30:00', '15:30:00', 'Domestic', 'No', 'Lounge B', 'Limited', 'No'),
(3, 'UA789', 'Chicago', '5 mins', 'Gate C3', '11:00:00', '12:00:00', 'International', 'Yes', 'Lounge C', 'Full', 'Yes'),
(4, 'BA234', 'London', '20 mins', 'Gate D4', '18:45:00', '19:45:00', 'International', 'Yes', 'Lounge D', 'Full', 'Yes'),
(5, 'LH567', 'Tokyo', '15 mins', 'Gate E5', '23:30:00', '00:30:00', 'International', 'No', 'Lounge E', 'Limited', 'No'),
(6, 'AF890', 'Paris', 'No Delay', 'Gate F6', '09:00:00', '10:00:00', 'International', 'Yes', 'Lounge F', 'Full', 'Yes'),
(7, 'SQ123', 'Berlin', '25 mins', 'Gate G7', '21:15:00', '22:15:00', 'International', 'Yes', 'Lounge G', 'Full', 'Yes'),
(8, 'EK456', 'Sydney', '10 mins', 'Gate H8', '03:45:00', '04:45:00', 'International', 'No', 'Lounge H', 'Limited', 'No'),
(9, 'QF789', 'Dubai', '30 mins', 'Gate I9', '16:20:00', '17:20:00', 'International', 'Yes', 'Lounge I', 'Full', 'Yes'),
(10, 'TK234', 'Rome', '15 mins', 'Gate J10', '07:30:00', '08:30:00', 'International', 'No', 'Lounge J', 'Limited', 'No'),
(11, 'CX567', 'Madrid', 'No Delay', 'Gate K11', '11:45:00', '12:45:00', 'International', 'Yes', 'Lounge K', 'Full', 'Yes'),
(12, 'KL890', 'Beijing', '20 mins', 'Gate L12', '19:00:00', '20:00:00', 'International', 'Yes', 'Lounge L', 'Full', 'Yes'),
(13, 'JL123', 'Mumbai', '25 mins', 'Gate M13', '02:40:00', '03:40:00', 'International', 'Yes', 'Lounge M', 'Full', 'Yes'),
(14, 'AY456', 'Seoul', '10 mins', 'Gate N14', '15:55:00', '16:55:00', 'International', 'No', 'Lounge N', 'Limited', 'No'),
(15, 'EY789', 'Moscow', '15 mins', 'Gate O15', '09:10:00', '10:10:00', 'International', 'Yes', 'Lounge O', 'Full', 'Yes'),
(16, 'SW234', 'Bangkok', '5 mins', 'Gate P16', '22:50:00', '23:50:00', 'International', 'Yes', 'Lounge P', 'Full', 'Yes'),
(17, 'GY567', 'Istanbul', '30 mins', 'Gate Q17', '04:15:00', '05:15:00', 'International', 'Yes', 'Lounge Q', 'Full', 'Yes'),
(18, 'AY890', 'Toronto', 'No Delay', 'Gate R18', '11:20:00', '12:20:00', 'Domestic', 'Yes', 'Lounge R', 'Full', 'Yes'),
(19, 'QR123', 'Vancouver', '20 mins', 'Gate S19', '18:00:00', '19:00:00', 'Domestic', 'Yes', 'Lounge S', 'Full', 'Yes'),
(20, 'EK456', 'Montreal', '15 mins', 'Gate T20', '09:05:00', '10:05:00', 'Domestic', '', 'Lounge T', 'Full', 'Yes'),
(21, 'LH789', 'Calgary', 'No Delay', 'Gate U21', '12:30:00', '13:30:00', 'Domestic', 'Yes', 'Lounge U', 'Full', 'Yes'),
(22, 'BA234', 'Edmonton', '10 mins', 'Gate V22', '14:40:00', '15:40:00', 'Domestic', 'No', 'Lounge V', 'Limited', 'No'),
(23, 'AA567', 'Quebec', '25 mins', 'Gate W23', '19:25:00', '20:25:00', 'Domestic', 'Yes', 'Lounge W', 'Full', 'Yes'),
(24, 'QF890', 'Ottawa', '15 mins', 'Gate X24', '08:15:00', '09:15:00', 'Domestic', 'Yes', 'Lounge X', 'Full', 'Yes'),
(25, 'KL123', 'Halifax', 'No Delay', 'Gate Y25', '10:55:00', '11:55:00', 'Domestic', 'Yes', 'Lounge Y', 'Full', 'Yes'),
(26, 'SQ456', 'Saskatoon', '20 mins', 'Gate Z26', '17:50:00', '18:50:00', 'Domestic', 'No', 'Lounge Z', 'Limited', 'No'),
(27, 'CX789', 'Regina', '10 mins', 'Gate AA27', '13:00:00', '14:00:00', 'Domestic', 'Yes', 'Lounge AA', 'Full', 'Yes'),
(28, 'DL234', 'Winnipeg', '5 mins', 'Gate AB28', '16:35:00', '17:35:00', 'Domestic', 'Yes', 'Lounge AB', 'Full', 'Yes'),
(29, 'TK567', 'Charlottetown', '15 mins', 'Gate AC29', '09:40:00', '10:40:00', 'Domestic', 'No', 'Lounge AC', 'Limited', 'No'),
(30, 'AF890', 'Whitehorse', 'No Delay', 'Gate AD30', '12:50:00', '13:50:00', 'Domestic', 'Yes', 'Lounge AD', 'Full', 'Yes');


INSERT INTO `airlinebooking` (`bookingID`, `bookingDate`, `userID`) VALUES
(1, '2023-11-15', 1),
(2, '2023-11-16', 2),
(3, '2023-11-17', 3),
(4, '2023-11-18', 4),
(5, '2023-11-19', 5),
(6, '2023-11-20', 6),
(7, '2023-11-21', 7),
(8, '2023-11-22', 8),
(9, '2023-11-23', 9),
(10, '2023-11-24', 10),
(11, '2023-11-25', 1),
(12, '2023-11-26', 2),
(13, '2023-11-27', 3),
(14, '2023-11-28', 4),
(15, '2023-11-29', 5),
(16, '2023-11-30', 6),
(17, '2023-12-01', 7),
(18, '2023-12-02', 8),
(19, '2023-12-03', 9),
(20, '2023-12-04', 10),
(21, '2023-12-05', 1),
(22, '2023-12-06', 2),
(23, '2023-12-07', 3),
(24, '2023-12-08', 4),
(25, '2023-12-09', 5),
(26, '2023-12-10', 6),
(27, '2023-12-11', 7),
(28, '2023-12-12', 8),
(29, '2023-12-13', 9),
(30, '2023-12-14', 10);

INSERT INTO `passenger` (`passengerID`, `Fname`, `LName`, `contactInfo`, `registerM`, `email`, `dob`, `gender`, `flightID`, `bookingID`, `userID`) VALUES
(31, 'John', 'Doe', '555-123-4567', 'Gold', 'john@example.com', '1990-05-05', 'Male', 1, 1, 1),
(32, 'Alice', 'Smith', '555-987-6543', 'Silver', 'alice@example.com', '1992-08-15', 'Female', 2, 2, 2),
(33, 'Robert', 'Johnson', '555-111-3333', 'Bronze', 'robert@example.com', '1985-11-20', 'Male', 3, 3, 3),
(34, 'Emily', 'Brown', '555-222-4444', 'Platinum', 'emily@example.com', '1988-03-12', 'Female', 4, 4, 4),
(35, 'William', 'Taylor', '555-333-5555', 'Gold', 'william@example.com', '1995-06-30', 'Male', 5, 5, 5),
(36, 'Olivia', 'Miller', '555-444-6666', 'Silver', 'olivia@example.com', '1993-09-25', 'Female', 6, 6, 6),
(37, 'Michael', 'Wilson', '555-555-7777', 'Bronze', 'michael@example.com', '1980-12-05', 'Male', 7, 7, 7),
(38, 'Sophia', 'Garcia', '555-666-8888', 'Platinum', 'sophia@example.com', '1987-02-10', 'Female', 8, 8, 8),
(39, 'Daniel', 'Martinez', '555-777-9999', 'Gold', 'daniel@example.com', '1991-04-17', 'Male', 9, 9, 9),
(40, 'Ava', 'Lopez', '555-888-0000', 'Silver', 'ava@example.com', '1994-07-22', 'Female', 10, 10, 10),
(41, 'Ethan', 'Hernandez', '555-999-1111', 'Bronze', 'ethan@example.com', '1983-10-18', 'Male', 11, 11, 1),
(42, 'Mia', 'Gonzalez', '555-111-2222', 'Platinum', 'mia@example.com', '1989-01-13', 'Female', 12, 12, 2),
(43, 'Alexander', 'Perez', '555-222-3333', 'Gold', 'alexander@example.com', '1996-08-08', 'Male', 13, 13, 3),
(44, 'Charlotte', 'Smith', '555-333-4444', 'Silver', 'charlotte@example.com', '1992-02-28', 'Female', 14, 14, 4),
(45, 'Matthew', 'Rodriguez', '555-444-5555', 'Bronze', 'matthew@example.com', '1984-05-07', 'Male', 15, 15, 5),
(46, 'Amelia', 'Lee', '555-555-6666', 'Platinum', 'amelia@example.com', '1986-12-25', 'Female', 16, 16, 6),
(47, 'David', 'Garcia', '555-666-7777', 'Gold', 'david@example.com', '1997-09-03', 'Male', 17, 17, 7),
(48, 'Abigail', 'Hernandez', '555-777-8888', 'Silver', 'abigail@example.com', '1993-10-11', 'Female', 18, 18, 8),
(49, 'James', 'Martinez', '555-888-9999', 'Bronze', 'james@example.com', '1981-01-30', 'Male', 19, 19, 9),
(50, 'Harper', 'Lopez', '555-999-0000', 'Platinum', 'harper@example.com', '1988-06-19', 'Female', 20, 20, 10),
(51, 'Logan', 'Hernandez', '555-000-1111', 'Gold', 'logan@example.com', '1995-03-14', 'Male', 21, 21, 1),
(52, 'Evelyn', 'Gonzalez', '555-111-2222', 'Silver', 'evelyn@example.com', '1982-04-23', 'Female', 22, 22, 2),
(53, 'Benjamin', 'Perez', '555-222-3333', 'Bronze', 'benjamin@example.com', '1990-11-01', 'Male', 23, 23, 3),
(54, 'Liam', 'Rodriguez', '555-333-4444', 'Platinum', 'liam@example.com', '1987-07-09', 'Male', 24, 24, 4),
(55, 'Victoria', 'Lee', '555-444-5555', 'Gold', 'victoria@example.com', '1998-02-20', 'Female', 25, 25, 5),
(56, 'Lucas', 'Garcia', '555-555-6666', 'Silver', 'lucas@example.com', '1984-09-29', 'Male', 26, 26, 6),
(57, 'Avery', 'Hernandez', '555-666-7777', 'Bronze', 'avery@example.com', '1991-12-15', 'Female', 27, 27, 7),
(58, 'Jackson', 'Martinez', '555-777-8888', 'Platinum', 'jackson@example.com', '1989-05-02', 'Male', 28, 28, 8),
(59, 'Madison', 'Lopez', '555-888-9999', 'Gold', 'madison@example.com', '1996-08-11', 'Female', 29, 29, 9),
(60, 'Grayson', 'Johnson', '555-999-0000', 'Silver', 'grayson@example.com', '1986-03-26', 'Male', 30, 30, 10);


INSERT INTO `baggage` (`baggageID`, `size`, `baggageStatus`, `passengerID`, `baggageNumber`) VALUES
(1, 25, 'Checked', 31, 1),
(2, 30, 'Carry-on', 32, 2),
(3, 20, 'Checked', 33, 3),
(4, 22, 'Carry-on', 34, 4),
(5, 27, 'Checked', 35, 5),
(6, 18, 'Carry-on', 36, 6),
(7, 21, 'Checked', 37, 7),
(8, 26, 'Carry-on', 38, 8),
(9, 24, 'Checked', 39, 9),
(10, 19, 'Carry-on', 40, 10),
(11, 23, 'Checked', 41, 11),
(12, 28, 'Carry-on', 42, 12),
(13, 17, 'Checked', 43, 13),
(14, 29, 'Carry-on', 44, 14),
(15, 16, 'Checked', 45, 15),
(16, 30, 'Carry-on', 46, 16),
(17, 15, 'Checked', 47, 17),
(18, 26, 'Carry-on', 48, 18),
(19, 14, 'Checked', 49, 19),
(20, 27, 'Carry-on', 50, 20),
(21, 13, 'Checked', 51, 21),
(22, 28, 'Carry-on', 52, 22),
(23, 12, 'Checked', 53, 23),
(24, 29, 'Carry-on', 54, 24),
(25, 11, 'Checked', 55, 25),
(26, 30, 'Carry-on', 56, 26),
(27, 10, 'Checked', 57, 27),
(28, 25, 'Carry-on', 58, 28),
(29, 9, 'Checked', 59, 29),
(30, 24, 'Carry-on', 60, 30);


INSERT INTO `payment` (`paymentID`, `paymentMethod`, `paymetnStatus`, `amount`, `paymentDate`, `userID`, `RewardID`) VALUES
(31, 'Credit Card', 'Paid', 350, '2023-11-15', 1, 51),
(32, 'Debit Card', 'Paid', 780, '2023-11-16', 2, 52),
(33, 'PayPal', 'Paid', 1250, '2023-11-17', 3, 53),
(34, 'Credit Card', 'Paid', 410, '2023-11-18', 4, 54),
(35, 'Debit Card', 'Paid', 820, '2023-11-19', 5, 55),
(36, 'PayPal', 'Paid', 1320, '2023-11-20', 6, 56),
(37, 'Credit Card', 'Paid', 390, '2023-11-21', 7, 57),
(38, 'Debit Card', 'Paid', 800, '2023-11-22', 8, 58),
(39, 'PayPal', 'Paid', 1300, '2023-11-23', 9, 59),
(40, 'Credit Card', 'Paid', 380, '2023-11-24', 10, 60),
(41, 'Debit Card', 'Paid', 800, '2023-11-25', 1, 61),
(42, 'PayPal', 'Paid', 1300, '2023-11-26', 2, 62),
(43, 'Credit Card', 'Paid', 360, '2023-11-27', 3, 63),
(44, 'Debit Card', 'Paid', 790, '2023-11-28', 4, 64),
(45, 'PayPal', 'Paid', 1280, '2023-11-29', 5, 65),
(46, 'Credit Card', 'Paid', 350, '2023-11-30', 6, 66),
(47, 'Debit Card', 'Paid', 800, '2023-12-01', 7, 67),
(48, 'PayPal', 'Paid', 1320, '2023-12-02', 8, 68),
(49, 'Credit Card', 'Paid', 390, '2023-12-03', 9, 69),
(50, 'Debit Card', 'Paid', 800, '2023-12-04', 10, 70),
(51, 'PayPal', 'Paid', 1320, '2023-12-05', 1, 71),
(52, 'Credit Card', 'Paid', 370, '2023-12-06', 2, 72),
(53, 'Debit Card', 'Paid', 800, '2023-12-07', 3, 73),
(54, 'PayPal', 'Paid', 1300, '2023-12-08', 4, 74),
(55, 'Credit Card', 'Paid', 360, '2023-12-09', 5, 75),
(56, 'Debit Card', 'Paid', 790, '2023-12-10', 6, 76),
(57, 'PayPal', 'Paid', 1320, '2023-12-11', 7, 77),
(58, 'Credit Card', 'Paid', 380, '2023-12-12', 8, 78),
(59, 'Debit Card', 'Paid', 790, '2023-12-13', 9, 79),
(60, 'PayPal', 'Paid', 1300, '2023-12-14', 10, 80);


INSERT INTO `premium_service` (`premium_serviceID`, `serviceType`, `membershipID`) VALUES
(1, 'Priority Boarding', 1),
(2, 'Lounge Access', 2),
(3, 'Extra Baggage Allowance', 3),
(4, 'Priority Boarding', 4),
(5, 'Lounge Access', 5),
(6, 'Extra Baggage Allowance', 6),
(7, 'Priority Boarding', 7),
(8, 'Lounge Access', 8),
(9, 'Extra Baggage Allowance', 9),
(10, 'Priority Boarding', 10);


INSERT INTO `ticket` (`ticketID`, `seatNo`, `class`, `passengerName`, `date`, `time`, `price`, `bookingID`, `flightID`) VALUES
(1, '31D', 'Economy', 'John Doe', '2023-11-15', '14:00:00', '350.00', 1, 1),
(2, '16B', 'Business', 'Alice Smith', '2023-11-16', '09:30:00', '780.00', 2, 2),
(3, '11A', 'First Class', 'Robert Johnson', '2023-11-17', '10:45:00', '1250.00', 3, 3),
(4, '40E', 'Economy', 'Emily Brown', '2023-11-18', '17:30:00', '410.00', 4, 4),
(5, '11B', 'Business', 'William Taylor', '2023-11-19', '21:00:00', '820.00', 5, 5),
(6, '12B', 'First Class', 'Olivia Miller', '2023-11-20', '08:00:00', '1320.00', 6, 6),
(7, '45A', 'Economy', 'Michael Wilson', '2023-11-21', '12:15:00', '390.00', 7, 7),
(8, '14J', 'Business', 'Sophia Garcia', '2023-11-22', '19:45:00', '800.00', 8, 8),
(9, '13E', 'First Class', 'Daniel Martinez', '2023-11-23', '04:20:00', '1300.00', 9, 9),
(10, '57C', 'Economy', 'Ava Lopez', '2023-11-24', '14:30:00', '380.00', 10, 10),
(11, '15F', 'Business', 'Ethan Hernandez', '2023-11-25', '11:45:00', '800.00', 11, 11),
(12, '12G', 'First Class', 'Mia Gonzalez', '2023-11-26', '18:00:00', '1300.00', 12, 12),
(13, '65B', 'Economy', 'Alexander Perez', '2023-11-27', '01:40:00', '360.00', 13, 13),
(14, '13K', 'Business', 'Charlotte Smith', '2023-11-28', '15:55:00', '790.00', 14, 14),
(15, '14F', 'First Class', 'Matthew Rodriguez', '2023-11-29', '10:10:00', '1280.00', 15, 15),
(16, '47E', 'Economy', 'Amelia Lee', '2023-11-30', '23:50:00', '350.00', 16, 16),
(17, '16A', 'Business', 'David Garcia', '2023-12-01', '05:15:00', '800.00', 17, 17),
(18, '12J', 'First Class', 'Abigail Hernandez', '2023-12-02', '12:20:00', '1320.00', 18, 18),
(19, '23A', 'Economy', 'James Martinez', '2023-12-03', '19:00:00', '390.00', 19, 19),
(20, '19A', 'Business', 'Harper Lopez', '2023-12-04', '10:05:00', '800.00', 20, 20),
(21, '12K', 'First Class', 'Logan Hernandez', '2023-12-05', '13:30:00', '1320.00', 21, 21),
(22, '33B', 'Economy', 'Evelyn Gonzalez', '2023-12-06', '15:40:00', '370.00', 22, 22),
(23, '16D', 'Business', 'Benjamin Perez', '2023-12-07', '20:25:00', '800.00', 23, 23),
(24, '14G', 'First Class', 'Liam Rodriguez', '2023-12-08', '09:15:00', '1300.00', 24, 24),
(25, '41H', 'Economy', 'Victoria Lee', '2023-12-09', '11:55:00', '360.00', 25, 25),
(26, '36H', 'Economy', 'Lucas Garcia', '2023-12-10', '18:50:00', '790.00', 26, 26),
(27, '18J', 'First Class', 'Avery Hernandez', '2023-12-11', '14:00:00', '1320.00', 27, 27),
(28, '49A', 'Economy', 'Jackson Martinez', '2023-12-12', '17:35:00', '380.00', 28, 28),
(29, '21B', 'Business', 'Madison Lopez', '2023-12-13', '10:40:00', '790.00', 29, 29),
(30, '56C', 'Economy', 'Grayson Johnson', '2023-12-14', '13:50:00', '1300.00', 30, 30);