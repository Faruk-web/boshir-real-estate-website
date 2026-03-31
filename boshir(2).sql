-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2026 at 12:41 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boshir`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sub_details` text DEFAULT NULL,
  `details` longtext DEFAULT NULL,
  `privacy` longtext DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `name`, `sub_details`, `details`, `privacy`, `image`, `status`, `created_at`, `updated_at`) VALUES
(28, 'Your Trusted Partner in Premium Imperial Estate & Holdings Ltd.', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 24px; color: rgb(129, 128, 128); font-family: &quot;Open Sans&quot;, sans-serviceif; text-align: justify;\">Experience premium living near Uttara 3rd Phase with <em data-start=\"95\" data-end=\"113\">Imperial Skyline</em>, a thoughtfully designed residential project in Ashulia Model Town. Combining modern architecture, green spaces, and a smart lifestyle, this development is ideal for families seeking comfort, security, and convenience.</p>', '<p data-start=\"148\" data-end=\"191\"><strong data-start=\"148\" data-end=\"189\">About Imperial Estate &amp; Holdings Ltd.</strong></p><p data-start=\"193\" data-end=\"545\">Imperial Estate &amp; Holdings Ltd. is a premier real estate and property development company, dedicated to redefining modern living and commercial spaces in Bangladesh. With years of experience and a proven track record, we specialize in creating projects that blend contemporary architecture, cutting-edge design, and sustainable development practices.</p><p data-start=\"547\" data-end=\"909\">Our mission is to deliver exceptional value to our clients by providing spaces that are not only functional and aesthetically striking but also built to the highest international standards. From luxury residential communities to high-end commercial complexes, each project is meticulously planned and executed with attention to detail, innovation, and quality.</p>', '<p data-start=\"148\" data-end=\"191\"><strong data-start=\"148\" data-end=\"189\">About Imperial Estate &amp; Holdings Ltd.</strong></p><p data-start=\"193\" data-end=\"545\">Imperial Estate &amp; Holdings Ltd. is a premier real estate and property development company, dedicated to redefining modern living and commercial spaces in Bangladesh. With years of experience and a proven track record, we specialize in creating projects that blend contemporary architecture, cutting-edge design, and sustainable development practices.</p><p data-start=\"547\" data-end=\"909\">Our mission is to deliver exceptional value to our clients by providing spaces that are not only functional and aesthetically striking but also built to the highest international standards. From luxury residential communities to high-end commercial complexes, each project is meticulously planned and executed with attention to detail, innovation, and quality.</p>', 'upload/about/1860993813297628.png', 2, '2025-02-04 11:02:35', '2026-03-29 11:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `boards`
--

CREATE TABLE `boards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  `main_image` varchar(150) DEFAULT NULL,
  `privacy` longtext DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `boards`
--

INSERT INTO `boards` (`id`, `name`, `image`, `main_image`, `privacy`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Property Buying & Selling', 'upload/service/1859705525155354.png', 'upload/service/1860975222817306.png', '<p>We assist clients in buying and selling residential and commercial properties with complete transparency. Our team ensures fair market pricing, proper documentation, and a smooth transaction process.</p>', 2, '2025-02-05 09:11:59', '2026-03-29 06:04:33'),
(2, 'Real Estate Investment Consulting', 'upload/service/1859705636091189.png', 'upload/service/1860975237541597.png', '<p>Our experts provide strategic guidance for real estate investments. We analyze market trends, recommend profitable locations, and help clients make informed investment decisions for long-term growth.</p>', 2, '2025-02-05 09:12:55', '2026-03-29 06:04:47'),
(3, 'Property Development', 'upload/service/1859705716024082.png', 'upload/service/1860975247306923.png', '<p>We specialize in developing modern residential and commercial projects with quality construction, smart planning, and contemporary architectural design.</p>', 2, '2025-02-05 09:13:39', '2026-03-29 06:04:57'),
(4, 'Property Management', 'upload/service/1859706590677884.png', 'upload/service/1860975259200316.png', '<p>Representation in numerous criminal matters, including detailed invest. Assistance with bail procedures eval.</p><p class=\"\">Real Estate Law is a complex area of law that governs the formation, organization, and operation of corporations. It encompasses a wide range of legal issues, including business formation, governance, financing, mergers and acquisitions, corporate compliance, intellectual property, contracts, and litigation. Businesses must be aware of the legal requirements and regulations that apply to their specific industry and ensure that they are in compliance with all applicable laws</p><p> </p><p class=\"mb-50\">Understanding the legal requirements and regulations that apply to your corporation is essential for ensuring its success and protecting your interests. Consulting with a corporate attorney can provide you with the guidance and expertise you need to navigate the complexities of corporate law. economic impacts of its activities. Many corporations are increasingly focused on CSR as a way to build.</p>', 2, '2025-02-05 09:14:24', '2026-03-29 06:05:08'),
(5, 'Land & Plot Sales', 'upload/service/1859705794400949.png', 'upload/service/1860975270460395.png', '<p>We offer verified land and plot sales in promising locations. Our team ensures proper legal verification and helps clients choose the best property for future value.</p>', 2, '2025-02-05 09:15:06', '2026-03-29 06:05:19'),
(6, 'Legal & Documentation Support', 'upload/service/1859706576481603.png', 'upload/service/1860975281959575.png', '<p>We provide professional assistance with property registration, ownership verification, agreements, and other legal documentation to ensure a safe and hassle-free property transaction.</p>', 2, '2025-02-05 09:15:45', '2026-03-29 06:05:30');

-- --------------------------------------------------------

--
-- Table structure for table `businesses`
--

CREATE TABLE `businesses` (
  `id` int(10) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `image` varchar(70) DEFAULT NULL,
  `s_image` varchar(70) DEFAULT NULL,
  `title` varchar(70) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `businesses`
--

INSERT INTO `businesses` (`id`, `name`, `details`, `image`, `s_image`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Why You Should Trust Us? Learn More About Us!', '<p class=\"mb-4\" style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; margin-bottom: 1.5rem !important;\">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo magna dolore erat amet</p><div class=\"row g-4\" style=\"--bs-gutter-x: 1.5rem; --bs-gutter-y: 1.5rem; margin-top: -24px; margin-right: -12px; margin-left: -12px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"><div class=\"col-12\" style=\"width: 636px; padding-right: 12px; padding-left: 12px; margin-top: 24px;\"><div class=\"d-flex align-items-start\"><img class=\"flex-shrink-0\" src=\"http://127.0.0.1:8000/front/img/icons/icon-2.png\" alt=\"Icon\"><div class=\"ms-4\" style=\"margin-left: 1.5rem !important;\"><h3 style=\"margin-top: 0px; margin-bottom: 0.5rem; font-family: Teko, sans-serif; line-height: 1.2; color: rgb(37, 37, 37); font-size: 1.75rem; font-weight: 500 !important;\">Design Approach</h3><p class=\"mb-0\">Erat ipsum justo amet duo et elitr dolor, est duo duo eos lorem sed diam stet diam sed stet.</p></div></div></div><div class=\"col-12\" style=\"width: 636px; padding-right: 12px; padding-left: 12px; margin-top: 24px;\"><div class=\"d-flex align-items-start\"><img class=\"flex-shrink-0\" src=\"http://127.0.0.1:8000/front/img/icons/icon-3.png\" alt=\"Icon\"><div class=\"ms-4\" style=\"margin-left: 1.5rem !important;\"><h3 style=\"margin-top: 0px; margin-bottom: 0.5rem; font-family: Teko, sans-serif; line-height: 1.2; color: rgb(37, 37, 37); font-size: 1.75rem; font-weight: 500 !important;\">Innovative Solutions</h3><p class=\"mb-0\">Erat ipsum justo amet duo et elitr dolor, est duo duo eos lorem sed diam stet diam sed stet.</p></div></div></div><div class=\"col-12\" style=\"width: 636px; padding-right: 12px; padding-left: 12px; margin-top: 24px;\"><div class=\"d-flex align-items-start\"><img class=\"flex-shrink-0\" src=\"http://127.0.0.1:8000/front/img/icons/icon-4.png\" alt=\"Icon\"><div class=\"ms-4\" style=\"margin-left: 1.5rem !important;\"><h3 style=\"margin-top: 0px; margin-bottom: 0.5rem; font-family: Teko, sans-serif; line-height: 1.2; color: rgb(37, 37, 37); font-size: 1.75rem; font-weight: 500 !important;\">Project Management</h3><p class=\"mb-0\">Erat ipsum justo amet duo et elitr dolor, est duo duo eos lorem sed diam stet diam sed stet.</p></div></div></div></div>', 'upload/business/1860995069159990.jpg', 'upload/business/1860995069234749.jpg', 'Why Choose Us!', NULL, '2026-03-29 11:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `slug`, `description`, `parent_id`, `status`, `created_at`, `updated_at`) VALUES
(96, 'Home Page', 'home-page', NULL, 0, 2, '2025-02-03 10:02:36', '2025-02-03 10:02:36'),
(97, 'About Page', 'about-page', NULL, 0, 2, '2025-02-03 10:03:03', '2025-02-03 10:03:03'),
(98, 'Projects page', 'projects-page', NULL, 0, 2, '2025-02-03 10:03:24', '2026-03-16 08:28:21'),
(99, 'Client Page', 'client-page', NULL, 0, 2, '2025-02-03 10:03:51', '2025-02-03 10:03:51'),
(100, 'Innovative Works', 'innovative-works', NULL, 0, 2, '2025-02-03 10:04:08', '2026-03-16 08:29:33'),
(101, 'Support Team', 'support-team', NULL, 0, 2, '2025-02-03 10:04:23', '2025-02-03 10:04:23'),
(102, 'Blog Page', 'blog-page', NULL, 0, 2, '2025-02-03 10:04:38', '2025-02-03 10:04:38'),
(103, 'Gallery Page', 'gallery-page', NULL, 0, 2, '2025-02-03 10:05:01', '2025-02-03 10:05:01'),
(104, 'Contact Page', 'contact-page', NULL, 0, 2, '2025-02-03 10:05:15', '2025-02-03 10:05:15'),
(105, 'Ongoing Projects', 'ongoing-projects', 'Currently progressing with excellence and precision, delivering quality at every stage of development.', 96, 2, '2025-02-11 10:02:40', '2026-03-27 14:44:34'),
(106, 'Upcoming Projects', 'upcoming-projects', 'An upcoming project designed with modern architecture and premium features, coming soon to redefine your lifestyle.', 96, 2, '2025-02-11 10:03:06', '2026-03-27 14:45:18'),
(107, 'Completed Projects', 'completed-projects', 'Delivered with precision and care, our completed project reflects superior standards and lasting value.', 96, 2, '2025-02-11 10:03:29', '2026-03-27 14:46:08'),
(108, 'Our Services', 'our-services', 'We Focused On Modern Architecture And Interior Design', 96, 2, '2025-02-11 10:03:48', '2026-03-27 15:50:48'),
(109, 'Our Projects', 'our-projects', 'Visit Our Latest Projects And Our Innovative Works', 96, 2, '2025-02-11 10:04:12', '2026-03-27 15:51:24'),
(110, 'Discover Our Popular Project', 'discover-our-popular-project', 'Premium Living & Investment Opportunities', 96, 2, '2025-02-11 10:05:19', '2026-03-31 08:15:41'),
(111, 'Appointment', 'appointment', 'Make An Appointment To Start Your Dream Project', 96, 2, '2025-02-11 10:05:39', '2026-03-27 15:54:02'),
(112, 'About Us', 'about-us', 'Business Information', 97, 2, '2025-02-11 10:29:45', '2026-03-27 15:09:52'),
(113, '25', '25', 'Years Working Experience', 97, 2, '2025-02-11 10:30:17', '2026-03-27 15:16:16'),
(114, 'Team Members', 'team-members', 'We Are Creative Architecture Team For Your Dream Home', 97, 2, '2025-02-11 10:31:08', '2026-03-27 15:17:07'),
(118, 'Ongoing Projects', 'ongoing-projects', 'Modern ongoing project with prime location & quality design.', 98, 2, '2025-02-11 10:34:16', '2026-03-27 16:48:58'),
(119, 'Upcoming Projects', 'upcoming-projects', 'Modern upcoming project designed for future living.', 98, 2, '2025-02-11 10:34:33', '2026-03-27 16:50:54'),
(120, 'Our Clients', 'our-clients', 'All Clients', 99, 2, '2025-02-11 11:09:11', '2026-03-27 15:33:47'),
(121, 'Testimonial Our Clients', 'testimonial-our-clients', 'Thousands Of Customers Who Trust Us And Our Services Meet Our Happy Clients', 99, 2, '2025-02-11 11:09:32', '2026-03-27 15:34:28'),
(122, 'Our Advocates', 'our-advocates', 'Our Advocates', 100, 2, '2025-02-11 11:15:07', '2025-02-11 11:15:07'),
(123, 'Advocate', 'advocate', 'Meet Our Experienced Attorneys', 100, 2, '2025-02-11 11:15:30', '2025-02-11 11:15:30'),
(124, 'Service Page', 'service-page', NULL, 0, 2, '2025-02-12 07:00:05', '2025-02-12 07:00:05'),
(125, 'Our Services', 'our-services', 'All Services', 124, 2, '2025-02-12 07:00:25', '2026-03-27 15:20:19'),
(126, 'Ongoing Projects', 'ongoing-projects', 'Currently progressing with excellence and precision, delivering quality at every stage of development.', 124, 2, '2025-02-12 07:01:01', '2026-03-27 15:21:21'),
(127, 'Blogs', 'blogs', 'Real Estate Insights & Property Guides', 102, 2, '2025-02-12 07:02:59', '2026-03-29 05:53:03'),
(129, 'Projects Gallery', 'projects-gallery', 'All Gallery', 103, 2, '2025-02-12 07:05:42', '2026-03-27 16:58:22'),
(130, 'Projects Gallery', 'projects-gallery', 'We Are Creative Architecture View For Your Dream Home', 103, 2, '2025-02-12 07:06:09', '2026-03-27 15:30:55'),
(131, 'Support Teams', 'support-teams', 'All Support Teams', 101, 2, '2025-02-12 07:06:58', '2026-03-27 15:32:09'),
(132, 'Team Members', 'team-members', 'We Are Creative Architecture Team For Your Dream Home', 101, 2, '2025-02-12 07:07:23', '2026-03-27 15:32:45'),
(133, 'Contact Us', 'contact-us', 'If You Have Any Query', 104, 2, '2025-02-16 09:30:44', '2026-03-27 15:36:13'),
(134, 'Contact Us', 'contact-us', 'If You Have Any Query, Please Feel Free Contact Us', 104, 2, '2025-02-16 09:31:09', '2026-03-27 15:37:03'),
(136, 'Service Details', 'service-details', NULL, 0, 2, '2025-02-16 09:57:40', '2025-02-16 09:57:40'),
(137, 'Advocate Details', 'advocate-details', NULL, 0, 2, '2025-02-16 09:58:14', '2025-02-16 09:58:14'),
(138, 'Team Deatails', 'team-deatails', NULL, 0, 2, '2025-02-16 09:58:40', '2025-02-16 09:58:40'),
(139, 'Project Details', 'project-details', NULL, 0, 2, '2025-02-16 09:59:15', '2026-03-29 08:11:43'),
(140, 'Practice Details', 'practice-details', 'Practice Details', 139, 2, '2025-02-16 10:16:07', '2025-02-16 10:16:07'),
(142, 'Client Details', 'client-details', NULL, 0, 2, '2025-02-16 10:17:09', '2025-02-16 10:17:09'),
(143, 'Client Details', 'client-details', 'Client Details', 142, 2, '2025-02-16 10:17:25', '2025-02-16 10:17:25'),
(144, 'Logo', 'logo', 'Chosen by millions around the globe', 142, 2, '2025-02-16 10:17:42', '2025-02-16 10:17:42'),
(145, 'Attorney Details', 'attorney-details', 'Attorney Details', 137, 2, '2025-02-16 10:18:00', '2025-02-16 10:18:00'),
(146, 'Logo', 'logo', 'Chosen by millions around the globe', 137, 2, '2025-02-16 10:18:35', '2025-02-16 10:18:35'),
(147, 'Service Details', 'service-details', 'Service Details', 136, 2, '2025-02-16 10:19:07', '2025-02-16 10:19:07'),
(149, 'Support Team Details', 'support-team-details', 'Support Team Details', 138, 2, '2025-02-16 10:19:56', '2025-02-16 10:20:43'),
(151, 'Blog Details', 'blog-details', 'Blog Details', 0, 2, '2025-02-16 10:22:10', '2025-02-16 10:22:10'),
(153, 'Blog Details', 'blog-details', 'Blog Details', 151, 2, '2025-02-16 10:44:09', '2025-02-16 10:44:09'),
(157, 'Need Any Help?', 'need-any-help', 'Need Any Help, Call Us 24/7 For Support', 137, 2, '2025-02-16 11:22:48', '2025-02-16 11:22:48'),
(158, 'Need Any Help?', 'need-any-help', 'Need Any Help, Call Us 24/7 For Support', 142, 2, '2025-02-16 11:24:25', '2025-02-16 11:24:25'),
(160, 'Upcoming Projects', 'upcoming-projects', 'An upcoming project designed with modern architecture and premium features, coming soon to redefine your lifestyle.', 124, 2, '2026-03-27 15:22:09', '2026-03-27 15:22:09'),
(161, 'Completed Projects', 'completed-projects', 'Delivered with precision and care, our completed project reflects superior standards and lasting value.', 124, 2, '2026-03-27 15:23:08', '2026-03-27 15:23:08'),
(162, 'Our Services', 'our-services', 'We Focused On Modern Architecture And Interior Design', 124, 2, '2026-03-27 15:24:00', '2026-03-27 15:24:00'),
(163, 'Testimonial', 'testimonial', 'Thousands Of Customers Who Trust Us And Our Services', 124, 2, '2026-03-27 15:24:30', '2026-03-27 15:24:30'),
(164, 'Completed Projects', 'completed-projects', 'Finished project built with modern design and reliability.', 98, 2, '2026-03-27 15:29:06', '2026-03-27 16:51:15'),
(166, 'Choose What Suits You Best', 'choose-what-suits-you-best', 'Investment Opportunities', 96, 2, '2026-03-31 08:18:38', '2026-03-31 08:21:00');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  `status` int(5) DEFAULT NULL,
  `privacy` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `title`, `image`, `status`, `privacy`, `created_at`, `updated_at`) VALUES
(1, 'Omar Faruk', 'Need to update', 'upload/client/1823119425149529.jpg', 2, '<p>\"I was struggling with family law for months before I found abc. They \nnot only provided me with the solution I needed, but they also educated \nme on how to prevent the issue from happening again. Their team is \nincredibly knowledgeable and patient, and they always go the extra mile \nto ensure customer satisfaction. I am so grateful for their help and \nwould recommend them to anyone.\"</p>', '2025-02-04 09:42:51', '2025-02-05 07:40:17'),
(2, 'Ariful Islam', 'Designer', 'upload/client/1823119446264347.jpg', 2, '<p>\"I had been facing challenges with family law for months until I \r\ndiscovered abc. They not only resolved my issues effectively but also \r\nguided me on how to avoid similar problems in the future. Their team is \r\nhighly skilled, patient, and always prioritizes customer satisfaction. I\r\n truly appreciate their support okay this is right for it and would \r\nhighly recommend them to others.\"</p>', '2025-02-04 09:43:11', '2025-02-05 07:41:42'),
(3, 'Monks Millar', 'Need to Update', 'upload/client/1823119474540297.jpg', 2, '<p>\"I was struggling with family law for months before I found abc. They \r\nnot only provided me with the solution I needed, but they also educated \r\nme on how to prevent the issue from happening again. Their team is \r\nincredibly knowledgeable and patient, and they always go the extra mile \r\nto ensure customer satisfaction. I am so grateful for their help and \r\nwould recommend them to anyone.\"</p>', '2025-02-04 09:43:38', '2025-02-05 07:42:10'),
(4, 'William Hazelip', 'Need to Update', 'upload/client/1823119517206030.jpg', 2, '<p>\"Navigating family law issues was overwhelming for months until I came \r\nacross abc. They didn’t just solve how to prevent the issue from \r\nhappening again my problem—they empowered me with knowledge to manage \r\nsuch situations better. Their expertise and dedication to client \r\nsatisfaction left okay no problem a lasting impression. I’m forever \r\ngrateful and highly endorse their services.\"</p>', '2025-02-04 09:44:19', '2025-02-05 07:42:27'),
(5, 'Mike Francis', 'Need to Update', 'upload/client/1823119539641521.jpg', 2, '<p>\"Dealing with family law was a long and difficult journey until abc \r\nstepped in. They delivered a comprehensive solution and taught me ways \r\nto avoid recurring issues. The team’s expertise, patience, and \r\ncommitment to excellence are unmatched. I’m beyond thankful and \r\nconfidently recommend them to anyone in need. They not only yes no vry \r\ngd provided me with the solution I needed,\"</p>', '2025-02-04 09:44:40', '2025-02-05 07:42:54'),
(6, 'Sarah Rahman', 'Need to Update', 'upload/client/1823119586913902.jpg', 2, '<p>\"I was struggling with family law for months before I found abc. They \r\nnot only provided me with the solution I needed, but they also educated \r\nme on how to prevent the issue from happening again. Their team is \r\nincredibly knowledgeable and patient, and they always go the extra mile \r\nto ensure customer satisfaction. I am so grateful for their help and \r\nwould recommend them to anyone.\"</p>', '2025-02-04 09:45:25', '2025-02-05 07:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(70) DEFAULT NULL,
  `profession` text DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `datetime` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `profession`, `message`, `datetime`, `created_at`, `updated_at`) VALUES
(14, 'Omar Faruk', '01887645449', 'omarfaruk6780@gmail.com', 'business', 'I am interested', NULL, '2026-03-31 09:01:10', '2026-03-31 09:01:10'),
(15, 'Omar Faruk', '01887645449', 'omarfaruk6780@gmail.com', 'Owner', 'sdasfdsfdg', NULL, '2026-03-31 09:06:13', '2026-03-31 09:06:13');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `imprints`
--

CREATE TABLE `imprints` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `privacy` longtext DEFAULT NULL,
  `condition` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` int(10) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `privacy` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `name`, `privacy`, `created_at`, `updated_at`) VALUES
(7, 'Privacy Policy – Imperial Estate & Holdings Ltd.', '<p data-start=\"245\" data-end=\"279\" style=\"color: rgb(0, 0, 0); font-size: medium;\"><strong data-start=\"245\" data-end=\"264\">Effective Date:</strong> March 28, 2026</p><p data-start=\"281\" data-end=\"565\" style=\"color: rgb(0, 0, 0); font-size: medium;\">Imperial Estate &amp; Holdings Ltd. (“we,” “our,” or “us”) respects your privacy and is committed to protecting your personal information. This Privacy Policy explains how we collect, use, and safeguard the information you provide when visiting our website <a data-start=\"534\" data-end=\"564\" class=\"decorated-link\" rel=\"noopener\" href=\"#\">www.imperialestate.com</a></p><h3 data-section-id=\"hqebrt\" data-start=\"567\" data-end=\"596\" style=\"color: rgb(0, 0, 0);\">1. Information We Collect</h3><p data-start=\"597\" data-end=\"649\" style=\"color: rgb(0, 0, 0); font-size: medium;\">We may collect the following types of information:</p><ul data-start=\"650\" data-end=\"927\" style=\"color: rgb(0, 0, 0); font-size: medium;\"><li data-section-id=\"1oyoge1\" data-start=\"650\" data-end=\"799\">Personal information such as name, email address, phone number, and any other details you voluntarily provide through contact forms or inquiries.</li><li data-section-id=\"15qvpeu\" data-start=\"800\" data-end=\"927\">Non-personal information such as browser type, device information, IP address, and browsing behavior for website analytics.</li></ul><h3 data-section-id=\"15e8r2e\" data-start=\"929\" data-end=\"963\" style=\"color: rgb(0, 0, 0);\">2. How We Use Your Information</h3><p data-start=\"964\" data-end=\"1002\" style=\"color: rgb(0, 0, 0); font-size: medium;\">We use the information collected to:</p><ul data-start=\"1003\" data-end=\"1185\" style=\"color: rgb(0, 0, 0); font-size: medium;\"><li data-section-id=\"g81u0d\" data-start=\"1003\" data-end=\"1059\">Respond to inquiries and provide requested services.</li><li data-section-id=\"ezqccl\" data-start=\"1060\" data-end=\"1115\">Improve our website, services, and user experience.</li><li data-section-id=\"kz4bgh\" data-start=\"1116\" data-end=\"1185\">Send updates, promotions, and relevant information if you opt-in.</li></ul><h3 data-section-id=\"cpvjdr\" data-start=\"1187\" data-end=\"1213\" style=\"color: rgb(0, 0, 0);\">3. Information Sharing</h3><p data-start=\"1214\" data-end=\"1326\" style=\"color: rgb(0, 0, 0); font-size: medium;\">We do not sell, trade, or rent your personal information to third parties. We may share your information only:</p><ul data-start=\"1327\" data-end=\"1472\" style=\"color: rgb(0, 0, 0); font-size: medium;\"><li data-section-id=\"vioeb8\" data-start=\"1327\" data-end=\"1410\">With trusted service providers assisting us in website operations or marketing.</li><li data-section-id=\"yucu2j\" data-start=\"1411\" data-end=\"1472\">When required by law or to protect our rights and safety.</li></ul><h3 data-section-id=\"1eo9taj\" data-start=\"1474\" data-end=\"1488\" style=\"color: rgb(0, 0, 0);\">4. Cookies</h3><p data-start=\"1489\" data-end=\"1720\" style=\"color: rgb(0, 0, 0); font-size: medium;\">Our website may use cookies to enhance your browsing experience. Cookies help us analyze website traffic and improve functionality. You can manage your browser settings to disable cookies, but some features may not work properly.</p><h3 data-section-id=\"z8c54r\" data-start=\"1722\" data-end=\"1742\" style=\"color: rgb(0, 0, 0);\">5. Data Security</h3><p data-start=\"1743\" data-end=\"1973\" style=\"color: rgb(0, 0, 0); font-size: medium;\">We implement reasonable administrative, technical, and physical security measures to protect your information. However, no method of transmission over the Internet is completely secure, and we cannot guarantee absolute security.</p><h3 data-section-id=\"n33aqk\" data-start=\"1975\" data-end=\"1993\" style=\"color: rgb(0, 0, 0);\">6. Your Rights</h3><p data-start=\"1994\" data-end=\"2152\" style=\"color: rgb(0, 0, 0); font-size: medium;\">You have the right to access, correct, or delete your personal information held by us. You may also unsubscribe from promotional communications at any time.</p><h3 data-section-id=\"gvjcrb\" data-start=\"2154\" data-end=\"2183\" style=\"color: rgb(0, 0, 0);\">7. Changes to This Policy</h3><p data-start=\"2184\" data-end=\"2312\" style=\"color: rgb(0, 0, 0); font-size: medium;\">We may update this Privacy Policy from time to time. Any changes will be posted on this page with an updated “Effective Date.”</p><h3 data-section-id=\"1sdc2ty\" data-start=\"2314\" data-end=\"2331\" style=\"color: rgb(0, 0, 0);\">8. Contact Us</h3><p data-start=\"2332\" data-end=\"2566\" style=\"color: rgb(0, 0, 0); font-size: medium;\">For questions or concerns regarding this Privacy Policy, please contact us:<br data-start=\"2407\" data-end=\"2410\"><strong data-start=\"2410\" data-end=\"2445\">Imperial Estate &amp; Holdings Ltd.</strong><br data-start=\"2445\" data-end=\"2448\">Email: <a data-start=\"2455\" data-end=\"2481\" class=\"decorated-link cursor-pointer\" rel=\"noopener\">info@imperialestate.com</a><br data-start=\"2481\" data-end=\"2484\">Phone:&nbsp;+880 1714-008786<br data-start=\"2505\" data-end=\"2508\">Address: Level 03, Sultana Tower, 2 Mirpur Road, Kalabagan, Dhanmondi, Dhaka, Bangladesh, 1205</p>', '2026-03-27 18:59:51', '2026-03-28 07:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(7, '2022_10_25_092552_create_sessions_table', 2),
(8, '2022_10_26_133431_create_roles_table', 3),
(9, '2022_10_26_133512_create_role_routes_table', 3),
(11, '2022_10_30_144110_create_user_role_table', 4),
(12, '2022_10_31_093248_create_categories_table', 5),
(13, '2022_10_31_093426_create_sub_categories_table', 5),
(14, '2023_05_27_162722_create_sliders_table', 6),
(18, '2023_06_13_090710_create_privacies_table', 8),
(22, '2023_09_25_120110_create_properties_table', 9),
(23, '2023_09_25_135611_create_multi_images_table', 10),
(24, '2023_07_16_115253_add_authtype_to_users', 11),
(25, '2023_10_03_144150_create_boards_table', 11),
(26, '2023_10_08_152641_create_abouts_table', 12),
(27, '2023_10_08_163614_create_imprints_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `multi_images`
--

CREATE TABLE `multi_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) DEFAULT NULL,
  `multi_image` varchar(120) DEFAULT NULL,
  `link` varchar(150) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_images`
--

INSERT INTO `multi_images` (`id`, `name`, `multi_image`, `link`, `created_at`, `updated_at`) VALUES
(129, 'Gallery', 'upload/gallery/1860838152015914.jpeg', NULL, '2025-02-03 08:51:34', '2026-03-27 17:45:53'),
(131, 'Gallery', 'upload/gallery/1860838170858125.jpeg', NULL, '2025-02-04 05:27:51', '2026-03-27 17:46:10'),
(132, 'Gallery', 'upload/gallery/1860838184590669.jpeg', NULL, '2025-02-04 05:27:51', '2026-03-27 17:46:23'),
(133, 'Vedio', NULL, 'https://www.facebook.com/plugins/video.php?height=476&href=https%3A%2F%2Fwww.facebook.com%2Freel%2F1235304428707529%2F&show_text=false&width=476&t=0', '2025-02-04 05:27:51', '2026-03-27 17:49:17'),
(134, 'Vedio', NULL, 'https://www.facebook.com/plugins/video.php?height=476&href=https%3A%2F%2Fwww.facebook.com%2Freel%2F26747126721555970%2F&show_text=false&width=380&t=0', '2025-02-04 05:27:51', '2026-03-27 17:51:20'),
(135, 'Gallery', 'upload/gallery/1860838538993145.jpg', NULL, '2025-02-04 05:27:51', '2026-03-27 17:52:01'),
(136, 'Gallery', 'upload/gallery/1860838565161773.jpg', NULL, '2025-02-04 05:27:51', '2026-03-27 17:52:26'),
(139, 'vedio', NULL, 'https://www.facebook.com/plugins/video.php?height=476&href=https%3A%2F%2Fwww.facebook.com%2Freel%2F940444598663059%2F&show_text=false&width=380&t=0', '2026-03-27 18:03:50', '2026-03-27 18:03:50'),
(140, 'Gallery', 'upload/gallery/1860839378027557.jpg', NULL, '2026-03-27 18:05:21', '2026-03-27 18:05:21'),
(141, 'Gallery', 'upload/gallery/1860839393256699.jpg', NULL, '2026-03-27 18:05:36', '2026-03-27 18:05:36'),
(142, 'Gallery', 'upload/gallery/1860839393315897.jpg', NULL, '2026-03-27 18:05:36', '2026-03-27 18:05:36'),
(143, 'Gallery', 'upload/gallery/1860839443983284.jpg', NULL, '2026-03-27 18:06:24', '2026-03-27 18:06:24');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `peaces`
--

CREATE TABLE `peaces` (
  `id` int(10) NOT NULL,
  `name` varchar(150) DEFAULT NULL,
  `consultation` varchar(100) DEFAULT NULL,
  `consultation_d` text DEFAULT NULL,
  `evaluation` varchar(100) DEFAULT NULL,
  `evaluation_d` text DEFAULT NULL,
  `strategy` varchar(100) DEFAULT NULL,
  `strategy_d` text DEFAULT NULL,
  `link` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peaces`
--

INSERT INTO `peaces` (`id`, `name`, `consultation`, `consultation_d`, `evaluation`, `evaluation_d`, `strategy`, `strategy_d`, `link`, `created_at`, `updated_at`) VALUES
(1, 'Navigating the Law: Your Assurance of Peace', 'Initial Consultation', 'Our experienced lawyers thoroughly analyze the facts of each case. They then apply the relevant laws to provide clear.', 'Case Evaluation', 'We prioritize understanding your concerns and aligning with your goals. Your satisfaction is our top priority.', 'Legal Strategy', 'We develop a customized plan to protect your rights and achieve the best possible outcome.', 'https://youtu.be/_sI_Ps7JSEk?si=R3iIoTFWu3lm1m05', NULL, '2025-02-11 09:43:43');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `privacy` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `name`, `privacy`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, '<h2><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\"><span style=\"font-family: &quot;Arial Black&quot;;\">STA</span></span></h2><h2><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\"><span style=\"font-family: &quot;Arial Black&quot;;\"><br></span></span></h2><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">\"Your Premier Choice for Short-TermAccommodation in Adelaide\"</span></p><p class=\"MsoNormal\"><span lang=\"EN-AU\">For those days when you\'re seeking a briefescape from the comforts of your own home, ResicareSA is here to offer you awelcoming haven. Discover a place you can truly call home.</span></p><p class=\"MsoNormal\"><span lang=\"EN-AU\"><br></span></p><h4 class=\"MsoNormal\"><span lang=\"EN-AU\" style=\"color:#252525\"><span style=\"font-family: &quot;Arial Black&quot;;\">\"Everyone requires a break attimes!\"</span></span></h4><h4 class=\"MsoNormal\"><span lang=\"EN-AU\" style=\"color:#252525\"><span style=\"font-family: &quot;Arial Black&quot;;\"><br></span><o:p></o:p></span></h4><p class=\"MsoNormal\"><span lang=\"EN-AU\" style=\"color:#252525\">The significance of a brief respite often goesunnoticed by most. Taking a short break can work wonders for recharging yourphysical, emotional, and mental well-being. Don\'t wait until you\'re on thebrink of exhaustion to hit pause.<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-AU\" style=\"color:#252525\">ResicareSA is here, ready and waiting, toassist you in alleviating stress and revitalising your energy. We\'re always atyour service, committed to your overall well-being. Your vitality matters tous.</span></p><p class=\"MsoNormal\"><span lang=\"EN-AU\" style=\"color:#252525\"><br></span></p><h4><span lang=\"EN-AU\" style=\"color:#252525\"><span style=\"font-family: &quot;Arial Black&quot;;\">\"Welcome to ResicareSA: YourTrusted NDIS Short-Term Accommodation Provider.\" </span></span></h4><h4><span lang=\"EN-AU\" style=\"color:#252525\"><span style=\"font-family: &quot;Arial Black&quot;;\"><br></span><o:p></o:p></span></h4><p><span lang=\"EN-AU\" style=\"color:#252525\">Are there moments when you feel theneed to relocate for a fresh burst of energy or the essential support youdeserve? Are there times when you long for a place that can uplift your spiritsand banish negativity? If so, ResicareSA is precisely where you belong. Ourdedicated team is here to offer you a warm and inviting environment.<o:p></o:p></span></p><p><span lang=\"EN-AU\" style=\"color:#252525\">At ResicareSA, our residences are notmere structures; they are carefully crafted environments designed to enhancethe well-being of our residents. Rest easy, as our Short-Term Accommodation(STA) homes are tailored to ensure your comfort, safety, and convenience.<o:p></o:p></span></p><p><span lang=\"EN-AU\" style=\"color:#252525\">With ResicareSA, you need not have aworry in the world. Our STA homes are created to provide you with a sense ofsecurity and tranquilly during your short break. And, as always, our ResicareSAservices are marked by personalized care. This means your distinct needs andpreferences will be met with the utmost attention to detail. Your well-being isour paramount concern.</span></p><p><span lang=\"EN-AU\" style=\"color:#252525\"><br></span></p><h4 class=\"MsoNormal\"><span lang=\"EN-AU\" style=\"color:#252525\"><span style=\"font-family: &quot;Arial Black&quot;;\">\"What is Short-Term Accommodation(STA)?\"</span></span></h4><h4 class=\"MsoNormal\"><span lang=\"EN-AU\" style=\"color:#252525\"><span style=\"font-family: &quot;Arial Black&quot;;\"><br></span><o:p></o:p></span></h4><p class=\"MsoNormal\"><span lang=\"EN-AU\" style=\"color:#252525\">Short-term accommodation, often referred to as\"respite,\" is financial assistance designed to cover the costs oftemporary support and lodging away from your usual place of residence. Itfacilitates your care at an alternative location for a maximum of 14consecutive days. During your stay, you can choose to spend this time eitherindependently or in the company of others.<o:p></o:p></span></p><p class=\"MsoNormal\"><span lang=\"EN-AU\" style=\"color:#252525\">Should your regular support network bemomentarily unavailable, you can explore the option of short-term accommodationthat aligns with your specific needs. You have the flexibility to utilise yourshort-term housing funding according to your preferences. For example, you canuse it for stays of up to 14 days at once or opt for a monthly weekend getaway.At ResicareSA, we\'re here to ensure your short-term accommodation experience istailored to your individual requirements.</span></p><p class=\"MsoNormal\"><span lang=\"EN-AU\" style=\"color:#252525\">\"Eligibility for Short-Term AccommodationFunds\" You qualify for short-term accommodation funding if you meet thefollowing criteria:<o:p></o:p></span></p><ol start=\"1\" type=\"1\"> <li class=\"MsoNormal\" style=\"color:#252525;mso-margin-top-alt:auto;mso-margin-bottom-alt: auto;mso-list:l2 level1 lfo1;tab-stops:list .5in\"><b><span lang=\"EN-AU\">Sufficient Family or Informal Support:</span></b><span lang=\"EN-AU\"> If your family or informal support network can assist you over an extended period, you may be eligible.<o:p></o:p></span></li> <li class=\"MsoNormal\" style=\"color:#252525;mso-margin-top-alt:auto;mso-margin-bottom-alt: auto;mso-list:l2 level1 lfo1;tab-stops:list .5in\"><b><span lang=\"EN-AU\">Reduced Future Support Needs:</span></b><span lang=\"EN-AU\"> You might not require as much support in the foreseeable future.<o:p></o:p></span></li> <li class=\"MsoNormal\" style=\"color:#252525;mso-margin-top-alt:auto;mso-margin-bottom-alt: auto;mso-list:l2 level1 lfo1;tab-stops:list .5in\"><b><span lang=\"EN-AU\">Functional Capacity Enhancement:</span></b><span lang=\"EN-AU\"> Short-term accommodation can aid in maintaining and improving your functional capacity.<o:p></o:p></span></li> <li class=\"MsoNormal\" style=\"color:#252525;mso-margin-top-alt:auto;mso-margin-bottom-alt: auto;mso-list:l2 level1 lfo1;tab-stops:list .5in\"><b><span lang=\"EN-AU\">Promotion of Independence:</span></b><span lang=\"EN-AU\"> It contributes to increasing your level of independence.<o:p></o:p></span></li> <li class=\"MsoNormal\" style=\"color:#252525;mso-margin-top-alt:auto;mso-margin-bottom-alt: auto;mso-list:l2 level1 lfo1;tab-stops:list .5in\"><b><span lang=\"EN-AU\">Engagement in More Activities:</span></b><span lang=\"EN-AU\"> Short-term accommodation enables you to participate in a broader range of activities.<o:p></o:p></span></li></ol><p class=\"MsoNormal\"><span lang=\"EN-AU\" style=\"color:#252525\">At ResicareSA, we\'re here to help you navigatethe eligibility requirements and provide you with the support you need. Yourwell-being is our priority.</span></p><p><span lang=\"EN-AU\" style=\"color:#252525\">\"Why choose ResicareSA?\"When seeking an NDIS short-term accommodation (STA) provider, it\'s crucial toask the right questions. So, why should you choose ResicareSA? We are among thepremier STA providers in Adelaide, dedicated to ensuring your short stays arenot just meaningful but also transformative. Here\'s why we stand out as youroptimal choice for short-term accommodation:<o:p></o:p></span></p><p><strong><span lang=\"EN-AU\" style=\"color:#252525\">1. Embrace New Experiences:</span></strong><span lang=\"EN-AU\" style=\"color:#252525\"> ResicareSA provides you with the opportunityto explore new horizons and try new things.<o:p></o:p></span></p><p><strong><span lang=\"EN-AU\" style=\"color:#252525\">2. Empower Your Aspirations:</span></strong><span lang=\"EN-AU\" style=\"color:#252525\"> We assist you in pursuing your goals,ensuring that your ambitions are within reach.<o:p></o:p></span></p><p><strong><span lang=\"EN-AU\" style=\"color:#252525\">3. Community Engagement:</span></strong><span lang=\"EN-AU\" style=\"color:#252525\"> We believe in fostering active participationin the community, enabling you to connect with others and contribute to avibrant community life.<o:p></o:p></span></p><p><strong><span lang=\"EN-AU\" style=\"color:#252525\">4. Exceptional Value:</span></strong><span lang=\"EN-AU\" style=\"color:#252525\"> ResicareSA offers excellent value for yourinvestment, ensuring that your short stays are truly worthwhile.<o:p></o:p></span></p><p><strong><span lang=\"EN-AU\" style=\"color:#252525\">5. Forge New Friendships:</span></strong><span lang=\"EN-AU\" style=\"color:#252525\"> Our vibrant community encourages you to makenew friends and build lasting connections.<o:p></o:p></span></p><p><strong><span lang=\"EN-AU\" style=\"color:#252525\">6. Cultivate New Skills:</span></strong><span lang=\"EN-AU\" style=\"color:#252525\"> Your time with us is an opportunity todevelop new skills, enhancing your personal growth.<o:p></o:p></span></p><p><strong><span lang=\"EN-AU\" style=\"color:#252525\">7. Maintain Your Lifestyle:</span></strong><span lang=\"EN-AU\" style=\"color:#252525\"> We prioritise your comfort and well-being,allowing you to maintain your current living situation during your stay.<o:p></o:p></span></p><p><span lang=\"EN-AU\" style=\"color:#252525\">ResicareSA is your gateway to atransformative short-term accommodation experience, filled with opportunitiesfor growth, engagement, and lasting memories. Choose us for an enrichingjourney.</span></p><p><span lang=\"EN-AU\" style=\"color:#252525\"><br></span></p><h4 class=\"MsoNormal\"><b><span lang=\"EN-AU\" style=\"font-size:18.0pt;color:#252525\"><span style=\"font-family: &quot;Arial Black&quot;;\">\"STA RespiteCare—Frequently Asked Questions (FAQs)\"</span></span></b></h4><h4 class=\"MsoNormal\"><b><span lang=\"EN-AU\" style=\"font-size:18.0pt;color:#252525\"><span style=\"font-family: &quot;Arial Black&quot;;\"><br></span><o:p></o:p></span></b></h4><p class=\"MsoNormal\"><b><span lang=\"EN-AU\" style=\"color:#252525\">1. Is short-term accommodation related to yourdisability?</span></b><span lang=\"EN-AU\" style=\"color:#252525\"><o:p></o:p></span></p><ul type=\"disc\"> <li class=\"MsoNormal\" style=\"color:#252525;mso-margin-top-alt:auto;mso-margin-bottom-alt: auto;mso-list:l0 level1 lfo2;tab-stops:list .5in\"><span lang=\"EN-AU\">Yes, short-term accommodation (STA) is specifically tailored to support individuals with disabilities, providing them with temporary accommodation options.<o:p></o:p></span></li></ul><p class=\"MsoNormal\"><b><span lang=\"EN-AU\" style=\"color:#252525\">2. What About Short-Term Accommodation forChildren?</span></b><span lang=\"EN-AU\" style=\"color:#252525\"><o:p></o:p></span></p><ul type=\"disc\"> <li class=\"MsoNormal\" style=\"color:#252525;mso-margin-top-alt:auto;mso-margin-bottom-alt: auto;mso-list:l1 level1 lfo3;tab-stops:list .5in\"><span lang=\"EN-AU\">Short-term accommodation for children is also available through the NDIS respite accommodation plan. It aims to create a safe and supportive environment for children with disabilities, enabling their participation in activities and receiving the necessary care and support.<o:p></o:p></span></li></ul><p class=\"MsoNormal\"><b><span lang=\"EN-AU\" style=\"color:#252525\">3. Does short-term accommodation help youpursue your goals?</span></b><span lang=\"EN-AU\" style=\"color:#252525\"><o:p></o:p></span></p><ul type=\"disc\"> <li class=\"MsoNormal\" style=\"color:#252525;mso-margin-top-alt:auto;mso-margin-bottom-alt: auto;mso-list:l11 level1 lfo4;tab-stops:list .5in\"><span lang=\"EN-AU\">Yes, short-term accommodation can assist individuals with disabilities in pursuing their goals. It offers a wide range of support and services tailored to individual needs, including access to therapies, skill development programmes, and assistance with daily activities.<o:p></o:p></span></li></ul><p class=\"MsoNormal\"><b><span lang=\"EN-AU\" style=\"color:#252525\">4. What Are the Eligibility Criteria for NDISShort-Term Accommodation in Adelaide?</span></b><span lang=\"EN-AU\" style=\"color:#252525\"><o:p></o:p></span></p><ul type=\"disc\"> <li class=\"MsoNormal\" style=\"color:#252525;mso-margin-top-alt:auto;mso-margin-bottom-alt: auto;mso-list:l10 level1 lfo5;tab-stops:list .5in\"><span lang=\"EN-AU\">Eligibility criteria for NDIS short-term accommodation in Adelaide, South Australia, include being an NDIS participant, having a disability that significantly affects daily living, and requiring temporary accommodation due to support needs or circumstances.<o:p></o:p></span></li></ul><p class=\"MsoNormal\"><b><span lang=\"EN-AU\" style=\"color:#252525\">5. What Support Does STA Include?</span></b><span lang=\"EN-AU\" style=\"color:#252525\"><o:p></o:p></span></p><ul type=\"disc\"> <li class=\"MsoNormal\" style=\"color:#252525;mso-margin-top-alt:auto;mso-margin-bottom-alt: auto;mso-list:l8 level1 lfo6;tab-stops:list .5in\"><span lang=\"EN-AU\">Short-term accommodation includes various supports such as personal care assistance, access to therapies and medical services, meal preparation, transportation assistance, and recreational activities. These supports are personalised to meet individual needs and goals.<o:p></o:p></span></li></ul><p class=\"MsoNormal\"><b><span lang=\"EN-AU\" style=\"color:#252525\">6. Is short-term accommodation (STA) value formoney?</span></b><span lang=\"EN-AU\" style=\"color:#252525\"><o:p></o:p></span></p><ul type=\"disc\"> <li class=\"MsoNormal\" style=\"color:#252525;mso-margin-top-alt:auto;mso-margin-bottom-alt: auto;mso-list:l7 level1 lfo7;tab-stops:list .5in\"><span lang=\"EN-AU\">NDIS short-term accommodation rates can vary depending on individual circumstances, preferences, and specific providers. It\'s crucial to research and compare different options, taking into consideration factors like location, facilities, services provided, and cost. Additionally, seeking insights from individuals who have used STA services or consulting with disability service organisations can be valuable.<o:p></o:p></span></li></ul><p class=\"MsoNormal\"><b><span lang=\"EN-AU\" style=\"color:#252525\">7. What Is the Maximum Number of Days I CanBook STA For?</span></b><span lang=\"EN-AU\" style=\"color:#252525\"><o:p></o:p></span></p><ul type=\"disc\"> <li class=\"MsoNormal\" style=\"color:#252525;mso-margin-top-alt:auto;mso-margin-bottom-alt: auto;mso-list:l9 level1 lfo8;tab-stops:list .5in\"><span lang=\"EN-AU\">The maximum number of days an individual can book short-term accommodation (STA) can vary depending on the service provider’s policies and the funding available through the participant’s NDIS plan. It’s advisable to check with the specific provider or consult the NDIA for the most accurate information.<o:p></o:p></span></li></ul><p class=\"MsoNormal\"><b><span lang=\"EN-AU\" style=\"color:#252525\">8. Is there a minimum number of days for STAat ResicareSA?</span></b><span lang=\"EN-AU\" style=\"color:#252525\"><o:p></o:p></span></p><ul type=\"disc\"> <li class=\"MsoNormal\" style=\"color:#252525;mso-margin-top-alt:auto;mso-margin-bottom-alt: auto;mso-list:l3 level1 lfo9;tab-stops:list .5in\"><span lang=\"EN-AU\">To determine if there is a minimum booking requirement for short-term accommodation (STA) at ResicareSA, it\'s essential to contact ResicareSA directly or visit their official website. This policy may be subject to change, so obtaining the most current information from the provider is recommended.<o:p></o:p></span></li></ul><p class=\"MsoNormal\"><b><span lang=\"EN-AU\" style=\"color:#252525\">9. How Much Does ResicareSA Charge for RespiteOptions?</span></b><span lang=\"EN-AU\" style=\"color:#252525\"><o:p></o:p></span></p><ul type=\"disc\"> <li class=\"MsoNormal\" style=\"color:#252525;mso-margin-top-alt:auto;mso-margin-bottom-alt: auto;mso-list:l5 level1 lfo10;tab-stops:list .5in\"><span lang=\"EN-AU\">The cost of respite options at Care Assure can vary based on factors such as the type of respite service, the duration of stay, and any applicable subsidies or NDIS funding. For the most accurate and up-to-date pricing information, it is advisable to contact the ResicareSA support team directly or visit our official website.<o:p></o:p></span></li></ul><p class=\"MsoNormal\"><b><span lang=\"EN-AU\" style=\"color:#252525\">10. What is your cancellation policy? Should aparticipant choose not to proceed?</span></b><span lang=\"EN-AU\" style=\"color:#252525\"><o:p></o:p></span></p><ul type=\"disc\"> <li class=\"MsoNormal\" style=\"color:#252525;mso-margin-top-alt:auto;mso-margin-bottom-alt: auto;mso-list:l6 level1 lfo11;tab-stops:list .5in\"><span lang=\"EN-AU\">The cancellation policy for short-term accommodation (STA) or respite services at a specific provider like ResicareSA is determined by that provider’s policies. Reviewing their terms and conditions or contacting them directly for detailed information about their cancellation policy is important. Please note that this policy may vary among different service providers.<o:p></o:p></span></li></ul><p class=\"MsoNormal\"><b><span lang=\"EN-AU\" style=\"color:#252525\">11. Do You Want to Be Part of ResicareSA?</span></b><span lang=\"EN-AU\" style=\"color:#252525\"><o:p></o:p></span></p><ul type=\"disc\"> <li class=\"MsoNormal\" style=\"color:#252525;mso-margin-top-alt:auto;mso-margin-bottom-alt: auto;mso-list:l4 level1 lfo12;tab-stops:list .5in\"><span lang=\"EN-AU\">If you wish to be a part of ResicareSA and explore the opportunities we offer, please reach out to us. We welcome individuals seeking exceptional care and support. Join our ResicareSA family today!<o:p></o:p></span></li></ul>', 1, '2023-11-15 16:02:03', '2023-11-22 18:54:03');

-- --------------------------------------------------------

--
-- Table structure for table `practices`
--

CREATE TABLE `practices` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `image` varchar(150) DEFAULT NULL,
  `file` varchar(150) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `privacy` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `practices`
--

INSERT INTO `practices` (`id`, `name`, `title`, `image`, `file`, `status`, `privacy`, `created_at`, `updated_at`) VALUES
(2, 'Imperial Regent Park Side View', 'Imperial Regent Park – Project Details', 'upload/practice/1861158045075164.jpg', 'upload/practice/1860839961417104.pdf', 'upcoming', '<p data-start=\"44\" data-end=\"223\">Looking for your dream apartment? Discover modern living with land ownership benefits at <em data-start=\"133\" data-end=\"155\">Imperial Regent Park</em>—a perfect address for your family in a prime and peaceful location.</p><p data-start=\"493\" data-end=\"510\"><strong data-start=\"493\" data-end=\"510\">Key Features:</strong></p><ul data-start=\"511\" data-end=\"672\"><li data-section-id=\"123gwro\" data-start=\"511\" data-end=\"540\"><strong data-start=\"513\" data-end=\"527\">Land Area:</strong> 8.61 Katha</li><li data-section-id=\"xlbrjc\" data-start=\"541\" data-end=\"578\"><strong data-start=\"543\" data-end=\"562\">Apartment Size:</strong> 1,350 sq. ft.</li><li data-section-id=\"sujjs7\" data-start=\"579\" data-end=\"620\"><strong data-start=\"581\" data-end=\"602\">Commercial Space:</strong> 1 Shop included</li><li data-section-id=\"1483qf1\" data-start=\"621\" data-end=\"672\"><strong data-start=\"623\" data-end=\"635\">Parking:</strong> 1 Dedicated Parking Space per unit</li></ul><p data-start=\"674\" data-end=\"775\"><strong data-start=\"674\" data-end=\"695\">Apartment Layout:</strong><br>Each apartment is designed for maximum comfort and efficient space utilization:</p><ul data-start=\"776\" data-end=\"854\"><li data-section-id=\"1brtlit\" data-start=\"776\" data-end=\"799\">3 Spacious Bedrooms</li><li data-section-id=\"1gxpro7\" data-start=\"800\" data-end=\"822\">3 Modern Bathrooms</li><li data-section-id=\"nbqawe\" data-start=\"823\" data-end=\"854\">3 Well-ventilated Balconies</li></ul><p data-start=\"856\" data-end=\"1077\"><strong data-start=\"856\" data-end=\"879\">Location Advantage:</strong><br>📍 Madhucity, Ati, Keraniganj, Dhaka<br data-start=\"916\" data-end=\"919\">Located in a rapidly developing area, Imperial Regent Park offers excellent connectivity to Dhaka city.</p>', '2025-02-04 10:02:12', '2026-03-31 06:50:10'),
(3, 'Imperial Regent Park Front View', 'Imperial Regent Park Front View – Project Details', 'upload/practice/1861158023424894.jpg', 'upload/practice/1860839961417104.pdf', 'ongoing', '<p data-start=\"44\" data-end=\"223\" style=\"font-size: 14.4px;\">Looking for your dream apartment? Discover modern living with land ownership benefits at&nbsp;<em data-start=\"133\" data-end=\"155\">Imperial Regent Park</em>—a perfect address for your family in a prime and peaceful location.</p><p data-start=\"493\" data-end=\"510\" style=\"font-size: 14.4px;\"><span data-start=\"493\" data-end=\"510\" style=\"font-weight: 700;\">Key Features:</span></p><ul data-start=\"511\" data-end=\"672\" style=\"font-size: 14.4px;\"><li data-section-id=\"123gwro\" data-start=\"511\" data-end=\"540\"><span data-start=\"513\" data-end=\"527\" style=\"font-weight: 700;\">Land Area:</span>&nbsp;8.61 Katha</li><li data-section-id=\"xlbrjc\" data-start=\"541\" data-end=\"578\"><span data-start=\"543\" data-end=\"562\" style=\"font-weight: 700;\">Apartment Size:</span>&nbsp;1,350 sq. ft.</li><li data-section-id=\"sujjs7\" data-start=\"579\" data-end=\"620\"><span data-start=\"581\" data-end=\"602\" style=\"font-weight: 700;\">Commercial Space:</span>&nbsp;1 Shop included</li><li data-section-id=\"1483qf1\" data-start=\"621\" data-end=\"672\"><span data-start=\"623\" data-end=\"635\" style=\"font-weight: 700;\">Parking:</span>&nbsp;1 Dedicated Parking Space per unit</li></ul><p data-start=\"674\" data-end=\"775\" style=\"font-size: 14.4px;\"><span data-start=\"674\" data-end=\"695\" style=\"font-weight: 700;\">Apartment Layout:</span><br>Each apartment is designed for maximum comfort and efficient space utilization:</p><ul data-start=\"776\" data-end=\"854\" style=\"font-size: 14.4px;\"><li data-section-id=\"1brtlit\" data-start=\"776\" data-end=\"799\">3 Spacious Bedrooms</li><li data-section-id=\"1gxpro7\" data-start=\"800\" data-end=\"822\">3 Modern Bathrooms</li><li data-section-id=\"nbqawe\" data-start=\"823\" data-end=\"854\">3 Well-ventilated Balconies</li></ul><p data-start=\"856\" data-end=\"1077\" style=\"font-size: 14.4px;\"><span data-start=\"856\" data-end=\"879\" style=\"font-weight: 700;\">Location Advantage:</span><br>📍 Madhucity, Ati, Keraniganj, Dhaka<br data-start=\"916\" data-end=\"919\">Located in a rapidly developing area, Imperial Regent Park offers excellent connectivity to Dhaka city.</p>', '2025-02-04 10:03:25', '2026-03-31 06:30:05'),
(5, 'Imperial Skyline Front View', 'Imperial Skyline – Premium Apartments Near Uttara 3rd Phase', 'upload/practice/1861158590210079.jpg', 'upload/practice/1861158590210079.pdf', 'ongoing', '<p>Experience premium living near Uttara 3rd Phase with <em data-start=\"95\" data-end=\"113\">Imperial Skyline</em>, a thoughtfully designed residential project in Ashulia Model Town. Combining modern architecture, green spaces, and a smart lifestyle, this development is ideal for families seeking comfort, security, and convenience.<br></p><h3 data-section-id=\"1hx1w1i\" data-start=\"584\" data-end=\"606\"><span role=\"text\">Key Features</span></h3><p></p><ul data-start=\"607\" data-end=\"858\"><li data-section-id=\"yaq8n1\" data-start=\"607\" data-end=\"643\"><strong data-start=\"609\" data-end=\"628\">Apartment Type:</strong> Modern Flats</li><li data-section-id=\"x9dssy\" data-start=\"644\" data-end=\"706\"><strong data-start=\"646\" data-end=\"671\">Land Share Ownership:</strong> 100% secure through registration</li><li data-section-id=\"utp9hk\" data-start=\"707\" data-end=\"778\"><strong data-start=\"709\" data-end=\"729\">Green Balconies:</strong> Designed for natural ventilation and fresh air</li><li data-section-id=\"zguxhj\" data-start=\"779\" data-end=\"858\"><strong data-start=\"781\" data-end=\"811\">Smart Lifestyle Amenities:</strong> Well-planned layout for modern family living</li></ul><h3 data-section-id=\"1virm7s\" data-start=\"865\" data-end=\"891\"><span role=\"text\">Apartment Layout</span></h3><p data-start=\"892\" data-end=\"954\">Each unit is designed for comfort, space, and functionality:</p><p></p><ul data-start=\"955\" data-end=\"1081\"><li data-section-id=\"1brtlit\" data-start=\"955\" data-end=\"978\">3 Spacious Bedrooms</li><li data-section-id=\"1colahh\" data-start=\"979\" data-end=\"996\">1 Living Room</li><li data-section-id=\"us84kt\" data-start=\"997\" data-end=\"1014\">1 Dining Area</li><li data-section-id=\"jkt3in\" data-start=\"1015\" data-end=\"1028\">1 Kitchen</li><li data-section-id=\"zgaah4\" data-start=\"1029\" data-end=\"1044\">3 Bathrooms</li><li data-section-id=\"15c2ovx\" data-start=\"1045\" data-end=\"1081\">Multiple Balconies with greenery</li></ul><h3 data-section-id=\"1tswdqm\" data-start=\"341\" data-end=\"367\"><span role=\"text\">Project Location</span></h3><p data-start=\"368\" data-end=\"421\">📍 Ashulia Model Town, near Uttara 3rd Phase, Dhaka</p>', '2025-02-04 10:04:28', '2026-03-31 06:39:06'),
(6, 'Imperial Signature', 'Imperial Signature – Project Details', 'upload/practice/1860840158679788.jpg', NULL, 'completed', '<p>Experience smart living with sustainable design at <em data-start=\"95\" data-end=\"115\">Imperial Signature</em>, located in a prime location near Uttara Sector 16, Ashulia Model Town. Combining modern architecture with convenience, this project offers an ideal home for families seeking comfort, security, and a premium lifestyle.</p><h3 data-section-id=\"1hx1w1i\" data-start=\"596\" data-end=\"618\"><span role=\"text\">Key Features</span></h3><p></p><ul data-start=\"619\" data-end=\"902\"><li data-section-id=\"1ffwv9x\" data-start=\"619\" data-end=\"649\"><strong data-start=\"621\" data-end=\"636\">Land Share:</strong> 5.67 Katha</li><li data-section-id=\"132etgu\" data-start=\"650\" data-end=\"687\"><strong data-start=\"652\" data-end=\"671\">Apartment Size:</strong> 1,514 sq. ft.</li><li data-section-id=\"1l1nr5f\" data-start=\"688\" data-end=\"758\"><strong data-start=\"690\" data-end=\"708\">Modern Design:</strong> Thoughtfully planned layout for maximum comfort</li><li data-section-id=\"x4ijp8\" data-start=\"759\" data-end=\"815\"><strong data-start=\"761\" data-end=\"782\">Premium Location:</strong> High potential investment area</li><li data-section-id=\"14b41v9\" data-start=\"816\" data-end=\"902\"><strong data-start=\"818\" data-end=\"841\">Reliable Developer:</strong> Secure and trustworthy ownership through land registration</li></ul><h3 data-section-id=\"1tswdqm\" data-start=\"343\" data-end=\"369\"><span role=\"text\">Project Location</span></h3><p data-start=\"370\" data-end=\"423\">📍 Ashulia Model Town, near Uttara Sector 16, Dhaka</p><p></p><ul data-start=\"424\" data-end=\"589\"><li data-section-id=\"1bdmdp6\" data-start=\"424\" data-end=\"473\">Only 5 minutes from the nearest metro station</li><li data-section-id=\"hf84pr\" data-start=\"474\" data-end=\"540\">Prime, well-connected, and rapidly developing residential area</li><li data-section-id=\"17t79f0\" data-start=\"541\" data-end=\"589\">Peaceful environment with green surroundings</li></ul>', '2025-02-04 10:10:19', '2026-03-31 06:50:24'),
(7, 'Abbas Uddin Tower', 'Abbas Uddin Tower – Smart Living with Sustainable Design', 'upload/practice/1861159249956271.jpg', NULL, 'ongoing', '<p data-start=\"69\" data-end=\"237\" style=\"font-size: 14.4px;\">Discover a perfect blend of modern architecture and eco-friendly living at&nbsp;Abbas uddin tower, designed to offer comfort, style, and a premium lifestyle for your family.</p><p data-start=\"239\" data-end=\"399\" style=\"font-size: 14.4px;\"><span data-start=\"239\" data-end=\"256\" style=\"font-weight: 700;\">Key Features:</span><br data-start=\"256\" data-end=\"259\">📍&nbsp;<span data-start=\"262\" data-end=\"275\" style=\"font-weight: 700;\">Location:</span>&nbsp;Mirpur 11, Avenue 5 (Beside Baitul Azam Jame Masjid)<br data-start=\"328\" data-end=\"331\">🏗️&nbsp;<span data-start=\"335\" data-end=\"349\" style=\"font-weight: 700;\">Land Area:</span>&nbsp;12 Katha<br data-start=\"358\" data-end=\"361\">📐&nbsp;<span data-start=\"364\" data-end=\"383\" style=\"font-weight: 700;\">Apartment Size:</span>&nbsp;1,700 sq. ft.</p><p style=\"font-size: 14.4px;\"></p><p data-start=\"567\" data-end=\"771\" style=\"font-size: 14.4px;\"><span data-start=\"567\" data-end=\"588\" style=\"font-weight: 700;\">Apartment Layout:</span><br data-start=\"588\" data-end=\"591\">Each unit is thoughtfully designed for spacious and comfortable living:<br data-start=\"662\" data-end=\"665\">🛏️ 3 Bedrooms<br data-start=\"679\" data-end=\"682\">🛋️ 1 Living Room<br data-start=\"699\" data-end=\"702\" data-is-only-node=\"\">🍽️ 1 Dining Space<br data-start=\"720\" data-end=\"723\">🍳 1 Kitchen<br data-start=\"735\" data-end=\"738\">🚿 3 Bathrooms<br data-start=\"752\" data-end=\"755\">🌿 3 Balconies</p>', '2025-02-04 10:10:49', '2026-03-31 06:50:39'),
(8, 'Imperial Signature, Ashulia', 'Smart Living, Sustainable Design – Imperial Signature, Ashulia', 'upload/practice/1860840199639318.jpg', NULL, 'upcoming', '<p style=\"font-size: 14.4px;\">Experience smart living with sustainable design at&nbsp;<em data-start=\"95\" data-end=\"115\">Imperial Signature</em>, located in a prime location near Uttara Sector 16, Ashulia Model Town. Combining modern architecture with convenience, this project offers an ideal home for families seeking comfort, security, and a premium lifestyle.</p><h3 data-section-id=\"1hx1w1i\" data-start=\"596\" data-end=\"618\"><span role=\"text\">Key Features</span></h3><p style=\"font-size: 14.4px;\"></p><ul data-start=\"619\" data-end=\"902\" style=\"font-size: 14.4px;\"><li data-section-id=\"1ffwv9x\" data-start=\"619\" data-end=\"649\"><span data-start=\"621\" data-end=\"636\" style=\"font-weight: 700;\">Land Share:</span>&nbsp;5.67 Katha</li><li data-section-id=\"132etgu\" data-start=\"650\" data-end=\"687\"><span data-start=\"652\" data-end=\"671\" style=\"font-weight: 700;\">Apartment Size:</span>&nbsp;1,514 sq. ft.</li><li data-section-id=\"1l1nr5f\" data-start=\"688\" data-end=\"758\"><span data-start=\"690\" data-end=\"708\" style=\"font-weight: 700;\">Modern Design:</span>&nbsp;Thoughtfully planned layout for maximum comfort</li><li data-section-id=\"x4ijp8\" data-start=\"759\" data-end=\"815\"><span data-start=\"761\" data-end=\"782\" style=\"font-weight: 700;\">Premium Location:</span>&nbsp;High potential investment area</li><li data-section-id=\"14b41v9\" data-start=\"816\" data-end=\"902\"><span data-start=\"818\" data-end=\"841\" style=\"font-weight: 700;\">Reliable Developer:</span>&nbsp;Secure and trustworthy ownership through land registration</li></ul><h3 data-section-id=\"1tswdqm\" data-start=\"343\" data-end=\"369\"><span role=\"text\">Project Location</span></h3><p data-start=\"370\" data-end=\"423\" style=\"font-size: 14.4px;\">📍 Ashulia Model Town, near Uttara Sector 16, Dhaka</p><p style=\"font-size: 14.4px;\"></p><ul data-start=\"424\" data-end=\"589\" style=\"font-size: 14.4px;\"><li data-section-id=\"1bdmdp6\" data-start=\"424\" data-end=\"473\">Only 5 minutes from the nearest metro station</li><li data-section-id=\"hf84pr\" data-start=\"474\" data-end=\"540\">Prime, well-connected, and rapidly developing residential area</li><li data-section-id=\"17t79f0\" data-start=\"541\" data-end=\"589\">Peaceful environment with green surroundings</li></ul>', '2025-02-04 10:11:20', '2026-03-29 10:33:25'),
(10, 'Modern Imperial Skyline', 'Imperial Skyline & Imperial Signature – Premium Living Near Uttara', 'upload/practice/1860840244597146.jpg', 'upload/practice/1860840244597146.pdf', 'completed', '<p data-start=\"0\" data-end=\"204\" style=\"font-size: 14.4px;\">Looking for your dream apartment near Uttara? Experience modern living with secure land ownership at Imperial Skyline &amp; Imperial Signature—perfect homes for your family in a premium and peaceful location.</p><p data-start=\"206\" data-end=\"223\" style=\"font-size: 14.4px;\"><span data-start=\"206\" data-end=\"223\" style=\"font-weight: 700;\">Key Features:</span></p><p data-start=\"225\" data-end=\"407\" style=\"font-size: 14.4px;\"><span data-start=\"225\" data-end=\"257\" style=\"font-weight: 700;\">Imperial Skyline – VIP Block</span><br data-start=\"257\" data-end=\"260\">Apartment Size: 1,417 sq. ft.<br data-start=\"289\" data-end=\"292\">Building: B+G+10 | South Facing<br data-start=\"323\" data-end=\"326\">Land Share Price: BDT 14 Lac<br data-start=\"354\" data-end=\"357\">Ownership: 100% secure through land registration</p><p data-start=\"589\" data-end=\"771\" style=\"font-size: 14.4px;\"><span data-start=\"589\" data-end=\"610\" style=\"font-weight: 700;\">Apartment Layout:</span><br data-start=\"610\" data-end=\"613\">Each apartment is designed for comfort and smart space utilization:<br data-start=\"680\" data-end=\"683\">3 Spacious Bedrooms<br data-start=\"702\" data-end=\"705\">3 Modern Bathrooms<br data-start=\"723\" data-end=\"726\">Multiple Balconies with natural ventilation</p>', '2025-02-04 10:12:37', '2026-03-29 10:37:02'),
(11, 'Exclusive Abbas Uddin Tower', 'Exclusive Abbas Uddin Tower – Project Details', 'upload/practice/1860840264165358.jpg', NULL, 'completed', '<p data-start=\"69\" data-end=\"237\" style=\"font-size: 14.4px;\">Discover a perfect blend of modern architecture and eco-friendly living at&nbsp;Abbas uddin tower, designed to offer comfort, style, and a premium lifestyle for your family.</p><p data-start=\"239\" data-end=\"399\" style=\"font-size: 14.4px;\"><span data-start=\"239\" data-end=\"256\" style=\"font-weight: 700;\">Key Features:</span><br data-start=\"256\" data-end=\"259\">📍&nbsp;<span data-start=\"262\" data-end=\"275\" style=\"font-weight: 700;\">Location:</span>&nbsp;Mirpur 11, Avenue 5 (Beside Baitul Azam Jame Masjid)<br data-start=\"328\" data-end=\"331\">🏗️&nbsp;<span data-start=\"335\" data-end=\"349\" style=\"font-weight: 700;\">Land Area:</span>&nbsp;12 Katha<br data-start=\"358\" data-end=\"361\">📐&nbsp;<span data-start=\"364\" data-end=\"383\" style=\"font-weight: 700;\">Apartment Size:</span>&nbsp;1,700 sq. ft.</p><p style=\"font-size: 14.4px;\"></p><p data-start=\"567\" data-end=\"771\" style=\"font-size: 14.4px;\"><span data-start=\"567\" data-end=\"588\" style=\"font-weight: 700;\">Apartment Layout:</span><br data-start=\"588\" data-end=\"591\">Each unit is thoughtfully designed for spacious and comfortable living:<br data-start=\"662\" data-end=\"665\">🛏️ 3 Bedrooms<br data-start=\"679\" data-end=\"682\">🛋️ 1 Living Room<br data-start=\"699\" data-end=\"702\" data-is-only-node=\"\">🍽️ 1 Dining Space<br data-start=\"720\" data-end=\"723\">🍳 1 Kitchen<br data-start=\"735\" data-end=\"738\">🚿 3 Bathrooms<br data-start=\"752\" data-end=\"755\">🌿 3 Balconies</p>', '2025-02-04 10:13:15', '2026-03-31 06:57:04'),
(13, 'Imperial Skyline Top View', 'Imperial Skyline Top View – Project Details', 'upload/practice/1861159579562508.jpg', 'upload/practice/1861158590210079.pdf', 'upcoming', '<p style=\"font-size: 14.4px;\">Experience premium living near Uttara 3rd Phase with&nbsp;<em data-start=\"95\" data-end=\"113\">Imperial Skyline</em>, a thoughtfully designed residential project in Ashulia Model Town. Combining modern architecture, green spaces, and a smart lifestyle, this development is ideal for families seeking comfort, security, and convenience.<br></p><h3 data-section-id=\"1hx1w1i\" data-start=\"584\" data-end=\"606\"><span role=\"text\">Key Features</span></h3><p style=\"font-size: 14.4px;\"></p><ul data-start=\"607\" data-end=\"858\" style=\"font-size: 14.4px;\"><li data-section-id=\"yaq8n1\" data-start=\"607\" data-end=\"643\"><span data-start=\"609\" data-end=\"628\" style=\"font-weight: 700;\">Apartment Type:</span>&nbsp;Modern Flats</li><li data-section-id=\"x9dssy\" data-start=\"644\" data-end=\"706\"><span data-start=\"646\" data-end=\"671\" style=\"font-weight: 700;\">Land Share Ownership:</span>&nbsp;100% secure through registration</li><li data-section-id=\"utp9hk\" data-start=\"707\" data-end=\"778\"><span data-start=\"709\" data-end=\"729\" style=\"font-weight: 700;\">Green Balconies:</span>&nbsp;Designed for natural ventilation and fresh air</li><li data-section-id=\"zguxhj\" data-start=\"779\" data-end=\"858\"><span data-start=\"781\" data-end=\"811\" style=\"font-weight: 700;\">Smart Lifestyle Amenities:</span>&nbsp;Well-planned layout for modern family living</li></ul><h3 data-section-id=\"1virm7s\" data-start=\"865\" data-end=\"891\"><span role=\"text\">Apartment Layout</span></h3><p data-start=\"892\" data-end=\"954\" style=\"font-size: 14.4px;\">Each unit is designed for comfort, space, and functionality:</p><p style=\"font-size: 14.4px;\"></p><ul data-start=\"955\" data-end=\"1081\" style=\"font-size: 14.4px;\"><li data-section-id=\"1brtlit\" data-start=\"955\" data-end=\"978\">3 Spacious Bedrooms</li><li data-section-id=\"1colahh\" data-start=\"979\" data-end=\"996\">1 Living Room</li><li data-section-id=\"us84kt\" data-start=\"997\" data-end=\"1014\">1 Dining Area</li><li data-section-id=\"jkt3in\" data-start=\"1015\" data-end=\"1028\">1 Kitchen</li><li data-section-id=\"zgaah4\" data-start=\"1029\" data-end=\"1044\">3 Bathrooms</li><li data-section-id=\"15c2ovx\" data-start=\"1045\" data-end=\"1081\">Multiple Balconies with greenery</li></ul><h3 data-section-id=\"1tswdqm\" data-start=\"341\" data-end=\"367\"><span role=\"text\">Project Location</span></h3><p data-start=\"368\" data-end=\"421\" style=\"font-size: 14.4px;\">📍 Ashulia Model Town, near Uttara 3rd Phase, Dhaka</p>', '2026-03-29 10:44:26', '2026-03-31 06:54:49');

-- --------------------------------------------------------

--
-- Table structure for table `privacies`
--

CREATE TABLE `privacies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `privacy` longtext DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `privacies`
--

INSERT INTO `privacies` (`id`, `title`, `name`, `image`, `privacy`, `status`, `created_at`, `updated_at`) VALUES
(5, 'Office Executive Branding', 'Shohag Chowdhury', 'upload/propert/1823110041982782.jpg', '<div class=\"modal-body\"> <p>&nbsp;My name is Shohag Chowdhury. I have worked in the Disability sector for over 20 years as a manager. </p> <p> I have extensive experience in the Aged and Disability sectors and have managed and helped set up Supported Disability Accommodation houses for clients to be able to live in the community and access various programmes with support of workers as independently as possible. I am very client focussed in all that I do and working closely with families to achieve goals and best outcomes for their loved ones. </p> <p> My role as a Support Coordinator for ResiCare SA is to support clients and families in understanding their NDIS plans and how to navigate them. To be able to engage with various external agencies and providers to achieve the best outcomes. I can assist families and clients with any issues that may arise and how to overcome them. </p> <p> As their plans come close to review I will follow up with all providers to get progress reports to be able to show how all goals are being achieved and to assist with gaining any additional funding and supports needed. As a Disability Accommodation manager, ensure all houses are compliant to SDA standard for clients and that they match the criteria. We also provide in home support for clients with NDIS funding within their own home with a variety of services. We continue to identify the needs of clients and families in the community and the best way when approached that we can support them to live a fulfilling lifestyle.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p></div>', 2, NULL, '2026-03-31 07:14:41'),
(6, 'Office Executive', 'Md. Arman Mia', 'upload/propert/1823110299941187.jpg', '<div class=\"modal-body\"> <p>My name is Md. Arman Mia. I have worked in the Disability sector for over 20 years in various roles from Support worker/carer, rostering and Coordination. </p> <p> I have extensive experience in the Aged and Disability sectors and have managed and helped set up Supported Disability Accommodation houses for clients to be able to live in the community and access various programmes with support of workers as independently as possible. I am very client focussed in all that I do and working closely with families to achieve goals and best outcomes for their loved ones. </p> <p> My role as a Support Coordinator for ResiCare SA is to support clients and families in understanding their NDIS plans and how to navigate them. To be able to engage with various external agencies and providers to achieve the best outcomes. I can assist families and clients with any issues that may arise and how to overcome them. </p> <p> As their plans come close to review I will follow up with all providers to get progress reports to be able to show how all goals are being achieved and to assist with gaining any additional funding and supports needed. As a Disability Accommodation manager, ensure all houses are compliant to SDA standard for clients and that they match the criteria. We also provide in home support for clients with NDIS funding within their own home with a variety of services. We continue to identify the needs of clients and families in the community and the best way when approached that we can support them to live a fulfilling lifestyle.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p></div>', 2, NULL, '2026-03-31 07:13:30'),
(8, 'Office Executive (Searching Dept.)', 'Md. Shafique Mahmud', 'upload/propert/1823113853348395.jpg', '<div class=\"modal-body\"> <p>Hi, my name is Md. Shafique Mahmud and I am the Administration Assistant and Resicare SA. I am currently doing some causal hours as an OSHC Educator. I am also doing some coaching for Calisthenics with some of the young ones as well as doing this myself. </p> <p> I have recently commenced this role and enjoying the contact with support workers and clients and the impact that we can make in their lives. I look forward to continuing to meet everyone and support a great company.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p></div>', 2, NULL, '2026-03-31 07:13:53'),
(9, 'Office Executive Digital Marketing', 'Md. Abdul Jalil', 'upload/propert/1823113912769052.jpg', '<p style=\"font-size: 14.4px;\">&nbsp;My name is Md. Abdul Jalil. I have worked in the Disability sector for over 20 years as a manager.</p><p style=\"font-size: 14.4px;\">I have extensive experience in the Aged and Disability sectors and have managed and helped set up Supported Disability Accommodation houses for clients to be able to live in the community and access various programmes with support of workers as independently as possible. I am very client focussed in all that I do and working closely with families to achieve goals and best outcomes for their loved ones.</p><p style=\"font-size: 14.4px;\">My role as a Support Coordinator for ResiCare SA is to support clients and families in understanding their NDIS plans and how to navigate them. To be able to engage with various external agencies and providers to achieve the best outcomes. I can assist families and clients with any issues that may arise and how to overcome them.</p><p style=\"font-size: 14.4px;\">As their plans come close to review I will follow up with all providers to get progress reports to be able to show how all goals are being achieved and to assist with gaining any additional funding and supports needed. As a Disability Accommodation manager, ensure all houses are compliant to SDA standard for clients and that they match the criteria. We also provide in home support for clients with NDIS funding within their own home with a variety of services. We continue to identify the needs of clients and families in the community and the best way when approached that we can support them to live a fulfilling lifestyle.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 2, '2025-02-04 08:15:14', '2026-03-31 07:14:17'),
(19, 'Modern & Comfortable Living Apartments', 'Luxury Residential Complex', 'upload/propert/1859716064203453.jpg', '<p data-start=\"295\" data-end=\"525\"><strong data-start=\"295\" data-end=\"311\">Description:</strong><br data-start=\"311\" data-end=\"314\">\r\nImperial Estate Ltd developed this luxury residential complex with modern architecture, strong construction quality, and peaceful environment. This project is perfect for families who want secure, comfortable, and high-standard living facilities in a prime location.</p>\r\n<p data-start=\"527\" data-end=\"538\"><strong data-start=\"527\" data-end=\"538\">Points:</strong></p>\r\n<ul data-start=\"540\" data-end=\"624\">\r\n<li data-section-id=\"1xcgcmw\" data-start=\"540\" data-end=\"571\">\r\n<p data-start=\"542\" data-end=\"571\">Modern Architectural Design</p>\r\n</li>\r\n<li data-section-id=\"1f83put\" data-start=\"572\" data-end=\"596\">\r\n<p data-start=\"574\" data-end=\"596\">24/7 Security System</p>\r\n</li>\r\n<li data-section-id=\"1dhb6pi\" data-start=\"597\" data-end=\"624\">\r\n<p data-start=\"599\" data-end=\"624\">High Quality Construction</p></li></ul>', 1, '2025-02-04 09:20:09', '2026-03-15 08:30:46'),
(20, 'Perfect Space for Business & Offices', 'Modern Commercial Building', 'upload/propert/1859716240144456.jpg', '<p data-start=\"742\" data-end=\"930\"><strong data-start=\"742\" data-end=\"758\">Description:</strong><br data-start=\"758\" data-end=\"761\">This commercial building project is designed for offices, showrooms, and corporate businesses. Imperial Estate Ltd ensured strong structure, modern design, lift facility, and parking space to provide the best environment for business activities.</p><p data-start=\"932\" data-end=\"943\"><strong data-start=\"932\" data-end=\"943\">Points:</strong></p><p data-start=\"1548\" data-end=\"1709\"></p><ul data-start=\"945\" data-end=\"1020\"><li data-section-id=\"pwjm9i\" data-start=\"945\" data-end=\"963\"><p data-start=\"947\" data-end=\"963\">Prime Location</p></li><li data-section-id=\"r4muix\" data-start=\"964\" data-end=\"994\"><p data-start=\"966\" data-end=\"994\">Commercial Space Available</p></li><li data-section-id=\"qc2nec\" data-start=\"995\" data-end=\"1020\"><p data-start=\"997\" data-end=\"1020\">Lift &amp; Parking Facility</p></li></ul>', 1, NULL, '2026-03-15 08:33:34'),
(21, 'Best Place for Shops & Showrooms', 'Premium Shopping Complex', 'upload/propert/1859716222842685.jpg', '<p data-start=\"1147\" data-end=\"1335\"><strong data-start=\"1147\" data-end=\"1163\">Description:</strong><br data-start=\"1163\" data-end=\"1166\">\r\nImperial Estate Ltd built this shopping complex in a prime location for business owners. The project includes modern design, wide space, parking facility, and secure environment which makes it perfect for shops and commercial use.</p><p data-start=\"1337\" data-end=\"1348\"><strong data-start=\"1337\" data-end=\"1348\">Points:</strong></p><p style=\"font-size: 14.4px;\">\r\n\r\n</p><ul data-start=\"1350\" data-end=\"1428\">\r\n<li data-section-id=\"1ejupwg\" data-start=\"1350\" data-end=\"1379\">\r\n<p data-start=\"1352\" data-end=\"1379\">Perfect Business Location</p>\r\n</li>\r\n<li data-section-id=\"11p779s\" data-start=\"1380\" data-end=\"1407\">\r\n<p data-start=\"1382\" data-end=\"1407\">Modern Design Structure</p>\r\n</li>\r\n<li data-section-id=\"el44ve\" data-start=\"1408\" data-end=\"1428\">\r\n<p data-start=\"1410\" data-end=\"1428\">Large Parking Area</p></li></ul>', 1, '2025-02-04 09:22:09', '2026-03-15 08:33:17'),
(22, 'Planned Area with Modern Facilities', 'Smart Housing Project', 'upload/propert/1859716295122299.jpg', '<p data-start=\"1548\" data-end=\"1709\"><strong data-start=\"1548\" data-end=\"1564\">Description:</strong><br data-start=\"1564\" data-end=\"1567\">\r\nThis housing development project is built with proper planning, wide roads, drainage system, and green environment. Imperial Estate Ltd always focuses on safe, secure, and future-ready residential projects for comfortable living.</p><p data-start=\"1711\" data-end=\"1722\"><strong data-start=\"1711\" data-end=\"1722\">Points:</strong></p><p style=\"font-size: 14.4px;\">\r\n\r\n</p><ul data-start=\"1724\" data-end=\"1812\">\r\n<li data-section-id=\"n2uc1d\" data-start=\"1724\" data-end=\"1752\">\r\n<p data-start=\"1726\" data-end=\"1752\">Planned Residential Area</p>\r\n</li>\r\n<li data-section-id=\"1vl55ul\" data-start=\"1753\" data-end=\"1782\">\r\n<p data-start=\"1755\" data-end=\"1782\">Safe &amp; Secure Environment</p>\r\n</li>\r\n<li data-section-id=\"v5aw2p\" data-start=\"1783\" data-end=\"1812\">\r\n<p data-start=\"1785\" data-end=\"1812\">Future Ready Infrastructure</p></li></ul>', 1, '2025-02-04 09:22:48', '2026-03-15 08:34:26');

-- --------------------------------------------------------

--
-- Table structure for table `properties`
--

CREATE TABLE `properties` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `price` int(2) DEFAULT NULL,
  `privacy` longtext DEFAULT NULL,
  `condition` longtext DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `properties`
--

INSERT INTO `properties` (`id`, `image`, `name`, `price`, `privacy`, `condition`, `status`, `created_at`, `updated_at`) VALUES
(36, 'upload/blog/1860974059355538.png', '“A New Standard of Modern Living in Dhaka”', NULL, '<p data-start=\"220\" data-end=\"508\">In today’s fast-paced urban life, finding a home that offers comfort, security, and modern amenities can be challenging. <strong data-start=\"341\" data-end=\"376\">Imperial Estate &amp; Holdings Ltd.</strong> is redefining real estate by delivering high-quality residential and land development projects tailored to contemporary lifestyles.</p><p data-start=\"510\" data-end=\"779\">With a strong focus on strategic locations and modern architectural design, the company ensures that every project meets the evolving needs of city dwellers. Their developments are not just buildings—they are thoughtfully planned communities designed for better living.</p><p>\r\n\r\n</p><p data-start=\"781\" data-end=\"985\">Committed to trust, transparency, and customer satisfaction, Imperial Estate &amp; Holdings Ltd. continues to build lasting relationships with its clients, making it a reliable choice for your dream property.</p><div><br></div>', '<h3 data-section-id=\"mxnacx\" data-start=\"111\" data-end=\"179\">“Finding Your Perfect Property: A Complete Guide for Homebuyers”</h3><p data-start=\"181\" data-end=\"391\">Buying a property is one of the most important decisions in life. Whether you are searching for your dream home or planning to invest, making the right choice requires careful consideration and proper guidance.</p><p data-start=\"393\" data-end=\"720\"><strong data-start=\"393\" data-end=\"428\">Imperial Estate &amp; Holdings Ltd.</strong> understands the needs of modern homebuyers and offers a range of residential and land development options designed to suit different lifestyles and budgets. Their projects are strategically located, ensuring easy access to essential facilities such as schools, hospitals, and transportation.</p><p data-start=\"722\" data-end=\"993\">Before purchasing a property, it is essential to evaluate factors like location, legal documentation, construction quality, and future value. A reliable real estate company can make this process much smoother by providing transparent information and professional support.</p><p data-start=\"995\" data-end=\"1292\">With a strong commitment to quality and customer satisfaction, Imperial Estate &amp; Holdings Ltd. helps clients navigate the property buying journey with confidence. Their experienced team is always ready to assist, ensuring that every customer finds a property that truly matches their expectations.</p><p>\r\n\r\n\r\n\r\n\r\n</p><p data-start=\"1294\" data-end=\"1499\">In today’s competitive real estate market, choosing the right partner can make all the difference. By working with a trusted name, you can turn your property goals into reality with ease and peace of mind.</p>', 2, '2025-02-05 05:32:05', '2026-03-29 05:46:05'),
(37, 'upload/blog/1860974117178661.png', '“Green Living: Building a Sustainable Future”', NULL, '<p data-start=\"1063\" data-end=\"1267\">As environmental awareness grows, the demand for eco-friendly living spaces is increasing. <strong data-start=\"1154\" data-end=\"1189\">Imperial Estate &amp; Holdings Ltd.</strong> embraces this shift by integrating green building concepts into its projects.</p><p data-start=\"1269\" data-end=\"1536\">From ensuring proper ventilation and natural lighting to maintaining open spaces and eco-conscious designs, the company focuses on creating healthier living environments. These features not only enhance quality of life but also contribute to long-term sustainability.</p><p>\r\n\r\n</p><p data-start=\"1538\" data-end=\"1726\">By adopting environmentally responsible construction practices, Imperial Estate &amp; Holdings Ltd. is playing a key role in shaping a greener and more livable future for upcoming generations.</p><p><br></p>', '<h3 data-section-id=\"mxnacx\" data-start=\"111\" data-end=\"179\">“Finding Your Perfect Property: A Complete Guide for Homebuyers”</h3><p data-start=\"181\" data-end=\"391\">Buying a property is one of the most important decisions in life. Whether you are searching for your dream home or planning to invest, making the right choice requires careful consideration and proper guidance.</p><p data-start=\"393\" data-end=\"720\"><strong data-start=\"393\" data-end=\"428\">Imperial Estate &amp; Holdings Ltd.</strong> understands the needs of modern homebuyers and offers a range of residential and land development options designed to suit different lifestyles and budgets. Their projects are strategically located, ensuring easy access to essential facilities such as schools, hospitals, and transportation.</p><p data-start=\"722\" data-end=\"993\">Before purchasing a property, it is essential to evaluate factors like location, legal documentation, construction quality, and future value. A reliable real estate company can make this process much smoother by providing transparent information and professional support.</p><p data-start=\"995\" data-end=\"1292\">With a strong commitment to quality and customer satisfaction, Imperial Estate &amp; Holdings Ltd. helps clients navigate the property buying journey with confidence. Their experienced team is always ready to assist, ensuring that every customer finds a property that truly matches their expectations.</p><p>\r\n\r\n\r\n\r\n\r\n</p><p data-start=\"1294\" data-end=\"1499\">In today’s competitive real estate market, choosing the right partner can make all the difference. By working with a trusted name, you can turn your property goals into reality with ease and peace of mind.</p>', 2, '2025-02-05 05:34:02', '2026-03-29 05:46:59'),
(38, 'upload/blog/1860974180438105.png', '“Why Now is the Right Time to Invest in Real Estate”', NULL, '<p data-start=\"1811\" data-end=\"2039\">The real estate sector in Bangladesh is experiencing steady growth, especially in urban areas like Dhaka. With increasing demand for residential and commercial properties, now is an ideal time to consider real estate investment.</p><p data-start=\"2041\" data-end=\"2253\"><strong data-start=\"2041\" data-end=\"2076\">Imperial Estate &amp; Holdings Ltd.</strong> offers secure and high-potential investment opportunities. Their expert team carefully selects prime locations with strong future value, ensuring maximum returns for investors.</p><p>\r\n\r\n</p><p data-start=\"2255\" data-end=\"2445\">Whether you are a first-time buyer or a seasoned investor, partnering with a trusted company like Imperial Estate &amp; Holdings Ltd. can help you make smart and profitable investment decisions.</p>', '<h3 data-section-id=\"mxnacx\" data-start=\"111\" data-end=\"179\">“Finding Your Perfect Property: A Complete Guide for Homebuyers”</h3><p data-start=\"181\" data-end=\"391\">Buying a property is one of the most important decisions in life. Whether you are searching for your dream home or planning to invest, making the right choice requires careful consideration and proper guidance.</p><p data-start=\"393\" data-end=\"720\"><strong data-start=\"393\" data-end=\"428\">Imperial Estate &amp; Holdings Ltd.</strong> understands the needs of modern homebuyers and offers a range of residential and land development options designed to suit different lifestyles and budgets. Their projects are strategically located, ensuring easy access to essential facilities such as schools, hospitals, and transportation.</p><p data-start=\"722\" data-end=\"993\">Before purchasing a property, it is essential to evaluate factors like location, legal documentation, construction quality, and future value. A reliable real estate company can make this process much smoother by providing transparent information and professional support.</p><p data-start=\"995\" data-end=\"1292\">With a strong commitment to quality and customer satisfaction, Imperial Estate &amp; Holdings Ltd. helps clients navigate the property buying journey with confidence. Their experienced team is always ready to assist, ensuring that every customer finds a property that truly matches their expectations.</p><p style=\"font-size: 14.4px;\">\r\n\r\n\r\n\r\n\r\n</p><p data-start=\"1294\" data-end=\"1499\">In today’s competitive real estate market, choosing the right partner can make all the difference. By working with a trusted name, you can turn your property goals into reality with ease and peace of mind.</p>', 2, '2025-02-05 05:38:03', '2026-03-29 05:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'asdasdasd', '2022-10-30 06:24:58', '2023-05-23 03:20:31'),
(3, 'Reporter', 'asdasd', '2022-10-30 08:08:54', '2023-05-23 03:19:59');

-- --------------------------------------------------------

--
-- Table structure for table `role_routes`
--

CREATE TABLE `role_routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `route_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_routes`
--

INSERT INTO `role_routes` (`id`, `role_id`, `role_name`, `route_name`, `created_at`, `updated_at`) VALUES
(78, 1, 'Admin', 'user.add', '2023-05-29 03:40:01', '2023-05-29 03:40:01'),
(79, 1, 'Admin', 'user.new', '2023-05-29 03:40:01', '2023-05-29 03:40:01'),
(80, 1, 'Admin', 'user.manage', '2023-05-29 03:40:01', '2023-05-29 03:40:01'),
(81, 1, 'Admin', 'user.edit', '2023-05-29 03:40:01', '2023-05-29 03:40:01'),
(82, 1, 'Admin', 'user.update', '2023-05-29 03:40:01', '2023-05-29 03:40:01'),
(83, 1, 'Admin', 'user.delete', '2023-05-29 03:40:01', '2023-05-29 03:40:01'),
(84, 1, 'Admin', 'post.add', '2023-05-29 03:40:02', '2023-05-29 03:40:02'),
(85, 1, 'Admin', 'post.new', '2023-05-29 03:40:02', '2023-05-29 03:40:02'),
(86, 1, 'Admin', 'post.manage', '2023-05-29 03:40:02', '2023-05-29 03:40:02'),
(87, 1, 'Admin', 'post.edit', '2023-05-29 03:40:02', '2023-05-29 03:40:02'),
(88, 1, 'Admin', 'post.update', '2023-05-29 03:40:02', '2023-05-29 03:40:02'),
(89, 1, 'Admin', 'post.delete', '2023-05-29 03:40:02', '2023-05-29 03:40:02'),
(90, 1, 'Admin', 'role.add', '2023-05-29 03:40:02', '2023-05-29 03:40:02'),
(91, 1, 'Admin', 'role.new', '2023-05-29 03:40:02', '2023-05-29 03:40:02'),
(92, 1, 'Admin', 'role.manage', '2023-05-29 03:40:02', '2023-05-29 03:40:02'),
(93, 1, 'Admin', 'role.edit', '2023-05-29 03:40:02', '2023-05-29 03:40:02'),
(94, 1, 'Admin', 'role.update', '2023-05-29 03:40:02', '2023-05-29 03:40:02'),
(95, 1, 'Admin', 'role.delete', '2023-05-29 03:40:02', '2023-05-29 03:40:02'),
(96, 1, 'Admin', 'slider.add', '2023-05-29 03:40:02', '2023-05-29 03:40:02'),
(97, 1, 'Admin', 'slider.new', '2023-05-29 03:40:02', '2023-05-29 03:40:02'),
(98, 1, 'Admin', 'slider.manage', '2023-05-29 03:40:02', '2023-05-29 03:40:02'),
(99, 1, 'Admin', 'slider.edit', '2023-05-29 03:40:02', '2023-05-29 03:40:02'),
(100, 1, 'Admin', 'slider.update', '2023-05-29 03:40:02', '2023-05-29 03:40:02'),
(101, 1, 'Admin', 'slider.delete', '2023-05-29 03:40:02', '2023-05-29 03:40:02'),
(102, 1, 'Admin', 'category.add', '2023-05-29 03:40:02', '2023-05-29 03:40:02'),
(103, 1, 'Admin', 'category.new', '2023-05-29 03:40:02', '2023-05-29 03:40:02'),
(104, 1, 'Admin', 'category.manage', '2023-05-29 03:40:02', '2023-05-29 03:40:02'),
(105, 1, 'Admin', 'category.edit', '2023-05-29 03:40:02', '2023-05-29 03:40:02'),
(106, 1, 'Admin', 'category.update', '2023-05-29 03:40:02', '2023-05-29 03:40:02'),
(107, 1, 'Admin', 'category.delete', '2023-05-29 03:40:03', '2023-05-29 03:40:03'),
(113, 3, 'Reporter', 'post.add', '2023-06-05 09:00:16', '2023-06-05 09:00:16'),
(114, 3, 'Reporter', 'post.new', '2023-06-05 09:00:16', '2023-06-05 09:00:16'),
(115, 3, 'Reporter', 'post.manage', '2023-06-05 09:00:17', '2023-06-05 09:00:17'),
(116, 3, 'Reporter', 'post.edit', '2023-06-05 09:00:17', '2023-06-05 09:00:17'),
(117, 3, 'Reporter', 'post.update', '2023-06-05 09:00:17', '2023-06-05 09:00:17'),
(124, 1, 'Admin', 'board.add', NULL, NULL),
(125, 1, 'Admin', 'board.edit', NULL, NULL),
(126, 1, 'Admin', 'board.update', NULL, NULL),
(127, 1, 'Admin', 'board.delete', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('CMumJTZQyYAGMIEKEEPP76CFJVosnLQYt3ig0xPj', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiMWhKWDZlUzhvSWxnS1dTaGg2TjhsdlZmalVFbmNyVWIwVk9wbDkydiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjk6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9jb250YWN0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjIxOiJwYXNzd29yZF9oYXNoX3NhbmN0dW0iO3M6NjA6IiQyYSQxMiRoM3A2UllKRy9XSnF2Ri80cG5PalZ1cEc0MU5qeWNIejc0ZzkwZXpNYWVLVHlBOS5IR1Q5dSI7czo1OiJhbGVydCI7YTowOnt9fQ==', 1774948807),
('LG1XAYm6Dh02a9PkQglh6DCadKRfxO9OWDhne3kx', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/146.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiRnJETWo4eVBwVlB1SE90ZGk2UVhldjk2VnVTVU5MSzZhQnNUdUl4MiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDI6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9zZXR0aW5nL2NvbnRhY3QvZGF0YSI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NToiYWxlcnQiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMmEkMTIkaDNwNlJZSkcvV0pxdkYvNHBuT2pWdXBHNDFOanljSHo3NGc5MGV6TWFlS1R5QTkuSEdUOXUiO30=', 1774953146);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `logo` varchar(70) DEFAULT NULL,
  `p_phone` varchar(50) DEFAULT NULL,
  `s_phone` varchar(50) DEFAULT NULL,
  `d_phone` varchar(50) DEFAULT NULL,
  `p_mail` varchar(50) DEFAULT NULL,
  `s_mail` varchar(50) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `f_logo` varchar(70) DEFAULT NULL,
  `privacy` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `logo`, `p_phone`, `s_phone`, `d_phone`, `p_mail`, `s_mail`, `location`, `f_logo`, `privacy`, `created_at`, `updated_at`) VALUES
(1, 'Imperial Estate & Holdings Ltd.', 'upload/setting/1859809390152922.png', '+880 1714-008786', '+880 1974-008786', '+8802223385673', 'imperialestateholdingsltd@gmail.com', 'info@imperialestatebd.com', 'Level 03, Sultana Tower, 2 Mirpur Road, Kalabagan, Dhanmondi, Dhaka, Bangladesh, 1205', 'upload/setting/1859808461891640.png', 'Imperial Estate &amp; Holdings Ltd. – Promoting Smart Living &amp; Sustainable Building', '2025-02-10 06:02:20', '2026-03-16 09:14:08');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `s_title` varchar(300) DEFAULT NULL,
  `link` varchar(150) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `s_title`, `link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(12, 'Building Your Future with Trusted Real Estate', 'Premium land, property, and investment opportunities designed to secure your future.', '#', 'slider-images/building-your-future-with-trusted-real-estate-1773296086.jpg', 1, '2023-10-02 09:46:19', '2026-03-12 06:14:46'),
(13, 'Smart Property Investments Start Here', 'Discover reliable real estate solutions with transparency, value, and long-term growth.', '#', 'slider-images/smart-property-investments-start-here-1773296116.jpg', 1, '2023-10-02 09:47:36', '2026-03-12 06:15:17'),
(14, 'Your Partner in Property Excellence', 'Imperial Estate & Holdings Ltd. delivers trusted services in land development and property management.', '#', 'slider-images/your-partner-in-property-excellence-1773296142.jpg', 1, '2023-10-02 09:48:44', '2026-03-12 06:15:42');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(255) NOT NULL DEFAULT '0',
  `image` varchar(255) DEFAULT NULL,
  `user_type` tinyint(4) NOT NULL DEFAULT 0,
  `access_label` tinyint(4) NOT NULL DEFAULT 0,
  `website_status` tinyint(4) NOT NULL DEFAULT 1,
  `login_status` tinyint(4) NOT NULL DEFAULT 1,
  `auth_type` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `mobile`, `image`, `user_type`, `access_label`, `website_status`, `login_status`, `auth_type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@gmail.com', NULL, '$2a$12$h3p6RYJG/WJqvF/4pnOjVupG41NjycHz74g90ezMaeKTyA9.HGT9u', NULL, NULL, NULL, '0', 'user-images/1687774120.jpg', 1, 0, 1, 1, NULL, NULL, '2022-10-25 03:28:53', '2023-06-26 10:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boards`
--
ALTER TABLE `boards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `imprints`
--
ALTER TABLE `imprints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `multi_images`
--
ALTER TABLE `multi_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `peaces`
--
ALTER TABLE `peaces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `practices`
--
ALTER TABLE `practices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `privacies`
--
ALTER TABLE `privacies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `properties`
--
ALTER TABLE `properties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_routes`
--
ALTER TABLE `role_routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `boards`
--
ALTER TABLE `boards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `imprints`
--
ALTER TABLE `imprints`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `multi_images`
--
ALTER TABLE `multi_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;

--
-- AUTO_INCREMENT for table `peaces`
--
ALTER TABLE `peaces`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `practices`
--
ALTER TABLE `practices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `privacies`
--
ALTER TABLE `privacies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `properties`
--
ALTER TABLE `properties`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_routes`
--
ALTER TABLE `role_routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
