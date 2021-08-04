-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主機： 127.0.0.1
-- 產生時間： 
-- 伺服器版本： 10.4.6-MariaDB
-- PHP 版本： 7.2.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `rigortool`
--

-- --------------------------------------------------------

--
-- 資料表結構 `rig_items`
--

CREATE TABLE `rig_items` (
  `item_id` int(6) NOT NULL,
  `layer1` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `layer2` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `layer3` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item_title_en` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item_status` varchar(6) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `rig_items`
--

INSERT INTO `rig_items` (`item_id`, `layer1`, `layer2`, `layer3`, `item_title_en`, `item_status`) VALUES
(21001, 'Hand Tools and Accessories', 'Bit Set', 'hi', '33 Piece Impact Driver Bit Set', 'New');

-- --------------------------------------------------------

--
-- 資料表結構 `user`
--

CREATE TABLE `user` (
  `UserId` int(11) NOT NULL,
  `User` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(36) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 傾印資料表的資料 `user`
--

INSERT INTO `user` (`UserId`, `User`, `Password`) VALUES
(1, 'Admin', '53807709'),
(2, 'Admin2', '12345678');

--
-- 已傾印資料表的索引
--

--
-- 資料表索引 `rig_items`
--
ALTER TABLE `rig_items`
  ADD PRIMARY KEY (`item_id`);

--
-- 資料表索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserId`);

--
-- 在傾印的資料表使用自動遞增(AUTO_INCREMENT)
--

--
-- 使用資料表自動遞增(AUTO_INCREMENT) `user`
--
ALTER TABLE `user`
  MODIFY `UserId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
