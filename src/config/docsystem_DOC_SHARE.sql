-- phpMyAdmin SQL Dump
-- version 4.8.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-05-16 07:42:32
-- 服务器版本： 10.1.33-MariaDB
-- PHP Version: 7.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `docsystem`
--

-- --------------------------------------------------------

--
-- 表的结构 `doc_share`
--

CREATE TABLE `doc_share` (
  `ID` int(11) NOT NULL,
  `SHARE_ID` int(11) NOT NULL COMMENT '分享ID',
  `NAME` varchar(300) DEFAULT NULL COMMENT '分享的文件或目录名称',
  `PATH` varchar(6000) NOT NULL DEFAULT '' COMMENT '基于仓库目录的相对路径',
  `DOC_ID` bigint(20) DEFAULT NULL COMMENT 'Doc Node id',
  `VID` int(11) DEFAULT NULL COMMENT '所属仓库id',
  `SHARE_AUTH` varchar(2000) DEFAULT NULL COMMENT '分享权限',
  `SHARE_PWD` varchar(20) DEFAULT NULL COMMENT '分享密码',
  `SHARED_BY` int(11) DEFAULT NULL COMMENT '分享用户ID',
  `EXPIRE_TIME` bigint(20) NOT NULL DEFAULT '0' COMMENT '分享有效时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doc_share`
--
ALTER TABLE `doc_share`
  ADD PRIMARY KEY (`ID`);


--
-- 使用表AUTO_INCREMENT `doc_share`
--
ALTER TABLE `doc_share`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
