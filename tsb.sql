-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2024 at 09:49 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tsb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `EmailId` varchar(250) NOT NULL,
  `MobileNumber` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`, `Name`, `EmailId`, `MobileNumber`) VALUES
(2, 'admin', '0192023a7bbd73250516f069df18b500', '2024-01-10 11:18:49', 'Ishan', 'ishan@gmail.com', 761234564);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `vehicle` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`, `vehicle`) VALUES
(14, 4, 'minushanimsara37@gmail.com', '2024-08-29', '2024-08-31', NULL, '2024-09-12 17:28:36', 2, 'a', '2024-10-08 02:42:34', NULL),
(15, 4, 'minushanimsara37@gmail.com', '2024-08-29', '2024-08-31', NULL, '2024-09-12 17:29:24', 1, NULL, '2024-10-08 02:40:55', NULL),
(16, 16, 'ishan@gmail.com', '2024-10-11', NULL, 'Awesome', '2024-10-07 20:51:37', 2, 'u', '2024-10-07 21:05:36', NULL),
(17, 16, 'ishan@gmail.com', '2024-10-11', NULL, 'Awesome', '2024-10-07 20:52:09', 1, NULL, '2024-10-07 21:12:57', NULL),
(18, 16, 'ishan@gmail.com', '2024-08-07', NULL, 'Awsome', '2024-10-08 03:56:06', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL,
  `verificationToken` varchar(255) NOT NULL,
  `isVerified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(16, NULL, NULL, NULL, '2024-10-01 15:07:21', NULL, NULL),
(17, NULL, NULL, NULL, '2024-10-07 20:35:30', NULL, NULL),
(18, 'ishan@gmail.com', 'Other', 'Stay updated with our latest offers by following us on social media. We\'ll be posting reminders and engaging content about our Happy Hour, so you never miss out on a great deal.', '2024-10-07 21:19:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '																																																												<p align=\"justify\"><span style=\"font-weight: bold;\"><font size=\"2\">&nbsp;</font><span style=\"font-size: large; font-family: georgia;\">(1) ACCEPTANCE OF TERMS</span></span></p><p align=\"justify\"><span style=\"font-size: large; font-family: georgia;\">Welcome to The Safari Beyond. By accessing or using our website, mobile application, or any related services (collectively, the \"Services\"), you acknowledge that you have read, understood, and agree to be bound by the following terms and conditions (the \"Terms\"). If you do not agree to all of these Terms, you should not use or access our Services.</span></p><p align=\"justify\"><span style=\"font-size: large; font-family: georgia;\">These Terms apply to all visitors, users, and others who access or use the Services. In addition to the Terms, your use of the Services is also governed by our Privacy Policy, which describes how we collect, use, and disclose your personal information.<br></span></p><p align=\"justify\"><span style=\"font-size: large; font-family: georgia;\"><br></span></p><p align=\"justify\"><span style=\"font-size: large; font-family: georgia;\"><span style=\"font-weight: bold;\">(2) Changes to Terms</span><br></span></p><p align=\"justify\"><span style=\"font-size: large; font-family: georgia;\">The Safari Beyond reserves the right to modify or update these Terms at any time, and such changes will be effective upon posting on the website. It is your responsibility to review the Terms periodically for any updates. Your continued use of the Services following the posting of changes constitutes your acceptance of such changes.</span></p><p align=\"justify\"><span style=\"font-size: large; font-family: georgia;\"><br></span></p><p align=\"justify\"><span style=\"font-size: large; font-family: georgia;\"><span style=\"font-weight: bold;\">(3) Eligibility</span><br></span></p><p align=\"justify\"><span style=\"font-size: large; font-family: georgia;\">By using the Services, you affirm that you are at least 18 years of age and capable of forming a binding contract with The Safari Beyond. If you are accessing the Services on behalf of an organization or company, you represent that you have the authority to bind that entity to these Terms.</span></p><p align=\"justify\"><span style=\"font-size: large; font-family: georgia;\"><br></span></p><p align=\"justify\"><span style=\"font-size: large; font-family: georgia;\"><span style=\"font-weight: bold;\">(4) User Responsibilities</span><br></span></p><p align=\"justify\"><span style=\"font-size: large; font-family: georgia;\">As a user of our Services, you agree to:</span></p><p align=\"justify\"><span style=\"font-size: large; font-family: georgia;\">Provide accurate and complete information when creating an account or making a booking.<br></span></p><p align=\"justify\"><span style=\"font-size: large; font-family: georgia;\">Not engage in any fraudulent, illegal, or harmful activity through our Services.</span></p><p align=\"justify\"><span style=\"font-size: large; font-family: georgia;\">Comply with all applicable laws and regulations when using our website and booking services.</span></p><p align=\"justify\"><span style=\"font-size: large; font-family: georgia;\">Not use automated systems (such as bots) to access the Services without permission.</span></p><p align=\"justify\"><span style=\"font-size: large; font-family: georgia;\"><br></span></p><p align=\"justify\"><span style=\"font-weight: bold; font-size: large; font-family: georgia;\">(5) Termination of Use</span></p><p align=\"justify\"><span style=\"font-size: large; font-family: georgia;\">The Safari Beyond reserves the right to suspend or terminate your access to the Services at any time, without notice, if you violate these Terms or engage in activities that may harm the company or other users.</span></p><p align=\"justify\"><span style=\"font-size: large; font-family: georgia;\"><br></span></p><p align=\"justify\"><span style=\"font-size: large; font-family: georgia;\"><span style=\"font-weight: bold;\">(6) Acceptance of Vehicles and Services</span><br></span></p><p align=\"justify\"><span style=\"font-size: large; font-family: georgia;\">By booking a vehicle through The Safari Beyond, you agree to the specific terms outlined in the vehicle booking agreement, including any cancellation policies, damage fees, and insurance coverage details. The terms of the vehicle booking agreement will be presented to you prior to the completion of your booking.</span></p><p align=\"justify\"><span style=\"font-size: large; font-family: georgia;\"><br></span></p><p align=\"justify\"><span style=\"font-size: large; font-family: georgia;\">Contact Information.</span></p><p align=\"justify\"></p><p align=\"justify\"><span style=\"font-size: large; font-family: georgia;\">If you have any questions or concerns regarding these Terms, please contact us at [thesafaribeyond@gmail.com /&nbsp;</span><span style=\"background-color: rgb(31, 31, 31); color: rgb(204, 204, 204); font-family: Consolas, &quot;Courier New&quot;, monospace; font-size: 14px; white-space: pre;\">077 497 8330</span><span style=\"font-family: georgia; font-size: large;\">&nbsp;].</span></p><p align=\"justify\"><span style=\"font-size: small;\"><br></span></p>\r\n										\r\n										\r\n										\r\n										\r\n										\r\n										'),
(2, 'privacy', '																														<h3><strong style=\"color: rgb(51, 51, 51); font-size: large; font-family: georgia;\">Effective Date: [Insert Date]</strong><br></h3><p><span style=\"font-size: large; font-family: georgia;\">At <em>The Safari Beyond</em>, we are committed to protecting your privacy and ensuring the security of your personal information. This Privacy Policy explains how we collect, use, disclose, and safeguard your information when you visit our website or use our services. By accessing or using our services, you agree to this Privacy Policy.</span></p><h4><span style=\"font-size: large; font-family: georgia;\">1. Information We Collect</span></h4><p><span style=\"font-size: large; font-family: georgia;\">We may collect the following types of information:</span></p><p><span style=\"font-size: large; font-family: georgia;\"><strong>a. Personal Information</strong><br>When you make a booking, create an account, or contact us, we may collect personal information such as:</span></p><ul><li><span style=\"font-size: large; font-family: georgia;\">Name</span></li><li><span style=\"font-size: large; font-family: georgia;\">Email address</span></li><li><span style=\"font-size: large; font-family: georgia;\">Phone number</span></li><li><span style=\"font-size: large; font-family: georgia;\">Billing address</span></li><li><span style=\"font-size: large; font-family: georgia;\">Payment information (such as credit card details)</span></li></ul><p><span style=\"font-size: large; font-family: georgia;\"><strong>b. Non-Personal Information</strong><br>We may also collect non-personal information about your interaction with our website, including:</span></p><ul><li><span style=\"font-size: large; font-family: georgia;\">IP address</span></li><li><span style=\"font-size: large; font-family: georgia;\">Browser type</span></li><li><span style=\"font-size: large; font-family: georgia;\">Device type</span></li><li><span style=\"font-size: large; font-family: georgia;\">Pages visited</span></li><li><span style=\"font-size: large; font-family: georgia;\">Time spent on the website</span></li><li><span style=\"font-size: large; font-family: georgia;\">Cookies and other tracking technologies</span></li></ul><h4><span style=\"font-size: large; font-family: georgia;\">2. How We Use Your Information</span></h4><p><span style=\"font-size: large; font-family: georgia;\">We use the information we collect for the following purposes:</span></p><ul><li><span style=\"font-size: large; font-family: georgia;\"><strong>To process bookings</strong>: To manage your bookings and payments for vehicles.</span></li><li><span style=\"font-size: large; font-family: georgia;\"><strong>To communicate with you</strong>: To send you confirmations, updates, or respond to inquiries.</span></li><li><span style=\"font-size: large; font-family: georgia;\"><strong>To improve our services</strong>: To analyze how users interact with our website to enhance user experience and functionality.</span></li><li><span style=\"font-size: large; font-family: georgia;\"><strong>To send promotional materials</strong>: With your consent, we may send you offers, promotions, or updates on our services.</span></li><li><span style=\"font-size: large; font-family: georgia;\"><strong>To comply with legal obligations</strong>: We may use your data as required by applicable laws and regulations.</span></li></ul><h4><span style=\"font-size: large; font-family: georgia;\">3. How We Protect Your Information</span></h4><p><span style=\"font-size: large; font-family: georgia;\">We implement appropriate security measures to safeguard your personal information from unauthorized access, disclosure, or alteration. This includes encryption, secure servers, and access controls.</span></p><p><span style=\"font-size: large; font-family: georgia;\">However, no data transmission over the internet or electronic storage system is guaranteed to be 100% secure, and we cannot ensure or warrant the security of any information you transmit to us.</span></p><h4><span style=\"font-size: large; font-family: georgia;\">4. Sharing Your Information</span></h4><p><span style=\"font-size: large; font-family: georgia;\">We do not sell, trade, or rent your personal information to third parties. However, we may share your information with trusted third parties who assist us in providing our services, including:</span></p><ul><li><span style=\"font-size: large; font-family: georgia;\"><strong>Payment processors</strong>: To process your payments securely.</span></li><li><span style=\"font-size: large; font-family: georgia;\"><strong>Service providers</strong>: To help us operate and improve our website and services.</span></li><li><span style=\"font-size: large; font-family: georgia;\"><strong>Legal and regulatory authorities</strong>: When required by law or to protect our rights or the safety of our users.</span></li></ul><h4><span style=\"font-size: large; font-family: georgia;\">5. Cookies and Tracking Technologies</span></h4><p><span style=\"font-size: large; font-family: georgia;\">Our website uses cookies to enhance user experience and gather information about site traffic. Cookies are small files stored on your device that help us remember your preferences and recognize you during future visits.</span></p><p><span style=\"font-size: large; font-family: georgia;\">You can control cookies through your browser settings, but disabling them may affect your experience on our website.</span></p><h4><span style=\"font-size: large; font-family: georgia;\">6. Third-Party Links</span></h4><p><span style=\"font-size: large; font-family: georgia;\">Our website may contain links to third-party websites. We are not responsible for the privacy practices or content of those websites. We encourage you to review the privacy policies of any third-party sites you visit.</span></p><h4><span style=\"font-size: large; font-family: georgia;\">7. Your Rights</span></h4><p><span style=\"font-size: large; font-family: georgia;\">Depending on your location, you may have certain rights regarding your personal information, including:</span></p><ul><li><span style=\"font-size: large; font-family: georgia;\">The right to access your personal data.</span></li><li><span style=\"font-size: large; font-family: georgia;\">The right to correct inaccurate information.</span></li><li><span style=\"font-size: large; font-family: georgia;\">The right to request deletion of your data.</span></li><li><span style=\"font-size: large; font-family: georgia;\">The right to object to or restrict certain processing activities.</span></li></ul><p><span style=\"font-size: large; font-family: georgia;\">To exercise any of these rights, please contact us at [insert contact information].</span></p><h4><span style=\"font-size: large; font-family: georgia;\">8. Children\'s Privacy</span></h4><p><span style=\"font-size: large; font-family: georgia;\">Our services are not intended for individuals under the age of 18. We do not knowingly collect personal information from children. If you believe we have collected information from a child, please contact us, and we will promptly delete the information.</span></p><h4><span style=\"font-size: large; font-family: georgia;\">9. Changes to This Privacy Policy</span></h4><p><span style=\"font-size: large; font-family: georgia;\">We may update this Privacy Policy from time to time. Any changes will be posted on this page, and the effective date will be updated. We encourage you to review this page periodically for any updates.</span></p><h4><span style=\"font-size: large; font-family: georgia;\">10. Contact Us</span></h4><p><span style=\"font-size: large; font-family: georgia;\">If you have any questions about this Privacy Policy or how we handle your personal information, please contact us at:</span></p><p><span style=\"font-size: large; font-family: georgia;\"><strong style=\"\">The Safari Beyond</strong><br>Email: [thesafaribeyond@gmail.com]<br>Phone: [</span><span style=\"background-color: rgb(31, 31, 31); color: rgb(204, 204, 204); font-family: Consolas, &quot;Courier New&quot;, monospace; font-size: 14px; white-space: pre;\">077 497 8330</span><span style=\"font-family: georgia; font-size: large;\">]</span></p>\r\n										\r\n										\r\n										'),
(3, 'aboutus', '																				<div style=\"text-align: center;\"><span style=\"color: rgb(0, 0, 0); font-size: large; font-family: georgia;\">Welcome to The Safari Beyond, where your ultimate adventure begins! We specialize in offering unforgettable safari experiences with the convenience of online vehicle booking. Our fleet features a selection of rugged, top-of-the-line 4x4 vehicles from India and Japan, ensuring you enjoy a comfortable and thrilling journey through the wild.</span></div><div style=\"text-align: center;\"><span style=\"color: rgb(0, 0, 0); font-size: large; font-family: georgia;\"><br></span></div><div style=\"text-align: center;\"><span style=\"color: rgb(0, 0, 0); font-size: large; font-family: georgia;\">Whether you\'re navigating the rugged landscapes of a national park or cruising through untamed terrains, our Indian and Japanese 4x4s are built to handle it all. At The Safari Beyond, we combine safety, reliability, and an authentic safari experience, making your adventure truly exceptional.</span></div><div style=\"text-align: center;\"><span style=\"color: rgb(0, 0, 0); font-size: large; font-family: georgia;\"><br></span></div><div style=\"text-align: center;\"><span style=\"color: rgb(0, 0, 0); font-size: large; font-family: georgia;\">Join us for an unforgettable safari, and let The Safari Beyond take you deeper into the wild!</span></div>\r\n										\r\n										'),
(11, 'contact', '																																								<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address = Safari Beyond, Minton Ln, Colombo 07</span>\r\n										<div><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Contact =&nbsp;</span><span style=\"background-color: rgb(31, 31, 31); color: rgb(204, 204, 204); font-family: Consolas, &quot;Courier New&quot;, monospace; font-size: 14px; white-space: pre;\">077 497 8330</span></div>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `ForestType` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`, `ForestType`) VALUES
(16, '3 Days Safari', 'Family Package', 'Kumana Safari', 200, 'Free Pickup / Free Wifi / Beverages ', 'The best package of us.Kumana National Park in Sri Lanka is renowned for its avifauna, particularly its large flocks of migratory waterfowl and wading birds.   ', '800x750-3380808.jpg', '2024-10-01 12:30:48', '2024-10-01 12:56:21', ''),
(17, '2 Days Safari', 'Family Package', 'Yala Safari', 180, 'Free Pickup / Free Wifi / CoolBox', 'Yala Safari Holidays is a specialist Yala Safari service provider in Yala National Park. We offer Jeep Safari in Yala National Park and Tailor-made Yala Safari Tours in Yala National Park.', 'download999.jpeg', '2024-10-01 12:46:10', '2024-10-01 12:52:22', ''),
(18, '4 Days Safari', 'Family Package', 'Lunugamwehera Safari', 220, 'Free Pickup / Free Wifi / CoolBox / Beverages', 'Lunugamvehera National Park in Sri Lanka was declared in 1995, with the intention of protecting the catchment area of the Lunugamvehera reservoir and wildlife of the area. The national park is an important habitat for water birds and elephants.', 'safari-in-Lunugamvehera-national-park-08999999.jpg', '2024-10-01 12:51:51', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `verificationToken` varchar(255) DEFAULT NULL,
  `isVerified` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`, `verificationToken`, `isVerified`) VALUES
(12, 'minu', '2023103611', 'minushanimsara37@gmail.com', 'c33367701511b4f6020ec61ded352059', '2024-09-05 18:21:30', NULL, NULL, 0),
(13, 'Thisul Kehan', '0701764827', 'thisulkehan@gmail.com', 'df780a97b7d6a8f779f14728bccd3c4c', '2024-10-01 14:34:54', NULL, NULL, 0),
(14, 'minusha', '0701449952', 'minushanimsara@gmail.com', '5aefb7a8cd5aaecc5817a46b62e57a65', '2024-10-01 15:07:21', NULL, NULL, 0),
(15, 'Ishan', '0761233456', 'ishan@gmail.com', 'dc0fa7df3d07904a09288bd2d2bb5f40', '2024-10-07 20:35:30', '2024-10-07 20:47:50', NULL, 0),
(16, NULL, NULL, NULL, 'd41d8cd98f00b204e9800998ecf8427e', '2024-10-07 21:19:54', NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `verification_code` text NOT NULL,
  `email-verified-at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
