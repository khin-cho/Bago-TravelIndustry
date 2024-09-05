-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2024 at 12:49 PM
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
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nic` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nop` int(11) NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `package` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `gender` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isclear` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `users_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `admins_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `admins_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user-book',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `trans` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `nic`, `email`, `nop`, `location`, `package`, `phone`, `date`, `gender`, `isclear`, `users_id`, `admins_id`, `admins_name`, `created_at`, `updated_at`, `trans`, `payment`) VALUES
(2, 'Ye Win Aung', '9/pabana(n)247552', 'yew@gmail.com', 1, 'aaaaaaa', 'Cultural and Historical', '09798258346', '2024-08-23', 'Male', '1', 6, 1, 'Admin', '2024-08-29 02:54:24', '2024-08-29 03:26:57', 'car', '20240829092424.png');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `img`, `name`, `location`, `created_at`, `updated_at`) VALUES
(5, '20240813045515.jfif', 'Shwe Pyi Resort', 'No.99-C, Yangon-Bago Highway, 10 Miles/ph-09 45740 0006', '2024-08-12 22:25:15', '2024-08-12 22:25:15'),
(9, '20240817041928.jfif', 'Amara Gold', '481 Maha Bandoola Road, Oaktha Myothit, Bago Myanmar/ph-0522201077', '2024-08-16 21:49:28', '2024-08-16 21:49:28'),
(10, '20240817042016.jfif', 'Royal Land', 'Yangon-Mandalay Road Front of Nilar Yoma Gas', '2024-08-16 21:50:16', '2024-08-16 21:50:16'),
(11, '20240817042123.jfif', 'Kanbawzahinthar', '2 No A1, Bahtoo Road, Quarter, Bago Myanmar', '2024-08-16 21:51:23', '2024-08-16 21:51:23');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cemail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userid` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `cmessage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `cname`, `cemail`, `userid`, `type`, `cmessage`, `title`, `created_at`, `updated_at`) VALUES
(2, 'khin khin', 'thazin4@gmail.com', 3, '1', 'good', 'Adventure', '2024-08-15 08:53:51', '2024-08-15 08:55:08'),
(3, 'Phyo Thu', 'thazin4@gmail.com', 3, '0', 'Good', 'Adventure', '2024-08-15 08:56:56', '2024-08-15 08:56:56'),
(4, 'khin khin', 'khinkhincho785@gmail.com', 1, '1', 'This is a good for me', 'Cultural and Historical tour', '2024-08-24 23:50:47', '2024-08-24 23:52:24'),
(5, 'Ella', 'ella860420@gmail.com', 4, '1', 'This is a good trip for me.', 'Adventure Tour', '2024-08-27 02:07:33', '2024-08-27 02:10:41'),
(6, 'khin cho', 'khinkhincho785@gmail.com', 5, '1', 'This is a good trip for me.', 'Cultural And Historical', '2024-08-27 03:59:36', '2024-08-27 04:00:56');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_11_144025_create_books_table', 1),
(6, '2023_08_19_073120_create_password_resets', 1),
(7, '2024_07_15_050735_create_towns_table', 1),
(8, '2024_07_16_153824_create_hotels_table', 1),
(9, '2024_07_16_164024_create_rooms_table', 1),
(10, '2024_07_16_183345_create_packages_table', 1),
(11, '2024_07_26_214312_create_posts_table', 1),
(12, '2024_07_28_101901_create_restaurants_table', 1),
(13, '2024_07_30_163618_create_messages_table', 1),
(14, '2024_08_11_053155_create_pagodas_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hotel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nop` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dec` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `img`, `name`, `price`, `hotel`, `room`, `nop`, `dec`, `created_at`, `updated_at`) VALUES
(1, '20240817042324.jfif', 'Cultural and Historical', '250000', 'Amara Gold', 'double room', '2', 'Long Time  – 1 Night 2 Days \r\n1.	Shwemawdaw Pagoda\r\n2.	Shwethalyaung Buddha\r\n3.	Kyaik Pun Pagoda\r\n4.	Hintha Gon Pagoda\r\n5.	Maha Kalyani Sima\r\n6.	KanBawZaThardi Palace', '2024-08-13 04:51:19', '2024-08-16 21:53:24'),
(2, '20240817042407.jfif', 'Adventure Tours', '350000', 'Kanbawzahinthar', 'double room', '3', 'Long Time  – 2 Night 3 Days \r\n1.	Bird Watching\r\n2.	Boat Tours\r\n3.	Nature Walks\r\n4.	Fishing\r\n5.	Hiking and Trekking\r\n6.	Adventure Photography Tours', '2024-08-13 04:54:34', '2024-08-16 21:54:07'),
(3, '20240817042550.jfif', 'Special Interest Packages', '400000', 'Royal Land', 'triple room', '3', 'Long Time  – 2 Night 3 Days\r\n1.	Photography Tour\r\n2.	Historical and Archaeological Tour\r\n3.	Nature and Wildlife Tour\r\n4.	Arts and Crafts Tour\r\n5.	Festivals and Cultural Events', '2024-08-13 05:00:15', '2024-08-16 21:55:50'),
(4, '20240827155028.jfif', 'Family Packages', '400000', 'Kanbawzahinthar', 'triple room', '5', 'Long Time  – 2 Night 3 Days\r\n1.Bago Market\r\n2.Visit to Local Waterfalls\r\n3. Photography Tours\r\n4. Outdoor Adventures\r\n5. Picnics and Family Meals\r\n6. Family Photography Sessions', '2024-08-27 09:20:28', '2024-08-27 09:20:28');

-- --------------------------------------------------------

--
-- Table structure for table `pagodas`
--

CREATE TABLE `pagodas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `history` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pagodas`
--

INSERT INTO `pagodas` (`id`, `name`, `history`, `created_at`, `updated_at`) VALUES
(1, 'Shwemawdaw Pagoda', 'The Shwemawdaw Pagoda, also known as the \"Great Golden God,\" is one of the most revered pagodas in Myanmar. Originally built by the Mon people over 1,000 years ago, it was initially 23 meters tall but has been rebuilt and enlarged several times due to earthquakes, reaching its current height of 114 meters, making it the tallest pagoda in Myanmar. The pagoda is believed to house sacred relics of the Buddha, including two hairs, and has been an important pilgrimage site for centuries.', NULL, NULL),
(2, 'Kyaik Pun Pagoda', 'The Kyaik Pun Pagoda is famous for its four gigantic seated Buddha statues, each facing a different direction. The pagoda was built in 1476 by King Dhammazedi of the Hanthawaddy Kingdom. The four Buddhas represent the four Buddhas of this world cycle: Kakusandha, Konagamana, Kassapa, and Gautama. The pagoda is an example of the Mon architecture and is a popular site for both pilgrims and tourists.\r\n    Although not a very large area there are other statues, pavilions, and small shrines there to see. There is an interesting local legend about he Kyaik Pun Pagoda. Locals say that four Mon sisters were involved in the construction of the Kyaik Pun Paya and that they all pledged never to get married as long as they lived. If one of them were to marry, then one of the Buddha statues would fall apart. One of the sisters broke the promise and got married and thus resulting in the collapse of the Kassapa Buddha. Not sure I believe it since earthquakes do happen but it’s an interesting legend.\r\n    The opening hours are from 6am-6pm and you must pay an archeological zone fee of about $10/person. The fee is good for all the other historical sites in the region too. If you have a DSLR camera they will most likely charge you a $3 camera fee. Remember that this is a religious institution so dress appropriately and remove your shoes upon entering.\r\n', NULL, NULL),
(3, 'Shwethalyaung Buddha', 'The Shwethalyaung Buddha is one of the largest reclining Buddha statues in the world, measuring 55 meters in length and 16 meters in height. It was built in 994 AD by King Migadepa of the Mon Kingdom. The statue represents the Buddha in the state of Nirvana and was lost for many years until it was rediscovered in the jungle in the 19th century. The statue has been restored and is now a major attraction in Bago.\r\n           This Myanmar reclining Buddha is so big that from looking up from the bottom steps it’s impossible to determine exactly what’s ahead of you. The golden slap you see is only the torso. Measuring 55 m long and 16 m high and Myanmar Shwethalyaung Pagoda is 9 m longer than the reclining Buddha at Wat Pho in Bangkok, but still 19 m short of the Myanmar Buddha in Dawei. You’ll find the Shwethalyaung to the west of the Yangon Bago road, only a little more than 1 km to the Yangon side of Myanmar train station. A sign on the platform in front of the image gives the measurements of each body part the little finger alone extends 3.05m. The Shwethalyaung is reputed to be one of the most lifelike of all Myanmar reclining Buddhas. Myanmar Burmese people say the images represents Myanmar Buddha in a relaxing mode instead of parinibbana (death) since the eyes are wide open and the feet lie slightly splayed rather than parallel. Myanmar Bago Shwethalyaung Buddha is originally built of brick and stucco in 994 by the Mon King Migadepa II, Myanmar Bago pagoda Shwethalyaung was allowed to deteriorate and was then restored several times before the bestruction of Myanmar Bago in 1757. Bago town was so completely ravaged that huge Myanmar Buddha was totally lost and overgrown by jungle. Myanmar Bago Shwethalyaung Buddha was not found until the British era of the 1880s when an Indian contractor, digging in a large earth mound for fill to be used in the construction of Myanmar railway line rediscovered the image. Restoration began in 1881 and the present iron and steel tazaung, a product of a Calcutta engineering company, was completed in 1903. The 1903s saw another flurry of renovation activity, as a mosaic was added to the great pillow on which the Buddha’s head rests, and Italian marble was laid along the platform at Bago Myanmar.\r\n', NULL, NULL),
(4, 'Mahazedi Pagoda', 'The Mahazedi Pagoda, or \"Great Stupa,\" was built by King Bayinnaung in 1560 to enshrine a tooth relic of the Buddha, which was brought from Sri Lanka. The pagoda was damaged by earthquakes several times and was rebuilt each time. The pagoda is notable for its impressive height and for the panoramic views of Bago that can be seen from its terraces.\r\n            On the west of the Sima are ten huge stone pillars covered with inscriptions on both sides, except the 9th and 10th stones which are incised on one face only. These were set up in 1476 by Dhammaceti in order to record the ceremonial relating to the consecration of the Kalyani Sima. The great value of the inscription rests on the detailed information it gives of the early history of Buddhism in Myanmar, of the valid mode of consecrating ordination halls, of the intercourse of Bago and Myanmar with Ceylon and South India in the 15th century and of the Myanmar view of the apostolic successions of the Buddhist priesthood. The language of the first three stones is Pali and that of the rest is Mon. Most of these are more or less broken into fragments but copies of the Pali text on palm-leaf are still extant.\r\n', NULL, NULL),
(5, 'Hintha Gon Pagoda', 'Hintha Gon Pagoda is located on a hill near the Shwemawdaw Pagoda and is believed to mark the spot where the legendary bird Hamsa (Hintha) rested according to Mon mythology. The pagoda offers a beautiful view of the surrounding area, including the Shwemawdaw Pagoda. It was built by King Alaungpaya, the founder of the Konbaung Dynasty, in the 18th century.\r\n     Located behind the Myanmar Bago Shwemawdaw pagoda, this shrine has good views over Myanmar Bago town from the roofed platform on the hilltop. According to Myanmar legend, this Myanmar Bago pagoda was the one point rising from the sea when the mythological bird landed here. A stature of the bird, looking rather like the figures on opium weights, tops the hill. This Myanmar stupa was built by U Khanti, the Burmese hermit monk who was also the architect of Myanmar Mandalay Hill. You can walk to it by taking the steps down the other side of the Shwemawdaw Paya from the main entrance.\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dec` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `img`, `title`, `dec`, `author`, `created_at`, `updated_at`) VALUES
(1, '20240815135945.jpg', 'Pickled Fish', 'Visitors often praise the rich, umami flavor of Bago’s pickled fish. The traditional methods of fermentation and seasoning give it a deep, savory taste that many find unique and delicious.', 'Admin', '2024-08-12 03:38:04', '2024-08-15 07:29:45'),
(2, '20240812100904.jpg', 'Kanbawzathadi Palace', 'Kanbawzathardi Palace is highly recommended for those interested in history, architecture, and Burmese culture. Visitors frequently leave with a greater appreciation of Myanmar\'s royal heritage and the artistry involved in its preservation.', 'Admin', '2024-08-12 03:39:04', '2024-08-12 03:39:04'),
(3, '20240815140241.jfif', 'Shwe Maw Taw Pagoda', 'Shwemawdaw Pagoda is highly recommended for anyone interested in Myanmar\'s religious sites, history, and culture. It leaves a lasting impression on those who visit due to its spiritual significance, architectural beauty.', 'Admin', '2024-08-12 03:39:58', '2024-08-15 07:32:41'),
(5, '20240812101234.jfif', 'Night Market', 'Bago City’s night market is highly recommended for its vibrant atmosphere, delicious street food, and cultural immersion. It’s an excellent spot to experience the local flavor of Bago in a lively and engaging setting.', 'Admin', '2024-08-12 03:42:34', '2024-08-12 03:42:34'),
(6, '20240827154650.jfif', 'Moe Yun Gyi Resort', 'Moe Yun Gyi Wetland Wildlife Sanctuary is highly recommended for those interested in nature, birdwatching, and eco-tourism.', 'Admin', '2024-08-27 09:16:50', '2024-08-27 09:16:50');

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `loc` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`id`, `name`, `img`, `loc`, `created_at`, `updated_at`) VALUES
(2, 'KKW Food Garden', '20240814145602.PNG', 'https://maps.app.goo.gl/wHGtLc5raHTBvPhV7', '2024-08-13 04:44:28', '2024-08-14 08:26:02'),
(3, 'Kyaw Swa', '20240813111503.PNG', 'https://maps.app.goo.gl/cSJugZDWc17Ce8Vd7', '2024-08-13 04:45:03', '2024-08-13 04:45:03'),
(5, 'Golden Key restaurant', '20240814145650.PNG', 'https://maps.app.goo.gl/LXQcx7XfuC64LmH97', '2024-08-13 04:46:01', '2024-08-14 08:26:50'),
(6, 'Bago’s Heaven', '20240827150101.jfif', 'https://maps.app.goo.gl/a37CeZFGZkd4Bso39', '2024-08-27 08:31:01', '2024-08-27 08:31:01'),
(7, 'Y47 restaurant', '20240827150220.jfif', 'https://maps.app.goo.gl/BCCzXE1aPFzLFo8y8', '2024-08-27 08:32:20', '2024-08-27 08:32:20');

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `img`, `name`, `created_at`, `updated_at`) VALUES
(1, '20240813052546.jpg', 'single room', '2024-08-12 22:55:46', '2024-08-12 22:55:46'),
(2, '20240813052606.jfif', 'double room', '2024-08-12 22:56:06', '2024-08-12 22:56:06'),
(5, '20240814161155.jfif', 'standard Room', '2024-08-14 09:41:55', '2024-08-14 09:41:55'),
(6, '20240817042452.jfif', 'triple room', '2024-08-16 21:54:52', '2024-08-16 21:54:52');

-- --------------------------------------------------------

--
-- Table structure for table `towns`
--

CREATE TABLE `towns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `towns`
--

INSERT INTO `towns` (`id`, `img`, `name`, `rtype`, `price`, `created_at`, `updated_at`) VALUES
(3, '20240813110705.jfif', 'Shwe Pyi Resort', 'single room', '25000', '2024-08-13 04:37:05', '2024-08-13 04:37:05'),
(4, '20240813110805.jfif', 'Shwe Pyi Resort', 'double room', '35000', '2024-08-13 04:38:05', '2024-08-13 04:38:05'),
(5, '20240813110830.jfif', 'Shwe Pyi Resort', 'triple room', '45000', '2024-08-13 04:38:30', '2024-08-13 04:38:30'),
(6, '20240813110913.jfif', 'Amara Gold Hotel', 'single room', '25000', '2024-08-13 04:39:13', '2024-08-13 04:39:13'),
(7, '20240813110940.jfif', 'Amara Gold Hotel', 'double room', '35000', '2024-08-13 04:39:40', '2024-08-13 04:39:40'),
(8, '20240813110956.jfif', 'Amara Gold Hotel', 'triple room', '45000', '2024-08-13 04:39:56', '2024-08-13 04:39:56');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `img`, `email`, `email_verified_at`, `password`, `type`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'download.png', 'admin@gmail.com', NULL, '$2y$10$FKXbm/TxOSX.JSF.fDaubu7r9DuPhdEmg1yNSKnbQQQbJxL9tDVZ2', '1', NULL, '2024-08-12 03:35:00', '2024-08-12 03:35:00'),
(4, 'Alice', 'download.png', 'alice@gmail.com', NULL, '$2y$10$FuQi91jYNuv77vMgt0iTC.PzpkvkjoO0IDbkEkCnXXWwmsYlTfYdK', '0', NULL, '2024-08-26 20:15:26', '2024-08-26 20:15:26'),
(5, 'Khin Khin Cho', 'download.png', 'khinkhincho785@gmail.com', NULL, '$2y$10$ugiy9TLiYIux.TRBOTouuulDotU7qSpCDT/9xO5skIVoFYLk0RFdW', '0', NULL, '2024-08-27 03:24:03', '2024-08-27 03:24:03'),
(6, 'YWA', 'download.png', 'ywa@gmail.com', NULL, '$2y$10$2kVzZza8Gc8Hy9FdG5O.ueLE7oqDT.9NMXvJ3UehZDtccFYOWFyNe', '0', NULL, '2024-08-29 01:51:55', '2024-08-29 01:51:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagodas`
--
ALTER TABLE `pagodas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

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
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `towns`
--
ALTER TABLE `towns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pagodas`
--
ALTER TABLE `pagodas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `towns`
--
ALTER TABLE `towns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
