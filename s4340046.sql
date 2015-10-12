-- phpMyAdmin SQL Dump
-- version 4.1.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 08, 2015 at 06:46 PM
-- Server version: 5.5.33
-- PHP Version: 5.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `STAY`
--

-- --------------------------------------------------------

--
-- Table structure for table `accommodation`
--

CREATE TABLE IF NOT EXISTS `accommodation` (
  `acc-name` varchar(50) NOT NULL,
  `acc-id` int(10) NOT NULL,
  `acc-address` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `website` varchar(100) NOT NULL,
  `pool` tinyint(1) NOT NULL,
  `sauna` tinyint(1) NOT NULL,
  `fitness-centre` tinyint(1) NOT NULL,
  `free-internet` tinyint(1) NOT NULL,
  `parking` tinyint(1) NOT NULL,
  PRIMARY KEY (`acc-id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accommodation`
--

INSERT INTO `accommodation` (`acc-name`, `acc-id`, `acc-address`, `phone`, `email`, `website`, `pool`, `sauna`, `fitness-centre`, `free-internet`, `parking`) VALUES
('Meriton Serviced Apartments World Tower', 2000001, '95 Liverpool Street, Sydney CBD, 2000 Sydney, Australia', '+61 2 8263 7500', 'stay@meriton.net.au', 'http://www.meritonapartments.com.au/sydney/world-tower-sydney', 1, 1, 1, 1, 1),
('Shangri-La Hotel Sydney', 2000002, '176 Cumberland Street, The Rocks, Sydney CBD, 2000 Sydney, Australia', '(61 2) 9250 6000', '', 'http://www.shangri-la.com/sydney/shangrila/', 1, 1, 1, 1, 1),
('Mercure Sydney', 2000003, '818-820 George Street, Sydney CBD, 2000 Sydney, Australia', '+61 2 9217 6666 ', 'h2073@accor.com', 'http://www.mercuresydney.com.au/', 1, 1, 1, 0, 1),
('The Westin Melbourne', 3000001, ' 205 Collins Street, Melbourne CBD, 3000 Melbourne, Australia ', '+613 9635 2222 ', '', 'http://www.westinmelbourne.com/', 1, 1, 1, 1, 1),
('Hilton Melbourne South Wharf', 3000002, '2 Convention Centre Place, South Wharf, Southbank, 3006 Melbourne, Australia', '+61-3-9027-2000', 'reservations.melbournesw@hilton.com', 'http://www3.hilton.com/en/hotels/victoria/hilton-melbourne-south-wharf-MELSWHI/index.html', 1, 0, 1, 0, 1),
('Crowne Plaza Melbourne', 3000003, '1 - 5 Spencer Street, Melbourne CBD, 3008 Melbourne, Australia', '61-3-96482777', 'reservations.melfs@ihg.com', 'http://www.ihg.com/crowneplaza/hotels/us/en/melbourne/melfs/hoteldetail', 1, 0, 1, 0, 1),
('HILTON BRISBANE', 4000001, '190 ELIZABETH STREET, BRISBANE, QUEENSLAND, 4000, AUSTRALIA', '+61-7-3234-2000', 'brisbane.info@hilton.com', 'http://www3.hilton.com/en/hotels/queensland/hilton-brisbane-BSBHITW/index.html', 1, 0, 1, 1, 1),
('Meriton Serviced Apartments Adelaide Street', 4000002, '485 Adelaide Street, Brisbane CBD, 4000 Brisbane, Australia', '+61 2 9277 1111', 'stay@meriton.net.au', 'http://www.meritonapartments.com.au/brisbane/adelaide-street', 1, 1, 1, 1, 1),
('Toowoomba Central Plaza Apartment Hotel', 4000003, '532 - 544 Ruthven st, 4350 Toowoomba, Australia', '+61 (0)7 4688 3333', 'reservations@toowoombacentralplaza.com.au', 'http://www.toowoombacentralplaza.com.au/', 1, 0, 1, 1, 1),
('Benson Court Motel', 4000004, '61 Benson Street , Toowong, 4066 Brisbane, Australia', '1800 350 244', 'reservations@bensoncourt.com.au', 'http://www.bensoncourt.com.au/', 0, 0, 0, 0, 1),
('MacArthur Chambers', 4000005, ' 201 Edward Street, Brisbane CBD, 4000 Brisbane, Australia', '07 3221 9229', 'info@macarthurchambers.com.au', 'http://www.macarthurchambers.com.au/', 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE IF NOT EXISTS `booking` (
  `booking-id` int(20) NOT NULL,
  `date-of-booking` int(10) NOT NULL,
  `guest-id` varchar(50) NOT NULL,
  `guest-type` varchar(20) NOT NULL,
  `number-of-people` int(2) NOT NULL,
  `check-in-date` int(10) NOT NULL,
  `check-out-date` int(10) NOT NULL,
  `payment-method` varchar(20) NOT NULL,
  `sea-or-river-view` tinyint(1) NOT NULL,
  `beach-front` tinyint(1) NOT NULL,
  `city-view` tinyint(1) NOT NULL,
  `non-smoking` tinyint(1) NOT NULL,
  `double-bed` tinyint(1) NOT NULL,
  `single-bed` tinyint(1) NOT NULL,
  `acc-id` int(10) NOT NULL,
  PRIMARY KEY (`booking-id`),
  KEY `booking-id` (`booking-id`),
  KEY `guest-email` (`guest-id`),
  KEY `acc-id` (`acc-id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking-id`, `date-of-booking`, `guest-id`, `guest-type`, `number-of-people`, `check-in-date`, `check-out-date`, `payment-method`, `sea-or-river-view`, `beach-front`, `city-view`, `non-smoking`, `double-bed`, `single-bed`, `acc-id`) VALUES
(10000001, 20150127, 'E12045678', 'individual', 1, 20150202, 20150205, 'paypal', 0, 0, 1, 1, 0, 0, 4000001),
(10000002, 20151001, 'E12045678', 'individual', 2, 20151020, 20151022, 'paypal', 0, 0, 0, 0, 1, 0, 4000001),
(10000003, 20151001, 'K19871005', 'individual', 2, 20151005, 20151006, 'credit card', 1, 0, 1, 1, 1, 0, 2000002),
(10000004, 20150912, 'K19890530', 'individual', 1, 20150920, 20150923, 'credit card', 1, 0, 0, 1, 1, 0, 2000002),
(10000005, 20150823, 'K19930607', 'individual', 1, 20150901, 20150902, 'credit card', 0, 0, 1, 1, 1, 0, 3000001),
(10000006, 20150203, 'g0003', 'group', 5, 20150304, 20150306, 'credit card', 0, 0, 1, 1, 1, 0, 2000003),
(10000007, 20150512, 'g0001', 'group', 4, 20150520, 20150522, 'credit card', 0, 0, 0, 0, 0, 0, 3000003),
(10000008, 20150620, 'E12045678', 'individual', 2, 20150702, 20150705, 'paypal', 0, 0, 0, 0, 1, 0, 2000001),
(10000009, 20150607, 'g0002', 'group', 7, 20150609, 20150613, 'credit card', 0, 0, 0, 1, 1, 0, 4000005),
(10000010, 20150807, 'C00000002', 'individual', 1, 20150820, 20150822, 'credit card', 0, 0, 0, 0, 0, 0, 4000003);

-- --------------------------------------------------------

--
-- Table structure for table `check-in-room-detail`
--

CREATE TABLE IF NOT EXISTS `check-in-room-detail` (
  `booking-id` int(20) NOT NULL,
  `check-in-room-no.` int(5) NOT NULL,
  PRIMARY KEY (`booking-id`,`check-in-room-no.`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `check-in-room-detail`
--

INSERT INTO `check-in-room-detail` (`booking-id`, `check-in-room-no.`) VALUES
(10000001, 601),
(10000002, 201),
(10000003, 701),
(10000004, 702),
(10000005, 615),
(10000006, 1303),
(10000006, 1304),
(10000006, 1305),
(10000007, 505),
(10000007, 506),
(10000008, 811),
(10000009, 306),
(10000009, 307),
(10000009, 308),
(10000009, 309),
(10000010, 313);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `provider-id` int(6) NOT NULL,
  `acc-name` varchar(50) NOT NULL,
  `mobile-phone` varchar(20) NOT NULL,
  `employee-name` varchar(20) NOT NULL,
  PRIMARY KEY (`provider-id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`provider-id`, `acc-name`, `mobile-phone`, `employee-name`) VALUES
(412345, 'Crowne Plaza Melbourne', '0423563214', 'Alex Rossi'),
(421577, 'Crowne Plaza Melbourne', '0432456123', 'Nico Rosburg'),
(432109, 'Crowne Plaza Melbourne', '0432123478', 'Kevin Friend'),
(433321, 'The Westin Melbourne', '0478493021', 'Mark Webber'),
(434002, 'Mercure Sydney', '0423156789', 'Eric Harrison'),
(436771, 'Mercure Sydney', '0473221062', 'Mike John'),
(444423, 'HILTON BRISBANE', '0421532906', 'Harrison Johnson'),
(444444, 'Shangri-La Hotel Sydney', '0434123456', 'Eric Bottas'),
(456712, 'HILTON BRISBANE', '0412592062', 'Lewis Hamilton'),
(480215, 'Shangri-La Hotel Sydney', '0424232167', 'Jon Moss');

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE IF NOT EXISTS `guest` (
  `guest-id` varchar(50) NOT NULL,
  `guest-email` varchar(50) NOT NULL,
  `guest-name` varchar(50) NOT NULL,
  `guest-type` varchar(20) NOT NULL,
  `phone-number` varchar(50) NOT NULL,
  PRIMARY KEY (`guest-id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guest-id`, `guest-email`, `guest-name`, `guest-type`, `phone-number`) VALUES
('C00000001', 'xijinping@chn.cn', 'Jinping Xi', 'individual', '110'),
('C00000002', 'haha@chn.cn', 'Zemin Jiang', 'individual', '120'),
('E12045678', 's4340046@uq.edu.au', 'Haoze Xu', 'individual', '0412567890'),
('g0001', 'official.itee@uq.edu.au', 'UQ.ITEE', 'group', '+61-7 3365 2097'),
('g0002', 'google.sydney@gmail.com', 'Google Sydney', 'group', '+61 2 9374 4000'),
('g0003', 'microsoft.brisbane@outlook.com', 'Microsoft Brisbane', 'group', '+ 61 2 9870 2200'),
('K19871005', 'melodysoyeon@gmail.com', 'Melody Park', 'individual', '042105624'),
('K19881212', 'eunjung@gmail.com', 'Eun-jung Hahm', 'individual', '0429206842'),
('K19890530', 'hyominnn@gmail.com', 'Hyo-min Park', 'individual', '0476201592'),
('K19930607', 'jiyeon@gmail.com', 'Ji-yeon Park', 'individual', '0422102692');

-- --------------------------------------------------------

--
-- Stand-in structure for view `Query a`
--
CREATE TABLE IF NOT EXISTS `Query a` (
`booking-id` int(20)
,`date-of-booking` int(10)
,`guest-id` varchar(50)
,`guest-type` varchar(20)
,`number-of-people` int(2)
,`check-in-date` int(10)
,`check-out-date` int(10)
,`payment-method` varchar(20)
,`sea-or-river-view` tinyint(1)
,`beach-front` tinyint(1)
,`city-view` tinyint(1)
,`non-smoking` tinyint(1)
,`double-bed` tinyint(1)
,`single-bed` tinyint(1)
,`acc-id` int(10)
,`type-name` varchar(100)
,`number-of-rooms` int(2)
,`amount` int(10)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `Query b`
--
CREATE TABLE IF NOT EXISTS `Query b` (
`service-name` varchar(20)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `Query c`
--
CREATE TABLE IF NOT EXISTS `Query c` (
`acc-name` varchar(50)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `Query d`
--
CREATE TABLE IF NOT EXISTS `Query d` (
`guest-name` varchar(50)
,`acc-name` varchar(50)
,`payment-method` varchar(20)
,`amount` decimal(32,0)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `Query e`
--
CREATE TABLE IF NOT EXISTS `Query e` (
`SUM(``number-of-people``)` decimal(32,0)
);
-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `acc-id` int(10) NOT NULL,
  `room-no.` int(5) NOT NULL,
  `floor-no.` int(3) NOT NULL,
  `type-name` varchar(100) NOT NULL,
  `city-view` tinyint(1) NOT NULL,
  `beach-front` tinyint(1) NOT NULL,
  `sea-or-river-view` tinyint(1) NOT NULL,
  `non-smoking` tinyint(1) NOT NULL,
  `double-bed` tinyint(1) NOT NULL,
  `single-bed` tinyint(1) NOT NULL,
  PRIMARY KEY (`acc-id`,`room-no.`),
  KEY `acc-id` (`acc-id`),
  KEY `acc-id_2` (`acc-id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`acc-id`, `room-no.`, `floor-no.`, `type-name`, `city-view`, `beach-front`, `sea-or-river-view`, `non-smoking`, `double-bed`, `single-bed`) VALUES
(2000002, 701, 7, 'Deluxe Opera House City King', 1, 0, 1, 1, 1, 0),
(2000002, 702, 7, 'Deluxe Opera House City King', 1, 0, 1, 1, 1, 0),
(2000002, 725, 7, 'Deluxe Darling Harbour King', 0, 0, 1, 1, 1, 0),
(2000002, 727, 7, 'Deluxe Darling Harbour King', 0, 0, 1, 1, 1, 0),
(2000003, 1303, 13, 'Privilege Queen Room', 1, 0, 0, 0, 1, 0),
(2000003, 1304, 13, 'Privilege Queen Room', 1, 0, 0, 0, 1, 0),
(2000003, 1305, 13, 'Privilege Queen Room', 1, 0, 0, 0, 1, 0),
(3000001, 615, 6, 'City View Room', 1, 0, 0, 1, 1, 0),
(3000003, 505, 5, 'Twin Room with River View', 0, 0, 1, 1, 0, 1),
(3000003, 506, 5, 'Twin Room with River View', 0, 0, 1, 1, 0, 1),
(3000003, 810, 5, 'Modern Suite with Two Bedrooms', 1, 0, 0, 1, 1, 0),
(3000003, 811, 5, 'Modern Suite with Two Bedrooms', 1, 0, 0, 1, 1, 0),
(3000003, 812, 5, 'Modern Suite with Two Bedrooms', 1, 0, 0, 1, 1, 0),
(4000001, 201, 2, 'Twin Hilton Guest Room', 1, 0, 0, 1, 0, 1),
(4000001, 203, 2, 'Twin Hilton Guest Room', 1, 0, 0, 1, 0, 1),
(4000001, 601, 6, 'King Hilton Guest Room', 1, 0, 0, 1, 1, 0),
(4000001, 602, 6, 'King Hilton Guest Room', 1, 0, 0, 1, 1, 0),
(4000003, 312, 3, 'Studio Apartment', 1, 0, 0, 0, 1, 0),
(4000003, 313, 3, 'Studio Apartment', 1, 0, 0, 0, 1, 0),
(4000005, 306, 3, 'One-Bedroom Apartment', 1, 0, 0, 1, 1, 0),
(4000005, 307, 3, 'Two-Bedroom Apartment', 1, 0, 0, 1, 1, 0),
(4000005, 308, 3, 'Two-Bedroom Apartment', 1, 0, 0, 1, 1, 0),
(4000005, 309, 3, 'Two-Bedroom Apartment', 1, 0, 0, 1, 1, 0),
(4000005, 310, 3, 'Two-Bedroom Apartment', 1, 0, 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `room-booking-detail`
--

CREATE TABLE IF NOT EXISTS `room-booking-detail` (
  `booking-id` int(20) NOT NULL,
  `type-name` varchar(100) NOT NULL,
  `number-of-rooms` int(2) NOT NULL,
  `amount` int(10) NOT NULL,
  PRIMARY KEY (`booking-id`,`type-name`),
  KEY `booking-id` (`booking-id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room-booking-detail`
--

INSERT INTO `room-booking-detail` (`booking-id`, `type-name`, `number-of-rooms`, `amount`) VALUES
(10000001, 'King Hilton Guest Room', 1, 828),
(10000002, 'Twin Hilton Guest Room', 1, 552),
(10000003, 'Deluxe Opera House City King', 1, 360),
(10000004, 'Deluxe Opera House City King', 1, 1080),
(10000005, 'City View Room', 1, 631),
(10000006, 'Privilege Queen Room', 3, 1848),
(10000007, 'Twin Room with River View', 2, 1516),
(10000008, 'Modern Suite with Two Bedrooms', 1, 1200),
(10000009, 'One-Bedroom Apartmen', 1, 836),
(10000009, 'Two-Bedroom Apartment', 3, 3228),
(10000010, 'Studio Apartment', 1, 352);

-- --------------------------------------------------------

--
-- Table structure for table `room-type`
--

CREATE TABLE IF NOT EXISTS `room-type` (
  `acc-id` int(10) NOT NULL,
  `type-name` varchar(100) NOT NULL,
  `description` varchar(300) NOT NULL,
  `price-per-night` int(10) NOT NULL,
  `beds` int(2) NOT NULL,
  `bedrooms` int(2) NOT NULL,
  PRIMARY KEY (`acc-id`,`type-name`),
  KEY `acc-id` (`acc-id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `room-type`
--

INSERT INTO `room-type` (`acc-id`, `type-name`, `description`, `price-per-night`, `beds`, `bedrooms`) VALUES
(2000001, 'Altitude Suite with Three Bedrooms', 'Spacious suite with floor-to-ceiling windows offering city views. Please note that the king-size beds can be split into 2 single beds.', 650, 3, 3),
(2000001, 'Modern Suite with Three Bedrooms', 'Spacious suite with floor-to-ceiling windows offering city views. Please note that the king-size beds can be split into 2 single beds.', 500, 3, 3),
(2000001, 'Modern Suite with Two Bedrooms', 'Spacious suite with floor-to-ceiling windows offering city views. Please note that the king-size beds can be split into 2 single beds.', 400, 2, 2),
(2000002, 'Deluxe Darling Harbour King', 'This west-facing room overlooks Darling Harbour and offers views towards the Blue Mountains. It features a marble bathroom, a flat-screen TV with cable channels, an iPod dock and fluffy bathrobes and slippers. ', 345, 1, 1),
(2000002, 'Deluxe Darling Harbour Twin', 'This west-facing room overlooks Darling Harbour and offers views towards the Blue Mountains. It features a marble bathroom, a flat-screen TV with cable channels, an iPod dock and fluffy bathrobes and slippers.', 345, 2, 1),
(2000002, 'Deluxe Opera House City King', 'This east-facing room boasts views over the city, Circular Quay and the Sydney Opera House. It features a marble bathroom, a flat-screen TV with cable channels, an iPod dock and fluffy bathrobes and slippers. ', 360, 1, 1),
(2000002, 'Deluxe Opera House City Twin', 'This east facing room boasts views over the city, Circular Quay and the Sydney Opera House. It features a marble bathroom, a flat-screen TV with cable channels, an iPod dock and fluffy bathrobes and slippers. ', 360, 2, 1),
(2000003, 'Privilege Queen Room', 'Located on the 13th floor, this room features an espresso coffee machine, free wifi internet access and an LCD TV. For maximum comfort, fluffy doonas and European pillows are provided. It also includes fluffy bathrobes on arrival, complimentary chocolates, complimentary slippers on arrival an a comp', 308, 1, 1),
(2000003, 'Standard Double Room with Two Double Beds', 'This spacious, modern room includes a European pillow menu, a work desk, local magazines, flat-screen TV and 24-hour room service. A free newspaper can be delivered on request. ', 254, 2, 1),
(3000001, 'City View Room', 'This room features the signature Westin Heavenly® Bed. It includes a 42-inch flat-screen TV and and views of Melbourne city.', 631, 1, 1),
(3000001, 'Westin Room', 'This room features the signature Westin Heavenly® Bed. It includes a 42-inch flat-screen TV and separate bath and Heavenly shower', 601, 1, 1),
(3000002, 'King Room with City View', 'Featuring lovely views of the city and the Yarra River from the floor-to-ceiling windows, this room offers automatic black-out blinds and an en suite with a bathtub and a walk-in shower. It has a flat-screen TV and a work desk. ', 623, 1, 1),
(3000002, 'Relaxation Suite with City View', 'Features corner views over the city and Yarra River. Includes access to the Executive Lounge with outdoor terrace, breakfast, drinks and canapés. ', 819, 1, 1),
(3000002, 'Two-Bedroom Suite with Bay View', 'Located on the top 2 floors of the hotel, this extra-spacious suite features floor-to-ceiling windows with lovely views of Port Phillip Bay. It also includes a kitchenette with a microwave and dishwasher, a large flat-screen TV with cable channels, and a DVD player. ', 825, 2, 2),
(3000003, 'King Room with River View', 'This air-conditioned room features lovely views of the Yarra River, flat-screen cable TV, a minibar and a tea and coffee maker.', 379, 1, 1),
(3000003, 'King Room with South Wharf View', 'This double room features a electric kettle, air conditioning and bathrobe.', 366, 1, 1),
(3000003, 'Twin Room with River View', 'This air-conditioned room features lovely views of the Yarra River, flat-screen cable TV, a minibar and a tea and coffee maker.', 379, 2, 1),
(4000001, 'King Hilton Executive Room with Access to Executive Lounge', 'Executive Lounge access includes:Free breakfast, free evening drinks and canapés and free all-day refreshments. Bed size: 1 extra-large double. ', 356, 1, 1),
(4000001, 'King Hilton Guest Room', 'This modern room features beautiful city views and a large work desk. The room includes a extra-large double bed.', 276, 1, 1),
(4000001, 'Twin Hilton Guest Room', 'This modern room features beautiful city views and a large work desk. The room includes two single beds.', 276, 2, 1),
(4000002, 'Altitude Suite with Three Bedrooms', 'Includes a private bathroom, living and dining area with cable TV, individually controlled heating and air conditioning, fully equipped kitchen and laundry facilities. ', 590, 3, 3),
(4000002, 'Altitude Suite with Two Bedrooms', 'ncludes a private bathroom, living and dining area with cable TV, individually controlled heating and air conditioning, fully equipped kitchen and laundry facilities.', 300, 2, 2),
(4000002, 'Modern Suite with One Bedroom', 'Includes a private bathroom, living and dining area with cable TV, individually controlled heating and air conditioning, fully equipped kitchen and laundry facilities. ', 120, 1, 1),
(4000003, 'One-Bedroom Apartment', 'Please note that the rate is based on 2 guests. Maximum occupancy is 3 guests (see Hotel Policy).', 204, 1, 1),
(4000003, 'Studio Apartment', 'This air-conditioned studio offers a microwave, a fridge and cable television.', 176, 1, 1),
(4000003, 'Two-Bedroom Apartment', 'Please note that the rate is based on 4 guests. Maximum occupancy is 5 guests (see Hotel Policy).', 291, 2, 2),
(4000004, 'Family Room', 'This spacious, air conditioned room features a kitchenette with a microwave, refrigerator and tea/coffee making facilities. It includes an en suite bathroom with a shower and a hairdryer. ', 175, 2, 1),
(4000004, 'Studio', 'This air conditioned studio features a kitchenette with a microwave and a refrigerator. It includes an en suite bathroom with a shower and a hairdryer. ', 129, 1, 1),
(4000004, 'Twin Room', 'This studio features a electric kettle, dining area and air conditioning.', 145, 2, 1),
(4000005, 'One-Bedroom Apartment', 'Features an en-suite bathroom, separate study, internal laundry and kitchen facilities. Free WiFi is provided and rooms with balconies are available upon request.\r\n', 209, 1, 1),
(4000005, 'Two-Bedroom Apartment', 'Features a fully equipped kitchen and laundry facilities, a separate living/dining area, 2 separate bathrooms, a guest powder room and separate study area.', 269, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE IF NOT EXISTS `service` (
  `service-id` int(5) NOT NULL,
  `acc-id` int(10) NOT NULL,
  `service-name` varchar(20) NOT NULL,
  `service-type` varchar(20) NOT NULL,
  PRIMARY KEY (`service-id`),
  KEY `acc-id` (`acc-id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`service-id`, `acc-id`, `service-name`, `service-type`) VALUES
(20101, 2000001, 'Internet', 'outsourced'),
(20102, 2000001, 'In-room dining', 'in-house'),
(20103, 2000001, 'laundary', 'in-house'),
(20104, 2000001, 'parking', 'in-house'),
(20201, 2000002, 'Internet', 'outsourced'),
(20202, 2000002, 'In-room dining', 'in-house'),
(20203, 2000002, 'laundary', 'in-house'),
(20204, 2000002, 'parking', 'in-house'),
(20301, 2000003, 'Internet', 'outsourced'),
(20302, 2000003, 'In-room dining', 'in-house'),
(20303, 2000003, 'laundary', 'in-house'),
(20304, 2000003, 'parking', 'in-house'),
(30101, 3000001, 'Internet', 'outsourced'),
(30102, 3000001, 'In-room dining', 'in-house'),
(30103, 3000001, 'laundary', 'in-house'),
(30104, 3000001, 'parking', 'in-house'),
(30301, 3000003, 'Internet', 'outsourced'),
(30302, 3000003, 'In-room dining', 'in-house'),
(30303, 3000003, 'laundary', 'in-house'),
(30304, 3000003, 'parking', 'in-house'),
(40101, 4000001, 'Internet', 'outsourced'),
(40102, 4000001, 'In-room dining', 'in-house'),
(40103, 4000001, 'laundary', 'in-house'),
(40104, 4000001, 'parking', 'in-house'),
(40301, 4000003, 'Internet', 'outsourced'),
(40302, 4000003, 'In-room dining', 'in-house'),
(40303, 4000003, 'laundary', 'in-house'),
(40304, 4000003, 'parking', 'in-house'),
(40501, 4000005, 'Internet', 'outsourced'),
(40502, 4000003, 'In-room dining', 'in-house'),
(40503, 4000005, 'laundary', 'in-house'),
(40504, 4000005, 'parking', 'in-house');

-- --------------------------------------------------------

--
-- Table structure for table `service-provider`
--

CREATE TABLE IF NOT EXISTS `service-provider` (
  `provider-id` int(6) NOT NULL,
  `service-id` int(5) NOT NULL,
  `provider-name` varchar(50) NOT NULL,
  `provider-type` varchar(20) NOT NULL,
  PRIMARY KEY (`provider-id`),
  KEY `provider-id` (`provider-id`),
  KEY `service-id` (`service-id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `service-provider`
--

INSERT INTO `service-provider` (`provider-id`, `service-id`, `provider-name`, `provider-type`) VALUES
(100001, 40101, 'Telstra', 'third party'),
(100002, 20201, 'TPG', 'third party'),
(100003, 30301, 'Optus', 'third party'),
(100004, 20301, 'Dodo', 'third party'),
(100005, 20201, 'Australia Post', 'third party'),
(100006, 40301, 'Toll', 'third party'),
(100007, 40501, 'Startrack', 'third party'),
(100008, 40301, 'Nestle', 'third party'),
(100009, 40101, 'Mount Franklin Water', 'third party'),
(100010, 30301, 'Penfolds', 'third party'),
(412345, 30303, 'Alex Rossi', 'employee'),
(421577, 30302, 'Nico Rosburg', 'employee'),
(432109, 30304, 'Kevin Friend', 'employee'),
(433321, 30102, 'Mark Webber', 'employee'),
(434002, 20302, 'Eric Harrison', 'employee'),
(436771, 20302, 'Mike John', 'employee'),
(444423, 40104, 'Harrison Johnson', 'employee'),
(444444, 20203, 'Eric Bottas', 'employee'),
(456712, 40102, 'Lewis Hamilton', 'employee'),
(480215, 20202, 'Jon Moss', 'employee');

-- --------------------------------------------------------

--
-- Table structure for table `third-party-provider`
--

CREATE TABLE IF NOT EXISTS `third-party-provider` (
  `provider-id` int(6) NOT NULL,
  `company-name` varchar(20) NOT NULL,
  `service-type` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `website` varchar(50) NOT NULL,
  PRIMARY KEY (`provider-id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `third-party-provider`
--

INSERT INTO `third-party-provider` (`provider-id`, `company-name`, `service-type`, `phone`, `website`) VALUES
(100001, 'Telstra', 'Internet', '023452341', 'www.telstra.com.au'),
(100002, 'TPG', 'Internet', '025468972', 'www.tpg.com.au'),
(100003, 'Optus', 'Internet', '0234567789', 'www.optus.com.au'),
(100004, 'Dodo', 'Internet', '0234567789', 'www.dodo.com.au'),
(100005, 'Australia Post', 'Delivery', '0352129650', 'www.post.com.au'),
(100006, 'Toll', 'Delivery', '0246965341', 'www.toll.com.au'),
(100007, 'Startrack', 'Delivery', '0423604234', 'www.startrack.com.au'),
(100008, 'Nestle', 'snack', '072349123', 'www.nestle.com.au'),
(100009, 'Mount Franklin Water', 'bottled water', '(07) 3842 1111', 'mountfranklinwater.com.au'),
(100010, 'Penfolds', 'Wine', '0423604657', 'www.penfolds.com');

-- --------------------------------------------------------

--
-- Table structure for table `use`
--

CREATE TABLE IF NOT EXISTS `use` (
  `booking-id` int(10) NOT NULL,
  `service-id` int(5) NOT NULL,
  `guest-name` varchar(50) NOT NULL,
  `service-name` varchar(20) NOT NULL,
  PRIMARY KEY (`booking-id`,`service-id`),
  KEY `service-id` (`service-id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `use`
--

INSERT INTO `use` (`booking-id`, `service-id`, `guest-name`, `service-name`) VALUES
(10000001, 40101, 'Haoze Xu', 'Internet'),
(10000001, 40104, 'Haoze Xu', 'parking'),
(10000002, 40102, 'Haoze Xu', 'In-room dining'),
(10000003, 20201, 'Melody Park', 'Internet'),
(10000004, 20202, 'Hyo-min Park', 'laundary'),
(10000004, 20203, 'Hyo-min Park', 'laundary'),
(10000005, 30102, 'Ji-yeon Park', 'In-room dining'),
(10000007, 30301, 'UQ.ITEE', 'Internet'),
(10000007, 30303, 'UQ.ITEE', 'laundary'),
(10000007, 30304, 'UQ.ITEE', 'parking');

-- --------------------------------------------------------

--
-- Structure for view `Query a`
--
DROP TABLE IF EXISTS `Query a`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Query a` AS select `booking`.`booking-id` AS `booking-id`,`booking`.`date-of-booking` AS `date-of-booking`,`booking`.`guest-id` AS `guest-id`,`booking`.`guest-type` AS `guest-type`,`booking`.`number-of-people` AS `number-of-people`,`booking`.`check-in-date` AS `check-in-date`,`booking`.`check-out-date` AS `check-out-date`,`booking`.`payment-method` AS `payment-method`,`booking`.`sea-or-river-view` AS `sea-or-river-view`,`booking`.`beach-front` AS `beach-front`,`booking`.`city-view` AS `city-view`,`booking`.`non-smoking` AS `non-smoking`,`booking`.`double-bed` AS `double-bed`,`booking`.`single-bed` AS `single-bed`,`booking`.`acc-id` AS `acc-id`,`room-booking-detail`.`type-name` AS `type-name`,`room-booking-detail`.`number-of-rooms` AS `number-of-rooms`,`room-booking-detail`.`amount` AS `amount` from (`booking` join `room-booking-detail`) where ((`booking`.`guest-type` = 'group') and (20150501 <= `booking`.`date-of-booking`) and (`booking`.`date-of-booking` <= 20150531) and (`booking`.`booking-id` = `room-booking-detail`.`booking-id`));

-- --------------------------------------------------------

--
-- Structure for view `Query b`
--
DROP TABLE IF EXISTS `Query b`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Query b` AS select distinct `service`.`service-name` AS `service-name` from `service`;

-- --------------------------------------------------------

--
-- Structure for view `Query c`
--
DROP TABLE IF EXISTS `Query c`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Query c` AS select distinct `accommodation`.`acc-name` AS `acc-name` from (`accommodation` join `room-type`) where ((`accommodation`.`acc-address` like '%Toowoomba%') and (`room-type`.`bedrooms` = 2));

-- --------------------------------------------------------

--
-- Structure for view `Query d`
--
DROP TABLE IF EXISTS `Query d`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Query d` AS select `guest`.`guest-name` AS `guest-name`,`accommodation`.`acc-name` AS `acc-name`,`booking`.`payment-method` AS `payment-method`,sum(`room-booking-detail`.`amount`) AS `amount` from (((`room-booking-detail` join `booking`) join `guest`) join `accommodation`) where ((`booking`.`booking-id` = `room-booking-detail`.`booking-id`) and (`booking`.`guest-id` = `guest`.`guest-id`) and (`booking`.`acc-id` = `accommodation`.`acc-id`)) group by `room-booking-detail`.`booking-id`;

-- --------------------------------------------------------

--
-- Structure for view `Query e`
--
DROP TABLE IF EXISTS `Query e`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Query e` AS select sum(`booking`.`number-of-people`) AS `SUM(``number-of-people``)` from (`booking` join `accommodation`) where ((`accommodation`.`acc-name` = 'Shangri-La Hotel Sydney') and (`booking`.`check-in-date` <= 20151005) and (`booking`.`check-out-date` >= 20151005));

--
-- Constraints for dumped tables
--

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`guest-id`) REFERENCES `guest` (`guest-id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`acc-id`) REFERENCES `accommodation` (`acc-id`);

--
-- Constraints for table `check-in-room-detail`
--
ALTER TABLE `check-in-room-detail`
  ADD CONSTRAINT `check-in-room-detail_ibfk_1` FOREIGN KEY (`booking-id`) REFERENCES `booking` (`booking-id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`provider-id`) REFERENCES `service-provider` (`provider-id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`acc-id`) REFERENCES `accommodation` (`acc-id`);

--
-- Constraints for table `room-booking-detail`
--
ALTER TABLE `room-booking-detail`
  ADD CONSTRAINT `room-booking-detail_ibfk_1` FOREIGN KEY (`booking-id`) REFERENCES `booking` (`booking-id`);

--
-- Constraints for table `room-type`
--
ALTER TABLE `room-type`
  ADD CONSTRAINT `room-type_ibfk_1` FOREIGN KEY (`acc-id`) REFERENCES `accommodation` (`acc-id`);

--
-- Constraints for table `service`
--
ALTER TABLE `service`
  ADD CONSTRAINT `service_ibfk_2` FOREIGN KEY (`acc-id`) REFERENCES `accommodation` (`acc-id`);

--
-- Constraints for table `service-provider`
--
ALTER TABLE `service-provider`
  ADD CONSTRAINT `service-provider_ibfk_1` FOREIGN KEY (`service-id`) REFERENCES `service` (`service-id`);

--
-- Constraints for table `third-party-provider`
--
ALTER TABLE `third-party-provider`
  ADD CONSTRAINT `third-party-provider_ibfk_1` FOREIGN KEY (`provider-id`) REFERENCES `service-provider` (`provider-id`);

--
-- Constraints for table `use`
--
ALTER TABLE `use`
  ADD CONSTRAINT `use_ibfk_2` FOREIGN KEY (`service-id`) REFERENCES `service` (`service-id`),
  ADD CONSTRAINT `use_ibfk_3` FOREIGN KEY (`booking-id`) REFERENCES `booking` (`booking-id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
