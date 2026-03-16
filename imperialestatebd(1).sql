-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2026 at 10:38 AM
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
-- Database: `imperialestatebd`
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
(28, 'Your Trusted Partner in Premium Imperial Estate & Holdings Ltd.', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 24px; color: rgb(129, 128, 128); font-family: &quot;Open Sans&quot;, sans-serviceif; text-align: justify;\"><span style=\"font-family: Tahoma;\">Providing legal services on a regular basis on various matters concerning different areas of the law including but not limited to Artha Rin Adalat Ain 2003, Negotiable Instruments Act 1881, Bank Companies Act 1991, Financial Institutions Act 1993, Companies Act 1994, Bangladesh Bank Foreign Exchange Regulations, The Registration Act, The Code of Civil Procedure, The Code of Criminal Procedure, Penal Code, The Special Powers Act, The Evidence Act, The Specific Relief Act, Limitation Act, Family Laws, Transfer of Property Act, Stamp Act, Court Fees Act, Foreign Exchange Regulations Act 1947, Letter of Credits, Uniform Practice and Custom for Documentary Credit, Customs Act, Value Added Tax Act 1991, Income Tax Ordinance 1984, Arbitration Act 2001, laws and regulations of the Securities and Exchanges Commission, Anti-Money Laundering Act, etc.</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 24px; color: rgb(129, 128, 128); font-family: &quot;Open Sans&quot;, sans-serviceif; text-align: justify;\"><span style=\"font-family: Tahoma;\">Deals with all types of Civil suits such as property matters, title matter, family suits, money suits, Artha Rin Suits, L/c. matter, etc. and in criminal side CR Cases including case under NI Act, The Penal Code, GR Cases, Criminal Appeal, Revision, bail matter, etc. I deal with cases both in lower judiciary, i.e. Districts Courts as well as higher judiciary, i.e. Supreme Court of Bangladesh both High Court Division and Appellate Division. Deals with company matter, writ matter, tax matter, service matter etc. before the High Court Division of the Supreme Court of Bangladesh.</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 24px; color: rgb(129, 128, 128); font-family: &quot;Open Sans&quot;, sans-serviceif; text-align: justify;\"><span style=\"font-family: Tahoma;\">Experienced and specialized in preparing, drafting and vetting all necessary loan/security documents in connection to syndicated financing arrangement. Actively participated as common counsel for the lead agent and arranger in a number of significant and contemporary syndication deals including: i) Keya Cosmetic Ltd. (Pubali Bank), ii) Noman Terry Towel Ltd. (Prime Bank), iii) Jem Jute Ltd. (Prime Bank), (v) Eskayef Bangladesh Ltd. (Prime Bank) and many more.</span></p>', '<p data-start=\"148\" data-end=\"191\"><strong data-start=\"148\" data-end=\"189\">About Imperial Estate &amp; Holdings Ltd.</strong></p><p data-start=\"193\" data-end=\"545\">Imperial Estate &amp; Holdings Ltd. is a premier real estate and property development company, dedicated to redefining modern living and commercial spaces in Bangladesh. With years of experience and a proven track record, we specialize in creating projects that blend contemporary architecture, cutting-edge design, and sustainable development practices.</p><p data-start=\"547\" data-end=\"909\">Our mission is to deliver exceptional value to our clients by providing spaces that are not only functional and aesthetically striking but also built to the highest international standards. From luxury residential communities to high-end commercial complexes, each project is meticulously planned and executed with attention to detail, innovation, and quality.</p><p data-start=\"911\" data-end=\"1301\">At Imperial Estate &amp; Holdings Ltd., we believe that real estate is more than bricks and mortar—it is about shaping lifestyles, building trust, and creating enduring relationships with our clients. Our dedicated team of professionals works tirelessly to ensure that every development enhances the environment, elevates the community, and stands as a symbol of excellence for years to come.</p><p>\n\n\n\n</p><p data-start=\"1303\" data-end=\"1474\">We are committed to sustainable growth, innovation, and exceeding expectations, making Imperial Estate &amp; Holdings Ltd. a trusted name in premium real estate development.</p>', '<p data-start=\"148\" data-end=\"191\"><strong data-start=\"148\" data-end=\"189\">About Imperial Estate &amp; Holdings Ltd.</strong></p><p data-start=\"193\" data-end=\"545\">Imperial Estate &amp; Holdings Ltd. is a premier real estate and property development company, dedicated to redefining modern living and commercial spaces in Bangladesh. With years of experience and a proven track record, we specialize in creating projects that blend contemporary architecture, cutting-edge design, and sustainable development practices.</p><p data-start=\"547\" data-end=\"909\">Our mission is to deliver exceptional value to our clients by providing spaces that are not only functional and aesthetically striking but also built to the highest international standards. From luxury residential communities to high-end commercial complexes, each project is meticulously planned and executed with attention to detail, innovation, and quality.</p><p data-start=\"911\" data-end=\"1301\">At Imperial Estate &amp; Holdings Ltd., we believe that real estate is more than bricks and mortar—it is about shaping lifestyles, building trust, and creating enduring relationships with our clients. Our dedicated team of professionals works tirelessly to ensure that every development enhances the environment, elevates the community, and stands as a symbol of excellence for years to come.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 24px; color: rgb(129, 128, 128); font-family: &quot;Open Sans&quot;, sans-serviceif; text-align: justify;\"></p><p data-start=\"1303\" data-end=\"1474\">We are committed to sustainable growth, innovation, and exceeding expectations, making Imperial Estate &amp; Holdings Ltd. a trusted name in premium real estate development.</p>', 'upload/about/1859720404250715.jpg', 2, '2025-02-04 11:02:35', '2026-03-15 09:43:37');

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
(1, 'Property Buying & Selling', 'upload/service/1859705525155354.png', 'upload/service/1859705525176116.jpg', '<p>We assist clients in buying and selling residential and commercial properties with complete transparency. Our team ensures fair market pricing, proper documentation, and a smooth transaction process.</p>', 2, '2025-02-05 09:11:59', '2026-03-15 05:43:15'),
(2, 'Real Estate Investment Consulting', 'upload/service/1859705636091189.png', 'upload/service/1859705636110092.jpg', '<p>Our experts provide strategic guidance for real estate investments. We analyze market trends, recommend profitable locations, and help clients make informed investment decisions for long-term growth.</p>', 2, '2025-02-05 09:12:55', '2026-03-15 05:45:01'),
(3, 'Property Development', 'upload/service/1859705716024082.png', 'upload/service/1859705716045002.jpg', '<p>We specialize in developing modern residential and commercial projects with quality construction, smart planning, and contemporary architectural design.</p>', 2, '2025-02-05 09:13:39', '2026-03-15 05:46:17'),
(4, 'Property Management', 'upload/service/1859706590677884.png', 'upload/service/1823208232401551.jpg', '<p>Representation in numerous criminal matters, including detailed invest. Assistance with bail procedures eval.</p><p class=\"\">Real Estate Law is a complex area of law that governs the formation, organization, and operation of corporations. It encompasses a wide range of legal issues, including business formation, governance, financing, mergers and acquisitions, corporate compliance, intellectual property, contracts, and litigation. Businesses must be aware of the legal requirements and regulations that apply to their specific industry and ensure that they are in compliance with all applicable laws</p><p> </p><p class=\"mb-50\">Understanding the legal requirements and regulations that apply to your corporation is essential for ensuring its success and protecting your interests. Consulting with a corporate attorney can provide you with the guidance and expertise you need to navigate the complexities of corporate law. economic impacts of its activities. Many corporations are increasingly focused on CSR as a way to build.</p>', 2, '2025-02-05 09:14:24', '2026-03-15 06:00:11'),
(5, 'Land & Plot Sales', 'upload/service/1859705794400949.png', 'upload/service/1859705794423323.jpg', '<p>We offer verified land and plot sales in promising locations. Our team ensures proper legal verification and helps clients choose the best property for future value.</p>', 2, '2025-02-05 09:15:06', '2026-03-15 05:47:32'),
(6, 'Legal & Documentation Support', 'upload/service/1859706576481603.png', 'upload/service/1859705853800396.jpg', '<p>We provide professional assistance with property registration, ownership verification, agreements, and other legal documentation to ensure a safe and hassle-free property transaction.</p>', 2, '2025-02-05 09:15:45', '2026-03-15 05:59:58');

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
(1, 'Why You Should Trust Us? Learn More About Us!', '<p class=\"mb-4\" style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px; margin-bottom: 1.5rem !important;\">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo magna dolore erat amet</p><div class=\"row g-4\" style=\"--bs-gutter-x: 1.5rem; --bs-gutter-y: 1.5rem; margin-top: -24px; margin-right: -12px; margin-left: -12px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\"><div class=\"col-12\" style=\"width: 636px; padding-right: 12px; padding-left: 12px; margin-top: 24px;\"><div class=\"d-flex align-items-start\"><img class=\"flex-shrink-0\" src=\"http://127.0.0.1:8000/front/img/icons/icon-2.png\" alt=\"Icon\"><div class=\"ms-4\" style=\"margin-left: 1.5rem !important;\"><h3 style=\"margin-top: 0px; margin-bottom: 0.5rem; font-family: Teko, sans-serif; line-height: 1.2; color: rgb(37, 37, 37); font-size: 1.75rem; font-weight: 500 !important;\">Design Approach</h3><p class=\"mb-0\">Erat ipsum justo amet duo et elitr dolor, est duo duo eos lorem sed diam stet diam sed stet.</p></div></div></div><div class=\"col-12\" style=\"width: 636px; padding-right: 12px; padding-left: 12px; margin-top: 24px;\"><div class=\"d-flex align-items-start\"><img class=\"flex-shrink-0\" src=\"http://127.0.0.1:8000/front/img/icons/icon-3.png\" alt=\"Icon\"><div class=\"ms-4\" style=\"margin-left: 1.5rem !important;\"><h3 style=\"margin-top: 0px; margin-bottom: 0.5rem; font-family: Teko, sans-serif; line-height: 1.2; color: rgb(37, 37, 37); font-size: 1.75rem; font-weight: 500 !important;\">Innovative Solutions</h3><p class=\"mb-0\">Erat ipsum justo amet duo et elitr dolor, est duo duo eos lorem sed diam stet diam sed stet.</p></div></div></div><div class=\"col-12\" style=\"width: 636px; padding-right: 12px; padding-left: 12px; margin-top: 24px;\"><div class=\"d-flex align-items-start\"><img class=\"flex-shrink-0\" src=\"http://127.0.0.1:8000/front/img/icons/icon-4.png\" alt=\"Icon\"><div class=\"ms-4\" style=\"margin-left: 1.5rem !important;\"><h3 style=\"margin-top: 0px; margin-bottom: 0.5rem; font-family: Teko, sans-serif; line-height: 1.2; color: rgb(37, 37, 37); font-size: 1.75rem; font-weight: 500 !important;\">Project Management</h3><p class=\"mb-0\">Erat ipsum justo amet duo et elitr dolor, est duo duo eos lorem sed diam stet diam sed stet.</p></div></div></div></div>', 'upload/business/1859703851696230.jpg', 'upload/business/1859703852331734.jpg', 'Why Choose Us!', NULL, '2026-03-15 05:29:48');

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
(105, 'What We Do', 'what-we-do', 'Legal Services We Offer', 96, 2, '2025-02-11 10:02:40', '2025-02-11 10:02:40'),
(106, 'Our Attorneys', 'our-attorneys', 'Dedicated Lawyers, Proven Results', 96, 2, '2025-02-11 10:03:06', '2025-02-11 10:12:28'),
(107, 'Our Practice Area', 'our-practice-area', 'Attorneys of Practice Area', 96, 2, '2025-02-11 10:03:29', '2025-02-11 10:03:29'),
(108, 'Articles', 'articles', 'Legal Articles', 96, 2, '2025-02-11 10:03:48', '2025-02-11 10:03:48'),
(109, 'Client Testimonials', 'client-testimonials', 'What Our Clients Say', 96, 2, '2025-02-11 10:04:12', '2025-02-11 10:04:12'),
(110, 'Have Any Questions?', 'have-any-questions', 'Get in Touch with Us', 96, 2, '2025-02-11 10:05:19', '2025-02-11 10:05:19'),
(111, 'Newsletter', 'newsletter', 'Sign Up to get latest Update', 96, 2, '2025-02-11 10:05:39', '2025-02-11 10:05:39'),
(112, 'Attorney Details', 'attorney-details', 'Attorney Details', 97, 2, '2025-02-11 10:29:45', '2025-02-11 10:29:45'),
(113, 'Schedule A Free Consultation', 'schedule-a-free-consultation', 'Our team of seasoned attorneys is dedicated to carefully listening to your concerns, ensuring a deep understanding of your unique situation.', 97, 2, '2025-02-11 10:30:17', '2025-02-11 10:30:17'),
(114, 'Schedule A Time', 'schedule-a-time', 'Choose a convenient date and time that works best for you. Our experienced lawyers are available to discuss.', 97, 2, '2025-02-11 10:31:08', '2025-02-11 10:31:08'),
(115, 'Meet with a Consultation', 'meet-with-a-consultation', 'During your consultation, you\'ll have the opportunity to discuss your case with a qualified attorney.', 97, 2, '2025-02-11 10:31:25', '2025-02-11 10:31:25'),
(116, 'Plan for Success', 'plan-for-success', 'Based on the information gathered during your consultation, we\'ll develop a tailored legal strategy to help you.', 97, 2, '2025-02-11 10:31:42', '2025-02-11 10:31:42'),
(117, 'Contact From', 'contact-from', 'Leave a Reply', 97, 2, '2025-02-11 10:32:08', '2025-02-11 10:32:08'),
(118, 'Practice Area', 'practice-area', 'Practice Area', 98, 2, '2025-02-11 10:34:16', '2025-02-11 10:34:16'),
(119, 'Our Practice Area', 'our-practice-area', 'Attorneys of Practice Area', 98, 2, '2025-02-11 10:34:33', '2025-02-11 10:34:33'),
(120, 'Our Clients', 'our-clients', 'Our Clients', 99, 2, '2025-02-11 11:09:11', '2025-02-11 11:09:11'),
(121, 'Our Clients', 'our-clients', 'Meet Our Happy Clients', 99, 2, '2025-02-11 11:09:32', '2025-02-11 11:09:32'),
(122, 'Our Advocates', 'our-advocates', 'Our Advocates', 100, 2, '2025-02-11 11:15:07', '2025-02-11 11:15:07'),
(123, 'Advocate', 'advocate', 'Meet Our Experienced Attorneys', 100, 2, '2025-02-11 11:15:30', '2025-02-11 11:15:30'),
(124, 'Service Page', 'service-page', NULL, 0, 2, '2025-02-12 07:00:05', '2025-02-12 07:00:05'),
(125, 'Services', 'services', 'Services', 124, 2, '2025-02-12 07:00:25', '2025-02-12 07:00:25'),
(126, 'What We Do', 'what-we-do', 'Legal Services We Offer', 124, 2, '2025-02-12 07:01:01', '2025-02-12 07:01:01'),
(127, 'Blogs', 'blogs', 'Blogs', 102, 2, '2025-02-12 07:02:59', '2025-02-12 07:02:59'),
(128, 'logo', 'logo', 'Chosen by millions around the globe', 102, 2, '2025-02-12 07:04:19', '2025-02-12 07:04:19'),
(129, 'Gallery', 'gallery', 'Gallery', 103, 2, '2025-02-12 07:05:42', '2025-02-12 07:05:42'),
(130, 'Gallery', 'gallery', 'Our Success Stories', 103, 2, '2025-02-12 07:06:09', '2025-02-12 07:06:09'),
(131, 'Support Teams', 'support-teams', 'Support Teams', 101, 2, '2025-02-12 07:06:58', '2025-02-12 07:06:58'),
(132, 'Support Teams', 'support-teams', 'Meet Our Support Team', 101, 2, '2025-02-12 07:07:23', '2025-02-12 07:07:23'),
(133, 'Contact', 'contact', 'Contact', 104, 2, '2025-02-16 09:30:44', '2025-02-16 09:30:44'),
(134, 'Have Questions?', 'have-questions', 'Discover more by visiting us or joining our community', 104, 2, '2025-02-16 09:31:09', '2025-02-16 09:31:09'),
(135, 'Form', 'form', 'Leave a Reply', 104, 2, '2025-02-16 09:31:34', '2025-02-16 09:31:34'),
(136, 'Service Details', 'service-details', NULL, 0, 2, '2025-02-16 09:57:40', '2025-02-16 09:57:40'),
(137, 'Advocate Details', 'advocate-details', NULL, 0, 2, '2025-02-16 09:58:14', '2025-02-16 09:58:14'),
(138, 'Team Deatails', 'team-deatails', NULL, 0, 2, '2025-02-16 09:58:40', '2025-02-16 09:58:40'),
(139, 'Area Details', 'area-details', NULL, 0, 2, '2025-02-16 09:59:15', '2025-02-16 09:59:15'),
(140, 'Practice Details', 'practice-details', 'Practice Details', 139, 2, '2025-02-16 10:16:07', '2025-02-16 10:16:07'),
(141, 'Logo', 'logo', 'Chosen by millions around the globe', 139, 2, '2025-02-16 10:16:36', '2025-02-16 10:16:36'),
(142, 'Client Details', 'client-details', NULL, 0, 2, '2025-02-16 10:17:09', '2025-02-16 10:17:09'),
(143, 'Client Details', 'client-details', 'Client Details', 142, 2, '2025-02-16 10:17:25', '2025-02-16 10:17:25'),
(144, 'Logo', 'logo', 'Chosen by millions around the globe', 142, 2, '2025-02-16 10:17:42', '2025-02-16 10:17:42'),
(145, 'Attorney Details', 'attorney-details', 'Attorney Details', 137, 2, '2025-02-16 10:18:00', '2025-02-16 10:18:00'),
(146, 'Logo', 'logo', 'Chosen by millions around the globe', 137, 2, '2025-02-16 10:18:35', '2025-02-16 10:18:35'),
(147, 'Service Details', 'service-details', 'Service Details', 136, 2, '2025-02-16 10:19:07', '2025-02-16 10:19:07'),
(148, 'Logo', 'logo', 'Chosen by millions around the globe', 136, 2, '2025-02-16 10:19:32', '2025-02-16 10:19:32'),
(149, 'Support Team Details', 'support-team-details', 'Support Team Details', 138, 2, '2025-02-16 10:19:56', '2025-02-16 10:20:43'),
(150, 'Logo', 'logo', 'Chosen by millions around the globe', 138, 2, '2025-02-16 10:21:12', '2025-02-16 10:21:12'),
(151, 'Blog Details', 'blog-details', 'Blog Details', 0, 2, '2025-02-16 10:22:10', '2025-02-16 10:22:10'),
(152, 'Logo', 'logo', 'Chosen by millions around the globe', 151, 2, '2025-02-16 10:23:13', '2025-02-16 10:23:13'),
(153, 'Blog Details', 'blog-details', 'Blog Details', 151, 2, '2025-02-16 10:44:09', '2025-02-16 10:44:09'),
(154, 'Need Any Help?', 'need-any-help', 'Need Any Help, Call Us 24/7 For Support', 151, 2, '2025-02-16 10:47:15', '2025-02-16 10:47:15'),
(155, 'Need Any Help?', 'need-any-help', 'Need Any Help, Call Us 24/7 For Support', 138, 2, '2025-02-16 11:07:04', '2025-02-16 11:07:04'),
(156, 'Need Any Help?', 'need-any-help', 'Need Any Help, Call Us 24/7 For Support', 136, 2, '2025-02-16 11:07:59', '2025-02-16 11:07:59'),
(157, 'Need Any Help?', 'need-any-help', 'Need Any Help, Call Us 24/7 For Support', 137, 2, '2025-02-16 11:22:48', '2025-02-16 11:22:48'),
(158, 'Need Any Help?', 'need-any-help', 'Need Any Help, Call Us 24/7 For Support', 142, 2, '2025-02-16 11:24:25', '2025-02-16 11:24:25'),
(159, 'Need Any Help?', 'need-any-help', 'Need Any Help, Call Us 24/7 For Support', 139, 2, '2025-02-16 11:27:17', '2025-02-16 11:27:17');

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
  `message` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Omar Faruk', '01887645449', 'omarfaruk6780@gmail.com', 'sfddsfs sfddsfd', '2025-02-10 10:12:42', '2025-02-10 10:12:42'),
(2, 'Omar Faruk', '01887645449', 'omarfaruk6780@gmail.com', 'fdgdhgfdhgf', '2025-02-10 10:14:20', '2025-02-10 10:14:20'),
(3, 'Omar Faruk', '01887645449', 'omarfaruk6780@gmail.com', 'sgdfgdf', '2025-02-10 10:15:39', '2025-02-10 10:15:39'),
(4, 'Omar Faruk', '01887645449', 'omarfaruk6780@gmail.com', 'dfsfdfsdfs', '2025-02-10 10:18:06', '2025-02-10 10:18:06'),
(5, 'Omar Faruk', '01887645449', 'omarfaruk6780@gmail.com', 'dfsdfdfdf', '2025-02-10 10:22:43', '2025-02-10 10:22:43'),
(6, 'Omar Faruk', '01887645449', 'omarfaruk6780@gmail.com', 'dfsdsdg', '2025-02-10 10:24:14', '2025-02-10 10:24:14'),
(7, 'Omar Faruk', '01887645449', 'omarfaruk6780@gmail.com', 'fgfhgfh', '2025-02-10 10:25:48', '2025-02-10 10:25:48'),
(8, 'Omar Faruk', '01887645449', 'omarfaruk6780@gmail.com', NULL, '2025-02-10 10:27:53', '2025-02-10 10:27:53'),
(9, 'Omar Faruk', '01887645449', 'omarfaruk6780@gmail.com', 'dfgdfg', '2025-02-10 10:30:09', '2025-02-10 10:30:09'),
(10, 'Omar Faruk', '01798715053', 'omarfaruk6780@gmail.com', 'tetrt', '2025-02-10 10:46:36', '2025-02-10 10:46:36');

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
  `multi_logo` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `name`, `multi_logo`, `created_at`, `updated_at`) VALUES
(1, 'Logo', 'upload/logo/1824204976463451.svg', '2025-02-10 05:22:25', '2025-02-16 09:17:13'),
(2, 'Logo', 'upload/logo/1824205008216179.svg', '2025-02-10 05:22:25', '2025-02-16 09:17:44'),
(3, 'Logo', 'upload/logo/1824205019643456.svg', '2025-02-10 05:22:25', '2025-02-16 09:17:55'),
(4, 'Logo', 'upload/logo/1824205030158101.svg', '2025-02-10 05:22:25', '2025-02-16 09:18:05'),
(5, 'Logo', 'upload/logo/1824205044153322.svg', '2025-02-10 05:22:25', '2025-02-16 09:18:18'),
(6, 'Logo', 'upload/logo/1824205102952084.svg', '2025-02-10 05:22:25', '2025-02-16 09:19:14');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `multi_images`
--

INSERT INTO `multi_images` (`id`, `name`, `multi_image`, `created_at`, `updated_at`) VALUES
(129, 'Gallery', 'upload/gallery/1823103363431767.jpg', '2025-02-03 08:51:34', '2025-02-04 05:27:34'),
(131, 'Gallery', 'upload/gallery/1823103381562455.jpg', '2025-02-04 05:27:51', '2025-02-04 05:27:51'),
(132, 'Gallery', 'upload/gallery/1823103381597503.jpg', '2025-02-04 05:27:51', '2025-02-04 05:27:51'),
(133, 'Gallery', 'upload/gallery/1823103381926528.jpg', '2025-02-04 05:27:51', '2025-02-04 05:27:51'),
(134, 'Gallery', 'upload/gallery/1823103381956288.jpg', '2025-02-04 05:27:51', '2025-02-04 05:27:51'),
(135, 'Gallery', 'upload/gallery/1823103381984652.jpg', '2025-02-04 05:27:51', '2025-02-04 05:27:51'),
(136, 'Gallery', 'upload/gallery/1823103382016001.jpg', '2025-02-04 05:27:51', '2025-02-04 05:27:51'),
(137, 'Gallery', 'upload/gallery/1823107278513403.jpg', '2025-02-04 06:29:47', '2025-02-04 06:29:47'),
(138, 'Gallery', 'upload/gallery/1823107278547421.jpg', '2025-02-04 06:29:47', '2025-02-04 06:29:47');

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
  `status` varchar(20) DEFAULT NULL,
  `privacy` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `practices`
--

INSERT INTO `practices` (`id`, `name`, `title`, `image`, `status`, `privacy`, `created_at`, `updated_at`) VALUES
(2, 'Writ Matters', 'You may rely on us in dealing with your writ petition', 'upload/practice/1823120642933290.jpg', 'ongoing', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serviceif; font-size: 14px; text-align: justify;\">Writ petition under Article 102 of the Constitution of the People\'s Republic of Bangladesh is filed. A person aggrieved in enjoyment of his/her fundamental rights and/or in the event of violation of his/her fundamental rights as mentioned in Part III of the Constitution may invoke Writ Jurisdiction of the High Court Division of the Supreme Court of Bangladesh. Article 102 of the Constitution of the People\'s Republic of Bangladesh clearly describes the elements&nbsp;for which writ petition may lie. Writ petition will&nbsp;not lie where there is a equally efficacious remedy is available to a citizen under the existing laws of the State.&nbsp;We are dealing with writ cases successfully for many yaers and as such you may engage us as your Advocate(s) to conduct your writ petition. Hope we will be able to provide you best legal services.&nbsp;</span></p>', '2025-02-04 10:02:12', '2026-03-16 06:29:46'),
(3, 'Intellectual Property Rights', 'We are here the right Legal Counsel to protect your Int...', 'upload/practice/1823120718669482.jpg', '2', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 24px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serviceif; text-align: justify;\"><span style=\"font-family: Arial;\">Intellectual property rights are the rights given to persons over the creations of their minds. They usually give the creator an exclusive right over the use of his/her creation for a certain period of time. Intellectual Property law deals&nbsp;with laws to protect and enforce rights of the creators and owners of inventions, writing, music, designs and other works, known as the \"intellectual property.\" There are several areas of intellectual property including copyright, trademarks, patents, and trade secrets.&nbsp;</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 24px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serviceif; text-align: justify;\"><span style=\"font-family: Arial;\">Intellectual property rights are customarily divided into two main areas:</span></p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 24px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serviceif; text-align: justify;\"><a name=\"copyright\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 122, 183); transition: 0.4s ease-in;\"></a>(i)&nbsp;Copyright and rights related to copyright.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 24px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serviceif; text-align: justify;\">The rights of authors of literary and artistic works (such as books and other writings, musical compositions, paintings, sculpture, computer programs and films) are protected by copyright, for a minimum period of 50&nbsp;years after the death of the author.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 24px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serviceif; text-align: justify;\">Also protected through copyright and related (sometimes referred to as “neighbouring”) rights are the rights of performers (e.g.&nbsp;actors, singers and musicians), producers of phonograms (sound recordings) and broadcasting organizations. The main social purpose of protection of copyright and related rights is to encourage and reward creative work.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 24px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serviceif; text-align: justify;\"><a name=\"industrial\" style=\"margin: 0px; padding: 0px; background-color: transparent; color: rgb(51, 122, 183); transition: 0.4s ease-in;\"></a>(ii)&nbsp;Industrial property</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 24px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serviceif; text-align: justify;\">Industrial property can usefully be divided into two main areas:</p><ol style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; list-style: none; color: rgb(51, 51, 51); font-family: &quot;Open Sans&quot;, sans-serviceif; font-size: 14px; text-align: justify;\"><li style=\"margin: 0px; padding: 0px;\">One area can be characterized as the protection of distinctive signs, in particular trademarks (which distinguish the goods or services of one undertaking from those of other undertakings) and geographical indications (which identify a good as originating in a place where a given characteristic of the good is essentially attributable to its geographical origin).</li><li style=\"margin: 0px; padding: 0px;\">The protection of such distinctive signs aims to stimulate and ensure fair competition and to protect consumers, by enabling them to make informed choices between various goods and services. The protection may last indefinitely, provided the sign in question continues to be distinctive.</li><li style=\"margin: 0px; padding: 0px;\">Other types of industrial property are protected primarily to stimulate innovation, design and the creation of technology. In this category fall inventions (protected by patents), industrial designs and trade secrets.</li><li style=\"margin: 0px; padding: 0px;\">The social purpose is to provide protection for the results of investment in the development of new technology, thus giving the incentive and means to finance research and development activities.</li><li style=\"margin: 0px; padding: 0px;\">A functioning intellectual property regime should also facilitate the transfer of technology in the form of foreign direct investment, joint ventures and licensing.</li><li style=\"margin: 0px; padding: 0px;\">The protection is usually given for a finite term (typically 20 years in the case of patents).</li></ol><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 24px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serviceif; text-align: justify;\">While the basic social objectives of intellectual property protection are as outlined above, it should also be noted that the exclusive rights given are generally subject to a number of limitations and exceptions, aimed at fine-tuning the balance that has to be found between the legitimate interests of right holders and of users. We M. Roy &amp; Asspciates provide best legal services on&nbsp;Intellectual Property issues.</p>', '2025-02-04 10:03:25', '2025-02-04 10:03:25'),
(4, 'Negotiable Instruments issues', 'We are dealing cases relating to Negotiable Instruments...', 'upload/practice/1823120750765506.jpg', '2', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serviceif; font-size: 14px; text-align: justify;\">We are dealing cases relating to Negotiable Instruments issues for had years with best competency and performance. Success rate in dealing with&nbsp;Negotiable Instruments issues is more that 99%. M. Roy &amp; Associates is very must known and familiar in dealing with&nbsp;Negotiable Instruments related cases with good reputation. If you are looking for a competent Lawyer to deal with your&nbsp;Negotiable Instruments related cases we are the right person. You are welcome to best Law Chamber in Bangladesh M. Roy &amp; Associates.</span></p>', '2025-02-04 10:03:55', '2025-02-04 10:03:55'),
(5, 'Banking Matter', 'To ease your banking issues we are here your best Law C...', 'upload/practice/1823121090379887.jpg', '2', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serviceif; font-size: 14px; text-align: justify;\">M. Roy &amp; Associates deal&nbsp;with various types of banking related issues. Banking Matter has two main basic area litigation and documentation. In litigation two commons suits and cases are Artha Rin Suit and Cases under Negotiable Instruments Act-1881. Besides these there are LC, Bank Guarantee related cases. Banking related issue&nbsp;writ petition is also filed before the Honourable High Court Division of the Supreme Court of Bangladesh. In documentation sides includes vetting of property documents, searching property documents and drafting various types of deeds, agreements and documents such as Mortgage Deed, Power of Attorney Deed, Cancellation and Revocation of Power of Attorney, Redemption of Mortgage Deed, Corporate Guarantee, Undertaking, Letter of Indemnity, Pari-Passu Mortgage, Pari-Passu Security Sharing Agreement (PPSSA), Letter of First Charge, Modification of Charge etc. M. Roy &amp; Associates is best chamber in Bangladesh in dealing with banking matter.</span></p>', '2025-02-04 10:04:28', '2025-02-04 10:09:19'),
(6, 'Real Estate', 'M. Roy & Associates is always open in virtually solving...', 'upload/practice/1823121153450923.jpg', '2', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serviceif; font-size: 14px; text-align: justify;\">One of the branch of civil matter is land or real estate. More than 70% civil matters are envolved land or real estate matters. M. Roy &amp; Associates legal team is best legal team in land related matters. Our Lawyers as well as support team are very much skilled and has vast experience in&nbsp;land or real estate matters. We are dealing with huge number of Banks, financial institutions, real estate companies, group of companies on land related matters. If you need&nbsp;land/real estate matter support we are here your best law Chamber where you will find comfort in dealing your land related legal issues.</span></p>', '2025-02-04 10:10:19', '2025-02-04 10:10:19'),
(7, 'Family Matters', 'M. Roy & Associates deal with family dispute both in Co...', 'upload/practice/1823121184174392.jpg', '2', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 24px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serviceif; text-align: justify;\">M. Roy &amp; Associates deal with family dispute both in Court and outside of Court. Solving family dispute through arbitration is cost effective and time consuming and this is why we always encourage our valuable client to resolve the dispute by arbitration/negotiation first and in the event of failing arbitration or negotiation ultimate solution/redress is available in the learned Court.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 24px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serviceif; text-align: justify;\">The rate of family dispute is increasing day by day in recent days. The future trend of family dispute is so desperate specially on two classes. One is poor class family and another is upper class. We taking into consideration the dispute as well as welfare of both the family solve the dispute without lending the parties in hassle and this is why we are best Law Chamber in Bangladesh.</p>', '2025-02-04 10:10:49', '2025-02-04 10:10:49'),
(8, 'Criminal Case', 'M. Roy & Associates always provide best legal services...', 'upload/practice/1823121217103996.jpg', '2', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serviceif; font-size: 14px; text-align: justify;\">By the passes of time the nature of criminality has been changed. We&nbsp;still remember Lombroso biological theory on criminals. We find its truthness in reality, but sometimes criminality immerce from a person who is not biologically criminal. In this day of time the society is more developed than the ancient time, but with the development of the society the percentage of crime has also been increased enormously. We being Advocate invested with great duty towards the society to do justice for the victims and ensure punishment to the criminals. M. Roy &amp; Asoociates has always keen eyes in this concern. We being a human as well as Advocate provide our utmost support to the victims by providing our best legal services and to do justice for them.</span></p>', '2025-02-04 10:11:20', '2025-02-04 10:11:20'),
(9, 'Civil Matter', 'M. Roy & Associates solve any dispute with earliest pos...', 'upload/practice/1823121260097638.jpg', '2', '<p><span style=\"color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serviceif; font-size: 14px; text-align: justify;\">M. Roy &amp; Associates deal will civil matter including land disputes, family matter, dispute regarding title, customs, religious rites etc. with great skill and vigor. The success rate of M. Roy &amp; Associates in civil matter more than 90%. We always try to resolve the dispute in the easiest way and abstained from&nbsp;pushing our&nbsp;client in legal battle for indifinite period of time. We always solve the dispute by reducing time and cost. Our aim is to solve any dispute with earliest possible time by expending lowest cost and this is why we are best Law Chamber in Bangladesh.&nbsp;</span></p>', '2025-02-04 10:12:01', '2025-02-04 10:12:01'),
(10, 'Commercial Arbitration', 'Our aim is to solve dispute by lowest cost and reducing...', 'upload/practice/1823121298289159.jpg', '2', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 24px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serviceif; text-align: justify;\">The firm has been involved in both domestic and international arbitration, including international commercial arbitration. We are familiar with the procedural codes habitually adopted in international arbitration proceedings such as the IBA Rules on the Taking of Evidence in International Commercial Arbitration.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 24px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serviceif; text-align: justify;\">We also advise on the choice of forum clauses (court jurisdiction v. arbitration), the choice of arbitral institution, the drafting of international arbitration clauses and the appointment of arbitrators.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 24px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serviceif; text-align: justify;\">We have a network of trusted arbitration lawyers across the globe with whom we can work seamlessly to manage cases where local counsel are required, particularly at the enforcement stage of the process.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 24px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serviceif; text-align: justify;\">Our specialist arbitration lawyers combine creative problem-solving techniques with a modern and commercial approach towards dispute management. Our aim is to achieve our clients\' objectives in a focused and cost-effective manner.</p>', '2025-02-04 10:12:37', '2025-02-04 10:12:37'),
(11, 'Company Matters', 'M. Roy & Associates on regular basis dealing huge compa...', 'upload/practice/1823121337792532.jpg', '2', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 24px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serviceif; text-align: justify;\">M. Roy &amp; Associates deals with company relates matters including but not limited to formation of company both national and foreign direct investment, filing return, change of Memorandum and Articles of Association, rectification of share registrar, condonation of delay in holding AGM, filing allotment of shares, filing charge, scheme of amalgamation etc. We always focus on solving any matter within shortest possible time and by expending lower cost. When we receive any matter we take full responsibility to complete the task at the earliest available opportunity.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; padding: 0px; font-size: 14px; line-height: 24px; color: rgb(119, 119, 119); font-family: &quot;Open Sans&quot;, sans-serviceif; text-align: justify;\">Our company matter team is so much keen to solve any problem by applying practical approach and modern&nbsp;techniques and this is why we are best Law Chamber in Bangladesh.</p>', '2025-02-04 10:13:15', '2025-02-04 10:13:15');

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
(5, 'Clerk (High Court) HSC', 'Shohag Chowdhury', 'upload/propert/1823110041982782.jpg', '<div class=\"modal-body\"> <p>&nbsp;My name is Shohag Chowdhury. I have worked in the Disability sector for over 20 years as a manager. </p> <p> I have extensive experience in the Aged and Disability sectors and have managed and helped set up Supported Disability Accommodation houses for clients to be able to live in the community and access various programmes with support of workers as independently as possible. I am very client focussed in all that I do and working closely with families to achieve goals and best outcomes for their loved ones. </p> <p> My role as a Support Coordinator for ResiCare SA is to support clients and families in understanding their NDIS plans and how to navigate them. To be able to engage with various external agencies and providers to achieve the best outcomes. I can assist families and clients with any issues that may arise and how to overcome them. </p> <p> As their plans come close to review I will follow up with all providers to get progress reports to be able to show how all goals are being achieved and to assist with gaining any additional funding and supports needed. As a Disability Accommodation manager, ensure all houses are compliant to SDA standard for clients and that they match the criteria. We also provide in home support for clients with NDIS funding within their own home with a variety of services. We continue to identify the needs of clients and families in the community and the best way when approached that we can support them to live a fulfilling lifestyle.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p></div>', 2, NULL, '2025-02-04 07:13:43'),
(6, 'Capable to manage affairs of the Chamber.', 'Md. Arman Mia', 'upload/propert/1823110299941187.jpg', '<div class=\"modal-body\"> <p>My name is Md. Arman Mia. I have worked in the Disability sector for over 20 years in various roles from Support worker/carer, rostering and Coordination. </p> <p> I have extensive experience in the Aged and Disability sectors and have managed and helped set up Supported Disability Accommodation houses for clients to be able to live in the community and access various programmes with support of workers as independently as possible. I am very client focussed in all that I do and working closely with families to achieve goals and best outcomes for their loved ones. </p> <p> My role as a Support Coordinator for ResiCare SA is to support clients and families in understanding their NDIS plans and how to navigate them. To be able to engage with various external agencies and providers to achieve the best outcomes. I can assist families and clients with any issues that may arise and how to overcome them. </p> <p> As their plans come close to review I will follow up with all providers to get progress reports to be able to show how all goals are being achieved and to assist with gaining any additional funding and supports needed. As a Disability Accommodation manager, ensure all houses are compliant to SDA standard for clients and that they match the criteria. We also provide in home support for clients with NDIS funding within their own home with a variety of services. We continue to identify the needs of clients and families in the community and the best way when approached that we can support them to live a fulfilling lifestyle.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p></div>', 2, NULL, '2025-02-04 07:17:49'),
(7, 'Clerk-Judge Court B.com', 'Bikash Kumar Roy', 'upload/propert/1823113814965250.jpg', '<div class=\"modal-body\"> <p>My name is Bikash Kumar Roy. I have worked in the Disability sector for over 5 years as a Payroll Manager. </p> <p> I have extensive experience in the Aged and Disability sectors and have managed and helped set up Supported Disability Accommodation houses for clients to be able to live in the community and access various programmes with support of workers as independently as possible. I am very client focussed in all that I do and working closely with families to achieve goals and best outcomes for their loved ones. </p> <p> My role as a Support Coordinator for ResiCare SA is to support clients and families in understanding their NDIS plans and how to navigate them. To be able to engage with various external agencies and providers to achieve the best outcomes. I can assist families and clients with any issues that may arise and how to overcome them. </p> <p> As their plans come close to review I will follow up with all providers to get progress reports to be able to show how all goals are being achieved and to assist with gaining any additional funding and supports needed. As a Disability Accommodation manager, ensure all houses are compliant to SDA standard for clients and that they match the criteria. We also provide in home support for clients with NDIS funding within their own home with a variety of services. We continue to identify the needs of clients and families in the community and the best way when approached that we can support them to live a fulfilling lifestyle.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p></div>', 2, NULL, '2025-02-04 08:13:41'),
(8, 'Office Executive (Searching Dept.) B.A.', 'Md. Shafique Mahmud', 'upload/propert/1823113853348395.jpg', '<div class=\"modal-body\"> <p>Hi, my name is Md. Shafique Mahmud and I am the Administration Assistant and Resicare SA. I am currently doing some causal hours as an OSHC Educator. I am also doing some coaching for Calisthenics with some of the young ones as well as doing this myself. </p> <p> I have recently commenced this role and enjoying the contact with support workers and clients and the impact that we can make in their lives. I look forward to continuing to meet everyone and support a great company.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p></div>', 2, NULL, '2025-02-04 08:14:17'),
(9, 'Clerk (High Court) SSC', 'Md. Abdul Jalil', 'upload/propert/1823113912769052.jpg', '<p style=\"font-size: 14.4px;\">&nbsp;My name is Md. Abdul Jalil. I have worked in the Disability sector for over 20 years as a manager.</p><p style=\"font-size: 14.4px;\">I have extensive experience in the Aged and Disability sectors and have managed and helped set up Supported Disability Accommodation houses for clients to be able to live in the community and access various programmes with support of workers as independently as possible. I am very client focussed in all that I do and working closely with families to achieve goals and best outcomes for their loved ones.</p><p style=\"font-size: 14.4px;\">My role as a Support Coordinator for ResiCare SA is to support clients and families in understanding their NDIS plans and how to navigate them. To be able to engage with various external agencies and providers to achieve the best outcomes. I can assist families and clients with any issues that may arise and how to overcome them.</p><p style=\"font-size: 14.4px;\">As their plans come close to review I will follow up with all providers to get progress reports to be able to show how all goals are being achieved and to assist with gaining any additional funding and supports needed. As a Disability Accommodation manager, ensure all houses are compliant to SDA standard for clients and that they match the criteria. We also provide in home support for clients with NDIS funding within their own home with a variety of services. We continue to identify the needs of clients and families in the community and the best way when approached that we can support them to live a fulfilling lifestyle.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p>', 2, '2025-02-04 08:15:14', '2025-02-04 08:15:14'),
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
(36, 'upload/blog/1823194244949196.jpg', 'Islamic Family Law', NULL, '<p><b>Islamic Family Law</b></p><p>The legal system is based in part on English common law. Bangladesh seceded from Pakistan in December 1971. The British-era legislation applied in Pakistan after 1947 and post-partition legislation enacted in Pakistan continued to form the basis of Bangladeshi personal status laws, but legal developments since 1972 have been distinct.</p><div>Hanafi majority; Hindu and Christian religious minorities<br>Constitution adopted 4 November 1972. Amended in 1977 to remove principle of secularism included in Part II entitled Fundamental Principles of State Policy. Amended again in 1988 to insert Article 2(a) declaring Islam official state religion, while reiterating that other religions may be practised in peace and harmony.<br><br>Polygamy: introduction of new regulations on polygamy by MFLO 1961; constraints placed on polygamy by requirement of application to the local Union Council for permission and notification of existing wife/wives; penal sanctions for contracting a polygamous marriage without prior permission, though there are no sanctions for failing to obtain existing wife s permission and subsequent marriage is not invalidated for lack of registration or failure to obtain official permission; the husband s contracting a polygamous marriage in contravention of legal procedures is sufficient grounds for first wife to obtain decree of dissolution<br>Obedience/Maintenance: governed by classical law; in Nelly Zaman v. Giasuddin Khan (34 DLR (1982) 221) husband s suit for forcible restitution of conjugal rights considered outmoded and untenable when considered with relation to principle of gender equality enshrined in the Constitution<br><br>Judicial Divorce: grounds on which women may seek divorce include: desertion for four years; failure to maintain for two years or husband s contracting of a polygamous marriage in contravention of established legal procedures; husband s imprisonment for seven years; husband s failure to perform marital obligations for three years; husband s continued impotence from the time of the marriage; husband s insanity for two years or his serious illness; wife s exercise of her option of puberty if she was contracted into marriage by any guardian before age of 18 and repudiates the marriage before the age of 19 (as long as marriage was not consummated); husband s cruelty (including physical or other mistreatment, unequal treatment of co-wives); any other ground recognised as valid for dissolution of marriage under Muslim law; judicial khul&nbsp; may also be granted without husband s consent if wife is willing to forgo her financial rights; in Hasina Ahmed v. Syed Abul Fazal (32 DLR (1980) 294) woman was granted khul&nbsp; by judicial decision in spite of husband s refusal</div>', '<p>Post-Divorce Maintenance/Financial Arrangements: generally governed by classical law; judgements deviating from classical law often refer to social welfare arguments as well as reinterpretation of original sources of Islamic law; in Rustom Ali v. Jamila Khatun (34 DLR (1991) 301) wife not entitled to arrears of maintenance and maintenance only ruled payable from date the suit is brought before the Family Court until three months from decree of dissolution of marriage; in Md. Hefzur Rahman v. Shamsun Nahar Begum (15 BLD (1995) 34) divorcing husband s responsibility to maintain his divorced wife considered to continue beyond expiry of&nbsp; idda period, husband bound to provide maintenance on a reasonable scale for an indefinite period (judgement was quashed and classical law reaffirmed upon appeal in 1998)<br><br>Child Custody: general rules is that divorc e is entitled to custody until age of 7 for males (classical Hanafi position) and puberty for females, subject to classical conditions, though there is some flexibility as ward s best interests are considered paramount under terms of Guardians and Wards Act 1890; in Md. Abu Baker Siddique v. S.M.A. Bakar &amp; oths (38 DLR (AD) 1986) classical Hanafi rules ending mother s rights over custody of male children at the age of 7 were deviated from in best interests of the child; mother s name must be included with father s name in child s documents<br><br>Succession: governed by classical law although customary law may predominate under certain circumstances; at times customary law favours women; concept of obligatory bequest in favour of orphaned grandchildren introduced by MFLO 1961 allows for heirs through sons and daughters to inherit the shares their fathers/mothers would have been entitled to had they not predeceased the grandparents<br><br>Bangladesh Legal Decisions, Dhaka Law Cases, Dhaka Law Reports<br>CEDAW&nbsp; &nbsp;signature 1984 with reservations to Arts. 2 &amp; 16(1)(c) (3rd periodic report 8 Apr. 1993; 3rd and 4th periodic reports 1 Apr 1997) CRC&nbsp; &nbsp;signature &amp; ratification 1990 with reservations to Arts. 14(1) &amp; 21<br>ICESCR&nbsp; &nbsp;accession 1998 with declarations regarding Arts. 1, 2 &amp; 3<br>Convention on Consent to Marriage, Minimum Age for Marriage and Registration of Marriages&nbsp; &nbsp;accession 1998 with reservations to Arts. 1 &amp; 2</p>', 2, '2025-02-05 05:32:05', '2025-02-05 05:32:05'),
(37, 'upload/blog/1823194368097473.jpg', 'Intellectual Property Rights', NULL, '<p>Intellectual property rights are the rights given to persons over the creations of their minds. They usually give the creator an exclusive right over the use of his/her creation for a certain period of time. Intellectual Property law deals with laws to protect and enforce rights of the creators and owners of inventions, writing, music, designs and other works, known as the \"intellectual property.\" There are several areas of intellectual property including copyright, trademarks, patents, and trade secrets.&nbsp;</p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">Intellectual property rights are customarily divided into two main areas:</span></p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">(i) Copyright and rights related to copyright.</span></p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">The rights of authors of literary and artistic works (such as books and other writings, musical compositions, paintings, sculpture, computer programs and films) are protected by copyright, for a minimum period of 50 years after the death of the author.</span></p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">Also protected through copyright and related (sometimes referred to as “neighbouring”) rights are the rights of performers (e.g. actors, singers and musicians), producers of phonograms (sound recordings) and broadcasting organizations. The main social purpose of protection of copyright and related rights is to encourage and reward creative work.</span></p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">(ii) Industrial property</span></p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">Industrial property can usefully be divided into two main areas:</span></p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">One area can be characterized as the protection of distinctive signs, in particular trademarks (which distinguish the goods or services of one undertaking from those of other undertakings) and geographical indications (which identify a good as originating in a place where a given characteristic of the good is essentially attributable to its geographical origin).</span></p><p>The protection of such distinctive signs aims to stimulate and ensure fair competition and to protect consumers, by enabling them to make informed choices between various goods and services. The protection may last indefinitely, provided the sign in question continues to be distinctive.</p><p>Other types of industrial property are protected primarily to stimulate innovation, design and the creation of technology. In this category fall inventions (protected by patents), industrial designs and trade secrets.</p><p>The social purpose is to provide protection for the results of investment in the development of new technology, thus giving the incentive and means to finance research and development activities.</p><p>A functioning intellectual property regime should also facilitate the transfer of technology in the form of foreign direct investment, joint ventures and licensing.</p><p>The protection is usually given for a finite term (typically 20 years in the case of patents).</p>', '<p><span style=\"font-size: 14.4px;\">While the basic social objectives of intellectual property protection are as outlined above, it should also be noted that the exclusive rights given are generally subject to a number of limitations and exceptions, aimed at fine-tuning the balance that has to be found between the legitimate interests of right holders and of users.</span><span style=\"font-size: 14.4px;\"><br><br>In Bangladesh Intellectual Property rights are dealt by The Trade Mark Act-1940, The Revised Trade Mark Rules-1963, The Trade Mark (Invalidation &amp; Summery Registration) Act-1950, The Trade Mark (Invalidation &amp; Summery Registration) Rules-1950, The Patents &amp; Designs Act-1911, The Merchandise Marks Act-1889, Copyright Ain-2000, The Pure Food Ordinance-1959 and decision of the Apex Court passed on particular case of these kinds. Beside in High Court Rules and Orders there is special rules in this behalf under Volume-V, Chapter-17 Part (E). Wherein Rules made by the High Court Rules and Orders under section 17 of the Trade Marks Act (V of 1940).</span></p>', 2, '2025-02-05 05:34:02', '2025-02-05 05:34:02'),
(38, 'upload/blog/1823194621011670.jpg', 'Maritime Law or Admiralty Law', NULL, '<p>Maritime law, also known as admiralty law, is a body of laws, conventions, and treaties that govern private maritime business and other nautical matters, such as shipping or offenses occurring on open water. International rules, governing the use of the oceans and seas, are known as the Law of the Sea.</p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">Admiralty law or maritime law is a body of law that governs nautical issues and private maritime disputes. Admiralty law consists of both domestic law on maritime activities, and private international law governing the relationships between private parties operating or using ocean-going ships. While each legal jurisdiction usually has its own legislation governing maritime matters, the international nature of the topic and the need for uniformity has, since 1900, led to considerable international maritime law developments, including numerous multilateral treaties.</span></p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">Admiralty law may be distinguished from the law of the sea, which is a body of public international law dealing with navigational rights, mineral rights, jurisdiction over coastal waters, and the maritime relationships between nations. The United Nations Convention on the Law of the Sea has been adopted by 167 countries and the European Union, and disputes are resolved at the International Tribunal for the Law of the Sea (ITLOS) in Hamburg.</span></p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">Key features of Maritime law:</span></p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">Maritime law governs private maritime questions, disputes, or offenses and other nautical matters.</span></p><p>In most developed countries, the maritime law follows a separate code and is an independent jurisdiction from national laws.</p><p>The International Maritime Organization (IMO) ensures that existing international maritime conventions are kept up to date and develops new agreements when the need arises.</p><p>History of maritime law:</p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">Seaborne transport was one of the earliest channels of commerce, and rules for resolving disputes involving maritime trade were developed early in recorded history. Early historical records of these laws include the Rhodian law (Nomos Rhodion Nautikos), of which no primary written specimen has survived, but which is alluded to in other legal texts (Roman and Byzantine legal codes), and later the customs of the Consulate of the Sea or the Hanseatic League. In southern Italy the Ordinamenta et consuetudo maris (1063) at Trani and the Amalfian Laws were in effect from an early date.</span></p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">Bracton noted further that admiralty law was also used as an alternative to the common law in Norman England, which previously required voluntary submission to it by entering a plea seeking judgment from the court.[2]</span></p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">A leading sponsor of admiralty law in Europe was the French Queen Eleanor of Aquitaine. Eleanor (sometimes known as \"Eleanor of Guyenne”) had learned about admiralty law whilst on a crusade in the eastern Mediterranean with her first husband, King Louis VII of France. Eleanor then established admiralty law on the island of Oléron, where it was published as the \"Rolls of Oléron\". Sometime later, while she was in London acting as regent for her son, King Richard the Lionheart, Eleanor instituted admiralty law into England as well.</span></p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">In England, a special Admiralty Court handles all admiralty cases. Despite early reliance upon civil law concepts derived from the Corpus Juris Civilis of Justinian, the English Admiralty Court is a common law, albeit sui generis court that was initially somewhat distanced from other English courts. After around 1750, as the industrial revolution took hold and English maritime commerce burgeoned, the Admiralty Court became a proactive source of innovative legal ideas and provisions to meet the new situation. The Judicature Acts of 1873-1875 abolished the Admiralty Court as such, and it became conflated in the new \"Probate, Divorce &amp; Admiralty\" division of the High Court. However, when the PDA was abolished and replaced by a new \"Family Division\", admiralty jurisdiction passed to a so-called \"Admiralty Court\" which was effectively the QBD sitting to hear nautical cases. The Senior Courts Act 1981 then clarified the \"admiralty jurisdiction of the High Court\", so England once again has a distinct Admiralty Court (albeit no longer based in the Royal Courts of Justice, but in the Rolls Building).</span></p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">English Admiralty courts were a prominent feature in the prelude to the American Revolution. For example, the phrase in the Declaration of Independence \"For depriving us in many cases, of the benefits of Trial by Jury\" refers to the practice of the UK Parliament giving the Admiralty Courts jurisdiction to enforce The Stamp Act in the American Colonies. This power has been awarded because the Stamp Act was unpopular in America, so that a colonial jury would be unlikely to convict any colonist of its violation. However, since English admiralty courts have never had trial by jury, a colonist charged with breaching the Stamp Act could be more easily convicted by the Crown.</span></p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">Admiralty law gradually became part of American Law through admiralty cases arising after the adoption of the U.S. Constitution in 1789. Many American lawyers who were prominent in the American Revolution were admiralty and maritime lawyers. Those included are Alexander Hamilton in New York and John Adams in Massachusetts.</span></p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">In 1787 Thomas Jefferson wrote to James Madison proposing that the U.S. Constitution, then under consideration by the States, be amended to include \"trial by jury in all matters of fact triable by the laws of the land and not by the laws of Nations\". The result was the United States Bill of Rights. Alexander Hamilton and John Adams were both admiralty lawyers and Adams represented John Hancock in an admiralty case in colonial Boston involving seizure of one of Hancock\'s ships for violations of Customs regulations. In the more modern era, Supreme Court Justice Oliver Wendell Holmes was an admiralty lawyer before ascending to the bench.</span></p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\"><b>Understanding Maritime Law:</b></span></p><p>In most developed nations, maritime law follows a separate code and is an independent jurisdiction from national laws. The United Nations (UN), through the International Maritime Organization (IMO), has issued numerous conventions that can be enforced by the navies and coast guards of countries that have signed the treaty outlining these rules. Maritime law governs many of the insurance claims relating to ships and cargo; civil matters between ship owners, seamen, and passengers; and piracy.</p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">Additionally, maritime law regulates registration, license, and inspection procedures for ships and shipping contracts; maritime insurance; and the carriage of goods and passengers.</span></p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">The IMO (established in 1948 as the Inter-Governmental Maritime Consultative Organization, and coming into force in 1958) is responsible for ensuring that existing international maritime conventions are kept up to date, as well as developing new agreements as and when the need arises.&nbsp;</span></p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">Today, there are dozens of conventions regulating all aspects of maritime commerce and transport. The IMO names three conventions as its core:</span></p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">The International Convention for the Safety of Life at Sea</span></p><p>The International Convention for the Prevention of Pollution from Ships</p><p>The International Convention on Standards of Training, Certification, and Watch keeping for Seafarers</p><p>On its website, the IMO has a complete list of existing conventions, historical amendments, and explanatory notes.</p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">The governments of the 174 IMO member states are responsible for the implementation of IMO conventions for ships registered in their nation. Local governments enforce the provisions of IMO conventions as far as their ships are concerned and set the penalties for infringements. In some cases, ships must carry certificates onboard to show that they have been inspected and have met the required standards.</span></p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">Special Considerations:</span></p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">The country of registration determines a ship\'s nationality. For most ships, the national registry is the country where the owners live and operate their business.</span></p><p><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">Ship owners will often register their ships in countries that allow foreign registration. Called \"flags of convenience,\" the foreign registration is useful for tax planning and to take advantage of lenient local laws. Two examples of \"flags of convenience\" countries are Panama and Bermuda.</span></p>', '<p style=\"font-size: 14.4px;\"><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\"><b>Maintenance and cure:</b></span></p><p style=\"font-size: 14.4px;\">The doctrine of maintenance and cure is rooted in Article VI of the Rolls of Oléron promulgated in about 1160 A.D. The obligation to \"cure\" requires a shipowner to provide medical care free of charge to a seaman injured in the service of the ship, until the seaman has reached \"maximum medical cure\". The concept of \"maximum medical cure\" is more extensive than the concept \"maximum medical improvement\". The obligation to \"cure\" a seaman includes the obligation to provide him with medications and medical devices which improve his ability to function, even if they don\'t \"improve\" his actual condition. They may include long-term treatments that permit him to continue to function well. Common examples include prostheses, wheelchairs, and pain medications.</p><p style=\"font-size: 14.4px;\"><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">The obligation of \"maintenance\" requires the ship-owner to provide a seaman with his basic living expenses while he is convalescing. Once a seaman is able to work, he is expected to maintain himself. Consequently, a seaman can lose his right to maintenance, while the obligation to provide cure is ongoing.</span></p><p style=\"font-size: 14.4px;\"><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">A seaman who is required to sue a ship-owner to recover maintenance and cure may also recover his attorney’s fees. Vaughan v. Atkinson, 369 U.S. 527 (1962). If a ship owner’s breach of its obligation to provide maintenance and cure is willful and wanton, the ship-owner may be subject to punitive damages. See Atlantic Sounding Co. v. Townsend, 557 U.S. 404 (2009)(J. Thomas).</span></p><p style=\"font-size: 14.4px;\"><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\"><b>Personal injuries to passengers:</b></span></p><p style=\"font-size: 14.4px;\">Ship-owners owe a duty of reasonable care to passengers. Consequently, passengers who are injured aboard ships may bring suit as if they had been injured ashore through the negligence of a third party. The passenger bears the burden of proving that the ship-owner was negligent. While personal injury cases must generally be pursued within three years, suits against cruise lines may need to be brought within one year because of limitations contained in the passenger ticket. Notice requirements in the ticket may require a formal notice to be brought within six months of the injury. Most U.S. cruise line passenger tickets also have provisions requiring that suit to be brought in either Miami or Seattle.</p><p style=\"font-size: 14.4px;\"><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">In England, the 1954 case of Adler v Dickson (The Himalaya) [1954] allowed a shipping line to escape liability when a bosun\'s negligence resulted in a passenger being injured. Since then, the Unfair Contract Terms Act 1977 has made it unlawful to exclude liability for death or personal injury caused by one\'s negligence. (Since then, however, the so-called \"Himalaya clause\" has become a useful way for a contractor to pass on the protection of a limitation clause to his employees, agents and third-party contractors).</span></p><p style=\"font-size: 14.4px;\"><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\"><b>Maritime liens and mortgages:</b></span></p><p style=\"font-size: 14.4px;\">Banks which loan money to purchase ships, vendors who supply ships with necessaries like fuel and stores, seamen who are due wages, and many others have a lien against the ship to guarantee payment. To enforce the lien, the ship must be arrested or seized. In the United States, an action to enforce a lien against a U.S. ship must be brought in federal court and cannot be done in state court, except for under the reverse-Erie doctrine whereby state courts can apply federal law.</p><p style=\"font-size: 14.4px;\"><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); text-align: var(--ct-body-text-align);\"><b>Salvage and treasure salvage:</b></span></p><p style=\"font-size: 14.4px;\">When property is lost at sea and rescued by another, the rescuer is entitled to claim a salvage award on the salvaged property. There is no \"life salvage\". All mariners have a duty to save the lives of others in peril without expectation of reward. Consequently, salvage law applies only to the saving of property.</p><p style=\"font-size: 14.4px;\"><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">There are two types of salvage: contract salvage and pure salvage, which is sometimes referred to as \"merit salvage\". In contract salvage the owner of the property and salvor enter into a salvage contract prior to the commencement of salvage operations and the amount that the salvor is paid is determined by the contract. The most common salvage contract is called a \"Lloyd\'s Open Form Salvage Contract\".</span></p><p style=\"font-size: 14.4px;\"><span style=\"background-color: var(--ct-card-bg); color: var(--ct-card-color); font-family: var(--ct-body-font-family); font-size: var(--ct-body-font-size); font-weight: var(--ct-body-font-weight); text-align: var(--ct-body-text-align);\">In pure salvage, there is no contract between the owner of the goods and the salvor. The relationship is one which is implied by law. The salvor of property under pure salvage must bring his claim for salvage in court, which will award salvage based upon the \"merit\" of the service and the value of the salvaged property.</span></p>', 2, '2025-02-05 05:38:03', '2025-02-05 05:38:03');

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
('eNYoGWX0ncfw3ITAXCwKm8hnmVfJLOnTsxo1rzdU', 1, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 18_5 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.5 Mobile/15E148 Safari/604.1', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiVDZESkNvYXJwZzJUa1hBSnZYS3NIcTlDMk9rbU50S2ZoU0JOaFd5diI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMmEkMTIkaDNwNlJZSkcvV0pxdkYvNHBuT2pWdXBHNDFOanljSHo3NGc5MGV6TWFlS1R5QTkuSEdUOXUiO3M6NToiYWxlcnQiO2E6MDp7fX0=', 1773653794);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `multi_images`
--
ALTER TABLE `multi_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

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
