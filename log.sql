-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018-01-18 04:00:49
-- 服务器版本： 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `log`
--

-- --------------------------------------------------------

--
-- 表的结构 `ccp_log_error`
--

CREATE TABLE `ccp_log_error` (
  `pid` int(11) NOT NULL,
  `level` varchar(16) DEFAULT NULL,
  `time` varchar(32) DEFAULT NULL,
  `uid` varchar(100) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `userAgent` varchar(250) DEFAULT NULL,
  `msgs_apiurl` varchar(400) DEFAULT NULL,
  `msgs_method` varchar(20) DEFAULT NULL,
  `msgs_status` varchar(20) DEFAULT NULL,
  `msgs_data` varchar(500) DEFAULT NULL,
  `msgs_request` varchar(20) DEFAULT NULL,
  `msgs_response` varchar(20) DEFAULT NULL,
  `msgs_time` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ccp_log_error`
--

INSERT INTO `ccp_log_error` (`pid`, `level`, `time`, `uid`, `url`, `userAgent`, `msgs_apiurl`, `msgs_method`, `msgs_status`, `msgs_data`, `msgs_request`, `msgs_response`, `msgs_time`) VALUES
(1, 'error', '2018-01-10 09:44:04.359', '{fb3baf2d-373a-4669-b2ed-48463ddb20ae}', 'http://127.0.0.1:2017/#/app/user/account_info', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://192.168.1.103:5000/api/User/ModifyUserInfoByUserId?userId=e0873d5d-6090-48ef-9d2b-a5877b900011&forceEdit=true', 'POST', '0', '{\n  "address": null,\n  "authorizedLoad": 0,\n  "carLength": 0,\n  "carNumber": "苏L88888",\n  "carriageType": 0,\n  "carType": 0,\n  "headImage": null,\n  "phoneNumber": "18362886351",\n  "point": 0,\n  "profile": null,\n  "realName": "梁淇1",\n  "realNameState": 2,\n  "userId": "e0873d5d-6090-48ef-9d2b-a5877b900011",\n  "userName": "18362886351",\n  "identity": "15020219940208361X",\n  "roadTransportLicence": null,\n  "roadTransportName": null,\n  "jurisdiction": ""\n}', '/', 'false', '1.318s');

-- --------------------------------------------------------

--
-- 表的结构 `ccp_log_total`
--

CREATE TABLE `ccp_log_total` (
  `pid` int(11) NOT NULL,
  `level` varchar(16) DEFAULT NULL,
  `time` varchar(32) DEFAULT NULL,
  `uid` varchar(100) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `userAgent` varchar(250) DEFAULT NULL,
  `msgs_apiurl` varchar(400) DEFAULT NULL,
  `msgs_method` varchar(20) DEFAULT NULL,
  `msgs_status` varchar(20) DEFAULT NULL,
  `msgs_data` varchar(500) DEFAULT NULL,
  `msgs_request` varchar(20) DEFAULT NULL,
  `msgs_response` varchar(20) DEFAULT NULL,
  `msgs_time` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `ccp_log_total`
--

INSERT INTO `ccp_log_total` (`pid`, `level`, `time`, `uid`, `url`, `userAgent`, `msgs_apiurl`, `msgs_method`, `msgs_status`, `msgs_data`, `msgs_request`, `msgs_response`, `msgs_time`) VALUES
(46, 'info', '2018-01-10 10:28:51.603', '{f4672049-feba-45a4-89a0-e37216a05051}', 'http://127.0.0.1:2017/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'info', '2018-01-10 10:33:27.276', '{fba71c74-8392-44bc-9e85-577d8682637f}', 'http://127.0.0.1:2017/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://127.0.0.1:2017/index.html', 'GET', '/', '/', 'success', '/', '/'),
(48, 'info', '2018-01-10 10:33:27.289', '{fba71c74-8392-44bc-9e85-577d8682637f}', 'http://127.0.0.1:2017/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', 'http://127.0.0.1:2017/index.html', 'GET', '200', '/', '/', 'success', '0.009s');

-- --------------------------------------------------------

--
-- 表的结构 `test_log_error`
--

CREATE TABLE `test_log_error` (
  `pid` int(11) NOT NULL,
  `level` varchar(16) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `uid` varchar(100) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `userAgent` varchar(250) DEFAULT NULL,
  `msgs` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `test_log_total`
--

CREATE TABLE `test_log_total` (
  `pid` int(11) NOT NULL,
  `level` varchar(16) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `uid` varchar(100) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `userAgent` varchar(250) DEFAULT NULL,
  `msgs` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `test_log_total`
--

INSERT INTO `test_log_total` (`pid`, `level`, `time`, `uid`, `url`, `userAgent`, `msgs`) VALUES
(58, 'info', '2018-01-11 15:15:09', '{3acffab6-69e0-44a5-9841-9402cf719798}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{3acffab6-69e0-44a5-9841-9402cf719798}","这是一条info日志","会产生一个随机数：",92]'),
(59, 'warn', '2018-01-11 15:15:38', '{3acffab6-69e0-44a5-9841-9402cf719798}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{3acffab6-69e0-44a5-9841-9402cf719798}","这是一条warn日志"]'),
(60, 'error', '2018-01-11 15:23:57', '{4db8cb8b-6311-46bc-886d-dcd9977b90fa}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{4db8cb8b-6311-46bc-886d-dcd9977b90fa}","[OnError]","Uncaught TypeError: Cannot read property ''test'' of undefined","(68行31列)"]'),
(61, 'error', '2018-01-11 15:23:57', '{4db8cb8b-6311-46bc-886d-dcd9977b90fa}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{4db8cb8b-6311-46bc-886d-dcd9977b90fa}","这是一条error日志","捕获到一个错误：",{"stack":"SyntaxError: Unexpected token u in JSON at position 0\\n    at JSON.parse (<anonymous>)\\n    at HTMLButtonElement.<anonymous> (http://127.0.0.1:2017/index.html:60:22)","message":"Unexpected token u in JSON at position 0"}]'),
(62, 'error', '2018-01-11 15:23:58', '{4db8cb8b-6311-46bc-886d-dcd9977b90fa}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{4db8cb8b-6311-46bc-886d-dcd9977b90fa}","[OnRejection]",{"stack":"TypeError: Cannot read property ''test'' of undefined\\n    at http://127.0.0.1:2017/index.html:74:35\\n    at new Promise (<anonymous>)\\n    at HTMLButtonElement.<anonymous> (http://127.0.0.1:2017/index.html:72:27)","message":"Cannot read property ''test'' of undefined"}]'),
(63, 'info', '2018-01-11 15:23:58', '{4db8cb8b-6311-46bc-886d-dcd9977b90fa}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{4db8cb8b-6311-46bc-886d-dcd9977b90fa}","[ajax] 发送get请求：http://127.0.0.1:2017/index.html"]'),
(64, 'info', '2018-01-11 15:23:58', '{4db8cb8b-6311-46bc-886d-dcd9977b90fa}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{4db8cb8b-6311-46bc-886d-dcd9977b90fa}","[ajax]","接口请求成功。","请求耗时：0.005s URL：http://127.0.0.1:2017/index.html 请求方式：GET","状态码：200"]'),
(65, 'info', '2018-01-11 15:34:15', '{4db8cb8b-6311-46bc-886d-dcd9977b90fa}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{4db8cb8b-6311-46bc-886d-dcd9977b90fa}","这是一条info日志","会产生一个随机数：",43]'),
(66, 'warn', '2018-01-11 15:34:16', '{4db8cb8b-6311-46bc-886d-dcd9977b90fa}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{4db8cb8b-6311-46bc-886d-dcd9977b90fa}","这是一条warn日志"]'),
(67, 'info', '2018-01-11 15:34:17', '{4db8cb8b-6311-46bc-886d-dcd9977b90fa}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{4db8cb8b-6311-46bc-886d-dcd9977b90fa}","[ajax]","接口请求成功。","请求耗时：0.007s URL：http://127.0.0.1:2017/index.html 请求方式：GET","状态码：200"]'),
(68, 'error', '2018-01-11 15:34:16', '{4db8cb8b-6311-46bc-886d-dcd9977b90fa}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{4db8cb8b-6311-46bc-886d-dcd9977b90fa}","这是一条error日志","捕获到一个错误：",{"stack":"SyntaxError: Unexpected token u in JSON at position 0\\n    at JSON.parse (<anonymous>)\\n    at HTMLButtonElement.<anonymous> (http://127.0.0.1:2017/index.html:60:22)","message":"Unexpected token u in JSON at position 0"}]'),
(69, 'error', '2018-01-11 15:34:16', '{4db8cb8b-6311-46bc-886d-dcd9977b90fa}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{4db8cb8b-6311-46bc-886d-dcd9977b90fa}","[OnError]","Uncaught TypeError: Cannot read property ''test'' of undefined","(68行31列)"]'),
(70, 'info', '2018-01-11 15:34:17', '{4db8cb8b-6311-46bc-886d-dcd9977b90fa}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{4db8cb8b-6311-46bc-886d-dcd9977b90fa}","[ajax] 发送get请求：http://127.0.0.1:2017/notfound.html"]'),
(71, 'error', '2018-01-11 15:34:17', '{4db8cb8b-6311-46bc-886d-dcd9977b90fa}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{4db8cb8b-6311-46bc-886d-dcd9977b90fa}","[OnRejection]",{"stack":"TypeError: Cannot read property ''test'' of undefined\\n    at http://127.0.0.1:2017/index.html:74:35\\n    at new Promise (<anonymous>)\\n    at HTMLButtonElement.<anonymous> (http://127.0.0.1:2017/index.html:72:27)","message":"Cannot read property ''test'' of undefined"}]'),
(72, 'info', '2018-01-11 15:34:17', '{4db8cb8b-6311-46bc-886d-dcd9977b90fa}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{4db8cb8b-6311-46bc-886d-dcd9977b90fa}","[ajax] 发送get请求：http://127.0.0.1:2017/index.html"]'),
(73, 'error', '2018-01-11 15:34:17', '{4db8cb8b-6311-46bc-886d-dcd9977b90fa}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{4db8cb8b-6311-46bc-886d-dcd9977b90fa}","[ajax]","接口请求失败！","请求耗时：0.007s URL：http://127.0.0.1:2017/notfound.html 请求方式：GET","状态码：404"]'),
(74, 'info', '2018-01-11 15:34:18', '{4db8cb8b-6311-46bc-886d-dcd9977b90fa}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{4db8cb8b-6311-46bc-886d-dcd9977b90fa}","[ajax] 发送post请求：http://xn--ihqv5t4nd.com/"]'),
(75, 'error', '2018-01-11 15:34:18', '{4db8cb8b-6311-46bc-886d-dcd9977b90fa}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{4db8cb8b-6311-46bc-886d-dcd9977b90fa}","[ajax]","接口请求失败！","请求耗时：0.034s URL：http://xn--ihqv5t4nd.com/ 请求方式：POST","表单数据：",{"a":1,"b":2},"状态码：0"]'),
(76, 'info', '2018-01-11 15:34:18', '{4db8cb8b-6311-46bc-886d-dcd9977b90fa}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{4db8cb8b-6311-46bc-886d-dcd9977b90fa}","[ajax] 发送get请求：http://www.taobao.com/"]'),
(77, 'error', '2018-01-11 15:34:18', '{4db8cb8b-6311-46bc-886d-dcd9977b90fa}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{4db8cb8b-6311-46bc-886d-dcd9977b90fa}","[ajax]","接口请求失败！","请求耗时：0.001s URL：http://www.taobao.com/ 请求方式：GET","状态码：0"]'),
(78, 'info', '2018-01-11 17:21:55', '{cb089f85-9e40-4cae-a71d-293a35e33ba9}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{cb089f85-9e40-4cae-a71d-293a35e33ba9}","这是一条info日志","会产生一个随机数：",78]'),
(79, 'warn', '2018-01-11 17:21:56', '{cb089f85-9e40-4cae-a71d-293a35e33ba9}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{cb089f85-9e40-4cae-a71d-293a35e33ba9}","这是一条warn日志"]'),
(80, 'error', '2018-01-11 17:21:56', '{cb089f85-9e40-4cae-a71d-293a35e33ba9}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{cb089f85-9e40-4cae-a71d-293a35e33ba9}","这是一条error日志","捕获到一个错误：",{"stack":"SyntaxError: Unexpected token u in JSON at position 0\\n    at JSON.parse (<anonymous>)\\n    at HTMLButtonElement.<anonymous> (http://127.0.0.1:2017/index.html:60:22)","message":"Unexpected token u in JSON at position 0"}]'),
(81, 'error', '2018-01-11 17:21:56', '{cb089f85-9e40-4cae-a71d-293a35e33ba9}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{cb089f85-9e40-4cae-a71d-293a35e33ba9}","[OnError]","Uncaught TypeError: Cannot read property ''test'' of undefined","(68行31列)"]'),
(82, 'info', '2018-01-11 18:36:42', '{cb089f85-9e40-4cae-a71d-293a35e33ba9}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{cb089f85-9e40-4cae-a71d-293a35e33ba9}","这是一条info日志","会产生一个随机数：",97]'),
(83, 'warn', '2018-01-11 18:36:43', '{cb089f85-9e40-4cae-a71d-293a35e33ba9}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{cb089f85-9e40-4cae-a71d-293a35e33ba9}","这是一条warn日志"]'),
(84, 'error', '2018-01-11 18:36:43', '{cb089f85-9e40-4cae-a71d-293a35e33ba9}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{cb089f85-9e40-4cae-a71d-293a35e33ba9}","这是一条error日志","捕获到一个错误：",{"stack":"SyntaxError: Unexpected token u in JSON at position 0\\n    at JSON.parse (<anonymous>)\\n    at HTMLButtonElement.<anonymous> (http://127.0.0.1:2017/index.html:60:22)","message":"Unexpected token u in JSON at position 0"}]'),
(85, 'error', '2018-01-11 18:36:44', '{cb089f85-9e40-4cae-a71d-293a35e33ba9}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{cb089f85-9e40-4cae-a71d-293a35e33ba9}","[OnError]","Uncaught TypeError: Cannot read property ''test'' of undefined","(68行31列)"]'),
(86, 'error', '2018-01-11 18:36:44', '{cb089f85-9e40-4cae-a71d-293a35e33ba9}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{cb089f85-9e40-4cae-a71d-293a35e33ba9}","[OnRejection]",{"stack":"TypeError: Cannot read property ''test'' of undefined\\n    at http://127.0.0.1:2017/index.html:74:35\\n    at new Promise (<anonymous>)\\n    at HTMLButtonElement.<anonymous> (http://127.0.0.1:2017/index.html:72:27)","message":"Cannot read property ''test'' of undefined"}]'),
(87, 'info', '2018-01-11 18:36:44', '{cb089f85-9e40-4cae-a71d-293a35e33ba9}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{cb089f85-9e40-4cae-a71d-293a35e33ba9}","[ajax] 发送get请求：http://127.0.0.1:2017/index.html"]'),
(88, 'info', '2018-01-11 18:36:44', '{cb089f85-9e40-4cae-a71d-293a35e33ba9}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{cb089f85-9e40-4cae-a71d-293a35e33ba9}","[ajax]","接口请求成功。","请求耗时：0.008s URL：http://127.0.0.1:2017/index.html 请求方式：GET","状态码：200"]'),
(89, 'info', '2018-01-11 18:36:45', '{cb089f85-9e40-4cae-a71d-293a35e33ba9}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{cb089f85-9e40-4cae-a71d-293a35e33ba9}","[ajax] 发送post请求：http://xn--ihqv5t4nd.com/"]'),
(90, 'error', '2018-01-11 18:36:45', '{cb089f85-9e40-4cae-a71d-293a35e33ba9}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{cb089f85-9e40-4cae-a71d-293a35e33ba9}","[ajax]","接口请求失败！","请求耗时：0.008s URL：http://127.0.0.1:2017/notfound.html 请求方式：GET","状态码：404"]'),
(91, 'info', '2018-01-11 18:36:45', '{cb089f85-9e40-4cae-a71d-293a35e33ba9}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{cb089f85-9e40-4cae-a71d-293a35e33ba9}","[ajax] 发送get请求：http://127.0.0.1:2017/notfound.html"]'),
(92, 'error', '2018-01-11 18:36:55', '{cb089f85-9e40-4cae-a71d-293a35e33ba9}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{cb089f85-9e40-4cae-a71d-293a35e33ba9}","[ajax]","接口请求失败！","请求耗时：10.013s URL：http://xn--ihqv5t4nd.com/ 请求方式：POST","表单数据：",{"a":1,"b":2},"状态码：0"]'),
(93, 'info', '2018-01-11 18:57:51', '{be10446b-1c78-43bf-9ba9-f66e374c3cdb}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{be10446b-1c78-43bf-9ba9-f66e374c3cdb}","[ajax] 发送get请求：http://127.0.0.1:2017/index.html"]'),
(94, 'info', '2018-01-11 18:57:51', '{be10446b-1c78-43bf-9ba9-f66e374c3cdb}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{be10446b-1c78-43bf-9ba9-f66e374c3cdb}","[ajax]","接口请求成功。","请求耗时：0.006s URL：http://127.0.0.1:2017/index.html 请求方式：GET","状态码：200"]'),
(95, 'info', '2018-01-11 19:02:24', '{81090f3b-5ab6-404c-a826-d9d43b587859}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{81090f3b-5ab6-404c-a826-d9d43b587859}","[ajax] 发送get请求：http://127.0.0.1:2017/notfound.html"]'),
(96, 'error', '2018-01-11 19:02:24', '{81090f3b-5ab6-404c-a826-d9d43b587859}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{81090f3b-5ab6-404c-a826-d9d43b587859}","[ajax]","接口请求失败！","请求耗时：0.008s URL：http://127.0.0.1:2017/notfound.html 请求方式：GET","状态码：404"]'),
(97, 'info', '2018-01-11 19:10:14', '{ebf94afa-b868-437f-882b-5ce64f0d593e}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{ebf94afa-b868-437f-882b-5ce64f0d593e}","[ajax] 发送get请求：http://127.0.0.1:2017/index.html"]'),
(98, 'info', '2018-01-11 19:10:14', '{ebf94afa-b868-437f-882b-5ce64f0d593e}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{ebf94afa-b868-437f-882b-5ce64f0d593e}","[ajax]","接口请求成功。","请求耗时：0.006s URL：http://127.0.0.1:2017/index.html 请求方式：GET","状态码：200"]'),
(99, 'info', '2018-01-11 19:10:15', '{ebf94afa-b868-437f-882b-5ce64f0d593e}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{ebf94afa-b868-437f-882b-5ce64f0d593e}","[ajax] 发送get请求：http://127.0.0.1:2017/index.html"]'),
(100, 'info', '2018-01-11 19:10:15', '{ebf94afa-b868-437f-882b-5ce64f0d593e}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{ebf94afa-b868-437f-882b-5ce64f0d593e}","[ajax]","接口请求成功。","请求耗时：0.004s URL：http://127.0.0.1:2017/index.html 请求方式：GET","状态码：200"]'),
(101, 'info', '2018-01-11 19:10:29', '{ebf94afa-b868-437f-882b-5ce64f0d593e}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{ebf94afa-b868-437f-882b-5ce64f0d593e}","[ajax]","接口请求成功。","请求耗时：0.02s URL：http://127.0.0.1:2017/index.html 请求方式：GET","状态码：200"]'),
(102, 'info', '2018-01-11 19:10:29', '{ebf94afa-b868-437f-882b-5ce64f0d593e}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{ebf94afa-b868-437f-882b-5ce64f0d593e}","[ajax] 发送get请求：http://127.0.0.1:2017/index.html"]'),
(103, 'info', '2018-01-11 21:12:05', '{ebf94afa-b868-437f-882b-5ce64f0d593e}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{ebf94afa-b868-437f-882b-5ce64f0d593e}","这是一条info日志","会产生一个随机数：",64]'),
(104, 'info', '2018-01-11 21:12:07', '{ebf94afa-b868-437f-882b-5ce64f0d593e}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{ebf94afa-b868-437f-882b-5ce64f0d593e}","[ajax] 发送get请求：http://127.0.0.1:2017/index.html"]'),
(105, 'warn', '2018-01-11 21:12:05', '{ebf94afa-b868-437f-882b-5ce64f0d593e}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{ebf94afa-b868-437f-882b-5ce64f0d593e}","这是一条warn日志"]'),
(106, 'error', '2018-01-11 21:12:06', '{ebf94afa-b868-437f-882b-5ce64f0d593e}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{ebf94afa-b868-437f-882b-5ce64f0d593e}","这是一条error日志","捕获到一个错误：",{"stack":"SyntaxError: Unexpected token u in JSON at position 0\\n    at JSON.parse (<anonymous>)\\n    at HTMLButtonElement.<anonymous> (http://127.0.0.1:2017/index.html:60:22)","message":"Unexpected token u in JSON at position 0"}]'),
(107, 'error', '2018-01-11 21:12:06', '{ebf94afa-b868-437f-882b-5ce64f0d593e}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{ebf94afa-b868-437f-882b-5ce64f0d593e}","[OnError]","Uncaught TypeError: Cannot read property ''test'' of undefined","(68行31列)"]'),
(108, 'error', '2018-01-11 21:12:07', '{ebf94afa-b868-437f-882b-5ce64f0d593e}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{ebf94afa-b868-437f-882b-5ce64f0d593e}","[OnRejection]",{"stack":"TypeError: Cannot read property ''test'' of undefined\\n    at http://127.0.0.1:2017/index.html:74:35\\n    at new Promise (<anonymous>)\\n    at HTMLButtonElement.<anonymous> (http://127.0.0.1:2017/index.html:72:27)","message":"Cannot read property ''test'' of undefined"}]'),
(109, 'info', '2018-01-11 21:12:07', '{ebf94afa-b868-437f-882b-5ce64f0d593e}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{ebf94afa-b868-437f-882b-5ce64f0d593e}","[ajax]","接口请求成功。","请求耗时：0.018s URL：http://127.0.0.1:2017/index.html 请求方式：GET","状态码：200"]'),
(110, 'info', '2018-01-11 21:12:08', '{ebf94afa-b868-437f-882b-5ce64f0d593e}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{ebf94afa-b868-437f-882b-5ce64f0d593e}","[ajax] 发送get请求：http://127.0.0.1:2017/notfound.html"]'),
(111, 'error', '2018-01-11 21:12:08', '{ebf94afa-b868-437f-882b-5ce64f0d593e}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{ebf94afa-b868-437f-882b-5ce64f0d593e}","[ajax]","接口请求失败！","请求耗时：0.008s URL：http://127.0.0.1:2017/notfound.html 请求方式：GET","状态码：404"]'),
(112, 'info', '2018-01-11 21:12:08', '{ebf94afa-b868-437f-882b-5ce64f0d593e}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{ebf94afa-b868-437f-882b-5ce64f0d593e}","[ajax] 发送post请求：http://xn--ihqv5t4nd.com/"]'),
(113, 'error', '2018-01-11 21:12:08', '{ebf94afa-b868-437f-882b-5ce64f0d593e}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{ebf94afa-b868-437f-882b-5ce64f0d593e}","[ajax]","接口请求失败！","请求耗时：0.04s URL：http://xn--ihqv5t4nd.com/ 请求方式：POST","表单数据：",{"a":1,"b":2},"状态码：0"]'),
(114, 'info', '2018-01-12 10:50:31', '{a19b8ad1-05e8-4b09-a023-807cb8fcbd7c}', 'http://192.168.199.234:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{a19b8ad1-05e8-4b09-a023-807cb8fcbd7c}","这是一条info日志","会产生一个随机数：",23]'),
(115, 'info', '2018-01-12 10:50:34', '{a19b8ad1-05e8-4b09-a023-807cb8fcbd7c}', 'http://192.168.199.234:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{a19b8ad1-05e8-4b09-a023-807cb8fcbd7c}","[ajax] 发送get请求：http://192.168.199.234:2017/index.html"]'),
(116, 'info', '2018-01-12 10:50:34', '{a19b8ad1-05e8-4b09-a023-807cb8fcbd7c}', 'http://192.168.199.234:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{a19b8ad1-05e8-4b09-a023-807cb8fcbd7c}","[ajax]","接口请求成功。","请求耗时：0.008s URL：http://192.168.199.234:2017/index.html 请求方式：GET","状态码：200"]'),
(117, 'error', '2018-01-12 10:50:32', '{a19b8ad1-05e8-4b09-a023-807cb8fcbd7c}', 'http://192.168.199.234:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{a19b8ad1-05e8-4b09-a023-807cb8fcbd7c}","[OnRejection]",{"stack":"TypeError: Cannot read property ''test'' of undefined\\n    at http://192.168.199.234:2017/index.html:74:35\\n    at new Promise (<anonymous>)\\n    at HTMLButtonElement.<anonymous> (http://192.168.199.234:2017/index.html:72:27)","message":"Cannot read property ''test'' of undefined"}]'),
(118, 'info', '2018-01-12 10:50:46', '{89f52170-38a2-4f3c-a5d4-10315dfd8e11}', 'http://192.168.199.234:2017/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{89f52170-38a2-4f3c-a5d4-10315dfd8e11}","[ajax] 发送get请求：http://192.168.199.234:2017/index.html"]'),
(119, 'info', '2018-01-12 10:50:46', '{89f52170-38a2-4f3c-a5d4-10315dfd8e11}', 'http://192.168.199.234:2017/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{89f52170-38a2-4f3c-a5d4-10315dfd8e11}","[ajax]","接口请求成功。","请求耗时：0.008s URL：http://192.168.199.234:2017/index.html 请求方式：GET","状态码：200"]'),
(120, 'warn', '2018-01-12 10:58:00', '{b0648960-d2a4-4e38-9b23-8be20a80be83}', 'http://192.168.199.234:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '"{b0648960-d2a4-4e38-9b23-8be20a80be83}","这是一条warn日志"'),
(121, 'error', '2018-01-12 10:58:00', '{b0648960-d2a4-4e38-9b23-8be20a80be83}', 'http://192.168.199.234:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '"{b0648960-d2a4-4e38-9b23-8be20a80be83}","这是一条error日志","捕获到一个错误：",{"stack":"SyntaxError: Unexpected token u in JSON at position 0\\n    at JSON.parse (<anonymous>)\\n    at HTMLButtonElement.<anonymous> (http://192.168.199.234:2017/index.html:60:22)","message":"Unexpected token u in JSON at position 0"}'),
(122, 'info', '2018-01-12 10:58:02', '{b0648960-d2a4-4e38-9b23-8be20a80be83}', 'http://192.168.199.234:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '"{b0648960-d2a4-4e38-9b23-8be20a80be83}","这是一条info日志","会产生一个随机数：",4'),
(123, 'error', '2018-01-12 10:58:06', '{b0648960-d2a4-4e38-9b23-8be20a80be83}', 'http://192.168.199.234:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '"{b0648960-d2a4-4e38-9b23-8be20a80be83}","[OnRejection",{"stack":"TypeError: Cannot read property ''test'' of undefined\\n    at http://192.168.199.234:2017/index.html:74:35\\n    at new Promise (<anonymous>)\\n    at HTMLButtonElement.<anonymous> (http://192.168.199.234:2017/index.html:72:27)","message":"Cannot read property ''test'' of undefined"}]'),
(124, 'info', '2018-01-12 10:58:07', '{b0648960-d2a4-4e38-9b23-8be20a80be83}', 'http://192.168.199.234:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '"{b0648960-d2a4-4e38-9b23-8be20a80be83}","[ajax 发送get请求：http://192.168.199.234:2017/index.html"]'),
(125, 'info', '2018-01-12 10:58:07', '{b0648960-d2a4-4e38-9b23-8be20a80be83}', 'http://192.168.199.234:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '"{b0648960-d2a4-4e38-9b23-8be20a80be83}","[ajax","接口请求成功。","请求耗时：0.006s URL：http://192.168.199.234:2017/index.html 请求方式：GET","状态码：200"]'),
(126, 'info', '2018-01-12 10:58:07', '{b0648960-d2a4-4e38-9b23-8be20a80be83}', 'http://192.168.199.234:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '"{b0648960-d2a4-4e38-9b23-8be20a80be83}","[ajax 发送get请求：http://192.168.199.234:2017/index.html"]'),
(127, 'info', '2018-01-12 10:58:07', '{b0648960-d2a4-4e38-9b23-8be20a80be83}', 'http://192.168.199.234:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '"{b0648960-d2a4-4e38-9b23-8be20a80be83}","[ajax","接口请求成功。","请求耗时：0.007s URL：http://192.168.199.234:2017/index.html 请求方式：GET","状态码：200"]'),
(128, 'info', '2018-01-12 10:59:46', '{b0648960-d2a4-4e38-9b23-8be20a80be83}', 'http://192.168.199.234:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '"{b0648960-d2a4-4e38-9b23-8be20a80be83}","[ajax","接口请求成功。","请求耗时：0.018s URL：http://192.168.199.234:2017/index.html 请求方式：GET","状态码：200"]'),
(129, 'info', '2018-01-12 10:59:46', '{b0648960-d2a4-4e38-9b23-8be20a80be83}', 'http://192.168.199.234:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '"{b0648960-d2a4-4e38-9b23-8be20a80be83}","[ajax 发送get请求：http://192.168.199.234:2017/index.html"]'),
(130, 'info', '2018-01-12 11:31:17', '{f2b77ddc-dc04-4494-8553-fff5ec478cf9}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{f2b77ddc-dc04-4494-8553-fff5ec478cf9}","这是一条info日志","会产生一个随机数：",11]'),
(131, 'info', '2018-01-12 11:52:52', '{c6f6a713-f551-4b11-8ec9-98d341981f88}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{c6f6a713-f551-4b11-8ec9-98d341981f88}","[ajax] 发送get请求：http://127.0.0.1:2017/index.html"]'),
(132, 'info', '2018-01-12 11:52:52', '{c6f6a713-f551-4b11-8ec9-98d341981f88}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{c6f6a713-f551-4b11-8ec9-98d341981f88}","[ajax]","接口请求成功。","请求耗时：0.014s URL：http://127.0.0.1:2017/index.html 请求方式：GET","状态码：200"]'),
(133, 'info', '2018-01-12 13:00:14', '{16334d26-2196-4a46-95d5-053094b9e1ad}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{16334d26-2196-4a46-95d5-053094b9e1ad}","这是一条info日志","会产生一个随机数：",89]'),
(134, 'error', '2018-01-12 13:00:20', '{16334d26-2196-4a46-95d5-053094b9e1ad}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{16334d26-2196-4a46-95d5-053094b9e1ad}","[OnError]","Uncaught TypeError: Cannot read property ''test'' of undefined","(68行31列)"]'),
(135, 'info', '2018-01-12 14:10:53', '{16334d26-2196-4a46-95d5-053094b9e1ad}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{16334d26-2196-4a46-95d5-053094b9e1ad}","[ajax] 发送get请求：http://127.0.0.1:2017/index.html"]'),
(136, 'info', '2018-01-12 14:10:53', '{16334d26-2196-4a46-95d5-053094b9e1ad}', 'http://127.0.0.1:2017/index.html', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{16334d26-2196-4a46-95d5-053094b9e1ad}","[ajax]","接口请求成功。","请求耗时：0.008s URL：http://127.0.0.1:2017/index.html 请求方式：GET","状态码：200"]'),
(137, 'info', '2018-01-13 19:41:58', '{09cd8cf8-b769-4c9a-89bd-4f5aeafe0eba}', 'http://127.0.0.1:2017/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{09cd8cf8-b769-4c9a-89bd-4f5aeafe0eba}","这是一条info日志","会产生一个随机数：",91]'),
(138, 'warn', '2018-01-13 19:41:58', '{09cd8cf8-b769-4c9a-89bd-4f5aeafe0eba}', 'http://127.0.0.1:2017/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{09cd8cf8-b769-4c9a-89bd-4f5aeafe0eba}","这是一条warn日志"]'),
(139, 'error', '2018-01-13 19:41:59', '{09cd8cf8-b769-4c9a-89bd-4f5aeafe0eba}', 'http://127.0.0.1:2017/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{09cd8cf8-b769-4c9a-89bd-4f5aeafe0eba}","这是一条error日志","捕获到一个错误：",{"stack":"SyntaxError: Unexpected token u in JSON at position 0\\n    at JSON.parse (<anonymous>)\\n    at HTMLButtonElement.<anonymous> (http://127.0.0.1:2017/:60:22)","message":"Unexpected token u in JSON at position 0"}]'),
(140, 'error', '2018-01-13 19:42:00', '{09cd8cf8-b769-4c9a-89bd-4f5aeafe0eba}', 'http://127.0.0.1:2017/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{09cd8cf8-b769-4c9a-89bd-4f5aeafe0eba}","[OnError]","Uncaught TypeError: Cannot read property ''test'' of undefined","(68行31列)"]'),
(141, 'error', '2018-01-13 19:42:01', '{09cd8cf8-b769-4c9a-89bd-4f5aeafe0eba}', 'http://127.0.0.1:2017/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{09cd8cf8-b769-4c9a-89bd-4f5aeafe0eba}","[OnRejection]",{"stack":"TypeError: Cannot read property ''test'' of undefined\\n    at http://127.0.0.1:2017/:74:35\\n    at new Promise (<anonymous>)\\n    at HTMLButtonElement.<anonymous> (http://127.0.0.1:2017/:72:27)","message":"Cannot read property ''test'' of undefined"}]'),
(142, 'info', '2018-01-13 19:42:01', '{09cd8cf8-b769-4c9a-89bd-4f5aeafe0eba}', 'http://127.0.0.1:2017/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{09cd8cf8-b769-4c9a-89bd-4f5aeafe0eba}","[ajax] 发送get请求：http://127.0.0.1:2017/index.html"]'),
(143, 'info', '2018-01-13 19:42:03', '{09cd8cf8-b769-4c9a-89bd-4f5aeafe0eba}', 'http://127.0.0.1:2017/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{09cd8cf8-b769-4c9a-89bd-4f5aeafe0eba}","[ajax] 发送get请求：http://127.0.0.1:2017/notfound.html"]'),
(144, 'error', '2018-01-13 19:42:03', '{09cd8cf8-b769-4c9a-89bd-4f5aeafe0eba}', 'http://127.0.0.1:2017/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{09cd8cf8-b769-4c9a-89bd-4f5aeafe0eba}","[ajax]","接口请求失败！","请求耗时：0.005s URL：http://127.0.0.1:2017/notfound.html 请求方式：GET","状态码：404"]'),
(145, 'info', '2018-01-13 19:42:01', '{09cd8cf8-b769-4c9a-89bd-4f5aeafe0eba}', 'http://127.0.0.1:2017/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{09cd8cf8-b769-4c9a-89bd-4f5aeafe0eba}","[ajax]","接口请求成功。","请求耗时：0.008s URL：http://127.0.0.1:2017/index.html 请求方式：GET","状态码：200"]'),
(146, 'info', '2018-01-14 15:01:31', '{821a7660-7184-46ab-801d-01826bd67d89}', 'http://127.0.0.1:2017/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{821a7660-7184-46ab-801d-01826bd67d89}","[ajax] 发送get请求：http://127.0.0.1:2017/index.html"]'),
(147, 'info', '2018-01-14 15:01:31', '{821a7660-7184-46ab-801d-01826bd67d89}', 'http://127.0.0.1:2017/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{821a7660-7184-46ab-801d-01826bd67d89}","[ajax]","接口请求成功。","请求耗时：0.007s URL：http://127.0.0.1:2017/index.html 请求方式：GET","状态码：200"]'),
(148, 'info', '2018-01-14 15:03:53', '{6f88bd8e-a67c-40eb-80f6-1dd30f2eb8fc}', 'http://127.0.0.1:2017/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{6f88bd8e-a67c-40eb-80f6-1dd30f2eb8fc}","这是一条info日志","会产生一个随机数：",27]'),
(149, 'info', '2018-01-15 10:39:55', '{cdbafb2f-abce-427e-b925-348b77b37ce3}', 'http://127.0.0.1:2017/#/login', NULL, '["{cdbafb2f-abce-427e-b925-348b77b37ce3}","[ajax]",{"apiurl":"http://192.168.1.103:5000/api/Account/Login","method":"POST","time":"/","status":"/","data":"{\\n  \\"Email\\": \\"admin@vip56.cn\\",\\n  \\"Password\\": \\"123456\\",\\n  \\"RememberMe\\": true\\n}","request":"success","response":"/"}]'),
(150, 'error', '2018-01-15 10:39:56', '{cdbafb2f-abce-427e-b925-348b77b37ce3}', 'http://127.0.0.1:2017/#/login', NULL, '["{cdbafb2f-abce-427e-b925-348b77b37ce3}","[ajax]",{"method":"POST","time":"1.013s","apiurl":"http://192.168.1.103:5000/api/Account/Login","status":0,"data":"{\\n  \\"Email\\": \\"admin@vip56.cn\\",\\n  \\"Password\\": \\"123456\\",\\n  \\"RememberMe\\": true\\n}","request":"/","response":"false"}]'),
(151, 'info', '2018-01-18 10:54:43', '{c1c16b84-c8cd-43b2-9b38-6768cd81463e}', 'http://192.168.199.234:2017/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{c1c16b84-c8cd-43b2-9b38-6768cd81463e}","[ajax]","接口请求成功。","请求耗时：0.009s URL：http://192.168.199.234:2017/index.html 请求方式：GET","状态码：200"]'),
(152, 'info', '2018-01-18 10:54:43', '{c1c16b84-c8cd-43b2-9b38-6768cd81463e}', 'http://192.168.199.234:2017/', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/63.0.3239.132 Safari/537.36', '["{c1c16b84-c8cd-43b2-9b38-6768cd81463e}","[ajax] 发送get请求：http://192.168.199.234:2017/index.html"]');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ccp_log_error`
--
ALTER TABLE `ccp_log_error`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `ccp_log_total`
--
ALTER TABLE `ccp_log_total`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `test_log_error`
--
ALTER TABLE `test_log_error`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `test_log_total`
--
ALTER TABLE `test_log_total`
  ADD PRIMARY KEY (`pid`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `ccp_log_error`
--
ALTER TABLE `ccp_log_error`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- 使用表AUTO_INCREMENT `ccp_log_total`
--
ALTER TABLE `ccp_log_total`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- 使用表AUTO_INCREMENT `test_log_error`
--
ALTER TABLE `test_log_error`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `test_log_total`
--
ALTER TABLE `test_log_total`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
