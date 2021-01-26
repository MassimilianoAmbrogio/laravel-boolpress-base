-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 26, 2021 at 10:04 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `massimiliano-blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path_img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `slug`, `path_img`, `created_at`, `updated_at`) VALUES
(1, 'Nihil praesentium autem et enim.', 'Ut aspernatur et quas deleniti voluptas. Ea sed consequatur enim quae quaerat ullam ea. Sit sed tenetur eaque nesciunt. Facere laudantium et eius distinctio quo aut cumque aut.\n\nVelit et est expedita ut. Aperiam accusantium nostrum est. Repudiandae vel veniam et porro ut tempora possimus. Eligendi magnam in eaque eius.', 'nihil-praesentium-autem-et-enim', NULL, '2021-01-26 20:19:59', '2021-01-26 20:19:59'),
(2, 'Provident sint et rerum ut.', 'Necessitatibus voluptatem voluptas mollitia necessitatibus delectus ratione. Magnam vel accusamus aut totam maiores atque eius quo.\n\nSuscipit ad fugit itaque sed sed. Reiciendis aut consequatur architecto alias molestiae. Omnis ducimus sapiente aspernatur quidem tempora.', 'provident-sint-et-rerum-ut', NULL, '2021-01-26 20:19:59', '2021-01-26 20:19:59'),
(3, 'Id saepe temporibus eveniet rem delectus.', 'Occaecati et qui ratione laudantium enim. Ipsa pariatur quam inventore et officia. Molestiae reprehenderit tenetur impedit qui est expedita voluptas.\n\nIpsam minus quisquam officiis itaque eius. Rerum quia iusto consectetur in ut. Quis et ad distinctio cumque similique cumque. Consequatur ducimus cumque suscipit consequatur nostrum. Reprehenderit voluptate labore occaecati veniam officiis.', 'id-saepe-temporibus-eveniet-rem-delectus', NULL, '2021-01-26 20:19:59', '2021-01-26 20:19:59'),
(4, 'Sint autem sunt repellendus aut.', 'Numquam debitis quam sunt eveniet. Itaque iusto soluta velit labore voluptatem magni adipisci. Rerum voluptatem id beatae inventore. Nisi enim illo voluptatem necessitatibus.\n\nEt accusantium qui occaecati voluptas minus. Ad exercitationem eos tenetur quis. Et et molestiae eos error. Laudantium alias ut blanditiis nemo. Enim sequi voluptatem minus.', 'sint-autem-sunt-repellendus-aut', NULL, '2021-01-26 20:19:59', '2021-01-26 20:19:59'),
(5, 'Voluptas quia nulla voluptatem autem et.', 'Nihil dicta quam alias sequi et voluptatibus dolores. Ut delectus aut aspernatur rerum vitae ut accusamus. Aut rerum corrupti exercitationem minima voluptatibus eaque.\n\nOptio error enim quae laboriosam. Illum repellat est est ducimus accusamus qui harum. Tempore quibusdam consectetur totam et molestias porro. Consectetur aut quas omnis laborum nobis temporibus et.', 'voluptas-quia-nulla-voluptatem-autem-et', NULL, '2021-01-26 20:19:59', '2021-01-26 20:19:59'),
(6, 'Sit ut voluptate illum voluptate est rerum.', 'Unde et quidem iusto minus quidem. Minus incidunt saepe ut corrupti possimus.\n\nAut explicabo aut molestias rerum voluptas sunt. Et voluptatibus accusamus rerum et veritatis eos. Repudiandae blanditiis cumque rerum aut. Veniam porro maxime quae fugit iure nulla quasi.', 'sit-ut-voluptate-illum-voluptate-est-rerum', NULL, '2021-01-26 20:19:59', '2021-01-26 20:19:59'),
(7, 'Tenetur corporis similique in cumque.', 'Eveniet distinctio nam aliquid iure. Sint neque est incidunt consequatur corrupti. A numquam dolorem autem sint animi ullam tenetur. Minima labore nisi sed dolorem aut neque blanditiis.\n\nDeleniti facilis repellendus veniam accusantium autem rerum quasi. Odio doloremque quia qui omnis eveniet quos eveniet. Veniam voluptatem repellendus velit. Eum cupiditate accusamus assumenda est.', 'tenetur-corporis-similique-in-cumque', NULL, '2021-01-26 20:19:59', '2021-01-26 20:19:59'),
(8, 'Est hic architecto distinctio vero.', 'Qui explicabo quia sit. Et fuga veniam qui qui aut molestiae. Tempore qui eum assumenda. Omnis officiis cupiditate possimus atque.\n\nDolores aut dolorum placeat enim magni voluptate et. Provident nisi modi voluptates amet hic ipsum. Officiis maxime maxime est expedita voluptates expedita et. Saepe nostrum quia voluptatibus quia veritatis.', 'est-hic-architecto-distinctio-vero', NULL, '2021-01-26 20:19:59', '2021-01-26 20:19:59'),
(9, 'Magnam omnis atque qui ullam.', 'Aut voluptatem ad voluptatem quisquam quis. Quia beatae similique nulla necessitatibus. Commodi est eos eveniet assumenda sint praesentium sit.\n\nEt qui quam quibusdam repudiandae beatae corrupti labore est. Rerum et iste suscipit ea optio ut suscipit ipsum. Animi laborum eveniet quasi ut. Blanditiis aperiam aliquam sed autem sit nemo. Id libero nostrum debitis vel veniam et et.', 'magnam-omnis-atque-qui-ullam', NULL, '2021-01-26 20:19:59', '2021-01-26 20:19:59'),
(10, 'Mollitia et dicta est excepturi ipsa aut.', 'Et odio corrupti in. Iusto ut quis quod enim tempora. Officiis dolor ducimus enim dolor.\n\nOptio molestias qui ut recusandae ratione. Architecto quibusdam distinctio culpa laborum qui numquam provident. Velit officiis natus corporis minus reiciendis qui velit.', 'mollitia-et-dicta-est-excepturi-ipsa-aut', NULL, '2021-01-26 20:19:59', '2021-01-26 20:19:59'),
(11, 'Post 1', 'dsdwdwdff fgfg rfnirefiejejif  fdifiefiedfdv hfuhufhufe', 'post-1', 'images/kfOixUMBR2OdR4w2p20nismVN3BmxOcOlZ3SPAUF.jpg', '2021-01-26 20:57:19', '2021-01-26 20:57:19'),
(12, 'Post 2', 'iddifdjfkidfidjf kfgfjgfjkigjfgfkgof mvicmvifnmkvfmvkfmvf mfmmfkfmkg', 'post-2', 'images/uAuevd5q6NQ11xowzy752XJPjrBEwTnjK69FsSvr.jpg', '2021-01-26 20:57:45', '2021-01-26 20:57:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
