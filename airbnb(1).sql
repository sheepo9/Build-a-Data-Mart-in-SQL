-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2025 at 03:03 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `airbnb`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `address_id` int(11) NOT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `postal_code` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`address_id`, `listing_id`, `street`, `city`, `country`, `postal_code`) VALUES
(1, 1, '123 Table Street', 'Cape Town', 'South Africa', '8001'),
(2, 2, '456 Independence Ave', 'Windhoek', 'Namibia', '10001'),
(3, 3, '789 Beach Road', 'Swakopmund', 'Namibia', '20002'),
(4, 4, '321 Mountain Trail', 'Otjiwarongo', 'Namibia', '30003'),
(5, 5, '654 Ocean Drive', 'Walvis Bay', 'Namibia', '40004'),
(6, 1, '123 Table Street', 'Cape Town', 'South Africa', '8001'),
(7, 2, '456 Independence Ave', 'Windhoek', 'Namibia', '10001'),
(8, 3, '789 Beach Road', 'Swakopmund', 'Namibia', '20002'),
(9, 4, '321 Mountain Trail', 'Otjiwarongo', 'Namibia', '30003'),
(10, 5, '654 Ocean Drive', 'Walvis Bay', 'Namibia', '40004'),
(11, 8, 'Mondesa', 'Swakopmund', 'Namibia', '20835'),
(47, 36, 'Mercedes street', 'Windhoek', 'Namibia', '28346'),
(62, 21, 'Nelson Mandela Avenue', 'Swakopmund', 'Namibia', '10012'),
(63, 22, 'Independence Avenue', 'Windhoek', 'Namibia', '00100'),
(64, 23, 'Ongava Drive', 'Otjiwarongo', 'Namibia', '90012'),
(65, 24, 'Sam Nujoma Road', 'Walvis Bay', 'Namibia', '32100'),
(66, 25, 'Kuiseb Street', 'Walvis Bay', 'Namibia', '32110'),
(67, 26, 'Okaukuejo Street', 'Oshakati', 'Namibia', '88001'),
(68, 27, 'Namib Crescent', 'Lüderitz', 'Namibia', '21000'),
(69, 28, 'Zambezi Drive', 'Katima Mulilo', 'Namibia', '50050'),
(70, 29, 'Etosha Street', 'Tsumeb', 'Namibia', '40042'),
(71, 30, 'Omusati Street', 'Ondangwa', 'Namibia', '88400'),
(72, 31, 'Otavi Road', 'Otavi', 'Namibia', '34110'),
(73, 32, 'Skeleton Coast Drive', 'Henties Bay', 'Namibia', '20020'),
(74, 33, 'Omaruru Avenue', 'Omaruru', 'Namibia', '60060'),
(75, 34, 'Mariental Main Road', 'Mariental', 'Namibia', '70070');

-- --------------------------------------------------------

--
-- Table structure for table `amenity`
--

CREATE TABLE `amenity` (
  `amenity_id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `amenity`
--

INSERT INTO `amenity` (`amenity_id`, `name`) VALUES
(1, 'Free WiFi'),
(2, 'Swimming Pool'),
(3, 'Air Conditioning'),
(4, 'Fitness Center'),
(5, 'Room Service'),
(6, 'Laundry Service'),
(7, 'Parking'),
(8, 'Restaurant'),
(9, 'Spa'),
(10, 'Pet Friendly'),
(11, 'Dishes'),
(12, 'Fireplace'),
(13, 'Balcony'),
(14, 'Coffee Maker'),
(15, 'Microwave'),
(16, 'Refrigerator'),
(17, 'Private Bathroom'),
(18, 'Towels & Linens'),
(19, 'Smart TV'),
(20, 'Iron & Ironing Board'),
(21, 'Security System');

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `booking_id` int(11) NOT NULL,
  `guest_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `host_id` int(11) DEFAULT NULL,
  `check_in` date DEFAULT NULL,
  `check_out` date DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`booking_id`, `guest_id`, `room_id`, `host_id`, `check_in`, `check_out`, `status`, `total_price`) VALUES
(1, 1, 1, 2, '2025-05-01', '2025-05-05', 'confirmed', 320.00),
(2, 3, 2, 4, '2025-06-10', '2025-06-15', 'confirmed', 600.00),
(3, 5, 3, 6, '2025-07-20', '2025-07-25', 'confirmed', 750.00),
(4, 7, 4, 8, '2025-08-05', '2025-08-10', 'confirmed', 500.00),
(5, 9, 5, 10, '2025-09-15', '2025-09-20', 'confirmed', 1000.00),
(16, 1, 1, 1, '2025-05-08', '2025-05-08', 'confirmed', 900.00),
(117, 1, 1, 1, '2025-05-08', '2025-05-09', 'confirmed', 900.00),
(118, 3, 2, 2, '2025-05-10', '2025-05-12', 'completed', 1800.00),
(119, 5, 3, 4, '2025-05-15', '2025-05-18', 'cancelled', 0.00),
(120, 7, 4, 6, '2025-05-20', '2025-05-23', 'confirmed', 2100.00),
(121, 9, 1, 1, '2025-05-25', '2025-05-28', 'completed', 2700.00),
(122, 32, 4, 33, '2025-06-01', '2025-06-05', 'confirmed', 3600.00),
(123, 34, 5, 6, '2025-06-07', '2025-06-08', 'pending', 1200.00),
(124, 36, 2, 34, '2025-06-10', '2025-06-13', 'confirmed', 2400.00),
(125, 38, 3, 4, '2025-06-15', '2025-06-17', 'cancelled', 0.00),
(126, 40, 6, 6, '2025-06-20', '2025-06-25', 'confirmed', 4500.00),
(127, 42, 7, 37, '2025-06-26', '2025-06-28', 'completed', 1800.00),
(128, 44, 8, 8, '2025-07-01', '2025-07-03', 'confirmed', 2200.00),
(129, 46, 9, 33, '2025-07-04', '2025-07-07', 'confirmed', 3300.00),
(130, 48, 10, 10, '2025-07-08', '2025-07-10', 'cancelled', 0.00),
(131, 49, 11, 51, '2025-07-11', '2025-07-13', 'completed', 2600.00),
(132, 50, 27, 52, '2025-07-14', '2025-07-16', 'pending', 2000.00),
(133, 51, 28, 53, '2025-07-17', '2025-07-20', 'confirmed', 3900.00),
(134, 53, 29, 54, '2025-07-21', '2025-07-24', 'completed', 4200.00),
(135, 55, 30, 55, '2025-07-25', '2025-07-28', 'confirmed', 3600.00),
(136, 57, 35, 57, '2025-07-29', '2025-07-31', 'cancelled', 0.00);

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `calendar_id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `is_available` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`calendar_id`, `room_id`, `date`, `is_available`) VALUES
(1, 1, '2025-05-16', 1),
(2, 1, '2025-05-17', 0),
(3, 2, '2025-05-16', 1),
(4, 2, '2025-05-18', 1),
(5, 3, '2025-05-16', 0),
(6, 3, '2025-05-19', 1),
(7, 4, '2025-05-16', 1),
(8, 4, '2025-05-20', 0),
(9, 5, '2025-05-16', 1),
(10, 5, '2025-05-21', 1),
(11, 1, '2025-05-21', 1),
(12, 1, '2025-05-21', 1),
(13, 1, '2025-05-22', 0),
(14, 2, '2025-05-21', 1),
(15, 2, '2025-05-22', 1),
(16, 3, '2025-05-21', 0),
(17, 3, '2025-05-22', 1),
(18, 4, '2025-05-21', 1),
(19, 4, '2025-05-22', 0),
(20, 5, '2025-05-21', 1),
(21, 5, '2025-05-22', 1),
(22, 1, '2025-05-23', 0),
(23, 2, '2025-05-23', 1),
(24, 3, '2025-05-23', 1),
(25, 4, '2025-05-23', 1),
(26, 5, '2025-05-23', 0),
(27, 1, '2025-05-24', 1),
(28, 2, '2025-05-24', 1),
(29, 3, '2025-05-24', 0),
(30, 4, '2025-05-24', 1),
(31, 5, '2025-05-24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `guest_id` int(11) NOT NULL,
  `preferences` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`guest_id`, `preferences`) VALUES
(1, 'Non-smoking, prefers quiet rooms'),
(3, 'Pet-friendly, near public transport'),
(5, 'High-speed internet, workspace'),
(7, 'Close to city center, parking available'),
(9, 'Late check-in, flexible cancellation'),
(32, 'Fitness center access, private bathroom'),
(34, 'Room service, balcony view'),
(36, 'Swimming pool, laundry service'),
(38, 'Work desk, fast internet'),
(40, 'Ground floor room, no stairs'),
(42, 'Allergy-free bedding'),
(44, 'Smart TV, Netflix access'),
(46, 'Outdoor seating area'),
(48, 'Child-friendly amenities'),
(49, 'Dancing disco'),
(50, 'Free parking, quiet street'),
(51, 'Quiet neighborhood, early check-in'),
(53, 'Pet friendly, near public transport'),
(55, 'Beach view, non-smoking room'),
(57, 'Free WiFi, late checkout'),
(59, 'Air conditioning, city view');

-- --------------------------------------------------------

--
-- Table structure for table `host`
--

CREATE TABLE `host` (
  `host_id` int(11) NOT NULL,
  `income_expectation` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `host`
--

INSERT INTO `host` (`host_id`, `income_expectation`) VALUES
(1, 2300.00),
(2, 1500.00),
(4, 2000.00),
(6, 1800.00),
(8, 2200.00),
(10, 2500.00),
(32, 3400.00),
(33, 3200.00),
(34, 5499.00),
(35, 2800.00),
(37, 3000.00),
(39, 3500.00),
(41, 2700.00),
(44, 4000.00),
(45, 2600.00),
(47, 3200.00),
(49, 2800.00),
(51, 3000.00),
(52, 3500.00),
(53, 2700.00),
(54, 4000.00),
(55, 2600.00),
(56, 3100.00),
(57, 2600.00),
(58, 3100.00),
(59, 2900.00);

-- --------------------------------------------------------

--
-- Table structure for table `listing`
--

CREATE TABLE `listing` (
  `listing_id` int(11) NOT NULL,
  `host_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `max_guests` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `listing`
--

INSERT INTO `listing` (`listing_id`, `host_id`, `title`, `description`, `type`, `max_guests`) VALUES
(1, 2, 'Cozy Loft in Cape Town', 'Great views and location near the city center.', 'Loft', 2),
(2, 4, 'Modern Apartment in Windhoek', 'Spacious and well-furnished.', 'Apartment', 4),
(3, 6, 'Beach House in Swakopmund', 'Steps away from the beach.', 'House', 6),
(4, 8, 'Mountain Cabin in Otjiwarongo', 'Peaceful retreat in the mountains.', 'Cabin', 3),
(5, 10, 'Luxury Villa in Walvis Bay', 'Private pool and ocean views.', 'Villa', 8),
(6, 2, 'Cozy Loft in Cape Town', 'Great views and location near the city center.', 'Loft', 2),
(7, 4, 'Modern Apartment in Windhoek', 'Spacious and well-furnished.', 'Apartment', 4),
(8, 6, 'Beach House in Swakopmund', 'Steps away from the beach.', 'House', 6),
(9, 8, 'Mountain Cabin in Otjiwarongo', 'Peaceful retreat in the mountains.', 'Cabin', 3),
(10, 10, 'Luxury Villa in Walvis Bay', 'Private pool and ocean views.', 'Villa', 8),
(11, 32, 'Mastermind', 'This is affordable', 'guesthouse', 3),
(21, 33, 'Ocean Breeze', 'Enjoy ocean views from your room', 'apartment', 4),
(22, 34, 'Desert Inn', 'A cozy desert escape', 'guesthouse', 2),
(23, 35, 'City Lights Loft', 'Modern loft in downtown area', 'apartment', 2),
(24, 37, 'Mountain Retreat', 'Great for hiking enthusiasts', 'cabin', 4),
(25, 39, 'Sunset Villa', 'Amazing sunset views every night', 'villa', 6),
(26, 44, 'Peaceful Pines', 'Quiet and serene location', 'cabin', 2),
(27, 45, 'Ocean Edge BnB', 'Wake up to ocean sounds', 'bnb', 4),
(28, 51, 'Beach Haven', 'Steps from the beach, very quiet', 'villa', 5),
(29, 52, 'Mountain Retreat', 'Great for hiking enthusiasts', 'cabin', 4),
(30, 53, 'Green Garden BnB', 'Surrounded by nature', 'bnb', 3),
(31, 54, 'Sunset Villa', 'Amazing sunset views every night', 'villa', 6),
(32, 55, 'Budget Lodge', 'Clean and affordable', 'guesthouse', 3),
(33, 56, 'Luxury Loft', 'Stylish space for couples', 'apartment', 2),
(34, 57, 'Wildlife Escape', 'Near national park', 'cabin', 4),
(35, 58, 'Urban Nest', 'In the heart of the city', 'apartment', 3),
(36, 59, 'Peaceful Pines', 'Quiet and serene location', 'cabin', 2);

-- --------------------------------------------------------

--
-- Table structure for table `listing_amenity`
--

CREATE TABLE `listing_amenity` (
  `id` int(11) NOT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `amenity_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `listing_amenity`
--

INSERT INTO `listing_amenity` (`id`, `listing_id`, `amenity_id`) VALUES
(1, 1, 2),
(2, 1, 3),
(3, 2, 1),
(4, 2, 4),
(5, 3, 2),
(6, 3, 5),
(7, 4, 1),
(8, 5, 3),
(9, 5, 4),
(10, 6, 5),
(11, 27, 20),
(27, 27, 10),
(28, 27, 1),
(29, 27, 2),
(30, 28, 20),
(31, 28, 3),
(32, 28, 4),
(33, 29, 5),
(34, 29, 6),
(35, 30, 10),
(36, 30, 7),
(37, 30, 8),
(38, 31, 9),
(39, 31, 20),
(40, 31, 21),
(41, 27, 2);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `receiver_id` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `parent_message_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `sender_id`, `receiver_id`, `content`, `timestamp`, `parent_message_id`) VALUES
(1, 1, 2, 'Hi, is the room available next weekend?', '2025-05-01 09:15:00', NULL),
(2, 2, 1, 'Yes, it is available. Would you like to book?', '2025-05-01 09:17:00', 1),
(3, 1, 2, 'Yes, please reserve it for me.', '2025-05-01 09:20:00', 2),
(4, 3, 4, 'Can I bring a pet with me?', '2025-05-02 14:05:00', NULL),
(5, 4, 3, 'Sorry, no pets are allowed.', '2025-05-02 14:10:00', 4),
(6, 5, 6, 'Is early check-in possible?', '2025-05-03 08:00:00', NULL),
(7, 6, 5, 'Yes, early check-in is fine after 12 PM.', '2025-05-03 08:05:00', 6),
(8, 7, 8, 'The listing looks great! Is there parking?', '2025-05-04 11:25:00', NULL),
(9, 8, 7, 'Yes, private parking is available for guests.', '2025-05-04 11:30:00', 8),
(10, 1, 2, 'Thanks for confirming the booking.', '2025-05-05 10:00:00', NULL),
(11, 1, 46, 'Hey Can you help?', '2025-05-16 11:12:14', 1),
(12, 1, 46, 'Hey Can you help?', '2025-05-16 11:12:14', 1),
(13, 46, 1, 'Sure, what do you need?', '2025-05-16 11:13:10', 1),
(14, 2, 47, 'Is the room still available?', '2025-05-16 12:00:00', NULL),
(15, 47, 2, 'Yes, it is available until next week.', '2025-05-16 12:05:00', 3),
(16, 3, 48, 'Can I bring my pet?', '2025-05-16 13:10:00', NULL),
(17, 48, 3, 'Yes, we are pet friendly!', '2025-05-16 13:12:00', 5),
(18, 4, 49, 'Do you offer airport pickup?', '2025-05-16 14:00:00', NULL),
(19, 49, 4, 'No, but taxis are readily available.', '2025-05-16 14:05:00', 7),
(20, 5, 50, 'Hi, how far is the beach?', '2025-05-16 15:00:00', NULL),
(21, 50, 5, 'It’s a 5-minute walk.', '2025-05-16 15:02:00', 9),
(22, 6, 45, 'What time is check-in?', '2025-05-16 16:00:00', NULL),
(23, 45, 6, 'Any time after 2 PM.', '2025-05-16 16:05:00', 11),
(24, 7, 44, 'Do you allow smoking?', '2025-05-16 17:00:00', NULL),
(25, 44, 7, 'No smoking allowed in the rooms.', '2025-05-16 17:05:00', 13),
(26, 8, 43, 'Is breakfast included?', '2025-05-16 18:00:00', NULL),
(27, 1, 46, 'Hey Can you help?', '2025-05-16 11:12:14', 1),
(28, 46, 1, 'Sure, what do you need?', '2025-05-16 11:13:10', 1),
(29, 2, 47, 'Is the room still available?', '2025-05-16 12:00:00', NULL),
(30, 47, 2, 'Yes, it is available until next week.', '2025-05-16 12:05:00', 3),
(31, 3, 48, 'Can I bring my pet?', '2025-05-16 13:10:00', NULL),
(32, 48, 3, 'Yes, we are pet friendly!', '2025-05-16 13:12:00', 5),
(33, 4, 49, 'Do you offer airport pickup?', '2025-05-16 14:00:00', NULL),
(34, 49, 4, 'No, but taxis are readily available.', '2025-05-16 14:05:00', 7),
(35, 5, 50, 'Hi, how far is the beach?', '2025-05-16 15:00:00', NULL),
(36, 50, 5, 'It’s a 5-minute walk.', '2025-05-16 15:02:00', 9),
(37, 6, 45, 'What time is check-in?', '2025-05-16 16:00:00', NULL),
(38, 45, 6, 'Any time after 2 PM.', '2025-05-16 16:05:00', 11),
(39, 7, 44, 'Do you allow smoking?', '2025-05-16 17:00:00', NULL),
(40, 44, 7, 'No smoking allowed in the rooms.', '2025-05-16 17:05:00', 13),
(41, 8, 43, 'Is breakfast included?', '2025-05-16 18:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payment_id` int(11) NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `method` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payment_id`, `booking_id`, `payment_date`, `amount`, `method`, `status`) VALUES
(1, 1, '2025-04-18 20:16:38', 320.00, 'Credit Card', 'Paid'),
(2, 2, '2025-04-18 20:16:38', 600.00, 'PayPal', 'Paid'),
(3, 3, '2025-04-18 20:16:38', 750.00, 'Credit Card', 'Paid'),
(4, 4, '2025-04-18 20:16:38', 500.00, 'Bank Transfer', 'Paid'),
(5, 5, '2025-04-18 20:16:38', 1000.00, 'Credit Card', 'Paid'),
(16, 1, '2025-05-16 11:16:21', 2000.00, 'cash', 'confirmed'),
(32, 1, '2025-05-16 11:16:21', 2000.00, 'Cash', 'Confirmed'),
(33, 2, '2025-05-16 12:00:00', 1800.00, 'Credit Card', 'Paid'),
(34, 3, '2025-05-16 13:20:30', 2200.00, 'PayPal', 'Pending'),
(35, 4, '2025-05-16 14:05:00', 2500.00, 'Mobile Money', 'Paid'),
(36, 5, '2025-05-16 15:40:15', 1900.00, 'Bank Transfer', 'Failed'),
(37, 16, '2025-05-16 16:50:00', 2100.00, 'Credit Card', 'Paid'),
(38, 117, '2025-05-16 17:25:00', 2300.00, 'Cash', 'Paid'),
(39, 118, '2025-05-16 18:00:00', 2700.00, 'PayPal', 'Confirmed'),
(40, 119, '2025-05-16 19:30:45', 3000.00, 'Bank Transfer', 'Pending'),
(41, 120, '2025-05-16 20:00:00', 2400.00, 'Credit Card', 'Confirmed'),
(42, 121, '2025-05-16 21:15:00', 1950.00, 'Cash', 'Confirmed'),
(43, 123, '2025-05-16 22:45:00', 2000.00, 'PayPal', 'Paid'),
(44, 130, '2025-05-17 09:00:00', 1750.00, 'Mobile Money', 'Confirmed'),
(45, 131, '2025-05-17 10:30:00', 2600.00, 'Credit Card', 'Paid'),
(46, 135, '2025-05-17 11:45:00', 2850.00, 'Cash', 'Paid');

-- --------------------------------------------------------

--
-- Table structure for table `photo`
--

CREATE TABLE `photo` (
  `photo_id` int(11) NOT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `url` text DEFAULT NULL,
  `caption` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `photo`
--

INSERT INTO `photo` (`photo_id`, `listing_id`, `url`, `caption`) VALUES
(1, 1, 'https://example.com/photos/1.jpg', 'Spacious living room'),
(2, 1, 'https://example.com/photos/2.jpg', 'Modern kitchen area'),
(3, 2, 'https://example.com/photos/3.jpg', 'Cozy bedroom with queen bed'),
(4, 2, 'https://example.com/photos/4.jpg', 'Balcony view'),
(5, 3, 'https://example.com/photos/5.jpg', 'Bathroom with walk-in shower'),
(6, 3, 'https://example.com/photos/6.jpg', NULL),
(7, 4, 'https://example.com/photos/7.jpg', 'Garden area'),
(8, 5, 'https://example.com/photos/8.jpg', 'Workspace with high-speed WiFi'),
(9, 5, 'https://example.com/photos/9.jpg', 'Front entrance'),
(10, 6, 'https://example.com/photos/10.jpg', 'Full apartment overview'),
(11, 1, 'https://example.com/photos/1.jpg 	', 'Spacious living room'),
(12, 1, 'https://example.com/photos/1.jpg', 'Spacious living room'),
(13, 2, 'https://example.com/photos/2.jpg', 'Modern kitchen with appliances'),
(14, 3, 'https://example.com/photos/3.jpg', 'Cozy bedroom with queen bed'),
(15, 4, 'https://example.com/photos/4.jpg', 'Bright bathroom with walk-in shower'),
(16, 5, 'https://example.com/photos/5.jpg', 'Balcony view overlooking city'),
(17, 6, 'https://example.com/photos/6.jpg', 'Private pool with loungers'),
(18, 7, 'https://example.com/photos/7.jpg', 'Garden and outdoor seating area'),
(19, 8, 'https://example.com/photos/8.jpg', 'Dining area for six people'),
(20, 9, 'https://example.com/photos/9.jpg', 'Cozy fireplace and reading nook'),
(21, 10, 'https://example.com/photos/10.jpg', 'Minimalist modern design'),
(22, 11, 'https://example.com/photos/11.jpg', 'Studio layout overview'),
(23, 21, 'https://example.com/photos/12.jpg', 'Rooftop terrace with sunset view'),
(24, 23, 'https://example.com/photos/13.jpg', 'Child-friendly backyard'),
(25, 24, 'https://example.com/photos/14.jpg', 'Luxurious ensuite bathroom'),
(26, 25, 'https://example.com/photos/15.jpg', 'Well-lit workspace with desk');

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `rating_id` int(11) NOT NULL,
  `from_user_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL CHECK (`score` between 1 and 5),
  `date_rated` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`rating_id`, `from_user_id`, `to_user_id`, `score`, `date_rated`) VALUES
(1, 1, 2, 5, '2025-05-06'),
(2, 3, 4, 4, '2025-06-16'),
(3, 5, 6, 5, '2025-07-26'),
(4, 7, 8, 4, '2025-08-11'),
(5, 9, 10, 5, '2025-09-21'),
(6, 1, 2, 5, '2025-05-15'),
(7, 1, 2, 5, '2025-05-15'),
(8, 2, 3, 4, '2025-05-14'),
(9, 3, 4, 5, '2025-05-13'),
(10, 4, 5, 3, '2025-05-12'),
(37, 1, 2, 5, '2025-05-15'),
(38, 2, 3, 4, '2025-05-14'),
(39, 3, 4, 5, '2025-05-13'),
(40, 4, 5, 3, '2025-05-12'),
(41, 5, 6, 2, '2025-05-11'),
(42, 7, 8, 2, '2025-05-10'),
(43, 8, 9, 4, '2025-05-09'),
(44, 9, 10, 5, '2025-05-08'),
(45, 10, 11, 5, '2025-05-07'),
(46, 11, 11, 1, '2025-05-06'),
(47, 32, 11, 2, '2025-05-05'),
(48, 33, 4, 3, '2025-05-04'),
(49, 44, 5, 4, '2025-05-03'),
(50, 35, 6, 5, '2025-05-02'),
(51, 36, 7, 5, '2025-05-01');

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `review_id` int(11) NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `reviewer_id` int(11) DEFAULT NULL,
  `reviewee_id` int(11) DEFAULT NULL,
  `review_text` text DEFAULT NULL,
  `date_posted` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`review_id`, `booking_id`, `reviewer_id`, `reviewee_id`, `review_text`, `date_posted`) VALUES
(1, 1, 1, 2, 'Great stay, very comfortable!', '2025-05-06'),
(2, 2, 3, 4, 'Excellent host, highly recommend.', '2025-06-16'),
(3, 3, 5, 6, 'Beautiful location and clean rooms.', '2025-07-26'),
(4, 4, 7, 8, 'Peaceful retreat, loved it.', '2025-08-11'),
(5, 5, 9, 10, 'Luxury at its best!', '2025-09-21'),
(6, 136, 3, 8, 'This was the best', '2025-05-17'),
(67, 117, 3, 8, 'This was the best', '2025-05-17'),
(68, 118, 4, 9, 'Very comfortable and clean place.', '2025-05-16'),
(69, 119, 5, 10, 'Had a lovely time staying here.', '2025-05-15'),
(70, 129, 6, 11, 'Host was very friendly and helpful.', '2025-05-14'),
(71, 120, 7, 42, 'Good location and peaceful area.', '2025-05-13'),
(72, 121, 8, 43, 'Room was not as expected.', '2025-05-12'),
(73, 122, 9, 40, 'Would definitely book again!', '2025-05-11'),
(74, 123, 10, 39, 'Check-in was smooth and hassle-free.', '2025-05-10'),
(75, 124, 11, 38, 'Amenities were top-notch.', '2025-05-09'),
(76, 125, 32, 37, 'The host responded quickly to questions.', '2025-05-08'),
(77, 126, 33, 36, 'Place was a bit noisy at night.', '2025-05-07'),
(78, 127, 34, 35, 'Excellent value for money.', '2025-05-06'),
(79, 128, 35, 34, 'Felt like home, thank you!', '2025-05-05'),
(80, 129, 36, 33, 'Could have been cleaner.', '2025-05-04'),
(81, 130, 37, 32, 'Host gave great local tips.', '2025-05-03'),
(82, 131, 38, 11, 'Not bad, but could be improved.', '2025-05-02'),
(83, 132, 39, 10, 'Spacious and well-furnished.', '2025-05-01'),
(84, 133, 40, 9, 'Location was perfect for our needs.', '2025-04-30'),
(85, 134, 41, 8, 'Enjoyed the stay, highly recommended!', '2025-04-29'),
(86, 135, 42, 7, 'Would love to return someday.', '2025-04-28');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `price_per_night` decimal(8,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `listing_id`, `name`, `price_per_night`) VALUES
(1, 1, 'Main Room', 80.00),
(2, 2, 'Master Bedroom', 120.00),
(3, 3, 'Sea View Room', 150.00),
(4, 4, 'Mountain View Room', 100.00),
(5, 5, 'Luxury Suite', 200.00),
(6, 1, 'Main Room', 80.00),
(7, 2, 'Master Bedroom', 120.00),
(8, 3, 'Sea View Room', 150.00),
(9, 4, 'Mountain View Room', 100.00),
(10, 5, 'Luxury Suite', 200.00),
(11, 1, 'Single Room', 300.00),
(27, 1, 'Single Room', 300.00),
(28, 2, 'Double Room', 450.00),
(29, 3, 'Deluxe Suite', 750.00),
(30, 4, 'Standard Room', 350.00),
(31, 5, 'Queen Room', 500.00),
(32, 6, 'King Suite', 800.00),
(33, 7, 'Family Room', 650.00),
(34, 8, 'Economy Room', 250.00),
(35, 9, 'Penthouse', 1200.00),
(36, 10, 'Studio Apartment', 550.00),
(37, 11, 'Cottage Room', 400.00),
(38, 21, 'Executive Suite', 950.00),
(39, 22, 'Loft Room', 600.00),
(40, 23, 'Shared Room', 200.00),
(41, 24, 'Bungalow Room', 700.00);

-- --------------------------------------------------------

--
-- Table structure for table `roomrule`
--

CREATE TABLE `roomrule` (
  `rule_id` int(11) NOT NULL,
  `rule_text` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roomrule`
--

INSERT INTO `roomrule` (`rule_id`, `rule_text`) VALUES
(1, 'No smoking'),
(2, 'No pets allowed'),
(3, 'No loud music after 10 PM'),
(4, 'Check-in after 2 PM'),
(5, 'Check-out before 11 AM'),
(6, 'No parties or events'),
(7, 'Please remove shoes inside'),
(8, 'Dispose of trash properly'),
(9, 'Keep kitchen clean'),
(10, 'Turn off lights when leaving'),
(11, 'No car allowed inside'),
(12, 'Do not rearrange furniture'),
(13, 'Do not leave food out overnight'),
(14, 'No unauthorized guests'),
(15, 'Keep noise to a minimum'),
(16, 'Do not block fire exits'),
(17, 'No smoking on the balcony'),
(18, 'Turn off AC when not in use'),
(19, 'Report damages immediately'),
(20, 'No hanging clothes on balcony'),
(21, 'Use coasters for drinks'),
(22, 'No tampering with smoke detectors'),
(23, 'Use provided towels only'),
(24, 'Keep windows closed during rain'),
(25, 'Do not use appliances unsafely'),
(26, 'Respect neighbors’ privacy'),
(27, 'No illegal substances'),
(28, 'Clean up after pets (if allowed)'),
(29, 'No overnight stays without prior notice'),
(30, 'Follow check-in instructions exactly');

-- --------------------------------------------------------

--
-- Table structure for table `roomrule_assignment`
--

CREATE TABLE `roomrule_assignment` (
  `id` int(11) NOT NULL,
  `room_id` int(11) DEFAULT NULL,
  `rule_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roomrule_assignment`
--

INSERT INTO `roomrule_assignment` (`id`, `room_id`, `rule_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 3),
(4, 2, 4),
(5, 3, 5),
(6, 3, 6),
(7, 4, 7),
(8, 5, 8),
(9, 5, 9),
(10, 6, 10),
(11, 37, 4),
(27, 37, 4),
(28, 37, 5),
(29, 37, 6),
(30, 38, 2),
(31, 38, 3),
(32, 38, 7),
(33, 39, 1),
(34, 39, 4),
(35, 39, 8),
(36, 40, 9),
(37, 40, 10),
(38, 11, 3),
(39, 27, 6),
(40, 29, 5),
(41, 34, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sociallink`
--

CREATE TABLE `sociallink` (
  `link_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `platform` varchar(50) DEFAULT NULL,
  `url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sociallink`
--

INSERT INTO `sociallink` (`link_id`, `user_id`, `platform`, `url`) VALUES
(1, 1, 'LinkedIn', 'https://www.linkedin.com/in/user1'),
(2, 1, 'Facebook', 'https://www.facebook.com/user1'),
(3, 2, 'Twitter', 'https://twitter.com/user2'),
(4, 2, 'Instagram', 'https://www.instagram.com/user2'),
(5, 3, 'LinkedIn', 'https://www.linkedin.com/in/user3'),
(6, 3, 'GitHub', 'https://github.com/user3'),
(7, 4, 'Facebook', NULL),
(8, 4, 'Twitter', 'https://twitter.com/user4'),
(9, 5, 'LinkedIn', 'https://www.linkedin.com/in/user5'),
(10, 5, 'Instagram', NULL),
(11, 1, 'facebook', 'https:www.facebool.com/tom'),
(27, 1, 'facebook', 'https://www.facebook.com/tom'),
(28, 2, 'twitter', 'https://twitter.com/jane123'),
(29, 3, 'instagram', 'https://www.instagram.com/kevin.photos'),
(30, 4, 'linkedin', 'https://www.linkedin.com/in/sam-host'),
(31, 5, 'facebook', 'https://www.facebook.com/lucy.guest'),
(32, 6, 'twitter', 'https://twitter.com/mike_travel'),
(33, 7, 'instagram', 'https://www.instagram.com/host.vibes'),
(34, 8, 'linkedin', 'https://www.linkedin.com/in/lara-guest'),
(35, 9, 'facebook', 'https://www.facebook.com/andre.host'),
(36, 10, 'twitter', 'https://twitter.com/emma_guest'),
(37, 11, 'instagram', 'https://www.instagram.com/nick.rooms'),
(38, 32, 'linkedin', 'https://www.linkedin.com/in/rachel-airbnb'),
(39, 33, 'facebook', 'https://www.facebook.com/chris.booking'),
(40, 34, 'twitter', 'https://twitter.com/lily.travel'),
(41, 35, 'instagram', 'https://www.instagram.com/dan.stays'),
(42, 1, 'facebook', 'https://www.facebook.com/tom'),
(43, 2, 'twitter', 'https://twitter.com/jane123'),
(44, 3, 'instagram', 'https://www.instagram.com/kevin.photos'),
(45, 4, 'linkedin', 'https://www.linkedin.com/in/sam-host'),
(46, 5, 'facebook', 'https://www.facebook.com/lucy.guest'),
(47, 6, 'twitter', 'https://twitter.com/mike_travel'),
(48, 7, 'instagram', 'https://www.instagram.com/host.vibes'),
(49, 8, 'linkedin', 'https://www.linkedin.com/in/lara-guest'),
(50, 9, 'facebook', 'https://www.facebook.com/andre.host'),
(51, 10, 'twitter', 'https://twitter.com/emma_guest'),
(52, 11, 'instagram', 'https://www.instagram.com/nick.rooms'),
(53, 32, 'linkedin', 'https://www.linkedin.com/in/rachel-airbnb'),
(54, 33, 'facebook', 'https://www.facebook.com/chris.booking'),
(55, 34, 'twitter', 'https://twitter.com/lily.travel'),
(56, 35, 'instagram', 'https://www.instagram.com/dan.stays');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transaction_id` int(11) NOT NULL,
  `booking_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `commission` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transaction_id`, `booking_id`, `user_id`, `role`, `commission`) VALUES
(21, 1, 1, 'guest', 15.50),
(22, 1, 2, 'host', 10.00),
(23, 2, 3, 'guest', 20.00),
(24, 2, 4, 'host', 12.00),
(25, 3, 5, 'guest', 18.75),
(26, 3, 2, 'host', 14.00),
(27, 4, 3, 'guest', NULL),
(28, 4, 1, 'host', 10.50),
(29, 5, 4, 'guest', 25.00),
(30, 5, 5, 'host', NULL),
(31, 131, 11, 'sheepo', 30.00),
(47, 1, 11, 'guest', 30.00),
(48, 2, 2, 'host', 25.00),
(49, 3, 3, 'guest', 28.00),
(50, 4, 4, 'host', 35.00),
(51, 5, 5, 'guest', 22.00),
(52, 16, 6, 'host', 30.00),
(53, 117, 7, 'guest', 20.00),
(54, 118, 8, 'host', 26.00),
(55, 119, 9, 'guest', 31.00),
(56, 120, 10, 'host', 29.00),
(57, 122, 11, 'guest', 24.00),
(58, 123, 32, 'host', 32.00),
(59, 123, 33, 'guest', 27.00),
(60, 124, 34, 'host', 33.00),
(61, 128, 35, 'guest', 30.00);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `profile_picture` text DEFAULT NULL,
  `joined_date` date DEFAULT NULL,
  `user_type` enum('guest','host') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `password`, `phone`, `profile_picture`, `joined_date`, `user_type`) VALUES
(1, 'Alice Smith', 'alice@example.com', 'hashedpassword1', '1234567890', NULL, '2023-01-10', 'guest'),
(2, 'Bob Johnson', 'bob@example.com', 'hashedpassword2', '0987654321', NULL, '2023-02-20', 'host'),
(3, 'Charlie Brown', 'charlie@example.com', 'hashedpassword3', '2345678901', NULL, '2023-03-15', 'guest'),
(4, 'Diana Prince', 'diana@example.com', 'hashedpassword4', '3456789012', NULL, '2023-04-10', 'host'),
(5, 'Ethan Hunt', 'ethan@example.com', 'hashedpassword5', '4567890123', NULL, '2023-05-05', 'guest'),
(6, 'Fiona Glenanne', 'fiona@example.com', 'hashedpassword6', '5678901234', NULL, '2023-06-01', 'host'),
(7, 'George Clooney', 'george@example.com', 'hashedpassword7', '6789012345', NULL, '2023-07-20', 'guest'),
(8, 'Hannah Montana', 'hannah@example.com', 'hashedpassword8', '7890123456', NULL, '2023-08-25', 'host'),
(9, 'Ian Malcolm', 'ian@example.com', 'hashedpassword9', '8901234567', NULL, '2023-09-30', 'guest'),
(10, 'Julia Roberts', 'julia@example.com', 'hashedpassword10', '9012345678', NULL, '2023-10-15', 'host'),
(11, 'Akawa', 'sheepo@gmail.com', 'akawa1234', '08149659562', 'my_picture.jpg', '2025-05-01', 'host'),
(32, 'Lukas', 'lukas@gmail.com', 'lukas2025', '08123456789', 'lukas.jpg', '2025-05-02', 'guest'),
(33, 'Maria', 'maria@gmail.com', 'maria2025', '08123456780', 'maria.jpg', '2025-05-03', 'host'),
(34, 'Peter', 'peter@gmail.com', 'peter2025', '08123456781', 'peter.jpg', '2025-05-04', 'guest'),
(35, 'Elsa', 'elsa@gmail.com', 'elsa2025', '08123456782', 'elsa.jpg', '2025-05-05', 'host'),
(36, 'John', 'john@gmail.com', 'john2025', '08123456783', 'john.jpg', '2025-05-06', 'guest'),
(37, 'Nina', 'nina@gmail.com', 'nina2025', '08123456784', 'nina.jpg', '2025-05-07', 'host'),
(38, 'Simon', 'simon@gmail.com', 'simon2025', '08123456785', 'simon.jpg', '2025-05-08', 'guest'),
(39, 'Amelia', 'amelia@gmail.com', 'amelia2025', '08123456786', 'amelia.jpg', '2025-05-09', 'host'),
(40, 'Jacob', 'jacob@gmail.com', 'jacob2025', '08123456787', 'jacob.jpg', '2025-05-10', 'guest'),
(41, 'Diana', 'diana@gmail.com', 'diana2025', '08123456788', 'diana.jpg', '2025-05-11', 'host'),
(42, 'Markus', 'markus@gmail.com', 'markus2025', '08123456789', 'markus.jpg', '2025-05-12', 'guest'),
(43, 'Sophie', 'sophie@gmail.com', 'sophie2025', '08123456790', 'sophie.jpg', '2025-05-13', 'host'),
(44, 'Ethan', 'ethan@gmail.com', 'ethan2025', '08123456791', 'ethan.jpg', '2025-05-14', 'guest'),
(45, 'Grace', 'grace@gmail.com', 'grace2025', '08123456792', 'grace.jpg', '2025-05-15', 'host'),
(46, 'Leon', 'leon@gmail.com', 'leon2025', '08123456793', 'leon.jpg', '2025-05-16', 'guest'),
(47, 'Angela', 'angela@gmail.com', 'angela2025', '08123456794', 'angela.jpg', '2025-05-17', 'host'),
(48, 'Noah', 'noah@gmail.com', 'noah2025', '08123456795', 'noah.jpg', '2025-05-18', 'guest'),
(49, 'Chloe', 'chloe@gmail.com', 'chloe2025', '08123456796', 'chloe.jpg', '2025-05-19', 'host'),
(50, 'Victor', 'victor@gmail.com', 'victor2025', '08123456797', 'victor.jpg', '2025-05-20', 'guest'),
(51, 'Akawa', 'sheepo6@gmail.com', 'akawa1234', '08149659562', 'akawa.jpg', '2025-05-01', 'host'),
(52, 'Lukas', 'lukafs@gmail.com', 'lukas2025', '08123456789', 'lukas.jpg', '2025-05-02', 'host'),
(53, 'Maria', 'maria67@gmail.com', 'maria2025', '08123456780', 'maria.jpg', '2025-05-03', 'host'),
(54, 'Peter', 'peter44@gmail.com', 'peter2025', '08123456781', 'peter.jpg', '2025-05-04', 'host'),
(55, 'Elsa', 'els5ta@gmail.com', 'elsa2025', '08123456782', 'elsa.jpg', '2025-05-05', 'host'),
(56, 'John', 'john89gmail.com', 'john2025', '08123456783', 'john.jpg', '2025-05-06', 'host'),
(57, 'Nina', 'ninaui@gmail.com', 'nina2025', '08123456784', 'nina.jpg', '2025-05-07', 'host'),
(58, 'Simon', 'simonu@gmail.com', 'simon2025', '08123456785', 'simon.jpg', '2025-05-08', 'host'),
(59, 'Amelia', 'ameliagg@gmail.com', 'amelia2025', '08123456786', 'amelia.jpg', '2025-05-09', 'host');

-- --------------------------------------------------------

--
-- Table structure for table `verification`
--

CREATE TABLE `verification` (
  `verification_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `verification`
--

INSERT INTO `verification` (`verification_id`, `user_id`, `type`, `status`) VALUES
(1, 1, 'Email', 1),
(2, 1, 'Phone', 0),
(3, 2, 'ID', 1),
(4, 2, 'Email', 1),
(5, 3, 'Phone', 0),
(6, 3, 'ID', 1),
(7, 4, 'Email', 0),
(8, 4, 'Phone', 1),
(9, 5, 'ID', 1),
(10, 5, 'Email', 1),
(11, 4, 'Email', 1),
(12, 4, 'Phone', 0),
(13, 4, 'ID', 1),
(14, 5, 'Email', 1),
(15, 5, 'Phone', 1),
(16, 5, 'ID', 0),
(17, 1, 'Social Media', 1),
(18, 2, 'Address', 1),
(19, 3, 'Bank Account', 0),
(20, 4, 'Passport', 1),
(21, 5, 'Tax ID', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`address_id`),
  ADD KEY `listing_id` (`listing_id`);

--
-- Indexes for table `amenity`
--
ALTER TABLE `amenity`
  ADD PRIMARY KEY (`amenity_id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `guest_id` (`guest_id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `host_id` (`host_id`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`calendar_id`),
  ADD KEY `room_id` (`room_id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `host`
--
ALTER TABLE `host`
  ADD PRIMARY KEY (`host_id`);

--
-- Indexes for table `listing`
--
ALTER TABLE `listing`
  ADD PRIMARY KEY (`listing_id`),
  ADD KEY `host_id` (`host_id`);

--
-- Indexes for table `listing_amenity`
--
ALTER TABLE `listing_amenity`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listing_id` (`listing_id`),
  ADD KEY `amenity_id` (`amenity_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`),
  ADD KEY `parent_message_id` (`parent_message_id`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payment_id`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`photo_id`),
  ADD KEY `listing_id` (`listing_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`rating_id`),
  ADD KEY `from_user_id` (`from_user_id`),
  ADD KEY `to_user_id` (`to_user_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `reviewer_id` (`reviewer_id`),
  ADD KEY `reviewee_id` (`reviewee_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD KEY `listing_id` (`listing_id`);

--
-- Indexes for table `roomrule`
--
ALTER TABLE `roomrule`
  ADD PRIMARY KEY (`rule_id`);

--
-- Indexes for table `roomrule_assignment`
--
ALTER TABLE `roomrule_assignment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `rule_id` (`rule_id`);

--
-- Indexes for table `sociallink`
--
ALTER TABLE `sociallink`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `booking_id` (`booking_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `verification`
--
ALTER TABLE `verification`
  ADD PRIMARY KEY (`verification_id`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `address_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `amenity`
--
ALTER TABLE `amenity`
  MODIFY `amenity_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `calendar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `listing`
--
ALTER TABLE `listing`
  MODIFY `listing_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `listing_amenity`
--
ALTER TABLE `listing_amenity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `payment`
--
ALTER TABLE `payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `photo`
--
ALTER TABLE `photo`
  MODIFY `photo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `rating_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `roomrule`
--
ALTER TABLE `roomrule`
  MODIFY `rule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `roomrule_assignment`
--
ALTER TABLE `roomrule_assignment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `sociallink`
--
ALTER TABLE `sociallink`
  MODIFY `link_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `verification`
--
ALTER TABLE `verification`
  MODIFY `verification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`listing_id`) REFERENCES `listing` (`listing_id`);

--
-- Constraints for table `booking`
--
ALTER TABLE `booking`
  ADD CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`guest_id`) REFERENCES `guest` (`guest_id`),
  ADD CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`),
  ADD CONSTRAINT `booking_ibfk_3` FOREIGN KEY (`host_id`) REFERENCES `host` (`host_id`);

--
-- Constraints for table `calendar`
--
ALTER TABLE `calendar`
  ADD CONSTRAINT `calendar_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`);

--
-- Constraints for table `guest`
--
ALTER TABLE `guest`
  ADD CONSTRAINT `guest_ibfk_1` FOREIGN KEY (`guest_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `host`
--
ALTER TABLE `host`
  ADD CONSTRAINT `host_ibfk_1` FOREIGN KEY (`host_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `listing`
--
ALTER TABLE `listing`
  ADD CONSTRAINT `listing_ibfk_1` FOREIGN KEY (`host_id`) REFERENCES `host` (`host_id`);

--
-- Constraints for table `listing_amenity`
--
ALTER TABLE `listing_amenity`
  ADD CONSTRAINT `listing_amenity_ibfk_1` FOREIGN KEY (`listing_id`) REFERENCES `listing` (`listing_id`),
  ADD CONSTRAINT `listing_amenity_ibfk_2` FOREIGN KEY (`amenity_id`) REFERENCES `amenity` (`amenity_id`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `message_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `message_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `message_ibfk_3` FOREIGN KEY (`parent_message_id`) REFERENCES `message` (`message_id`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`);

--
-- Constraints for table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `photo_ibfk_1` FOREIGN KEY (`listing_id`) REFERENCES `listing` (`listing_id`);

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`reviewer_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `review_ibfk_3` FOREIGN KEY (`reviewee_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`listing_id`) REFERENCES `listing` (`listing_id`);

--
-- Constraints for table `roomrule_assignment`
--
ALTER TABLE `roomrule_assignment`
  ADD CONSTRAINT `roomrule_assignment_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`),
  ADD CONSTRAINT `roomrule_assignment_ibfk_2` FOREIGN KEY (`rule_id`) REFERENCES `roomrule` (`rule_id`);

--
-- Constraints for table `sociallink`
--
ALTER TABLE `sociallink`
  ADD CONSTRAINT `sociallink_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  ADD CONSTRAINT `transaction_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);

--
-- Constraints for table `verification`
--
ALTER TABLE `verification`
  ADD CONSTRAINT `verification_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
