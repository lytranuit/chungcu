-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 21, 2018 lúc 09:45 PM
-- Phiên bản máy phục vụ: 5.6.39-cll-lve
-- Phiên bản PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bzzsisyk_code`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  `deleted` tinyint(9) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`, `deleted`) VALUES
(1, 'admin', 'Administrator', 0),
(2, 'members', 'General User', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(15) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `options`
--

CREATE TABLE `options` (
  `id_option` int(10) UNSIGNED NOT NULL,
  `name` varchar(256) DEFAULT NULL,
  `content` longtext,
  `deleted` tinyint(9) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `options`
--

INSERT INTO `options` (`id_option`, `name`, `content`, `deleted`) VALUES
(11, 'muc1f_header', 'Thông tin liên hệ', 0),
(12, 'muc1f_content', '<p style=\"text-align: left;\">Địa chỉ: Số 88, Đường N1, P.Sơn Kỳ, Q.T&acirc;n Ph&uacute;, TP. HCM, Việt Nam.</p><p style=\"text-align: left;\">HOTLINE : 090.331.5757 &nbsp;( ZALO + VIBER + SMS )</p><p style=\"text-align: left;\">Email : hth2191993@gmail.com</p>', 0),
(13, 'banner', NULL, 0),
(14, 'muc1_header', 'Mặt bằng', 0),
(15, 'muc1_content', '<p><br></p><p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-27/1511753635_1511494925_z832353058153_642d0a47cb463f9dc81b55f487dd0f7e.jpg\" style=\"width: 1500px; height: 1498px;\"></p><p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-27/1511753662_1511494946_z832353069173_0bade05f77315c3673be6f73999cab54.jpg\" style=\"width: 1500px; height: 1498px;\"></p><p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-27/1511753679_1511494968_z832353088058_04ab33fc1eccccfbfda79ff0e620d68e.jpg\" style=\"width: 1500px; height: 1498px;\"></p><p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-27/1511753709_4.jpg\" style=\"width: 1500px; height: 1498px;\"></p><p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-27/1511753718_5.jpg\" style=\"width: 1500px; height: 1498px;\"></p><p><br></p><p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-27/1511753728_6.jpg\" style=\"width: 1500px; height: 508px;\"></p><p><br><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-27/1511767571_7.jpg\" style=\"width: 1500px; height: 668px;\"></p>', 0),
(16, 'muc2_header', 'Tiện ích', 0),
(17, 'muc2_content', '<p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-27/1511767913_tiện_ích.jpg\" style=\"width: 1500px; height: 768px;\"></p><p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-27/1511768558_bán_đồ.jpg\" style=\"width: 1500px; height: 768px;\"></p><p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-27/1511769075_8.jpg\" style=\"width: 1500px; height: 768px;\"></p><p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-27/1511768244_12.jpg\" style=\"width: 1500px; height: 768px;\"></p>', 0),
(37, 'muc0_header', 'Tổng quan căn hộ Celadon city Tân Phú', 0),
(38, 'muc0_content', '<div class=\"col-sm-6 font-thin animated bounceInLeft\" data-style=\"bounceInLeft\"><h3 style=\"color:greenyellow;    font-weight: bold;\"><span style=\"color: rgb(97, 189, 109);\">Vị Tr&iacute;</span></h3><p style=\"font-size: 13px;\"><span style=\"font-size: 18px;\"><strong>Celadon City</strong> nằm tại Trung T&acirc;m Phường Sơn Kỳ, Quận T&acirc;n Ph&uacute; với vị tr&iacute; thuận tiện, cạnh Aeon Mall T&acirc;n Ph&uacute;, gần quốc lộ 1A n&ecirc;n dễ d&agrave;ng di chuyển đến c&aacute;c tỉnh miền T&acirc;y, miền Đ&ocirc;ng. Đặc biệt kế hoạch mở rộng đường T&acirc;n Kỳ T&acirc;n Qu&yacute; ( đoạn từ L&ecirc; Trọng Tấn đến Trường Chinh) đ&atilde; được ph&ecirc; duyệt v&agrave; sớm đi v&agrave;o hoạt động, tạo điều kiện kết nối giao th&ocirc;ng từ Celadon City đến trung t&acirc;m ng&agrave;y một dễ d&agrave;ng hơn.</span></p><p style=\"font-size: 13px;\"><br></p></div><div class=\"col-sm-6 animated bounceInRight\" data-style=\"bounceInRight\"><!--                <div class=\"col-sm-6 hover1\">\r\n                                    <img src=\"http://canhodxp.com/public/images/22.jpg\" style=\"border-radius: 15px;\"/>\r\n                                </div>--><div class=\"col-sm-12\"><h3 style=\"color:greenyellow;font-weight: bold;\"><span style=\"color: rgb(97, 189, 109);\">TỔNG QUAN</span></h3><p><strong>Chủ đầu tư: Tập đo&agrave;n Gamuda Land của Malaysia</strong></p><p><strong>- C&aacute;c nước Gamuda Land đ&atilde; đầu tư ph&aacute;t triển:</strong> Malaysia, Australia, Singapore, VietNam</p><p><strong>- Quy m&ocirc; dự &aacute;n:</strong> 82,4 ha</p><p><strong>- Mật độ x&acirc;y dựng:</strong> 20%</p><p><strong>- Nh&agrave; thầu x&acirc;y dựng:</strong> H&ograve;a B&igrave;nh&nbsp;</p><p><strong>- Đơn Vị thiết kế kiến tr&uacute;c:</strong> Surbana (Singapore)</p><p><strong>- Vị tr&iacute; dự &aacute;n:</strong> Bờ bao T&acirc;n Thắng, Phường Sơn Kỳ, Quận T&acirc;n Ph&uacute;, Hồ Ch&iacute; Minh</p><p><strong>- Tổng số vốn đầu tư:</strong> 1,5 tỷ USD</p><p><strong>- C&ocirc;ng vi&ecirc;n c&acirc;y xanh:</strong> 16.5ha, lớn thứ 03 ở S&agrave;i G&ograve;n, chi ph&iacute; x&acirc;y dựng c&ocirc;ng vi&ecirc;n l&ecirc;n tới 200 triệu USD</p><p><strong>- Sổ hồng vĩnh viễn</strong>, 99% cư d&acirc;n đ&atilde; nhận được sổ hồng</p><p>- <strong>Ng&acirc;n h&agrave;ng VIB bảo l&atilde;nh dự &aacute;n :</strong> an to&agrave;n tuyệt đối.</p><p><br></p></div></div><div class=\"col-sm-12 text-center animated fadeIn\" data-style=\"fadeIn\"><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-27/1511751728_map.gif\" style=\"width: 1500px; height: 768px;\"></div>', 0),
(43, 'muckhuyenmai_content', '<p style=\"text-align: center;\"><strong><span style=\"color: rgb(226, 80, 65); font-size: 24px;\">5/12 CH&Iacute;NH THỨC NHẬN BOOKING BLOCK F KHU EMERALD VỚI NHIỀU CH&Iacute;NH S&Aacute;CH ƯU Đ&Atilde;I CHO KH&Aacute;CH H&Agrave;NG </span></strong></p><p style=\"text-align: center;\"><span style=\"font-size: 24px;\"><strong><span style=\"color: rgb(65, 168, 95);\">Đối Với Người Đầu Tư - Đặt Chỗ L&agrave; Đ&atilde; C&oacute; Lời</span></strong></span></p><p style=\"text-align: center;\"><strong><span style=\"font-size: 24px; color: rgb(65, 168, 95);\">Đối Với Người Mua Ở - Đặt Chỗ L&agrave; C&oacute; Ưu Đ&atilde;i</span></strong></p><p style=\"text-align: center;\"><img class=\"fr-dib fr-draggable\" src=\"http://canhodxp.com/public/uploads/2017-10-31/1509433330_tu-van-mien-phi.gif\" style=\"width: 130px; height: 72.459px;\"></p><p style=\"text-align: center;\"><span style=\"font-size: 48px;\"><strong class=\"\"><span style=\"color: rgb(226, 80, 65);\">HOTLINE : 090.331.5757</span></strong></span></p><p style=\"text-align: center;\"><br></p>', 0),
(51, 'muc_hinhanh', '138', 0),
(52, 'muc_hinhanh', '139', 0),
(53, 'muc_hinhanh', '140', 0),
(54, 'muc_hinhanh', '141', 0),
(55, 'muc_hinhanh', '142', 0),
(56, 'muc_hinhanh', '143', 0),
(57, 'muc_hinhanh', '144', 0),
(58, 'muc_hinhanh', '146', 0),
(59, 'muc_hinhanh', '147', 0),
(60, 'muc_hinhanh', '148', 0),
(61, 'muclydo_header', 'NHỮNG LÝ DO CHỌN SỐNG TẠI CĂN HỘ CELADON CITY', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `ten` varchar(256) DEFAULT NULL,
  `email` varchar(256) DEFAULT NULL,
  `sodt` varchar(256) DEFAULT NULL,
  `message` varchar(256) DEFAULT NULL,
  `deleted` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `ten`, `email`, `sodt`, `message`, `deleted`) VALUES
(1, 'tran', 'lytranuit@gmail.com', '0978019668', 'xin chao', 0),
(2, 'daotran', 'lytranuit@gmail.com', '0978019668', 'xin chao', 0),
(3, 'ádsdasd', 'ssdjf@gmail.com', '2123', 'ádasd', 0),
(4, 'sdfsd', 'fsdf@gmail.com', '0978019668', 'dsccv', 0),
(5, 'ADAS', 'ASDASD@GMAIL.COM', '0978019668', '\\\'', 0),
(6, 'ádas', 'akjfd@gmail.com', '0978019668', 'daotran', 0),
(7, 'áda', 'sd@gmail.com', '23235345345', 'sdfdfgfhfgh', 0),
(8, 'trasd', 'asdasd@gmail.com', '12334234234', 'asdxcvsdfsdf', 0),
(9, 'asdasd', 'asfsd@gmail.com', '1231', '12312312', 0),
(10, 'asd', 'asdasd@gmail.com', '234234', '23423sdf', 0),
(11, 'trád', 'asdasd@gmail.com', '12323234', 'sdfsgfdg', 0),
(12, 'trád', 'asdasd@gmail.com', '12323234', 'sdfsgfdg', 0),
(13, 'ád', 'tran@gmail.com', '1231423', '24234234', 0),
(14, 'sdasdas', 'tran@gmail.com', '12323525', 'sdf23d23f23f', 0),
(15, 'asddfg', 'aasdas@gmail.com', '123123', '1sad1231', 0),
(16, 'trasda', 'asdasd@gmail.com', '123123', 'dlkajsdasd', 0),
(17, 'asdasd', 'xcvsdf@gmail.com', '123123123', 'asdasfsdgsd', 0),
(18, 'd', 'agas@gmail.com', '412412421421', 'a', 0),
(19, 'a', 'dadasd@gmail.com', '1231241241', 'asdasd', 0),
(20, 'a', 'dadad@gmail.com', '0968251192', 'adasd', 0),
(21, 'dao', 'trana@gmail.com', '0978', 'sdasdasd', 0),
(22, '?ào trân', 'lytranuit@gmail.com', '0978019668', 'alo test', 0),
(23, 'Huy', 'duyhuynh@gmail.com', '0903315757', '214234', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_cron`
--

CREATE TABLE `tbl_cron` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_tin` int(11) DEFAULT NULL,
  `hosting` varchar(256) DEFAULT NULL,
  `id_cron` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_hinhanh`
--

CREATE TABLE `tbl_hinhanh` (
  `id_hinhanh` int(10) UNSIGNED NOT NULL,
  `ten_hinhanh` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `src` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `deleted` tinyint(9) UNSIGNED NOT NULL DEFAULT '0',
  `real_hinhanh` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `thumb_src` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `bg_src` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `slider_src` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `default` tinyint(9) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_hinhanh`
--

INSERT INTO `tbl_hinhanh` (`id_hinhanh`, `ten_hinhanh`, `date`, `src`, `id_user`, `deleted`, `real_hinhanh`, `thumb_src`, `bg_src`, `slider_src`, `default`) VALUES
(1, '1508495398_0_quangcao.jpg', '2017-10-20 12:29:59', 'public/uploads/2017-10-20/1508495398_0_quangcao.jpg', 5, 0, 'quangcao.jpg', 'public/uploads/2017-10-20/125x100_1508495398_0_quangcao.jpg', 'public/uploads/2017-10-20/768x576_1508495398_0_quangcao.jpg', 'public/uploads/2017-10-20/1375x670_1508495398_0_quangcao.jpg', 0),
(2, '1508495425_0_82317.jpg', '2017-10-20 12:30:27', 'public/uploads/2017-10-20/1508495425_0_82317.jpg', 5, 0, '82317.jpg', 'public/uploads/2017-10-20/125x100_1508495425_0_82317.jpg', 'public/uploads/2017-10-20/768x576_1508495425_0_82317.jpg', 'public/uploads/2017-10-20/1375x670_1508495425_0_82317.jpg', 0),
(3, '1508495436_0_quangcao.jpg', '2017-10-20 12:30:37', 'public/uploads/2017-10-20/1508495436_0_quangcao.jpg', 5, 0, 'quangcao.jpg', 'public/uploads/2017-10-20/125x100_1508495436_0_quangcao.jpg', 'public/uploads/2017-10-20/768x576_1508495436_0_quangcao.jpg', 'public/uploads/2017-10-20/1375x670_1508495436_0_quangcao.jpg', 0),
(4, '1508852322_phoi-canh-tong-the-du-an-opal-park.jpg', '2017-10-24 15:38:46', 'public/uploads/2017-10-24/1508852322_phoi-canh-tong-the-du-an-opal-park.jpg', 5, 0, 'phoi-canh-tong-the-du-an-opal-park.jpg', 'public/uploads/2017-10-24/125x100_1508852322_phoi-canh-tong-the-du-an-opal-park.jpg', 'public/uploads/2017-10-24/768x576_1508852322_phoi-canh-tong-the-du-an-opal-park.jpg', 'public/uploads/2017-10-24/1375x670_1508852322_phoi-canh-tong-the-du-an-opal-park.jpg', 0),
(5, '1508852550_can-ho-centa-park-mat-bang-tong-the.jpg', '2017-10-24 15:42:34', 'public/uploads/2017-10-24/1508852550_can-ho-centa-park-mat-bang-tong-the.jpg', 5, 0, 'can-ho-centa-park-mat-bang-tong-the.jpg', 'public/uploads/2017-10-24/125x100_1508852550_can-ho-centa-park-mat-bang-tong-the.jpg', 'public/uploads/2017-10-24/768x576_1508852550_can-ho-centa-park-mat-bang-tong-the.jpg', 'public/uploads/2017-10-24/1375x670_1508852550_can-ho-centa-park-mat-bang-tong-the.jpg', 0),
(6, '1508852570_can-ho-centa-park-co-1-phong-ngu.jpg', '2017-10-24 15:42:51', 'public/uploads/2017-10-24/1508852570_can-ho-centa-park-co-1-phong-ngu.jpg', 5, 0, 'can-ho-centa-park-co-1-phong-ngu.jpg', 'public/uploads/2017-10-24/125x100_1508852570_can-ho-centa-park-co-1-phong-ngu.jpg', 'public/uploads/2017-10-24/768x576_1508852570_can-ho-centa-park-co-1-phong-ngu.jpg', 'public/uploads/2017-10-24/1375x670_1508852570_can-ho-centa-park-co-1-phong-ngu.jpg', 0),
(7, '1508852580_can-ho-centa-park-co-2-phong-ngu.jpg', '2017-10-24 15:43:00', 'public/uploads/2017-10-24/1508852580_can-ho-centa-park-co-2-phong-ngu.jpg', 5, 0, 'can-ho-centa-park-co-2-phong-ngu.jpg', 'public/uploads/2017-10-24/125x100_1508852580_can-ho-centa-park-co-2-phong-ngu.jpg', 'public/uploads/2017-10-24/768x576_1508852580_can-ho-centa-park-co-2-phong-ngu.jpg', 'public/uploads/2017-10-24/1375x670_1508852580_can-ho-centa-park-co-2-phong-ngu.jpg', 0),
(8, '1508852586_can-ho-centa-park-co-3-phong-ngu.jpg', '2017-10-24 15:43:07', 'public/uploads/2017-10-24/1508852586_can-ho-centa-park-co-3-phong-ngu.jpg', 5, 0, 'can-ho-centa-park-co-3-phong-ngu.jpg', 'public/uploads/2017-10-24/125x100_1508852586_can-ho-centa-park-co-3-phong-ngu.jpg', 'public/uploads/2017-10-24/768x576_1508852586_can-ho-centa-park-co-3-phong-ngu.jpg', 'public/uploads/2017-10-24/1375x670_1508852586_can-ho-centa-park-co-3-phong-ngu.jpg', 0),
(9, '1508852598_mat-bang-block-c.jpg', '2017-10-24 15:43:19', 'public/uploads/2017-10-24/1508852598_mat-bang-block-c.jpg', 5, 0, 'mat-bang-block-c.jpg', 'public/uploads/2017-10-24/125x100_1508852598_mat-bang-block-c.jpg', 'public/uploads/2017-10-24/768x576_1508852598_mat-bang-block-c.jpg', 'public/uploads/2017-10-24/1375x670_1508852598_mat-bang-block-c.jpg', 0),
(10, '1508852607_mat-bang-block-d.jpg', '2017-10-24 15:43:28', 'public/uploads/2017-10-24/1508852607_mat-bang-block-d.jpg', 5, 0, 'mat-bang-block-d.jpg', 'public/uploads/2017-10-24/125x100_1508852607_mat-bang-block-d.jpg', 'public/uploads/2017-10-24/768x576_1508852607_mat-bang-block-d.jpg', 'public/uploads/2017-10-24/1375x670_1508852607_mat-bang-block-d.jpg', 0),
(11, '1508852879_phoi-canh-tong-the-du-an-opal-park.jpg', '2017-10-24 15:48:03', 'public/uploads/2017-10-24/1508852879_phoi-canh-tong-the-du-an-opal-park.jpg', 5, 0, 'phoi-canh-tong-the-du-an-opal-park.jpg', 'public/uploads/2017-10-24/125x100_1508852879_phoi-canh-tong-the-du-an-opal-park.jpg', 'public/uploads/2017-10-24/768x576_1508852879_phoi-canh-tong-the-du-an-opal-park.jpg', 'public/uploads/2017-10-24/1375x670_1508852879_phoi-canh-tong-the-du-an-opal-park.jpg', 0),
(12, '1508852895_xung-quanh-opal-park-la-nhung-tien-ich-dac-sac.png', '2017-10-24 15:48:16', 'public/uploads/2017-10-24/1508852895_xung-quanh-opal-park-la-nhung-tien-ich-dac-sac.png', 5, 0, 'xung-quanh-opal-park-la-nhung-tien-ich-dac-sac.png', 'public/uploads/2017-10-24/125x100_1508852895_xung-quanh-opal-park-la-nhung-tien-ich-dac-sac.png', 'public/uploads/2017-10-24/768x576_1508852895_xung-quanh-opal-park-la-nhung-tien-ich-dac-sac.png', 'public/uploads/2017-10-24/1375x670_1508852895_xung-quanh-opal-park-la-nhung-tien-ich-dac-sac.png', 0),
(13, '1508853087_xung-quanh-opal-park-la-nhung-tien-ich-dac-sac.png', '2017-10-24 15:51:28', 'public/uploads/2017-10-24/1508853087_xung-quanh-opal-park-la-nhung-tien-ich-dac-sac.png', 5, 0, 'xung-quanh-opal-park-la-nhung-tien-ich-dac-sac.png', 'public/uploads/2017-10-24/125x100_1508853087_xung-quanh-opal-park-la-nhung-tien-ich-dac-sac.png', 'public/uploads/2017-10-24/768x576_1508853087_xung-quanh-opal-park-la-nhung-tien-ich-dac-sac.png', 'public/uploads/2017-10-24/1375x670_1508853087_xung-quanh-opal-park-la-nhung-tien-ich-dac-sac.png', 0),
(14, '1508854486_0_vi-tri-can-ho-opal-park.jpg', '2017-10-24 16:14:49', 'public/uploads/2017-10-24/1508854486_0_vi-tri-can-ho-opal-park.jpg', 5, 0, 'vi-tri-can-ho-opal-park.jpg', 'public/uploads/2017-10-24/125x100_1508854486_0_vi-tri-can-ho-opal-park.jpg', 'public/uploads/2017-10-24/768x576_1508854486_0_vi-tri-can-ho-opal-park.jpg', 'public/uploads/2017-10-24/1375x670_1508854486_0_vi-tri-can-ho-opal-park.jpg', 0),
(15, '1508854489_0_phoi-canh-tong-the-du-an-opal-park.jpg', '2017-10-24 16:14:50', 'public/uploads/2017-10-24/1508854489_0_phoi-canh-tong-the-du-an-opal-park.jpg', 5, 1, 'phoi-canh-tong-the-du-an-opal-park.jpg', 'public/uploads/2017-10-24/125x100_1508854489_0_phoi-canh-tong-the-du-an-opal-park.jpg', 'public/uploads/2017-10-24/768x576_1508854489_0_phoi-canh-tong-the-du-an-opal-park.jpg', 'public/uploads/2017-10-24/1375x670_1508854489_0_phoi-canh-tong-the-du-an-opal-park.jpg', 0),
(16, '1508924557_IMG_2189.JPG', '2017-10-25 09:42:38', 'public/uploads/2017-10-25/1508924557_IMG_2189.JPG', 1, 0, 'IMG_2189.JPG', 'public/uploads/2017-10-25/125x100_1508924557_IMG_2189.JPG', 'public/uploads/2017-10-25/768x576_1508924557_IMG_2189.JPG', 'public/uploads/2017-10-25/1375x670_1508924557_IMG_2189.JPG', 0),
(17, '1508924794_Mat-bang-tong-the-can-ho-cen-ta-park-tan-binh.jpg', '2017-10-25 09:46:35', 'public/uploads/2017-10-25/1508924794_Mat-bang-tong-the-can-ho-cen-ta-park-tan-binh.jpg', 1, 0, 'Mat-bang-tong-the-can-ho-cen-ta-park-tan-binh.jpg', 'public/uploads/2017-10-25/125x100_1508924794_Mat-bang-tong-the-can-ho-cen-ta-park-tan-binh.jpg', 'public/uploads/2017-10-25/768x576_1508924794_Mat-bang-tong-the-can-ho-cen-ta-park-tan-binh.jpg', 'public/uploads/2017-10-25/1375x670_1508924794_Mat-bang-tong-the-can-ho-cen-ta-park-tan-binh.jpg', 0),
(18, '1508925290_phoi-canh-centa-park.jpg', '2017-10-25 09:54:51', 'public/uploads/2017-10-25/1508925290_phoi-canh-centa-park.jpg', 1, 0, 'phoi-canh-centa-park.jpg', 'public/uploads/2017-10-25/125x100_1508925290_phoi-canh-centa-park.jpg', 'public/uploads/2017-10-25/768x576_1508925290_phoi-canh-centa-park.jpg', 'public/uploads/2017-10-25/1375x670_1508925290_phoi-canh-centa-park.jpg', 0),
(19, '1508932515_thanh-toan.png', '2017-10-25 11:55:16', 'public/uploads/2017-10-25/1508932515_thanh-toan.png', 1, 0, 'thanh-toan.png', 'public/uploads/2017-10-25/125x100_1508932515_thanh-toan.png', 'public/uploads/2017-10-25/768x576_1508932515_thanh-toan.png', 'public/uploads/2017-10-25/1375x670_1508932515_thanh-toan.png', 0),
(20, '1508932529_thanh-toan.png', '2017-10-25 11:55:31', 'public/uploads/2017-10-25/1508932529_thanh-toan.png', 1, 0, 'thanh-toan.png', 'public/uploads/2017-10-25/125x100_1508932529_thanh-toan.png', 'public/uploads/2017-10-25/768x576_1508932529_thanh-toan.png', 'public/uploads/2017-10-25/1375x670_1508932529_thanh-toan.png', 0),
(21, '1508932731_thanh-toan.png', '2017-10-25 11:58:53', 'public/uploads/2017-10-25/1508932731_thanh-toan.png', 1, 0, 'thanh-toan.png', 'public/uploads/2017-10-25/125x100_1508932731_thanh-toan.png', 'public/uploads/2017-10-25/768x576_1508932731_thanh-toan.png', 'public/uploads/2017-10-25/1375x670_1508932731_thanh-toan.png', 0),
(22, '1508935287_tong-the-centa-park.png', '2017-10-25 12:41:29', 'public/uploads/2017-10-25/1508935287_tong-the-centa-park.png', 1, 0, 'tong-the-centa-park.png', 'public/uploads/2017-10-25/125x100_1508935287_tong-the-centa-park.png', 'public/uploads/2017-10-25/768x576_1508935287_tong-the-centa-park.png', 'public/uploads/2017-10-25/1375x670_1508935287_tong-the-centa-park.png', 0),
(23, '1508941557_0_12312.png', '2017-10-25 14:26:00', 'public/uploads/2017-10-25/1508941557_0_12312.png', 1, 0, '12312.png', 'public/uploads/2017-10-25/125x100_1508941557_0_12312.png', 'public/uploads/2017-10-25/768x576_1508941557_0_12312.png', 'public/uploads/2017-10-25/1375x670_1508941557_0_12312.png', 0),
(24, '1508944102_0_24.jpg', '2017-10-25 15:08:22', 'public/uploads/2017-10-25/1508944102_0_24.jpg', 5, 1, '24.jpg', 'public/uploads/2017-10-25/125x100_1508944102_0_24.jpg', 'public/uploads/2017-10-25/768x576_1508944102_0_24.jpg', 'public/uploads/2017-10-25/1375x670_1508944102_0_24.jpg', 0),
(25, '1508945461_0_4.jpg', '2017-10-25 15:31:05', 'public/uploads/2017-10-25/1508945461_0_4.jpg', 5, 0, '4.jpg', 'public/uploads/2017-10-25/125x100_1508945461_0_4.jpg', 'public/uploads/2017-10-25/768x576_1508945461_0_4.jpg', 'public/uploads/2017-10-25/1375x670_1508945461_0_4.jpg', 0),
(26, '1508945470_0_29.jpg', '2017-10-25 15:31:10', 'public/uploads/2017-10-25/1508945470_0_29.jpg', 5, 0, '29.jpg', 'public/uploads/2017-10-25/125x100_1508945470_0_29.jpg', 'public/uploads/2017-10-25/768x576_1508945470_0_29.jpg', 'public/uploads/2017-10-25/1375x670_1508945470_0_29.jpg', 0),
(27, '1508946852_0_2.jpg', '2017-10-25 15:54:12', 'public/uploads/2017-10-25/1508946852_0_2.jpg', 1, 0, '2.jpg', 'public/uploads/2017-10-25/125x100_1508946852_0_2.jpg', 'public/uploads/2017-10-25/768x576_1508946852_0_2.jpg', 'public/uploads/2017-10-25/1375x670_1508946852_0_2.jpg', 0),
(28, '1508946852_0_can-ho-mau-centa-6.jpg', '2017-10-25 15:54:13', 'public/uploads/2017-10-25/1508946852_0_can-ho-mau-centa-6.jpg', 1, 0, 'can-ho-mau-centa-6.jpg', 'public/uploads/2017-10-25/125x100_1508946852_0_can-ho-mau-centa-6.jpg', 'public/uploads/2017-10-25/768x576_1508946852_0_can-ho-mau-centa-6.jpg', 'public/uploads/2017-10-25/1375x670_1508946852_0_can-ho-mau-centa-6.jpg', 0),
(29, '1508946881_0_IMG_1453.JPG', '2017-10-25 15:54:43', 'public/uploads/2017-10-25/1508946881_0_IMG_1453.JPG', 1, 0, 'IMG_1453.JPG', 'public/uploads/2017-10-25/125x100_1508946881_0_IMG_1453.JPG', 'public/uploads/2017-10-25/768x576_1508946881_0_IMG_1453.JPG', 'public/uploads/2017-10-25/1375x670_1508946881_0_IMG_1453.JPG', 0),
(30, '1508946883_0_nha-mau-du-an-centa-park-8.jpg', '2017-10-25 15:54:48', 'public/uploads/2017-10-25/1508946883_0_nha-mau-du-an-centa-park-8.jpg', 1, 0, 'nha-mau-du-an-centa-park-8.jpg', 'public/uploads/2017-10-25/125x100_1508946883_0_nha-mau-du-an-centa-park-8.jpg', 'public/uploads/2017-10-25/768x576_1508946883_0_nha-mau-du-an-centa-park-8.jpg', 'public/uploads/2017-10-25/1375x670_1508946883_0_nha-mau-du-an-centa-park-8.jpg', 0),
(31, '1508946889_0_view_nhìn_căn_hộ_centa_park.jpg', '2017-10-25 15:54:52', 'public/uploads/2017-10-25/1508946889_0_view_nhìn_căn_hộ_centa_park.jpg', 1, 0, 'view nhìn căn hộ centa park.jpg', 'public/uploads/2017-10-25/125x100_1508946889_0_view_nhìn_căn_hộ_centa_park.jpg', 'public/uploads/2017-10-25/768x576_1508946889_0_view_nhìn_căn_hộ_centa_park.jpg', 'public/uploads/2017-10-25/1375x670_1508946889_0_view_nhìn_căn_hộ_centa_park.jpg', 0),
(32, '1508946892_0_phong-an-can-ho-centa-park.JPG', '2017-10-25 15:54:53', 'public/uploads/2017-10-25/1508946892_0_phong-an-can-ho-centa-park.JPG', 1, 0, 'phong-an-can-ho-centa-park.JPG', 'public/uploads/2017-10-25/125x100_1508946892_0_phong-an-can-ho-centa-park.JPG', 'public/uploads/2017-10-25/768x576_1508946892_0_phong-an-can-ho-centa-park.JPG', 'public/uploads/2017-10-25/1375x670_1508946892_0_phong-an-can-ho-centa-park.JPG', 0),
(33, '1508947124_0_1.jpg', '2017-10-25 15:58:44', 'public/uploads/2017-10-25/1508947124_0_1.jpg', 1, 1, '1.jpg', 'public/uploads/2017-10-25/125x100_1508947124_0_1.jpg', 'public/uploads/2017-10-25/768x576_1508947124_0_1.jpg', 'public/uploads/2017-10-25/1375x670_1508947124_0_1.jpg', 0),
(34, '1508947128_0_2.jpg', '2017-10-25 15:58:48', 'public/uploads/2017-10-25/1508947128_0_2.jpg', 1, 1, '2.jpg', 'public/uploads/2017-10-25/125x100_1508947128_0_2.jpg', 'public/uploads/2017-10-25/768x576_1508947128_0_2.jpg', 'public/uploads/2017-10-25/1375x670_1508947128_0_2.jpg', 0),
(35, '1508947133_0_3.jpg', '2017-10-25 15:58:53', 'public/uploads/2017-10-25/1508947133_0_3.jpg', 1, 1, '3.jpg', 'public/uploads/2017-10-25/125x100_1508947133_0_3.jpg', 'public/uploads/2017-10-25/768x576_1508947133_0_3.jpg', 'public/uploads/2017-10-25/1375x670_1508947133_0_3.jpg', 0),
(36, '1508947136_0_4.jpg', '2017-10-25 15:58:56', 'public/uploads/2017-10-25/1508947136_0_4.jpg', 1, 1, '4.jpg', 'public/uploads/2017-10-25/125x100_1508947136_0_4.jpg', 'public/uploads/2017-10-25/768x576_1508947136_0_4.jpg', 'public/uploads/2017-10-25/1375x670_1508947136_0_4.jpg', 0),
(37, '1508947138_0_5.png', '2017-10-25 15:59:00', 'public/uploads/2017-10-25/1508947138_0_5.png', 1, 1, '5.png', 'public/uploads/2017-10-25/125x100_1508947138_0_5.png', 'public/uploads/2017-10-25/768x576_1508947138_0_5.png', 'public/uploads/2017-10-25/1375x670_1508947138_0_5.png', 0),
(38, '1508947143_0_6.jpg', '2017-10-25 15:59:03', 'public/uploads/2017-10-25/1508947143_0_6.jpg', 1, 1, '6.jpg', 'public/uploads/2017-10-25/125x100_1508947143_0_6.jpg', 'public/uploads/2017-10-25/768x576_1508947143_0_6.jpg', 'public/uploads/2017-10-25/1375x670_1508947143_0_6.jpg', 0),
(39, '1508947146_0_7.jpg', '2017-10-25 15:59:06', 'public/uploads/2017-10-25/1508947146_0_7.jpg', 1, 1, '7.jpg', 'public/uploads/2017-10-25/125x100_1508947146_0_7.jpg', 'public/uploads/2017-10-25/768x576_1508947146_0_7.jpg', 'public/uploads/2017-10-25/1375x670_1508947146_0_7.jpg', 0),
(40, '1508947148_0_8.JPG', '2017-10-25 15:59:09', 'public/uploads/2017-10-25/1508947148_0_8.JPG', 1, 1, '8.JPG', 'public/uploads/2017-10-25/125x100_1508947148_0_8.JPG', 'public/uploads/2017-10-25/768x576_1508947148_0_8.JPG', 'public/uploads/2017-10-25/1375x670_1508947148_0_8.JPG', 0),
(41, '1508947152_0_9.jpg', '2017-10-25 15:59:12', 'public/uploads/2017-10-25/1508947152_0_9.jpg', 1, 1, '9.jpg', 'public/uploads/2017-10-25/125x100_1508947152_0_9.jpg', 'public/uploads/2017-10-25/768x576_1508947152_0_9.jpg', 'public/uploads/2017-10-25/1375x670_1508947152_0_9.jpg', 0),
(42, '1508947154_0_10.jpg', '2017-10-25 15:59:15', 'public/uploads/2017-10-25/1508947154_0_10.jpg', 1, 1, '10.jpg', 'public/uploads/2017-10-25/125x100_1508947154_0_10.jpg', 'public/uploads/2017-10-25/768x576_1508947154_0_10.jpg', 'public/uploads/2017-10-25/1375x670_1508947154_0_10.jpg', 0),
(43, '1508947625_1.jpg', '2017-10-25 16:07:06', 'public/uploads/2017-10-25/1508947625_1.jpg', 1, 0, '1.jpg', 'public/uploads/2017-10-25/125x100_1508947625_1.jpg', 'public/uploads/2017-10-25/768x576_1508947625_1.jpg', 'public/uploads/2017-10-25/1375x670_1508947625_1.jpg', 0),
(44, '1508947662_2.jpg', '2017-10-25 16:07:42', 'public/uploads/2017-10-25/1508947662_2.jpg', 1, 0, '2.jpg', 'public/uploads/2017-10-25/125x100_1508947662_2.jpg', 'public/uploads/2017-10-25/768x576_1508947662_2.jpg', 'public/uploads/2017-10-25/1375x670_1508947662_2.jpg', 0),
(45, '1508947770_3.jpg', '2017-10-25 16:09:31', 'public/uploads/2017-10-25/1508947770_3.jpg', 1, 0, '3.jpg', 'public/uploads/2017-10-25/125x100_1508947770_3.jpg', 'public/uploads/2017-10-25/768x576_1508947770_3.jpg', 'public/uploads/2017-10-25/1375x670_1508947770_3.jpg', 0),
(46, '1508947803_4.jpg', '2017-10-25 16:10:04', 'public/uploads/2017-10-25/1508947803_4.jpg', 1, 0, '4.jpg', 'public/uploads/2017-10-25/125x100_1508947803_4.jpg', 'public/uploads/2017-10-25/768x576_1508947803_4.jpg', 'public/uploads/2017-10-25/1375x670_1508947803_4.jpg', 0),
(47, '1508947836_5.jpg', '2017-10-25 16:10:36', 'public/uploads/2017-10-25/1508947836_5.jpg', 1, 0, '5.jpg', 'public/uploads/2017-10-25/125x100_1508947836_5.jpg', 'public/uploads/2017-10-25/768x576_1508947836_5.jpg', 'public/uploads/2017-10-25/1375x670_1508947836_5.jpg', 0),
(48, '1508947919_6.jpg', '2017-10-25 16:12:00', 'public/uploads/2017-10-25/1508947919_6.jpg', 1, 0, '6.jpg', 'public/uploads/2017-10-25/125x100_1508947919_6.jpg', 'public/uploads/2017-10-25/768x576_1508947919_6.jpg', 'public/uploads/2017-10-25/1375x670_1508947919_6.jpg', 0),
(49, '1508947953_7.jpg', '2017-10-25 16:12:33', 'public/uploads/2017-10-25/1508947953_7.jpg', 1, 0, '7.jpg', 'public/uploads/2017-10-25/125x100_1508947953_7.jpg', 'public/uploads/2017-10-25/768x576_1508947953_7.jpg', 'public/uploads/2017-10-25/1375x670_1508947953_7.jpg', 0),
(50, '1508947977_8.jpg', '2017-10-25 16:12:58', 'public/uploads/2017-10-25/1508947977_8.jpg', 1, 0, '8.jpg', 'public/uploads/2017-10-25/125x100_1508947977_8.jpg', 'public/uploads/2017-10-25/768x576_1508947977_8.jpg', 'public/uploads/2017-10-25/1375x670_1508947977_8.jpg', 0),
(51, '1508947993_9.jpg', '2017-10-25 16:13:13', 'public/uploads/2017-10-25/1508947993_9.jpg', 1, 0, '9.jpg', 'public/uploads/2017-10-25/125x100_1508947993_9.jpg', 'public/uploads/2017-10-25/768x576_1508947993_9.jpg', 'public/uploads/2017-10-25/1375x670_1508947993_9.jpg', 0),
(52, '1508948107_10.jpg', '2017-10-25 16:15:08', 'public/uploads/2017-10-25/1508948107_10.jpg', 1, 0, '10.jpg', 'public/uploads/2017-10-25/125x100_1508948107_10.jpg', 'public/uploads/2017-10-25/768x576_1508948107_10.jpg', 'public/uploads/2017-10-25/1375x670_1508948107_10.jpg', 0),
(53, '1508948137_11.jpg', '2017-10-25 16:15:38', 'public/uploads/2017-10-25/1508948137_11.jpg', 1, 0, '11.jpg', 'public/uploads/2017-10-25/125x100_1508948137_11.jpg', 'public/uploads/2017-10-25/768x576_1508948137_11.jpg', 'public/uploads/2017-10-25/1375x670_1508948137_11.jpg', 0),
(54, '1508948163_12.jpg', '2017-10-25 16:16:04', 'public/uploads/2017-10-25/1508948163_12.jpg', 1, 0, '12.jpg', 'public/uploads/2017-10-25/125x100_1508948163_12.jpg', 'public/uploads/2017-10-25/768x576_1508948163_12.jpg', 'public/uploads/2017-10-25/1375x670_1508948163_12.jpg', 0),
(55, '1508948176_13.jpg', '2017-10-25 16:16:16', 'public/uploads/2017-10-25/1508948176_13.jpg', 1, 0, '13.jpg', 'public/uploads/2017-10-25/125x100_1508948176_13.jpg', 'public/uploads/2017-10-25/768x576_1508948176_13.jpg', 'public/uploads/2017-10-25/1375x670_1508948176_13.jpg', 0),
(56, '1508950105_0_slider-centa-park-2.jpg', '2017-10-25 16:48:26', 'public/uploads/2017-10-25/1508950105_0_slider-centa-park-2.jpg', 1, 1, 'slider-centa-park-2.jpg', 'public/uploads/2017-10-25/125x100_1508950105_0_slider-centa-park-2.jpg', 'public/uploads/2017-10-25/768x576_1508950105_0_slider-centa-park-2.jpg', 'public/uploads/2017-10-25/1375x670_1508950105_0_slider-centa-park-2.jpg', 0),
(57, '1508951359_1451778763vuon-nhiet-doi-centa-park.jpg', '2017-10-25 17:09:19', 'public/uploads/2017-10-25/1508951359_1451778763vuon-nhiet-doi-centa-park.jpg', 1, 0, '1451778763vuon-nhiet-doi-centa-park.jpg', 'public/uploads/2017-10-25/125x100_1508951359_1451778763vuon-nhiet-doi-centa-park.jpg', 'public/uploads/2017-10-25/768x576_1508951359_1451778763vuon-nhiet-doi-centa-park.jpg', 'public/uploads/2017-10-25/1375x670_1508951359_1451778763vuon-nhiet-doi-centa-park.jpg', 0),
(58, '1508951401_ho_boi_du_an_centa_park.jpg', '2017-10-25 17:10:02', 'public/uploads/2017-10-25/1508951401_ho_boi_du_an_centa_park.jpg', 1, 0, 'ho_boi_du_an_centa_park.jpg', 'public/uploads/2017-10-25/125x100_1508951401_ho_boi_du_an_centa_park.jpg', 'public/uploads/2017-10-25/768x576_1508951401_ho_boi_du_an_centa_park.jpg', 'public/uploads/2017-10-25/1375x670_1508951401_ho_boi_du_an_centa_park.jpg', 0),
(59, '1508951452_tien-ich-du-an-centa-park4.jpg', '2017-10-25 17:10:52', 'public/uploads/2017-10-25/1508951452_tien-ich-du-an-centa-park4.jpg', 1, 0, 'tien-ich-du-an-centa-park4.jpg', 'public/uploads/2017-10-25/125x100_1508951452_tien-ich-du-an-centa-park4.jpg', 'public/uploads/2017-10-25/768x576_1508951452_tien-ich-du-an-centa-park4.jpg', 'public/uploads/2017-10-25/1375x670_1508951452_tien-ich-du-an-centa-park4.jpg', 0),
(60, '1508951483_lien-ket-vung-can-ho-centa-park.jpg', '2017-10-25 17:11:24', 'public/uploads/2017-10-25/1508951483_lien-ket-vung-can-ho-centa-park.jpg', 1, 1, 'lien-ket-vung-can-ho-centa-park.jpg', 'public/uploads/2017-10-25/125x100_1508951483_lien-ket-vung-can-ho-centa-park.jpg', 'public/uploads/2017-10-25/768x576_1508951483_lien-ket-vung-can-ho-centa-park.jpg', 'public/uploads/2017-10-25/1375x670_1508951483_lien-ket-vung-can-ho-centa-park.jpg', 0),
(61, '1508952112_1.jpg', '2017-10-25 17:21:52', 'public/uploads/2017-10-25/1508952112_1.jpg', 1, 1, '1.jpg', 'public/uploads/2017-10-25/125x100_1508952112_1.jpg', 'public/uploads/2017-10-25/768x576_1508952112_1.jpg', 'public/uploads/2017-10-25/1375x670_1508952112_1.jpg', 0),
(62, '1508952171_2.png', '2017-10-25 17:22:53', 'public/uploads/2017-10-25/1508952171_2.png', 1, 1, '2.png', 'public/uploads/2017-10-25/125x100_1508952171_2.png', 'public/uploads/2017-10-25/768x576_1508952171_2.png', 'public/uploads/2017-10-25/1375x670_1508952171_2.png', 0),
(63, '1508952586_0_13.jpg', '2017-10-25 17:29:46', 'public/uploads/2017-10-25/1508952586_0_13.jpg', 1, 1, '13.jpg', 'public/uploads/2017-10-25/125x100_1508952586_0_13.jpg', 'public/uploads/2017-10-25/768x576_1508952586_0_13.jpg', 'public/uploads/2017-10-25/1375x670_1508952586_0_13.jpg', 0),
(64, '1508952587_0_11.jpg', '2017-10-25 17:29:48', 'public/uploads/2017-10-25/1508952587_0_11.jpg', 1, 1, '11.jpg', 'public/uploads/2017-10-25/125x100_1508952587_0_11.jpg', 'public/uploads/2017-10-25/768x576_1508952587_0_11.jpg', 'public/uploads/2017-10-25/1375x670_1508952587_0_11.jpg', 0),
(65, '1509001870_0_Autumn-patterns.jpg', '2017-10-26 07:11:11', 'public/uploads/2017-10-26/1509001870_0_Autumn-patterns.jpg', 1, 0, 'Autumn-patterns.jpg', 'public/uploads/2017-10-26/125x100_1509001870_0_Autumn-patterns.jpg', 'public/uploads/2017-10-26/768x576_1509001870_0_Autumn-patterns.jpg', 'public/uploads/2017-10-26/1375x670_1509001870_0_Autumn-patterns.jpg', 0),
(66, '1509002447_0_can-ho-centa-park-quan-tan-binh-canhocentaparkvn_com-11.jpg', '2017-10-26 07:20:48', 'public/uploads/2017-10-26/1509002447_0_can-ho-centa-park-quan-tan-binh-canhocentaparkvn_com-11.jpg', 1, 0, 'can-ho-centa-park-quan-tan-binh-canhocentaparkvn.com-11.jpg', 'public/uploads/2017-10-26/125x100_1509002447_0_can-ho-centa-park-quan-tan-binh-canhocentaparkvn_com-', 'public/uploads/2017-10-26/768x576_1509002447_0_can-ho-centa-park-quan-tan-binh-canhocentaparkvn_com-', 'public/uploads/2017-10-26/1375x670_1509002447_0_can-ho-centa-park-quan-tan-binh-canhocentaparkvn_com', 0),
(67, '1509002686_0_can-ho-centa-park-quan-tan-binh-canhocentaparkvn_com-11.jpg', '2017-10-26 07:24:47', 'public/uploads/2017-10-26/1509002686_0_can-ho-centa-park-quan-tan-binh-canhocentaparkvn_com-11.jpg', 1, 0, 'can-ho-centa-park-quan-tan-binh-canhocentaparkvn.com-11.jpg', 'public/uploads/2017-10-26/125x100_1509002686_0_can-ho-centa-park-quan-tan-binh-canhocentaparkvn_com-', 'public/uploads/2017-10-26/768x576_1509002686_0_can-ho-centa-park-quan-tan-binh-canhocentaparkvn_com-', 'public/uploads/2017-10-26/1375x670_1509002686_0_can-ho-centa-park-quan-tan-binh-canhocentaparkvn_com', 0),
(68, '1509002735_0_centa-1460199533.jpg', '2017-10-26 07:25:36', 'public/uploads/2017-10-26/1509002735_0_centa-1460199533.jpg', 1, 1, 'centa-1460199533.jpg', 'public/uploads/2017-10-26/125x100_1509002735_0_centa-1460199533.jpg', 'public/uploads/2017-10-26/768x576_1509002735_0_centa-1460199533.jpg', 'public/uploads/2017-10-26/1375x670_1509002735_0_centa-1460199533.jpg', 0),
(69, '1509002782_0_ho_boi_du_an_centa_park.jpg', '2017-10-26 07:26:23', 'public/uploads/2017-10-26/1509002782_0_ho_boi_du_an_centa_park.jpg', 1, 0, 'ho_boi_du_an_centa_park.jpg', 'public/uploads/2017-10-26/125x100_1509002782_0_ho_boi_du_an_centa_park.jpg', 'public/uploads/2017-10-26/768x576_1509002782_0_ho_boi_du_an_centa_park.jpg', 'public/uploads/2017-10-26/1375x670_1509002782_0_ho_boi_du_an_centa_park.jpg', 0),
(70, '1509002936_0_cong-vien-tien-ich-centa-park.jpg', '2017-10-26 07:28:56', 'public/uploads/2017-10-26/1509002936_0_cong-vien-tien-ich-centa-park.jpg', 1, 1, 'cong-vien-tien-ich-centa-park.jpg', 'public/uploads/2017-10-26/125x100_1509002936_0_cong-vien-tien-ich-centa-park.jpg', 'public/uploads/2017-10-26/768x576_1509002936_0_cong-vien-tien-ich-centa-park.jpg', 'public/uploads/2017-10-26/1375x670_1509002936_0_cong-vien-tien-ich-centa-park.jpg', 0),
(71, '1509002997_0_10.jpg', '2017-10-26 07:29:57', 'public/uploads/2017-10-26/1509002997_0_10.jpg', 1, 1, '10.jpg', 'public/uploads/2017-10-26/125x100_1509002997_0_10.jpg', 'public/uploads/2017-10-26/768x576_1509002997_0_10.jpg', 'public/uploads/2017-10-26/1375x670_1509002997_0_10.jpg', 0),
(72, '1509003036_0_7.jpg', '2017-10-26 07:30:37', 'public/uploads/2017-10-26/1509003036_0_7.jpg', 1, 1, '7.jpg', 'public/uploads/2017-10-26/125x100_1509003036_0_7.jpg', 'public/uploads/2017-10-26/768x576_1509003036_0_7.jpg', 'public/uploads/2017-10-26/1375x670_1509003036_0_7.jpg', 0),
(73, '1509003814_0_truonghoc.jpg', '2017-10-26 07:43:34', 'public/uploads/2017-10-26/1509003814_0_truonghoc.jpg', 1, 0, 'truonghoc.jpg', 'public/uploads/2017-10-26/125x100_1509003814_0_truonghoc.jpg', 'public/uploads/2017-10-26/768x576_1509003814_0_truonghoc.jpg', 'public/uploads/2017-10-26/1375x670_1509003814_0_truonghoc.jpg', 0),
(74, '1509003841_0_trung-tam-van-hoa-celadon-city.jpg', '2017-10-26 07:44:01', 'public/uploads/2017-10-26/1509003841_0_trung-tam-van-hoa-celadon-city.jpg', 1, 0, 'trung-tam-van-hoa-celadon-city.jpg', 'public/uploads/2017-10-26/125x100_1509003841_0_trung-tam-van-hoa-celadon-city.jpg', 'public/uploads/2017-10-26/768x576_1509003841_0_trung-tam-van-hoa-celadon-city.jpg', 'public/uploads/2017-10-26/1375x670_1509003841_0_trung-tam-van-hoa-celadon-city.jpg', 0),
(75, '1509003865_0_khai-truong-dienmayxanh-au-co-1-760x367.jpg', '2017-10-26 07:44:26', 'public/uploads/2017-10-26/1509003865_0_khai-truong-dienmayxanh-au-co-1-760x367.jpg', 1, 0, 'khai-truong-dienmayxanh-au-co-1-760x367.jpg', 'public/uploads/2017-10-26/125x100_1509003865_0_khai-truong-dienmayxanh-au-co-1-760x367.jpg', 'public/uploads/2017-10-26/768x576_1509003865_0_khai-truong-dienmayxanh-au-co-1-760x367.jpg', 'public/uploads/2017-10-26/1375x670_1509003865_0_khai-truong-dienmayxanh-au-co-1-760x367.jpg', 0),
(76, '1509003883_0_Lotte-mart-doi-dien-kcn-Vsip1-1409111492.jpg', '2017-10-26 07:44:43', 'public/uploads/2017-10-26/1509003883_0_Lotte-mart-doi-dien-kcn-Vsip1-1409111492.jpg', 1, 0, 'Lotte-mart-doi-dien-kcn-Vsip1-1409111492.jpg', 'public/uploads/2017-10-26/125x100_1509003883_0_Lotte-mart-doi-dien-kcn-Vsip1-1409111492.jpg', 'public/uploads/2017-10-26/768x576_1509003883_0_Lotte-mart-doi-dien-kcn-Vsip1-1409111492.jpg', 'public/uploads/2017-10-26/1375x670_1509003883_0_Lotte-mart-doi-dien-kcn-Vsip1-1409111492.jpg', 0),
(77, '1509004012_0_nhasaipho_com-cho-tan-binh.jpg', '2017-10-26 07:46:52', 'public/uploads/2017-10-26/1509004012_0_nhasaipho_com-cho-tan-binh.jpg', 1, 0, 'nhasaipho.com-cho-tan-binh.jpg', 'public/uploads/2017-10-26/125x100_1509004012_0_nhasaipho_com-cho-tan-binh.jpg', 'public/uploads/2017-10-26/768x576_1509004012_0_nhasaipho_com-cho-tan-binh.jpg', 'public/uploads/2017-10-26/1375x670_1509004012_0_nhasaipho_com-cho-tan-binh.jpg', 0),
(78, '1509004069_0_2_35_1335144008_18_2_222d9.jpg', '2017-10-26 07:47:49', 'public/uploads/2017-10-26/1509004069_0_2_35_1335144008_18_2_222d9.jpg', 1, 0, '2_35_1335144008_18_2_222d9.jpg', 'public/uploads/2017-10-26/125x100_1509004069_0_2_35_1335144008_18_2_222d9.jpg', 'public/uploads/2017-10-26/768x576_1509004069_0_2_35_1335144008_18_2_222d9.jpg', 'public/uploads/2017-10-26/1375x670_1509004069_0_2_35_1335144008_18_2_222d9.jpg', 0),
(79, '1509004128_0_2_35_1335144008_18_2_222d9.jpg', '2017-10-26 07:48:48', 'public/uploads/2017-10-26/1509004128_0_2_35_1335144008_18_2_222d9.jpg', 1, 0, '2_35_1335144008_18_2_222d9.jpg', 'public/uploads/2017-10-26/125x100_1509004128_0_2_35_1335144008_18_2_222d9.jpg', 'public/uploads/2017-10-26/768x576_1509004128_0_2_35_1335144008_18_2_222d9.jpg', 'public/uploads/2017-10-26/1375x670_1509004128_0_2_35_1335144008_18_2_222d9.jpg', 0),
(80, '1509004169_0_95529060.jpg', '2017-10-26 07:49:29', 'public/uploads/2017-10-26/1509004169_0_95529060.jpg', 1, 1, '95529060.jpg', 'public/uploads/2017-10-26/125x100_1509004169_0_95529060.jpg', 'public/uploads/2017-10-26/768x576_1509004169_0_95529060.jpg', 'public/uploads/2017-10-26/1375x670_1509004169_0_95529060.jpg', 0),
(81, '1509004212_0_Lotte-mart-doi-dien-kcn-Vsip1-1409111492.jpg', '2017-10-26 07:50:12', 'public/uploads/2017-10-26/1509004212_0_Lotte-mart-doi-dien-kcn-Vsip1-1409111492.jpg', 1, 1, 'Lotte-mart-doi-dien-kcn-Vsip1-1409111492.jpg', 'public/uploads/2017-10-26/125x100_1509004212_0_Lotte-mart-doi-dien-kcn-Vsip1-1409111492.jpg', 'public/uploads/2017-10-26/768x576_1509004212_0_Lotte-mart-doi-dien-kcn-Vsip1-1409111492.jpg', 'public/uploads/2017-10-26/1375x670_1509004212_0_Lotte-mart-doi-dien-kcn-Vsip1-1409111492.jpg', 0),
(82, '1509004254_0_nhasaipho_com-cho-tan-binh.jpg', '2017-10-26 07:50:55', 'public/uploads/2017-10-26/1509004254_0_nhasaipho_com-cho-tan-binh.jpg', 1, 1, 'nhasaipho.com-cho-tan-binh.jpg', 'public/uploads/2017-10-26/125x100_1509004254_0_nhasaipho_com-cho-tan-binh.jpg', 'public/uploads/2017-10-26/768x576_1509004254_0_nhasaipho_com-cho-tan-binh.jpg', 'public/uploads/2017-10-26/1375x670_1509004254_0_nhasaipho_com-cho-tan-binh.jpg', 0),
(83, '1509004299_0_trung-tam-the-duc-the-thao-sport-resort.jpg', '2017-10-26 07:51:39', 'public/uploads/2017-10-26/1509004299_0_trung-tam-the-duc-the-thao-sport-resort.jpg', 1, 1, 'trung-tam-the-duc-the-thao-sport-resort.jpg', 'public/uploads/2017-10-26/125x100_1509004299_0_trung-tam-the-duc-the-thao-sport-resort.jpg', 'public/uploads/2017-10-26/768x576_1509004299_0_trung-tam-the-duc-the-thao-sport-resort.jpg', 'public/uploads/2017-10-26/1375x670_1509004299_0_trung-tam-the-duc-the-thao-sport-resort.jpg', 0),
(84, '1509005039_0_can-ho-centa-park-quan-tan-binh-canhocentaparkvn_com-11.jpg', '2017-10-26 08:03:59', 'public/uploads/2017-10-26/1509005039_0_can-ho-centa-park-quan-tan-binh-canhocentaparkvn_com-11.jpg', 1, 0, 'can-ho-centa-park-quan-tan-binh-canhocentaparkvn.com-11.jpg', 'public/uploads/2017-10-26/125x100_1509005039_0_can-ho-centa-park-quan-tan-binh-canhocentaparkvn_com-', 'public/uploads/2017-10-26/768x576_1509005039_0_can-ho-centa-park-quan-tan-binh-canhocentaparkvn_com-', 'public/uploads/2017-10-26/1375x670_1509005039_0_can-ho-centa-park-quan-tan-binh-canhocentaparkvn_com', 0),
(85, '1509005053_0_ho_boi_du_an_centa_park.jpg', '2017-10-26 08:04:13', 'public/uploads/2017-10-26/1509005053_0_ho_boi_du_an_centa_park.jpg', 1, 0, 'ho_boi_du_an_centa_park.jpg', 'public/uploads/2017-10-26/125x100_1509005053_0_ho_boi_du_an_centa_park.jpg', 'public/uploads/2017-10-26/768x576_1509005053_0_ho_boi_du_an_centa_park.jpg', 'public/uploads/2017-10-26/1375x670_1509005053_0_ho_boi_du_an_centa_park.jpg', 0),
(86, '1509097162_can-ho-centa-park-vi-tri.jpg', '2017-10-27 09:39:24', 'public/uploads/2017-10-27/1509097162_can-ho-centa-park-vi-tri.jpg', 1, 1, 'can-ho-centa-park-vi-tri.jpg', 'public/uploads/2017-10-27/125x100_1509097162_can-ho-centa-park-vi-tri.jpg', 'public/uploads/2017-10-27/768x576_1509097162_can-ho-centa-park-vi-tri.jpg', 'public/uploads/2017-10-27/1375x670_1509097162_can-ho-centa-park-vi-tri.jpg', 0),
(87, '1509097647_0_Logo_Sea_SaiGon.png', '2017-10-27 09:47:28', 'public/uploads/2017-10-27/1509097647_0_Logo_Sea_SaiGon.png', 1, 1, 'Logo_Sea_SaiGon.png', 'public/uploads/2017-10-27/125x100_1509097647_0_Logo_Sea_SaiGon.png', 'public/uploads/2017-10-27/768x576_1509097647_0_Logo_Sea_SaiGon.png', 'public/uploads/2017-10-27/1375x670_1509097647_0_Logo_Sea_SaiGon.png', 0),
(88, '1509097809_0_Logo_Sea_SaiGon.png', '2017-10-27 09:50:10', 'public/uploads/2017-10-27/1509097809_0_Logo_Sea_SaiGon.png', 1, 1, 'Logo_Sea_SaiGon.png', 'public/uploads/2017-10-27/125x100_1509097809_0_Logo_Sea_SaiGon.png', 'public/uploads/2017-10-27/768x576_1509097809_0_Logo_Sea_SaiGon.png', 'public/uploads/2017-10-27/1375x670_1509097809_0_Logo_Sea_SaiGon.png', 0),
(89, '1509098057_0_11.jpg', '2017-10-27 09:54:18', 'public/uploads/2017-10-27/1509098057_0_11.jpg', 1, 1, '11.jpg', 'public/uploads/2017-10-27/125x100_1509098057_0_11.jpg', 'public/uploads/2017-10-27/768x576_1509098057_0_11.jpg', 'public/uploads/2017-10-27/1375x670_1509098057_0_11.jpg', 0),
(90, '1509098067_0_13.jpg', '2017-10-27 09:54:28', 'public/uploads/2017-10-27/1509098067_0_13.jpg', 1, 1, '13.jpg', 'public/uploads/2017-10-27/125x100_1509098067_0_13.jpg', 'public/uploads/2017-10-27/768x576_1509098067_0_13.jpg', 'public/uploads/2017-10-27/1375x670_1509098067_0_13.jpg', 0),
(91, '1509163268_0_tải_xuống.jpg', '2017-10-28 04:01:09', 'public/uploads/2017-10-28/1509163268_0_tải_xuống.jpg', 1, 1, 'tải xuống.jpg', 'public/uploads/2017-10-28/125x100_1509163268_0_tải_xuống.jpg', 'public/uploads/2017-10-28/768x576_1509163268_0_tải_xuống.jpg', 'public/uploads/2017-10-28/1375x670_1509163268_0_tải_xuống.jpg', 0),
(92, '1509163404_0_z799270767738_c5b808fdbbf9415ef7e04ccbb6d11be5.jpg', '2017-10-28 04:03:25', 'public/uploads/2017-10-28/1509163404_0_z799270767738_c5b808fdbbf9415ef7e04ccbb6d11be5.jpg', 1, 1, 'z799270767738_c5b808fdbbf9415ef7e04ccbb6d11be5.jpg', 'public/uploads/2017-10-28/125x100_1509163404_0_z799270767738_c5b808fdbbf9415ef7e04ccbb6d11be5.jpg', 'public/uploads/2017-10-28/768x576_1509163404_0_z799270767738_c5b808fdbbf9415ef7e04ccbb6d11be5.jpg', 'public/uploads/2017-10-28/1375x670_1509163404_0_z799270767738_c5b808fdbbf9415ef7e04ccbb6d11be5.jpg', 0),
(93, '1509163500_0_1000642_1109429942408526_2041342027730179459_n.jpg', '2017-10-28 04:05:00', 'public/uploads/2017-10-28/1509163500_0_1000642_1109429942408526_2041342027730179459_n.jpg', 1, 1, '1000642_1109429942408526_2041342027730179459_n.jpg', 'public/uploads/2017-10-28/125x100_1509163500_0_1000642_1109429942408526_2041342027730179459_n.jpg', 'public/uploads/2017-10-28/768x576_1509163500_0_1000642_1109429942408526_2041342027730179459_n.jpg', 'public/uploads/2017-10-28/1375x670_1509163500_0_1000642_1109429942408526_2041342027730179459_n.jpg', 0),
(94, '1509163520_0_20171018093208-1ab0_wm.jpg', '2017-10-28 04:05:20', 'public/uploads/2017-10-28/1509163520_0_20171018093208-1ab0_wm.jpg', 1, 1, '20171018093208-1ab0_wm.jpg', 'public/uploads/2017-10-28/125x100_1509163520_0_20171018093208-1ab0_wm.jpg', 'public/uploads/2017-10-28/768x576_1509163520_0_20171018093208-1ab0_wm.jpg', 'public/uploads/2017-10-28/1375x670_1509163520_0_20171018093208-1ab0_wm.jpg', 0),
(95, '1509163556_0_z799270709403_a6b97c37ffd4ca8fe63490c7a9f13ace.jpg', '2017-10-28 04:05:56', 'public/uploads/2017-10-28/1509163556_0_z799270709403_a6b97c37ffd4ca8fe63490c7a9f13ace.jpg', 1, 1, 'z799270709403_a6b97c37ffd4ca8fe63490c7a9f13ace.jpg', 'public/uploads/2017-10-28/125x100_1509163556_0_z799270709403_a6b97c37ffd4ca8fe63490c7a9f13ace.jpg', 'public/uploads/2017-10-28/768x576_1509163556_0_z799270709403_a6b97c37ffd4ca8fe63490c7a9f13ace.jpg', 'public/uploads/2017-10-28/1375x670_1509163556_0_z799270709403_a6b97c37ffd4ca8fe63490c7a9f13ace.jpg', 0),
(96, '1509163819_0_1491596.jpg', '2017-10-28 04:10:20', 'public/uploads/2017-10-28/1509163819_0_1491596.jpg', 1, 1, '1491596.jpg', 'public/uploads/2017-10-28/125x100_1509163819_0_1491596.jpg', 'public/uploads/2017-10-28/768x576_1509163819_0_1491596.jpg', 'public/uploads/2017-10-28/1375x670_1509163819_0_1491596.jpg', 0),
(97, '1509165433_dich-vu-tien-ich-tai-chung-cu-ciputra.jpg', '2017-10-28 04:37:13', 'public/uploads/2017-10-28/1509165433_dich-vu-tien-ich-tai-chung-cu-ciputra.jpg', 1, 1, 'dich-vu-tien-ich-tai-chung-cu-ciputra.jpg', 'public/uploads/2017-10-28/125x100_1509165433_dich-vu-tien-ich-tai-chung-cu-ciputra.jpg', 'public/uploads/2017-10-28/768x576_1509165433_dich-vu-tien-ich-tai-chung-cu-ciputra.jpg', 'public/uploads/2017-10-28/1375x670_1509165433_dich-vu-tien-ich-tai-chung-cu-ciputra.jpg', 0),
(98, '1509165828_tien-ich-can-ho-thu-thiem-garden.jpg', '2017-10-28 04:43:48', 'public/uploads/2017-10-28/1509165828_tien-ich-can-ho-thu-thiem-garden.jpg', 1, 1, 'tien-ich-can-ho-thu-thiem-garden.jpg', 'public/uploads/2017-10-28/125x100_1509165828_tien-ich-can-ho-thu-thiem-garden.jpg', 'public/uploads/2017-10-28/768x576_1509165828_tien-ich-can-ho-thu-thiem-garden.jpg', 'public/uploads/2017-10-28/1375x670_1509165828_tien-ich-can-ho-thu-thiem-garden.jpg', 0),
(99, '1509291434_0_vuon-nuong-saigon-riversie-city.jpg', '2017-10-29 15:37:15', 'public/uploads/2017-10-29/1509291434_0_vuon-nuong-saigon-riversie-city.jpg', 1, 1, 'vuon-nuong-saigon-riversie-city.jpg', 'public/uploads/2017-10-29/125x100_1509291434_0_vuon-nuong-saigon-riversie-city.jpg', 'public/uploads/2017-10-29/768x576_1509291434_0_vuon-nuong-saigon-riversie-city.jpg', 'public/uploads/2017-10-29/1375x670_1509291434_0_vuon-nuong-saigon-riversie-city.jpg', 0),
(100, '1509291462_0_phong-an-can-ho-imperial-place-1024x682.jpg', '2017-10-29 15:37:43', 'public/uploads/2017-10-29/1509291462_0_phong-an-can-ho-imperial-place-1024x682.jpg', 1, 1, 'phong-an-can-ho-imperial-place-1024x682.jpg', 'public/uploads/2017-10-29/125x100_1509291462_0_phong-an-can-ho-imperial-place-1024x682.jpg', 'public/uploads/2017-10-29/768x576_1509291462_0_phong-an-can-ho-imperial-place-1024x682.jpg', 'public/uploads/2017-10-29/1375x670_1509291462_0_phong-an-can-ho-imperial-place-1024x682.jpg', 0),
(101, '1509291483_0_tien-ich-can-ho-saigon-riverside-city_1508512037.jpg', '2017-10-29 15:38:04', 'public/uploads/2017-10-29/1509291483_0_tien-ich-can-ho-saigon-riverside-city_1508512037.jpg', 1, 1, 'tien-ich-can-ho-saigon-riverside-city_1508512037.jpg', 'public/uploads/2017-10-29/125x100_1509291483_0_tien-ich-can-ho-saigon-riverside-city_1508512037.jpg', 'public/uploads/2017-10-29/768x576_1509291483_0_tien-ich-can-ho-saigon-riverside-city_1508512037.jpg', 'public/uploads/2017-10-29/1375x670_1509291483_0_tien-ich-can-ho-saigon-riverside-city_1508512037.jpg', 0),
(102, '1509291542_0_ho-boi-saigon-riversie-city.jpg', '2017-10-29 15:39:02', 'public/uploads/2017-10-29/1509291542_0_ho-boi-saigon-riversie-city.jpg', 1, 1, 'ho-boi-saigon-riversie-city.jpg', 'public/uploads/2017-10-29/125x100_1509291542_0_ho-boi-saigon-riversie-city.jpg', 'public/uploads/2017-10-29/768x576_1509291542_0_ho-boi-saigon-riversie-city.jpg', 'public/uploads/2017-10-29/1375x670_1509291542_0_ho-boi-saigon-riversie-city.jpg', 0),
(103, '1509291581_vuon-nuong-saigon-riversie-city.jpg', '2017-10-29 15:39:41', 'public/uploads/2017-10-29/1509291581_vuon-nuong-saigon-riversie-city.jpg', 1, 1, 'vuon-nuong-saigon-riversie-city.jpg', 'public/uploads/2017-10-29/125x100_1509291581_vuon-nuong-saigon-riversie-city.jpg', 'public/uploads/2017-10-29/768x576_1509291581_vuon-nuong-saigon-riversie-city.jpg', 'public/uploads/2017-10-29/1375x670_1509291581_vuon-nuong-saigon-riversie-city.jpg', 0),
(104, '1509291648_ho-boi-saigon-riversie-city.jpg', '2017-10-29 15:40:50', 'public/uploads/2017-10-29/1509291648_ho-boi-saigon-riversie-city.jpg', 1, 1, 'ho-boi-saigon-riversie-city.jpg', 'public/uploads/2017-10-29/125x100_1509291648_ho-boi-saigon-riversie-city.jpg', 'public/uploads/2017-10-29/768x576_1509291648_ho-boi-saigon-riversie-city.jpg', 'public/uploads/2017-10-29/1375x670_1509291648_ho-boi-saigon-riversie-city.jpg', 0),
(105, '1509291711_tien-ich-noi-khu-saigon--riverside-city.jpg', '2017-10-29 15:41:52', 'public/uploads/2017-10-29/1509291711_tien-ich-noi-khu-saigon--riverside-city.jpg', 1, 1, 'tien-ich-noi-khu-saigon--riverside-city.jpg', 'public/uploads/2017-10-29/125x100_1509291711_tien-ich-noi-khu-saigon--riverside-city.jpg', 'public/uploads/2017-10-29/768x576_1509291711_tien-ich-noi-khu-saigon--riverside-city.jpg', 'public/uploads/2017-10-29/1375x670_1509291711_tien-ich-noi-khu-saigon--riverside-city.jpg', 0),
(106, '1509291784_phong-an-can-ho-imperial-place-1024x682.jpg', '2017-10-29 15:43:05', 'public/uploads/2017-10-29/1509291784_phong-an-can-ho-imperial-place-1024x682.jpg', 1, 1, 'phong-an-can-ho-imperial-place-1024x682.jpg', 'public/uploads/2017-10-29/125x100_1509291784_phong-an-can-ho-imperial-place-1024x682.jpg', 'public/uploads/2017-10-29/768x576_1509291784_phong-an-can-ho-imperial-place-1024x682.jpg', 'public/uploads/2017-10-29/1375x670_1509291784_phong-an-can-ho-imperial-place-1024x682.jpg', 0),
(107, '1509291919_tien-ich-can-ho-saigon-riverside-city_1508512037.jpg', '2017-10-29 15:45:20', 'public/uploads/2017-10-29/1509291919_tien-ich-can-ho-saigon-riverside-city_1508512037.jpg', 1, 1, 'tien-ich-can-ho-saigon-riverside-city_1508512037.jpg', 'public/uploads/2017-10-29/125x100_1509291919_tien-ich-can-ho-saigon-riverside-city_1508512037.jpg', 'public/uploads/2017-10-29/768x576_1509291919_tien-ich-can-ho-saigon-riverside-city_1508512037.jpg', 'public/uploads/2017-10-29/1375x670_1509291919_tien-ich-can-ho-saigon-riverside-city_1508512037.jpg', 0),
(108, '1509291992_0_phong-an-can-ho-imperial-place-1024x682.jpg', '2017-10-29 15:46:32', 'public/uploads/2017-10-29/1509291992_0_phong-an-can-ho-imperial-place-1024x682.jpg', 1, 1, 'phong-an-can-ho-imperial-place-1024x682.jpg', 'public/uploads/2017-10-29/125x100_1509291992_0_phong-an-can-ho-imperial-place-1024x682.jpg', 'public/uploads/2017-10-29/768x576_1509291992_0_phong-an-can-ho-imperial-place-1024x682.jpg', 'public/uploads/2017-10-29/1375x670_1509291992_0_phong-an-can-ho-imperial-place-1024x682.jpg', 0),
(109, '1509292057_0_vuon-nuong-saigon-riversie-city.jpg', '2017-10-29 15:47:38', 'public/uploads/2017-10-29/1509292057_0_vuon-nuong-saigon-riversie-city.jpg', 1, 1, 'vuon-nuong-saigon-riversie-city.jpg', 'public/uploads/2017-10-29/125x100_1509292057_0_vuon-nuong-saigon-riversie-city.jpg', 'public/uploads/2017-10-29/768x576_1509292057_0_vuon-nuong-saigon-riversie-city.jpg', 'public/uploads/2017-10-29/1375x670_1509292057_0_vuon-nuong-saigon-riversie-city.jpg', 0),
(110, '1509292222_0_1fbCGV.jpg', '2017-10-29 15:50:23', 'public/uploads/2017-10-29/1509292222_0_1fbCGV.jpg', 1, 1, '1fbCGV.jpg', 'public/uploads/2017-10-29/125x100_1509292222_0_1fbCGV.jpg', 'public/uploads/2017-10-29/768x576_1509292222_0_1fbCGV.jpg', 'public/uploads/2017-10-29/1375x670_1509292222_0_1fbCGV.jpg', 0),
(111, '1509292246_0_adsad.jpg', '2017-10-29 15:50:46', 'public/uploads/2017-10-29/1509292246_0_adsad.jpg', 1, 0, 'adsad.jpg', 'public/uploads/2017-10-29/125x100_1509292246_0_adsad.jpg', 'public/uploads/2017-10-29/768x576_1509292246_0_adsad.jpg', 'public/uploads/2017-10-29/1375x670_1509292246_0_adsad.jpg', 0),
(112, '1509292342_0_topaz-elite-nghi-duong-02-min(1).png', '2017-10-29 15:52:23', 'public/uploads/2017-10-29/1509292342_0_topaz-elite-nghi-duong-02-min(1).png', 1, 1, 'topaz-elite-nghi-duong-02-min(1).png', 'public/uploads/2017-10-29/125x100_1509292342_0_topaz-elite-nghi-duong-02-min(1).png', 'public/uploads/2017-10-29/768x576_1509292342_0_topaz-elite-nghi-duong-02-min(1).png', 'public/uploads/2017-10-29/1375x670_1509292342_0_topaz-elite-nghi-duong-02-min(1).png', 0),
(113, '1509292400_tien-ich-noi-khu-saigon--riverside-city.jpg', '2017-10-29 15:53:20', 'public/uploads/2017-10-29/1509292400_tien-ich-noi-khu-saigon--riverside-city.jpg', 1, 1, 'tien-ich-noi-khu-saigon--riverside-city.jpg', 'public/uploads/2017-10-29/125x100_1509292400_tien-ich-noi-khu-saigon--riverside-city.jpg', 'public/uploads/2017-10-29/768x576_1509292400_tien-ich-noi-khu-saigon--riverside-city.jpg', 'public/uploads/2017-10-29/1375x670_1509292400_tien-ich-noi-khu-saigon--riverside-city.jpg', 0),
(114, '1509292701_0_foody-mobile-foody-c-106843-508-6-396-635641977763543346.jpg', '2017-10-29 15:58:22', 'public/uploads/2017-10-29/1509292701_0_foody-mobile-foody-c-106843-508-6-396-635641977763543346.jpg', 1, 1, 'foody-mobile-foody-c-106843-508-6-396-635641977763543346.jpg', 'public/uploads/2017-10-29/125x100_1509292701_0_foody-mobile-foody-c-106843-508-6-396-635641977763543', 'public/uploads/2017-10-29/768x576_1509292701_0_foody-mobile-foody-c-106843-508-6-396-635641977763543', 'public/uploads/2017-10-29/1375x670_1509292701_0_foody-mobile-foody-c-106843-508-6-396-63564197776354', 0),
(115, '1509292740_0_foody-mobile-foody-c-106843-508-6-396-635641977763543346.jpg', '2017-10-29 15:59:01', 'public/uploads/2017-10-29/1509292740_0_foody-mobile-foody-c-106843-508-6-396-635641977763543346.jpg', 1, 1, 'foody-mobile-foody-c-106843-508-6-396-635641977763543346.jpg', 'public/uploads/2017-10-29/125x100_1509292740_0_foody-mobile-foody-c-106843-508-6-396-635641977763543', 'public/uploads/2017-10-29/768x576_1509292740_0_foody-mobile-foody-c-106843-508-6-396-635641977763543', 'public/uploads/2017-10-29/1375x670_1509292740_0_foody-mobile-foody-c-106843-508-6-396-63564197776354', 0),
(116, '1509292793_0_345345.jpg', '2017-10-29 15:59:54', 'public/uploads/2017-10-29/1509292793_0_345345.jpg', 1, 1, '345345.jpg', 'public/uploads/2017-10-29/125x100_1509292793_0_345345.jpg', 'public/uploads/2017-10-29/768x576_1509292793_0_345345.jpg', 'public/uploads/2017-10-29/1375x670_1509292793_0_345345.jpg', 0),
(117, '1509293633_Slide15.jpg', '2017-10-29 16:13:53', 'public/uploads/2017-10-29/1509293633_Slide15.jpg', 1, 1, 'Slide15.jpg', 'public/uploads/2017-10-29/125x100_1509293633_Slide15.jpg', 'public/uploads/2017-10-29/768x576_1509293633_Slide15.jpg', 'public/uploads/2017-10-29/1375x670_1509293633_Slide15.jpg', 0),
(118, '1509293721_Slide15.jpg', '2017-10-29 16:15:22', 'public/uploads/2017-10-29/1509293721_Slide15.jpg', 1, 1, 'Slide15.jpg', 'public/uploads/2017-10-29/125x100_1509293721_Slide15.jpg', 'public/uploads/2017-10-29/768x576_1509293721_Slide15.jpg', 'public/uploads/2017-10-29/1375x670_1509293721_Slide15.jpg', 0),
(119, '1509293763_can-ho-topaz-elite-phong-gym.jpg', '2017-10-29 16:16:03', 'public/uploads/2017-10-29/1509293763_can-ho-topaz-elite-phong-gym.jpg', 1, 1, 'can-ho-topaz-elite-phong-gym.jpg', 'public/uploads/2017-10-29/125x100_1509293763_can-ho-topaz-elite-phong-gym.jpg', 'public/uploads/2017-10-29/768x576_1509293763_can-ho-topaz-elite-phong-gym.jpg', 'public/uploads/2017-10-29/1375x670_1509293763_can-ho-topaz-elite-phong-gym.jpg', 0),
(120, '1509433260_tu-van-mien-phi.gif', '2017-10-31 07:01:02', 'public/uploads/2017-10-31/1509433260_tu-van-mien-phi.gif', 1, 1, 'tu-van-mien-phi.gif', 'public/uploads/2017-10-31/125x100_1509433260_tu-van-mien-phi.gif', 'public/uploads/2017-10-31/768x576_1509433260_tu-van-mien-phi.gif', 'public/uploads/2017-10-31/1375x670_1509433260_tu-van-mien-phi.gif', 0),
(121, '1509433330_tu-van-mien-phi.gif', '2017-10-31 07:02:11', 'public/uploads/2017-10-31/1509433330_tu-van-mien-phi.gif', 1, 1, 'tu-van-mien-phi.gif', 'public/uploads/2017-10-31/125x100_1509433330_tu-van-mien-phi.gif', 'public/uploads/2017-10-31/768x576_1509433330_tu-van-mien-phi.gif', 'public/uploads/2017-10-31/1375x670_1509433330_tu-van-mien-phi.gif', 0),
(122, '1509433703_tu-van-mien-phi.gif', '2017-10-31 07:08:23', 'public/uploads/2017-10-31/1509433703_tu-van-mien-phi.gif', 1, 1, 'tu-van-mien-phi.gif', 'public/uploads/2017-10-31/125x100_1509433703_tu-van-mien-phi.gif', 'public/uploads/2017-10-31/768x576_1509433703_tu-van-mien-phi.gif', 'public/uploads/2017-10-31/1375x670_1509433703_tu-van-mien-phi.gif', 0),
(123, '1509433889_tu-van-mien-phi.gif', '2017-10-31 07:11:29', 'public/uploads/2017-10-31/1509433889_tu-van-mien-phi.gif', 1, 1, 'tu-van-mien-phi.gif', 'public/uploads/2017-10-31/125x100_1509433889_tu-van-mien-phi.gif', 'public/uploads/2017-10-31/768x576_1509433889_tu-van-mien-phi.gif', 'public/uploads/2017-10-31/1375x670_1509433889_tu-van-mien-phi.gif', 0),
(124, '1509433952_tu-van-mien-phi.gif', '2017-10-31 07:12:32', 'public/uploads/2017-10-31/1509433952_tu-van-mien-phi.gif', 1, 1, 'tu-van-mien-phi.gif', 'public/uploads/2017-10-31/125x100_1509433952_tu-van-mien-phi.gif', 'public/uploads/2017-10-31/768x576_1509433952_tu-van-mien-phi.gif', 'public/uploads/2017-10-31/1375x670_1509433952_tu-van-mien-phi.gif', 0),
(125, '1509434711_roxana-plaza-chinh-thuc-nhan-dat--moi.jpg', '2017-10-31 07:25:11', 'public/uploads/2017-10-31/1509434711_roxana-plaza-chinh-thuc-nhan-dat--moi.jpg', 1, 1, 'roxana-plaza-chinh-thuc-nhan-dat--moi.jpg', 'public/uploads/2017-10-31/125x100_1509434711_roxana-plaza-chinh-thuc-nhan-dat--moi.jpg', 'public/uploads/2017-10-31/768x576_1509434711_roxana-plaza-chinh-thuc-nhan-dat--moi.jpg', 'public/uploads/2017-10-31/1375x670_1509434711_roxana-plaza-chinh-thuc-nhan-dat--moi.jpg', 0),
(126, '1511751560_map.gif', '2017-11-27 02:59:24', 'public/uploads/2017-11-27/1511751560_map.gif', 1, 1, 'map.gif', 'public/uploads/2017-11-27/125x100_1511751560_map.gif', 'public/uploads/2017-11-27/768x576_1511751560_map.gif', 'public/uploads/2017-11-27/1375x670_1511751560_map.gif', 0),
(127, '1511751639_map.gif', '2017-11-27 03:00:40', 'public/uploads/2017-11-27/1511751639_map.gif', 1, 1, 'map.gif', 'public/uploads/2017-11-27/125x100_1511751639_map.gif', 'public/uploads/2017-11-27/768x576_1511751639_map.gif', 'public/uploads/2017-11-27/1375x670_1511751639_map.gif', 0),
(128, '1511751728_map.gif', '2017-11-27 03:02:09', 'public/uploads/2017-11-27/1511751728_map.gif', 1, 1, 'map.gif', 'public/uploads/2017-11-27/125x100_1511751728_map.gif', 'public/uploads/2017-11-27/768x576_1511751728_map.gif', 'public/uploads/2017-11-27/1375x670_1511751728_map.gif', 0);
INSERT INTO `tbl_hinhanh` (`id_hinhanh`, `ten_hinhanh`, `date`, `src`, `id_user`, `deleted`, `real_hinhanh`, `thumb_src`, `bg_src`, `slider_src`, `default`) VALUES
(129, '1511751971_0_1508392695_0_22.jpg', '2017-11-27 03:06:14', 'public/uploads/2017-11-27/1511751971_0_1508392695_0_22.jpg', 1, 1, '1508392695_0_22.jpg', 'public/uploads/2017-11-27/125x100_1511751971_0_1508392695_0_22.jpg', 'public/uploads/2017-11-27/768x576_1511751971_0_1508392695_0_22.jpg', 'public/uploads/2017-11-27/1375x670_1511751971_0_1508392695_0_22.jpg', 0),
(130, '1511751974_0_1508392390_0_22657120_1518552098234222_415590271_n.jpg', '2017-11-27 03:06:15', 'public/uploads/2017-11-27/1511751974_0_1508392390_0_22657120_1518552098234222_415590271_n.jpg', 1, 1, '1508392390_0_22657120_1518552098234222_415590271_n.jpg', 'public/uploads/2017-11-27/125x100_1511751974_0_1508392390_0_22657120_1518552098234222_415590271_n.jp', 'public/uploads/2017-11-27/768x576_1511751974_0_1508392390_0_22657120_1518552098234222_415590271_n.jp', 'public/uploads/2017-11-27/1375x670_1511751974_0_1508392390_0_22657120_1518552098234222_415590271_n.j', 0),
(131, '1511751975_0_1508392707_0_34.jpg', '2017-11-27 03:06:17', 'public/uploads/2017-11-27/1511751975_0_1508392707_0_34.jpg', 1, 1, '1508392707_0_34.jpg', 'public/uploads/2017-11-27/125x100_1511751975_0_1508392707_0_34.jpg', 'public/uploads/2017-11-27/768x576_1511751975_0_1508392707_0_34.jpg', 'public/uploads/2017-11-27/1375x670_1511751975_0_1508392707_0_34.jpg', 0),
(132, '1511752020_0_1508392362_0_22551805_1518552054900893_810293463_n.jpg', '2017-11-27 03:07:01', 'public/uploads/2017-11-27/1511752020_0_1508392362_0_22551805_1518552054900893_810293463_n.jpg', 1, 1, '1508392362_0_22551805_1518552054900893_810293463_n.jpg', 'public/uploads/2017-11-27/125x100_1511752020_0_1508392362_0_22551805_1518552054900893_810293463_n.jp', 'public/uploads/2017-11-27/768x576_1511752020_0_1508392362_0_22551805_1518552054900893_810293463_n.jp', 'public/uploads/2017-11-27/1375x670_1511752020_0_1508392362_0_22551805_1518552054900893_810293463_n.j', 0),
(133, '1511752031_0_1508392368_0_22554356_1518552114900887_1248205743_n.jpg', '2017-11-27 03:07:11', 'public/uploads/2017-11-27/1511752031_0_1508392368_0_22554356_1518552114900887_1248205743_n.jpg', 1, 1, '1508392368_0_22554356_1518552114900887_1248205743_n.jpg', 'public/uploads/2017-11-27/125x100_1511752031_0_1508392368_0_22554356_1518552114900887_1248205743_n.j', 'public/uploads/2017-11-27/768x576_1511752031_0_1508392368_0_22554356_1518552114900887_1248205743_n.j', 'public/uploads/2017-11-27/1375x670_1511752031_0_1508392368_0_22554356_1518552114900887_1248205743_n.', 0),
(134, '1511752036_0_1508392374_0_22627602_1518552564900842_1335593997_n.jpg', '2017-11-27 03:07:16', 'public/uploads/2017-11-27/1511752036_0_1508392374_0_22627602_1518552564900842_1335593997_n.jpg', 1, 1, '1508392374_0_22627602_1518552564900842_1335593997_n.jpg', 'public/uploads/2017-11-27/125x100_1511752036_0_1508392374_0_22627602_1518552564900842_1335593997_n.j', 'public/uploads/2017-11-27/768x576_1511752036_0_1508392374_0_22627602_1518552564900842_1335593997_n.j', 'public/uploads/2017-11-27/1375x670_1511752036_0_1508392374_0_22627602_1518552564900842_1335593997_n.', 0),
(135, '1511752042_0_1508392382_0_22635095_1518552134900885_1745894488_n.jpg', '2017-11-27 03:07:23', 'public/uploads/2017-11-27/1511752042_0_1508392382_0_22635095_1518552134900885_1745894488_n.jpg', 1, 1, '1508392382_0_22635095_1518552134900885_1745894488_n.jpg', 'public/uploads/2017-11-27/125x100_1511752042_0_1508392382_0_22635095_1518552134900885_1745894488_n.j', 'public/uploads/2017-11-27/768x576_1511752042_0_1508392382_0_22635095_1518552134900885_1745894488_n.j', 'public/uploads/2017-11-27/1375x670_1511752042_0_1508392382_0_22635095_1518552134900885_1745894488_n.', 0),
(136, '1511752053_0_1508392387_0_22635420_1518552348234197_336691912_n.jpg', '2017-11-27 03:07:33', 'public/uploads/2017-11-27/1511752053_0_1508392387_0_22635420_1518552348234197_336691912_n.jpg', 1, 1, '1508392387_0_22635420_1518552348234197_336691912_n.jpg', 'public/uploads/2017-11-27/125x100_1511752053_0_1508392387_0_22635420_1518552348234197_336691912_n.jp', 'public/uploads/2017-11-27/768x576_1511752053_0_1508392387_0_22635420_1518552348234197_336691912_n.jp', 'public/uploads/2017-11-27/1375x670_1511752053_0_1508392387_0_22635420_1518552348234197_336691912_n.j', 0),
(137, '1511752061_0_1508392390_0_22657120_1518552098234222_415590271_n.jpg', '2017-11-27 03:07:42', 'public/uploads/2017-11-27/1511752061_0_1508392390_0_22657120_1518552098234222_415590271_n.jpg', 1, 1, '1508392390_0_22657120_1518552098234222_415590271_n.jpg', 'public/uploads/2017-11-27/125x100_1511752061_0_1508392390_0_22657120_1518552098234222_415590271_n.jp', 'public/uploads/2017-11-27/768x576_1511752061_0_1508392390_0_22657120_1518552098234222_415590271_n.jp', 'public/uploads/2017-11-27/1375x670_1511752061_0_1508392390_0_22657120_1518552098234222_415590271_n.j', 0),
(138, '1511752080_0_1508392707_0_34.jpg', '2017-11-27 03:08:01', 'public/uploads/2017-11-27/1511752080_0_1508392707_0_34.jpg', 1, 0, '1508392707_0_34.jpg', 'public/uploads/2017-11-27/125x100_1511752080_0_1508392707_0_34.jpg', 'public/uploads/2017-11-27/768x576_1511752080_0_1508392707_0_34.jpg', 'public/uploads/2017-11-27/1375x670_1511752080_0_1508392707_0_34.jpg', 0),
(139, '1511752093_0_1508392714_0_30.jpg', '2017-11-27 03:08:13', 'public/uploads/2017-11-27/1511752093_0_1508392714_0_30.jpg', 1, 0, '1508392714_0_30.jpg', 'public/uploads/2017-11-27/125x100_1511752093_0_1508392714_0_30.jpg', 'public/uploads/2017-11-27/768x576_1511752093_0_1508392714_0_30.jpg', 'public/uploads/2017-11-27/1375x670_1511752093_0_1508392714_0_30.jpg', 0),
(140, '1511752099_0_1508392717_0_27.jpg', '2017-11-27 03:08:20', 'public/uploads/2017-11-27/1511752099_0_1508392717_0_27.jpg', 1, 0, '1508392717_0_27.jpg', 'public/uploads/2017-11-27/125x100_1511752099_0_1508392717_0_27.jpg', 'public/uploads/2017-11-27/768x576_1511752099_0_1508392717_0_27.jpg', 'public/uploads/2017-11-27/1375x670_1511752099_0_1508392717_0_27.jpg', 0),
(141, '1511752293_0_1508392362_0_22551805_1518552054900893_810293463_n.jpg', '2017-11-27 03:11:34', 'public/uploads/2017-11-27/1511752293_0_1508392362_0_22551805_1518552054900893_810293463_n.jpg', 1, 0, '1508392362_0_22551805_1518552054900893_810293463_n.jpg', 'public/uploads/2017-11-27/125x100_1511752293_0_1508392362_0_22551805_1518552054900893_810293463_n.jp', 'public/uploads/2017-11-27/768x576_1511752293_0_1508392362_0_22551805_1518552054900893_810293463_n.jp', 'public/uploads/2017-11-27/1375x670_1511752293_0_1508392362_0_22551805_1518552054900893_810293463_n.j', 0),
(142, '1511752319_0_1508392368_0_22554356_1518552114900887_1248205743_n.jpg', '2017-11-27 03:12:00', 'public/uploads/2017-11-27/1511752319_0_1508392368_0_22554356_1518552114900887_1248205743_n.jpg', 1, 0, '1508392368_0_22554356_1518552114900887_1248205743_n.jpg', 'public/uploads/2017-11-27/125x100_1511752319_0_1508392368_0_22554356_1518552114900887_1248205743_n.j', 'public/uploads/2017-11-27/768x576_1511752319_0_1508392368_0_22554356_1518552114900887_1248205743_n.j', 'public/uploads/2017-11-27/1375x670_1511752319_0_1508392368_0_22554356_1518552114900887_1248205743_n.', 0),
(143, '1511752332_0_1508392374_0_22627602_1518552564900842_1335593997_n.jpg', '2017-11-27 03:12:12', 'public/uploads/2017-11-27/1511752332_0_1508392374_0_22627602_1518552564900842_1335593997_n.jpg', 1, 0, '1508392374_0_22627602_1518552564900842_1335593997_n.jpg', 'public/uploads/2017-11-27/125x100_1511752332_0_1508392374_0_22627602_1518552564900842_1335593997_n.j', 'public/uploads/2017-11-27/768x576_1511752332_0_1508392374_0_22627602_1518552564900842_1335593997_n.j', 'public/uploads/2017-11-27/1375x670_1511752332_0_1508392374_0_22627602_1518552564900842_1335593997_n.', 0),
(144, '1511752367_0_1508392382_0_22635095_1518552134900885_1745894488_n.jpg', '2017-11-27 03:12:48', 'public/uploads/2017-11-27/1511752367_0_1508392382_0_22635095_1518552134900885_1745894488_n.jpg', 1, 0, '1508392382_0_22635095_1518552134900885_1745894488_n.jpg', 'public/uploads/2017-11-27/125x100_1511752367_0_1508392382_0_22635095_1518552134900885_1745894488_n.j', 'public/uploads/2017-11-27/768x576_1511752367_0_1508392382_0_22635095_1518552134900885_1745894488_n.j', 'public/uploads/2017-11-27/1375x670_1511752367_0_1508392382_0_22635095_1518552134900885_1745894488_n.', 0),
(145, '1511752373_0_1508392387_0_22635420_1518552348234197_336691912_n.jpg', '2017-11-27 03:12:53', 'public/uploads/2017-11-27/1511752373_0_1508392387_0_22635420_1518552348234197_336691912_n.jpg', 1, 1, '1508392387_0_22635420_1518552348234197_336691912_n.jpg', 'public/uploads/2017-11-27/125x100_1511752373_0_1508392387_0_22635420_1518552348234197_336691912_n.jp', 'public/uploads/2017-11-27/768x576_1511752373_0_1508392387_0_22635420_1518552348234197_336691912_n.jp', 'public/uploads/2017-11-27/1375x670_1511752373_0_1508392387_0_22635420_1518552348234197_336691912_n.j', 0),
(146, '1511752400_0_1508392387_0_22635420_1518552348234197_336691912_n.jpg', '2017-11-27 03:13:21', 'public/uploads/2017-11-27/1511752400_0_1508392387_0_22635420_1518552348234197_336691912_n.jpg', 1, 0, '1508392387_0_22635420_1518552348234197_336691912_n.jpg', 'public/uploads/2017-11-27/125x100_1511752400_0_1508392387_0_22635420_1518552348234197_336691912_n.jp', 'public/uploads/2017-11-27/768x576_1511752400_0_1508392387_0_22635420_1518552348234197_336691912_n.jp', 'public/uploads/2017-11-27/1375x670_1511752400_0_1508392387_0_22635420_1518552348234197_336691912_n.j', 0),
(147, '1511752478_0_1508392695_0_22.jpg', '2017-11-27 03:14:39', 'public/uploads/2017-11-27/1511752478_0_1508392695_0_22.jpg', 1, 0, '1508392695_0_22.jpg', 'public/uploads/2017-11-27/125x100_1511752478_0_1508392695_0_22.jpg', 'public/uploads/2017-11-27/768x576_1511752478_0_1508392695_0_22.jpg', 'public/uploads/2017-11-27/1375x670_1511752478_0_1508392695_0_22.jpg', 0),
(148, '1511752556_0_5.jpg', '2017-11-27 03:15:57', 'public/uploads/2017-11-27/1511752556_0_5.jpg', 1, 0, '5.jpg', 'public/uploads/2017-11-27/125x100_1511752556_0_5.jpg', 'public/uploads/2017-11-27/768x576_1511752556_0_5.jpg', 'public/uploads/2017-11-27/1375x670_1511752556_0_5.jpg', 0),
(149, '1511752595_0_map.gif', '2017-11-27 03:16:39', 'public/uploads/2017-11-27/1511752595_0_map.gif', 1, 0, 'map.gif', 'public/uploads/2017-11-27/125x100_1511752595_0_map.gif', 'public/uploads/2017-11-27/768x576_1511752595_0_map.gif', 'public/uploads/2017-11-27/1375x670_1511752595_0_map.gif', 0),
(150, '1511752706_0_1508392695_0_22.jpg', '2017-11-27 03:18:26', 'public/uploads/2017-11-27/1511752706_0_1508392695_0_22.jpg', 1, 0, '1508392695_0_22.jpg', 'public/uploads/2017-11-27/125x100_1511752706_0_1508392695_0_22.jpg', 'public/uploads/2017-11-27/768x576_1511752706_0_1508392695_0_22.jpg', 'public/uploads/2017-11-27/1375x670_1511752706_0_1508392695_0_22.jpg', 0),
(151, '1511752787_0_20108605_380391785711162_1030594141036627771_n.jpg', '2017-11-27 03:19:47', 'public/uploads/2017-11-27/1511752787_0_20108605_380391785711162_1030594141036627771_n.jpg', 1, 0, '20108605_380391785711162_1030594141036627771_n.jpg', 'public/uploads/2017-11-27/125x100_1511752787_0_20108605_380391785711162_1030594141036627771_n.jpg', 'public/uploads/2017-11-27/768x576_1511752787_0_20108605_380391785711162_1030594141036627771_n.jpg', 'public/uploads/2017-11-27/1375x670_1511752787_0_20108605_380391785711162_1030594141036627771_n.jpg', 0),
(152, '1511753075_0_1507263417_Untitled-2.jpg', '2017-11-27 03:24:37', 'public/uploads/2017-11-27/1511753075_0_1507263417_Untitled-2.jpg', 1, 1, '1507263417_Untitled-2.jpg', 'public/uploads/2017-11-27/125x100_1511753075_0_1507263417_Untitled-2.jpg', 'public/uploads/2017-11-27/768x576_1511753075_0_1507263417_Untitled-2.jpg', 'public/uploads/2017-11-27/1375x670_1511753075_0_1507263417_Untitled-2.jpg', 0),
(153, '1511753123_0_Hình_ảnh_RUBY_nhìn_vào_công_viên.jpg', '2017-11-27 03:25:24', 'public/uploads/2017-11-27/1511753123_0_Hình_ảnh_RUBY_nhìn_vào_công_viên.jpg', 1, 1, 'Hình ảnh RUBY nhìn vào công viên.jpg', 'public/uploads/2017-11-27/125x100_1511753123_0_Hình_ảnh_RUBY_nhìn_vào_công_viên.jpg', 'public/uploads/2017-11-27/768x576_1511753123_0_Hình_ảnh_RUBY_nhìn_vào_công_viên.jpg', 'public/uploads/2017-11-27/1375x670_1511753123_0_Hình_ảnh_RUBY_nhìn_vào_công_viên.jpg', 0),
(154, '1511753271_0_1508392382_0_22635095_1518552134900885_1745894488_n.jpg', '2017-11-27 03:27:51', 'public/uploads/2017-11-27/1511753271_0_1508392382_0_22635095_1518552134900885_1745894488_n.jpg', 1, 1, '1508392382_0_22635095_1518552134900885_1745894488_n.jpg', 'public/uploads/2017-11-27/125x100_1511753271_0_1508392382_0_22635095_1518552134900885_1745894488_n.j', 'public/uploads/2017-11-27/768x576_1511753271_0_1508392382_0_22635095_1518552134900885_1745894488_n.j', 'public/uploads/2017-11-27/1375x670_1511753271_0_1508392382_0_22635095_1518552134900885_1745894488_n.', 0),
(155, '1511753311_0_z620122945674_a894cc2a38ca91369b3a99006f526362.jpg', '2017-11-27 03:28:32', 'public/uploads/2017-11-27/1511753311_0_z620122945674_a894cc2a38ca91369b3a99006f526362.jpg', 1, 0, 'z620122945674_a894cc2a38ca91369b3a99006f526362.jpg', 'public/uploads/2017-11-27/125x100_1511753311_0_z620122945674_a894cc2a38ca91369b3a99006f526362.jpg', 'public/uploads/2017-11-27/768x576_1511753311_0_z620122945674_a894cc2a38ca91369b3a99006f526362.jpg', 'public/uploads/2017-11-27/1375x670_1511753311_0_z620122945674_a894cc2a38ca91369b3a99006f526362.jpg', 0),
(156, '1511753379_0_can-ho-celadon-city-tan-phu-hinh-anh-2.jpg', '2017-11-27 03:29:40', 'public/uploads/2017-11-27/1511753379_0_can-ho-celadon-city-tan-phu-hinh-anh-2.jpg', 1, 0, 'can-ho-celadon-city-tan-phu-hinh-anh-2.jpg', 'public/uploads/2017-11-27/125x100_1511753379_0_can-ho-celadon-city-tan-phu-hinh-anh-2.jpg', 'public/uploads/2017-11-27/768x576_1511753379_0_can-ho-celadon-city-tan-phu-hinh-anh-2.jpg', 'public/uploads/2017-11-27/1375x670_1511753379_0_can-ho-celadon-city-tan-phu-hinh-anh-2.jpg', 0),
(157, '1511753635_1511494925_z832353058153_642d0a47cb463f9dc81b55f487dd0f7e.jpg', '2017-11-27 03:33:57', 'public/uploads/2017-11-27/1511753635_1511494925_z832353058153_642d0a47cb463f9dc81b55f487dd0f7e.jpg', 1, 1, '1511494925_z832353058153_642d0a47cb463f9dc81b55f487dd0f7e.jpg', 'public/uploads/2017-11-27/125x100_1511753635_1511494925_z832353058153_642d0a47cb463f9dc81b55f487dd0f', 'public/uploads/2017-11-27/768x576_1511753635_1511494925_z832353058153_642d0a47cb463f9dc81b55f487dd0f', 'public/uploads/2017-11-27/1375x670_1511753635_1511494925_z832353058153_642d0a47cb463f9dc81b55f487dd0', 0),
(158, '1511753662_1511494946_z832353069173_0bade05f77315c3673be6f73999cab54.jpg', '2017-11-27 03:34:23', 'public/uploads/2017-11-27/1511753662_1511494946_z832353069173_0bade05f77315c3673be6f73999cab54.jpg', 1, 1, '1511494946_z832353069173_0bade05f77315c3673be6f73999cab54.jpg', 'public/uploads/2017-11-27/125x100_1511753662_1511494946_z832353069173_0bade05f77315c3673be6f73999cab', 'public/uploads/2017-11-27/768x576_1511753662_1511494946_z832353069173_0bade05f77315c3673be6f73999cab', 'public/uploads/2017-11-27/1375x670_1511753662_1511494946_z832353069173_0bade05f77315c3673be6f73999ca', 0),
(159, '1511753679_1511494968_z832353088058_04ab33fc1eccccfbfda79ff0e620d68e.jpg', '2017-11-27 03:34:40', 'public/uploads/2017-11-27/1511753679_1511494968_z832353088058_04ab33fc1eccccfbfda79ff0e620d68e.jpg', 1, 1, '1511494968_z832353088058_04ab33fc1eccccfbfda79ff0e620d68e.jpg', 'public/uploads/2017-11-27/125x100_1511753679_1511494968_z832353088058_04ab33fc1eccccfbfda79ff0e620d6', 'public/uploads/2017-11-27/768x576_1511753679_1511494968_z832353088058_04ab33fc1eccccfbfda79ff0e620d6', 'public/uploads/2017-11-27/1375x670_1511753679_1511494968_z832353088058_04ab33fc1eccccfbfda79ff0e620d', 0),
(160, '1511753709_4.jpg', '2017-11-27 03:35:10', 'public/uploads/2017-11-27/1511753709_4.jpg', 1, 1, '4.jpg', 'public/uploads/2017-11-27/125x100_1511753709_4.jpg', 'public/uploads/2017-11-27/768x576_1511753709_4.jpg', 'public/uploads/2017-11-27/1375x670_1511753709_4.jpg', 0),
(161, '1511753718_5.jpg', '2017-11-27 03:35:19', 'public/uploads/2017-11-27/1511753718_5.jpg', 1, 1, '5.jpg', 'public/uploads/2017-11-27/125x100_1511753718_5.jpg', 'public/uploads/2017-11-27/768x576_1511753718_5.jpg', 'public/uploads/2017-11-27/1375x670_1511753718_5.jpg', 0),
(162, '1511753728_6.jpg', '2017-11-27 03:35:28', 'public/uploads/2017-11-27/1511753728_6.jpg', 1, 1, '6.jpg', 'public/uploads/2017-11-27/125x100_1511753728_6.jpg', 'public/uploads/2017-11-27/768x576_1511753728_6.jpg', 'public/uploads/2017-11-27/1375x670_1511753728_6.jpg', 0),
(163, '1511767571_7.jpg', '2017-11-27 07:26:13', 'public/uploads/2017-11-27/1511767571_7.jpg', 1, 1, '7.jpg', 'public/uploads/2017-11-27/125x100_1511767571_7.jpg', 'public/uploads/2017-11-27/768x576_1511767571_7.jpg', 'public/uploads/2017-11-27/1375x670_1511767571_7.jpg', 0),
(164, '1511767913_tiện_ích.jpg', '2017-11-27 07:31:54', 'public/uploads/2017-11-27/1511767913_tiện_ích.jpg', 1, 1, 'tiện ích.jpg', 'public/uploads/2017-11-27/125x100_1511767913_tiện_ích.jpg', 'public/uploads/2017-11-27/768x576_1511767913_tiện_ích.jpg', 'public/uploads/2017-11-27/1375x670_1511767913_tiện_ích.jpg', 0),
(165, '1511768115_1507263417_Untitled-2.jpg', '2017-11-27 07:35:17', 'public/uploads/2017-11-27/1511768115_1507263417_Untitled-2.jpg', 1, 1, '1507263417_Untitled-2.jpg', 'public/uploads/2017-11-27/125x100_1511768115_1507263417_Untitled-2.jpg', 'public/uploads/2017-11-27/768x576_1511768115_1507263417_Untitled-2.jpg', 'public/uploads/2017-11-27/1375x670_1511768115_1507263417_Untitled-2.jpg', 0),
(166, '1511768244_12.jpg', '2017-11-27 07:37:26', 'public/uploads/2017-11-27/1511768244_12.jpg', 1, 1, '12.jpg', 'public/uploads/2017-11-27/125x100_1511768244_12.jpg', 'public/uploads/2017-11-27/768x576_1511768244_12.jpg', 'public/uploads/2017-11-27/1375x670_1511768244_12.jpg', 0),
(167, '1511768558_bán_đồ.jpg', '2017-11-27 07:42:40', 'public/uploads/2017-11-27/1511768558_bán_đồ.jpg', 1, 1, 'bán đồ.jpg', 'public/uploads/2017-11-27/125x100_1511768558_bán_đồ.jpg', 'public/uploads/2017-11-27/768x576_1511768558_bán_đồ.jpg', 'public/uploads/2017-11-27/1375x670_1511768558_bán_đồ.jpg', 0),
(168, '1511769075_8.jpg', '2017-11-27 07:51:16', 'public/uploads/2017-11-27/1511769075_8.jpg', 1, 1, '8.jpg', 'public/uploads/2017-11-27/125x100_1511769075_8.jpg', 'public/uploads/2017-11-27/768x576_1511769075_8.jpg', 'public/uploads/2017-11-27/1375x670_1511769075_8.jpg', 0),
(169, '1511769381_0_1508392695_0_22.jpg', '2017-11-27 07:56:21', 'public/uploads/2017-11-27/1511769381_0_1508392695_0_22.jpg', 1, 0, '1508392695_0_22.jpg', 'public/uploads/2017-11-27/125x100_1511769381_0_1508392695_0_22.jpg', 'public/uploads/2017-11-27/768x576_1511769381_0_1508392695_0_22.jpg', 'public/uploads/2017-11-27/1375x670_1511769381_0_1508392695_0_22.jpg', 0),
(170, '1511769541_0_tiện_ích.jpg', '2017-11-27 07:59:03', 'public/uploads/2017-11-27/1511769541_0_tiện_ích.jpg', 1, 0, 'tiện ích.jpg', 'public/uploads/2017-11-27/125x100_1511769541_0_tiện_ích.jpg', 'public/uploads/2017-11-27/768x576_1511769541_0_tiện_ích.jpg', 'public/uploads/2017-11-27/1375x670_1511769541_0_tiện_ích.jpg', 0),
(171, '1511769621_0_can-ho-celadon-city-tan-phu-hinh-anh-2.jpg', '2017-11-27 08:00:22', 'public/uploads/2017-11-27/1511769621_0_can-ho-celadon-city-tan-phu-hinh-anh-2.jpg', 1, 0, 'can-ho-celadon-city-tan-phu-hinh-anh-2.jpg', 'public/uploads/2017-11-27/125x100_1511769621_0_can-ho-celadon-city-tan-phu-hinh-anh-2.jpg', 'public/uploads/2017-11-27/768x576_1511769621_0_can-ho-celadon-city-tan-phu-hinh-anh-2.jpg', 'public/uploads/2017-11-27/1375x670_1511769621_0_can-ho-celadon-city-tan-phu-hinh-anh-2.jpg', 0),
(172, '1511769658_0_1508392695_0_22.jpg', '2017-11-27 08:00:59', 'public/uploads/2017-11-27/1511769658_0_1508392695_0_22.jpg', 1, 0, '1508392695_0_22.jpg', 'public/uploads/2017-11-27/125x100_1511769658_0_1508392695_0_22.jpg', 'public/uploads/2017-11-27/768x576_1511769658_0_1508392695_0_22.jpg', 'public/uploads/2017-11-27/1375x670_1511769658_0_1508392695_0_22.jpg', 0),
(173, '1511769676_0_Hình_ảnh_RUBY_nhìn_vào_công_viên.jpg', '2017-11-27 08:01:16', 'public/uploads/2017-11-27/1511769676_0_Hình_ảnh_RUBY_nhìn_vào_công_viên.jpg', 1, 0, 'Hình ảnh RUBY nhìn vào công viên.jpg', 'public/uploads/2017-11-27/125x100_1511769676_0_Hình_ảnh_RUBY_nhìn_vào_công_viên.jpg', 'public/uploads/2017-11-27/768x576_1511769676_0_Hình_ảnh_RUBY_nhìn_vào_công_viên.jpg', 'public/uploads/2017-11-27/1375x670_1511769676_0_Hình_ảnh_RUBY_nhìn_vào_công_viên.jpg', 0),
(174, '1511769721_0_map.gif', '2017-11-27 08:02:02', 'public/uploads/2017-11-27/1511769721_0_map.gif', 1, 0, 'map.gif', 'public/uploads/2017-11-27/125x100_1511769721_0_map.gif', 'public/uploads/2017-11-27/768x576_1511769721_0_map.gif', 'public/uploads/2017-11-27/1375x670_1511769721_0_map.gif', 0),
(175, '1511769743_0_truongquocteachau_inxv.jpg', '2017-11-27 08:02:24', 'public/uploads/2017-11-27/1511769743_0_truongquocteachau_inxv.jpg', 1, 1, 'truongquocteachau_inxv.jpg', 'public/uploads/2017-11-27/125x100_1511769743_0_truongquocteachau_inxv.jpg', 'public/uploads/2017-11-27/768x576_1511769743_0_truongquocteachau_inxv.jpg', 'public/uploads/2017-11-27/1375x670_1511769743_0_truongquocteachau_inxv.jpg', 0),
(176, '1511769755_0_2_ygcx.jpg', '2017-11-27 08:02:35', 'public/uploads/2017-11-27/1511769755_0_2_ygcx.jpg', 1, 1, '2_ygcx.jpg', 'public/uploads/2017-11-27/125x100_1511769755_0_2_ygcx.jpg', 'public/uploads/2017-11-27/768x576_1511769755_0_2_ygcx.jpg', 'public/uploads/2017-11-27/1375x670_1511769755_0_2_ygcx.jpg', 0),
(177, '1511778412_1492960337_du-an-celadon-city-01.jpg', '2017-11-27 10:26:53', 'public/uploads/2017-11-27/1511778412_1492960337_du-an-celadon-city-01.jpg', 1, 1, '1492960337_du-an-celadon-city-01.jpg', 'public/uploads/2017-11-27/125x100_1511778412_1492960337_du-an-celadon-city-01.jpg', 'public/uploads/2017-11-27/768x576_1511778412_1492960337_du-an-celadon-city-01.jpg', 'public/uploads/2017-11-27/1375x670_1511778412_1492960337_du-an-celadon-city-01.jpg', 0),
(178, '1511778496_1507263852_17951645_10211103098272379_8305523166689534331_n.jpg', '2017-11-27 10:28:16', 'public/uploads/2017-11-27/1511778496_1507263852_17951645_10211103098272379_8305523166689534331_n.jpg', 1, 1, '1507263852_17951645_10211103098272379_8305523166689534331_n.jpg', 'public/uploads/2017-11-27/125x100_1511778496_1507263852_17951645_10211103098272379_83055231666895343', 'public/uploads/2017-11-27/768x576_1511778496_1507263852_17951645_10211103098272379_83055231666895343', 'public/uploads/2017-11-27/1375x670_1511778496_1507263852_17951645_10211103098272379_8305523166689534', 0),
(179, '1511778538_1507263879_22196136_926850727452993_8955136447750132908_n.jpg', '2017-11-27 10:28:59', 'public/uploads/2017-11-27/1511778538_1507263879_22196136_926850727452993_8955136447750132908_n.jpg', 1, 1, '1507263879_22196136_926850727452993_8955136447750132908_n.jpg', 'public/uploads/2017-11-27/125x100_1511778538_1507263879_22196136_926850727452993_8955136447750132908', 'public/uploads/2017-11-27/768x576_1511778538_1507263879_22196136_926850727452993_8955136447750132908', 'public/uploads/2017-11-27/1375x670_1511778538_1507263879_22196136_926850727452993_895513644775013290', 0),
(180, '1511778579_1507263891_z787582078561_7b9c360ac61d71964175747a1a55f5e1.jpg', '2017-11-27 10:29:39', 'public/uploads/2017-11-27/1511778579_1507263891_z787582078561_7b9c360ac61d71964175747a1a55f5e1.jpg', 1, 1, '1507263891_z787582078561_7b9c360ac61d71964175747a1a55f5e1.jpg', 'public/uploads/2017-11-27/125x100_1511778579_1507263891_z787582078561_7b9c360ac61d71964175747a1a55f5', 'public/uploads/2017-11-27/768x576_1511778579_1507263891_z787582078561_7b9c360ac61d71964175747a1a55f5', 'public/uploads/2017-11-27/1375x670_1511778579_1507263891_z787582078561_7b9c360ac61d71964175747a1a55f', 0),
(181, '1511778626_1507263901_22154438_926850704119662_347805716984428077_n.jpg', '2017-11-27 10:30:27', 'public/uploads/2017-11-27/1511778626_1507263901_22154438_926850704119662_347805716984428077_n.jpg', 1, 1, '1507263901_22154438_926850704119662_347805716984428077_n.jpg', 'public/uploads/2017-11-27/125x100_1511778626_1507263901_22154438_926850704119662_347805716984428077_', 'public/uploads/2017-11-27/768x576_1511778626_1507263901_22154438_926850704119662_347805716984428077_', 'public/uploads/2017-11-27/1375x670_1511778626_1507263901_22154438_926850704119662_347805716984428077', 0),
(182, '1511778649_1507263924_22196413_926850870786312_329954217283772460_n.jpg', '2017-11-27 10:30:50', 'public/uploads/2017-11-27/1511778649_1507263924_22196413_926850870786312_329954217283772460_n.jpg', 1, 1, '1507263924_22196413_926850870786312_329954217283772460_n.jpg', 'public/uploads/2017-11-27/125x100_1511778649_1507263924_22196413_926850870786312_329954217283772460_', 'public/uploads/2017-11-27/768x576_1511778649_1507263924_22196413_926850870786312_329954217283772460_', 'public/uploads/2017-11-27/1375x670_1511778649_1507263924_22196413_926850870786312_329954217283772460', 0),
(183, '1511778723_1492960288_du-an-celadon-city-03.jpg', '2017-11-27 10:32:04', 'public/uploads/2017-11-27/1511778723_1492960288_du-an-celadon-city-03.jpg', 1, 1, '1492960288_du-an-celadon-city-03.jpg', 'public/uploads/2017-11-27/125x100_1511778723_1492960288_du-an-celadon-city-03.jpg', 'public/uploads/2017-11-27/768x576_1511778723_1492960288_du-an-celadon-city-03.jpg', 'public/uploads/2017-11-27/1375x670_1511778723_1492960288_du-an-celadon-city-03.jpg', 0),
(184, '1511778751_23434748_1681077861924135_9097329065623502778_n.jpg', '2017-11-27 10:32:32', 'public/uploads/2017-11-27/1511778751_23434748_1681077861924135_9097329065623502778_n.jpg', 1, 1, '23434748_1681077861924135_9097329065623502778_n.jpg', 'public/uploads/2017-11-27/125x100_1511778751_23434748_1681077861924135_9097329065623502778_n.jpg', 'public/uploads/2017-11-27/768x576_1511778751_23434748_1681077861924135_9097329065623502778_n.jpg', 'public/uploads/2017-11-27/1375x670_1511778751_23434748_1681077861924135_9097329065623502778_n.jpg', 0),
(185, '1511778792_23435181_1681077871924134_7295130586140092173_n.jpg', '2017-11-27 10:33:13', 'public/uploads/2017-11-27/1511778792_23435181_1681077871924134_7295130586140092173_n.jpg', 1, 1, '23435181_1681077871924134_7295130586140092173_n.jpg', 'public/uploads/2017-11-27/125x100_1511778792_23435181_1681077871924134_7295130586140092173_n.jpg', 'public/uploads/2017-11-27/768x576_1511778792_23435181_1681077871924134_7295130586140092173_n.jpg', 'public/uploads/2017-11-27/1375x670_1511778792_23435181_1681077871924134_7295130586140092173_n.jpg', 0),
(186, '1511833128_1511489876_D.jpg', '2017-11-28 01:38:48', 'public/uploads/2017-11-28/1511833128_1511489876_D.jpg', 1, 1, '1511489876_D.jpg', 'public/uploads/2017-11-28/125x100_1511833128_1511489876_D.jpg', 'public/uploads/2017-11-28/768x576_1511833128_1511489876_D.jpg', 'public/uploads/2017-11-28/1375x670_1511833128_1511489876_D.jpg', 0),
(187, '1511841278_1511489876_D.jpg', '2017-11-28 03:54:39', 'public/uploads/2017-11-28/1511841278_1511489876_D.jpg', 1, 1, '1511489876_D.jpg', 'public/uploads/2017-11-28/125x100_1511841278_1511489876_D.jpg', 'public/uploads/2017-11-28/768x576_1511841278_1511489876_D.jpg', 'public/uploads/2017-11-28/1375x670_1511841278_1511489876_D.jpg', 0),
(188, '1511842125_0_9509_Tan_Binh_District_Hospital.jpg', '2017-11-28 04:08:45', 'public/uploads/2017-11-28/1511842125_0_9509_Tan_Binh_District_Hospital.jpg', 1, 1, '9509_Tan_Binh_District_Hospital.jpg', 'public/uploads/2017-11-28/125x100_1511842125_0_9509_Tan_Binh_District_Hospital.jpg', 'public/uploads/2017-11-28/768x576_1511842125_0_9509_Tan_Binh_District_Hospital.jpg', 'public/uploads/2017-11-28/1375x670_1511842125_0_9509_Tan_Binh_District_Hospital.jpg', 0),
(189, '1511842147_0_aeon-malll.jpg', '2017-11-28 04:09:07', 'public/uploads/2017-11-28/1511842147_0_aeon-malll.jpg', 1, 0, 'aeon-malll.jpg', 'public/uploads/2017-11-28/125x100_1511842147_0_aeon-malll.jpg', 'public/uploads/2017-11-28/768x576_1511842147_0_aeon-malll.jpg', 'public/uploads/2017-11-28/1375x670_1511842147_0_aeon-malll.jpg', 0),
(190, '1511842258_0_1511430403_IMG_0642.JPG', '2017-11-28 04:10:58', 'public/uploads/2017-11-28/1511842258_0_1511430403_IMG_0642.JPG', 1, 0, '1511430403_IMG_0642.JPG', 'public/uploads/2017-11-28/125x100_1511842258_0_1511430403_IMG_0642.JPG', 'public/uploads/2017-11-28/768x576_1511842258_0_1511430403_IMG_0642.JPG', 'public/uploads/2017-11-28/1375x670_1511842258_0_1511430403_IMG_0642.JPG', 0),
(191, '1511842428_0_bv_TP.jpg', '2017-11-28 04:13:48', 'public/uploads/2017-11-28/1511842428_0_bv_TP.jpg', 1, 0, 'bv TP.jpg', 'public/uploads/2017-11-28/125x100_1511842428_0_bv_TP.jpg', 'public/uploads/2017-11-28/768x576_1511842428_0_bv_TP.jpg', 'public/uploads/2017-11-28/1375x670_1511842428_0_bv_TP.jpg', 0),
(192, '1511842729_1493211162_mat-bang-tong-the-celadon-city.jpg', '2017-11-28 04:18:49', 'public/uploads/2017-11-28/1511842729_1493211162_mat-bang-tong-the-celadon-city.jpg', 1, 1, '1493211162_mat-bang-tong-the-celadon-city.jpg', 'public/uploads/2017-11-28/125x100_1511842729_1493211162_mat-bang-tong-the-celadon-city.jpg', 'public/uploads/2017-11-28/768x576_1511842729_1493211162_mat-bang-tong-the-celadon-city.jpg', 'public/uploads/2017-11-28/1375x670_1511842729_1493211162_mat-bang-tong-the-celadon-city.jpg', 0),
(193, '1511842779_1507263321_17861497_406454129722803_1594328877685879565_n.jpg', '2017-11-28 04:19:39', 'public/uploads/2017-11-28/1511842779_1507263321_17861497_406454129722803_1594328877685879565_n.jpg', 1, 1, '1507263321_17861497_406454129722803_1594328877685879565_n.jpg', 'public/uploads/2017-11-28/125x100_1511842779_1507263321_17861497_406454129722803_1594328877685879565', 'public/uploads/2017-11-28/768x576_1511842779_1507263321_17861497_406454129722803_1594328877685879565', 'public/uploads/2017-11-28/1375x670_1511842779_1507263321_17861497_406454129722803_159432887768587956', 0),
(194, '1511842834_1507263212_mat_bang_khu_RuBy1.jpg', '2017-11-28 04:20:36', 'public/uploads/2017-11-28/1511842834_1507263212_mat_bang_khu_RuBy1.jpg', 1, 1, '1507263212_mat_bang_khu_RuBy1.jpg', 'public/uploads/2017-11-28/125x100_1511842834_1507263212_mat_bang_khu_RuBy1.jpg', 'public/uploads/2017-11-28/768x576_1511842834_1507263212_mat_bang_khu_RuBy1.jpg', 'public/uploads/2017-11-28/1375x670_1511842834_1507263212_mat_bang_khu_RuBy1.jpg', 0),
(195, '1511842872_1507263879_22196136_926850727452993_8955136447750132908_n.jpg', '2017-11-28 04:21:12', 'public/uploads/2017-11-28/1511842872_1507263879_22196136_926850727452993_8955136447750132908_n.jpg', 1, 1, '1507263879_22196136_926850727452993_8955136447750132908_n.jpg', 'public/uploads/2017-11-28/125x100_1511842872_1507263879_22196136_926850727452993_8955136447750132908', 'public/uploads/2017-11-28/768x576_1511842872_1507263879_22196136_926850727452993_8955136447750132908', 'public/uploads/2017-11-28/1375x670_1511842872_1507263879_22196136_926850727452993_895513644775013290', 0),
(196, '1511842927_1507263399_12A2.jpg', '2017-11-28 04:22:08', 'public/uploads/2017-11-28/1511842927_1507263399_12A2.jpg', 1, 1, '1507263399_12A2.jpg', 'public/uploads/2017-11-28/125x100_1511842927_1507263399_12A2.jpg', 'public/uploads/2017-11-28/768x576_1511842927_1507263399_12A2.jpg', 'public/uploads/2017-11-28/1375x670_1511842927_1507263399_12A2.jpg', 0),
(197, '1511842972_1507263417_Untitled-2.jpg', '2017-11-28 04:22:54', 'public/uploads/2017-11-28/1511842972_1507263417_Untitled-2.jpg', 1, 1, '1507263417_Untitled-2.jpg', 'public/uploads/2017-11-28/125x100_1511842972_1507263417_Untitled-2.jpg', 'public/uploads/2017-11-28/768x576_1511842972_1507263417_Untitled-2.jpg', 'public/uploads/2017-11-28/1375x670_1511842972_1507263417_Untitled-2.jpg', 0),
(198, '1511843021_1507263489_z695168857038_47e7d912da8900534fc020619073ecfd.jpg', '2017-11-28 04:23:42', 'public/uploads/2017-11-28/1511843021_1507263489_z695168857038_47e7d912da8900534fc020619073ecfd.jpg', 1, 1, '1507263489_z695168857038_47e7d912da8900534fc020619073ecfd.jpg', 'public/uploads/2017-11-28/125x100_1511843021_1507263489_z695168857038_47e7d912da8900534fc020619073ec', 'public/uploads/2017-11-28/768x576_1511843021_1507263489_z695168857038_47e7d912da8900534fc020619073ec', 'public/uploads/2017-11-28/1375x670_1511843021_1507263489_z695168857038_47e7d912da8900534fc020619073e', 0),
(199, '1511843060_1507263500_Untitled-211.jpg', '2017-11-28 04:24:20', 'public/uploads/2017-11-28/1511843060_1507263500_Untitled-211.jpg', 1, 1, '1507263500_Untitled-211.jpg', 'public/uploads/2017-11-28/125x100_1511843060_1507263500_Untitled-211.jpg', 'public/uploads/2017-11-28/768x576_1511843060_1507263500_Untitled-211.jpg', 'public/uploads/2017-11-28/1375x670_1511843060_1507263500_Untitled-211.jpg', 0),
(200, '1511843098_1507263532_Untitled-b.jpg', '2017-11-28 04:25:00', 'public/uploads/2017-11-28/1511843098_1507263532_Untitled-b.jpg', 1, 1, '1507263532_Untitled-b.jpg', 'public/uploads/2017-11-28/125x100_1511843098_1507263532_Untitled-b.jpg', 'public/uploads/2017-11-28/768x576_1511843098_1507263532_Untitled-b.jpg', 'public/uploads/2017-11-28/1375x670_1511843098_1507263532_Untitled-b.jpg', 0),
(201, '1511843131_1507263559_Untitled-1c.jpg', '2017-11-28 04:25:34', 'public/uploads/2017-11-28/1511843131_1507263559_Untitled-1c.jpg', 1, 1, '1507263559_Untitled-1c.jpg', 'public/uploads/2017-11-28/125x100_1511843131_1507263559_Untitled-1c.jpg', 'public/uploads/2017-11-28/768x576_1511843131_1507263559_Untitled-1c.jpg', 'public/uploads/2017-11-28/1375x670_1511843131_1507263559_Untitled-1c.jpg', 0),
(202, '1511843178_1511491212_Đ.jpg', '2017-11-28 04:26:19', 'public/uploads/2017-11-28/1511843178_1511491212_Đ.jpg', 1, 1, '1511491212_Đ.jpg', 'public/uploads/2017-11-28/125x100_1511843178_1511491212_Đ.jpg', 'public/uploads/2017-11-28/768x576_1511843178_1511491212_Đ.jpg', 'public/uploads/2017-11-28/1375x670_1511843178_1511491212_Đ.jpg', 0),
(203, '1511843212_1511491236_z832344119187_d76f3c7a9ea6acb13b3ffed081ca6e78.jpg', '2017-11-28 04:26:53', 'public/uploads/2017-11-28/1511843212_1511491236_z832344119187_d76f3c7a9ea6acb13b3ffed081ca6e78.jpg', 1, 1, '1511491236_z832344119187_d76f3c7a9ea6acb13b3ffed081ca6e78.jpg', 'public/uploads/2017-11-28/125x100_1511843212_1511491236_z832344119187_d76f3c7a9ea6acb13b3ffed081ca6e', 'public/uploads/2017-11-28/768x576_1511843212_1511491236_z832344119187_d76f3c7a9ea6acb13b3ffed081ca6e', 'public/uploads/2017-11-28/1375x670_1511843212_1511491236_z832344119187_d76f3c7a9ea6acb13b3ffed081ca6', 0),
(204, '1511844260_aeon-malll.jpg', '2017-11-28 04:44:20', 'public/uploads/2017-11-28/1511844260_aeon-malll.jpg', 1, 1, 'aeon-malll.jpg', 'public/uploads/2017-11-28/125x100_1511844260_aeon-malll.jpg', 'public/uploads/2017-11-28/768x576_1511844260_aeon-malll.jpg', 'public/uploads/2017-11-28/1375x670_1511844260_aeon-malll.jpg', 0),
(205, '1511844365_1493212340_khu-thuong-mai-celadon-city-02.jpg', '2017-11-28 04:46:05', 'public/uploads/2017-11-28/1511844365_1493212340_khu-thuong-mai-celadon-city-02.jpg', 1, 1, '1493212340_khu-thuong-mai-celadon-city-02.jpg', 'public/uploads/2017-11-28/125x100_1511844365_1493212340_khu-thuong-mai-celadon-city-02.jpg', 'public/uploads/2017-11-28/768x576_1511844365_1493212340_khu-thuong-mai-celadon-city-02.jpg', 'public/uploads/2017-11-28/1375x670_1511844365_1493212340_khu-thuong-mai-celadon-city-02.jpg', 0),
(206, '1511844630_2_35_1335144008_18_2_222d9.jpg', '2017-11-28 04:50:30', 'public/uploads/2017-11-28/1511844630_2_35_1335144008_18_2_222d9.jpg', 1, 1, '2_35_1335144008_18_2_222d9.jpg', 'public/uploads/2017-11-28/125x100_1511844630_2_35_1335144008_18_2_222d9.jpg', 'public/uploads/2017-11-28/768x576_1511844630_2_35_1335144008_18_2_222d9.jpg', 'public/uploads/2017-11-28/1375x670_1511844630_2_35_1335144008_18_2_222d9.jpg', 0),
(207, '1511844770_1493212448_truonghoc.jpg', '2017-11-28 04:52:51', 'public/uploads/2017-11-28/1511844770_1493212448_truonghoc.jpg', 1, 1, '1493212448_truonghoc.jpg', 'public/uploads/2017-11-28/125x100_1511844770_1493212448_truonghoc.jpg', 'public/uploads/2017-11-28/768x576_1511844770_1493212448_truonghoc.jpg', 'public/uploads/2017-11-28/1375x670_1511844770_1493212448_truonghoc.jpg', 0),
(208, '1511844872_1493212539_15268051_1180111828731181_8102260151946448652_n.jpg', '2017-11-28 04:54:33', 'public/uploads/2017-11-28/1511844872_1493212539_15268051_1180111828731181_8102260151946448652_n.jpg', 1, 1, '1493212539_15268051_1180111828731181_8102260151946448652_n.jpg', 'public/uploads/2017-11-28/125x100_1511844872_1493212539_15268051_1180111828731181_810226015194644865', 'public/uploads/2017-11-28/768x576_1511844872_1493212539_15268051_1180111828731181_810226015194644865', 'public/uploads/2017-11-28/1375x670_1511844872_1493212539_15268051_1180111828731181_81022601519464486', 0),
(209, '1511844917_1511430403_IMG_0642.JPG', '2017-11-28 04:55:18', 'public/uploads/2017-11-28/1511844917_1511430403_IMG_0642.JPG', 1, 1, '1511430403_IMG_0642.JPG', 'public/uploads/2017-11-28/125x100_1511844917_1511430403_IMG_0642.JPG', 'public/uploads/2017-11-28/768x576_1511844917_1511430403_IMG_0642.JPG', 'public/uploads/2017-11-28/1375x670_1511844917_1511430403_IMG_0642.JPG', 0),
(210, '1511844945_1511430416_IMG_0644.JPG', '2017-11-28 04:55:46', 'public/uploads/2017-11-28/1511844945_1511430416_IMG_0644.JPG', 1, 1, '1511430416_IMG_0644.JPG', 'public/uploads/2017-11-28/125x100_1511844945_1511430416_IMG_0644.JPG', 'public/uploads/2017-11-28/768x576_1511844945_1511430416_IMG_0644.JPG', 'public/uploads/2017-11-28/1375x670_1511844945_1511430416_IMG_0644.JPG', 0),
(211, '1511844980_1511430426_IMG_0635.jpg', '2017-11-28 04:56:21', 'public/uploads/2017-11-28/1511844980_1511430426_IMG_0635.jpg', 1, 1, '1511430426_IMG_0635.jpg', 'public/uploads/2017-11-28/125x100_1511844980_1511430426_IMG_0635.jpg', 'public/uploads/2017-11-28/768x576_1511844980_1511430426_IMG_0635.jpg', 'public/uploads/2017-11-28/1375x670_1511844980_1511430426_IMG_0635.jpg', 0),
(212, '1511845054_bv_TP.jpg', '2017-11-28 04:57:35', 'public/uploads/2017-11-28/1511845054_bv_TP.jpg', 1, 1, 'bv TP.jpg', 'public/uploads/2017-11-28/125x100_1511845054_bv_TP.jpg', 'public/uploads/2017-11-28/768x576_1511845054_bv_TP.jpg', 'public/uploads/2017-11-28/1375x670_1511845054_bv_TP.jpg', 0),
(213, '1511845970_1508392362_0_22551805_1518552054900893_810293463_n.jpg', '2017-11-28 05:12:51', 'public/uploads/2017-11-28/1511845970_1508392362_0_22551805_1518552054900893_810293463_n.jpg', 1, 1, '1508392362_0_22551805_1518552054900893_810293463_n.jpg', 'public/uploads/2017-11-28/125x100_1511845970_1508392362_0_22551805_1518552054900893_810293463_n.jpg', 'public/uploads/2017-11-28/768x576_1511845970_1508392362_0_22551805_1518552054900893_810293463_n.jpg', 'public/uploads/2017-11-28/1375x670_1511845970_1508392362_0_22551805_1518552054900893_810293463_n.jpg', 0),
(214, '1511846058_1508392368_0_22554356_1518552114900887_1248205743_n.jpg', '2017-11-28 05:14:19', 'public/uploads/2017-11-28/1511846058_1508392368_0_22554356_1518552114900887_1248205743_n.jpg', 1, 1, '1508392368_0_22554356_1518552114900887_1248205743_n.jpg', 'public/uploads/2017-11-28/125x100_1511846058_1508392368_0_22554356_1518552114900887_1248205743_n.jpg', 'public/uploads/2017-11-28/768x576_1511846058_1508392368_0_22554356_1518552114900887_1248205743_n.jpg', 'public/uploads/2017-11-28/1375x670_1511846058_1508392368_0_22554356_1518552114900887_1248205743_n.jp', 0),
(215, '1511846109_1508392382_0_22635095_1518552134900885_1745894488_n.jpg', '2017-11-28 05:15:09', 'public/uploads/2017-11-28/1511846109_1508392382_0_22635095_1518552134900885_1745894488_n.jpg', 1, 1, '1508392382_0_22635095_1518552134900885_1745894488_n.jpg', 'public/uploads/2017-11-28/125x100_1511846109_1508392382_0_22635095_1518552134900885_1745894488_n.jpg', 'public/uploads/2017-11-28/768x576_1511846109_1508392382_0_22635095_1518552134900885_1745894488_n.jpg', 'public/uploads/2017-11-28/1375x670_1511846109_1508392382_0_22635095_1518552134900885_1745894488_n.jp', 0),
(216, '1511846155_1508392387_0_22635420_1518552348234197_336691912_n.jpg', '2017-11-28 05:15:56', 'public/uploads/2017-11-28/1511846155_1508392387_0_22635420_1518552348234197_336691912_n.jpg', 1, 1, '1508392387_0_22635420_1518552348234197_336691912_n.jpg', 'public/uploads/2017-11-28/125x100_1511846155_1508392387_0_22635420_1518552348234197_336691912_n.jpg', 'public/uploads/2017-11-28/768x576_1511846155_1508392387_0_22635420_1518552348234197_336691912_n.jpg', 'public/uploads/2017-11-28/1375x670_1511846155_1508392387_0_22635420_1518552348234197_336691912_n.jpg', 0),
(217, '1511846188_1508392714_0_30.jpg', '2017-11-28 05:16:28', 'public/uploads/2017-11-28/1511846188_1508392714_0_30.jpg', 1, 1, '1508392714_0_30.jpg', 'public/uploads/2017-11-28/125x100_1511846188_1508392714_0_30.jpg', 'public/uploads/2017-11-28/768x576_1511846188_1508392714_0_30.jpg', 'public/uploads/2017-11-28/1375x670_1511846188_1508392714_0_30.jpg', 0),
(218, '1511846215_1508392717_0_27.jpg', '2017-11-28 05:16:55', 'public/uploads/2017-11-28/1511846215_1508392717_0_27.jpg', 1, 1, '1508392717_0_27.jpg', 'public/uploads/2017-11-28/125x100_1511846215_1508392717_0_27.jpg', 'public/uploads/2017-11-28/768x576_1511846215_1508392717_0_27.jpg', 'public/uploads/2017-11-28/1375x670_1511846215_1508392717_0_27.jpg', 0),
(219, '1511846253_1508392390_0_22657120_1518552098234222_415590271_n.jpg', '2017-11-28 05:17:33', 'public/uploads/2017-11-28/1511846253_1508392390_0_22657120_1518552098234222_415590271_n.jpg', 1, 1, '1508392390_0_22657120_1518552098234222_415590271_n.jpg', 'public/uploads/2017-11-28/125x100_1511846253_1508392390_0_22657120_1518552098234222_415590271_n.jpg', 'public/uploads/2017-11-28/768x576_1511846253_1508392390_0_22657120_1518552098234222_415590271_n.jpg', 'public/uploads/2017-11-28/1375x670_1511846253_1508392390_0_22657120_1518552098234222_415590271_n.jpg', 0),
(220, '1511846280_1508392374_0_22627602_1518552564900842_1335593997_n.jpg', '2017-11-28 05:18:00', 'public/uploads/2017-11-28/1511846280_1508392374_0_22627602_1518552564900842_1335593997_n.jpg', 1, 1, '1508392374_0_22627602_1518552564900842_1335593997_n.jpg', 'public/uploads/2017-11-28/125x100_1511846280_1508392374_0_22627602_1518552564900842_1335593997_n.jpg', 'public/uploads/2017-11-28/768x576_1511846280_1508392374_0_22627602_1518552564900842_1335593997_n.jpg', 'public/uploads/2017-11-28/1375x670_1511846280_1508392374_0_22627602_1518552564900842_1335593997_n.jp', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_hinhanh_tin`
--

CREATE TABLE `tbl_hinhanh_tin` (
  `id_hinhand_tin` int(10) UNSIGNED NOT NULL,
  `id_hinhanh` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `id_tin` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `deleted` tinyint(9) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_hinhanh_tintuc`
--

CREATE TABLE `tbl_hinhanh_tintuc` (
  `id_hinhanh_tintuc` int(10) UNSIGNED NOT NULL,
  `id_hinhanh` int(10) UNSIGNED NOT NULL,
  `id_tintuc` int(10) UNSIGNED NOT NULL,
  `deleted` tinyint(9) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_huong`
--

CREATE TABLE `tbl_huong` (
  `id_huong` int(10) UNSIGNED NOT NULL,
  `ten_huong` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `deleted` tinyint(9) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_huong`
--

INSERT INTO `tbl_huong` (`id_huong`, `ten_huong`, `order`, `deleted`) VALUES
(1, 'Đông', 1, 0),
(2, 'Tây', 2, 0),
(3, 'Nam', 3, 0),
(4, 'Bắc', 4, 0),
(5, 'Đông Nam', 5, 0),
(6, 'Đông Bắc', 6, 0),
(7, 'Tây Nam', 7, 0),
(8, 'Tây Bắc', 8, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khuvuc`
--

CREATE TABLE `tbl_khuvuc` (
  `id_khuvuc` int(10) UNSIGNED NOT NULL,
  `ten_khuvuc` varchar(256) DEFAULT NULL,
  `parent` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `deleted` tinyint(9) UNSIGNED NOT NULL DEFAULT '0',
  `order` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_khuvuc`
--

INSERT INTO `tbl_khuvuc` (`id_khuvuc`, `ten_khuvuc`, `parent`, `deleted`, `order`) VALUES
(1, 'Thành phố Hồ Chí Minh', 0, 0, 1),
(2, 'Đồng Nai', 0, 0, 17),
(3, 'Bình Dương', 0, 0, 21),
(4, 'Quận 1', 1, 0, 2),
(5, 'Quận 2', 1, 0, 3),
(6, 'Quận 3', 1, 0, 4),
(7, 'Quận 4', 1, 0, 5),
(8, 'Quận 5', 1, 0, 6),
(9, 'Quận 6', 1, 0, 7),
(10, 'Quận 7', 1, 0, 8),
(11, 'Quận 8', 1, 0, 9),
(12, 'Quận 9', 1, 0, 10),
(13, 'Quận 10', 1, 0, 11),
(14, 'Quận 11', 1, 0, 12),
(15, 'Quận 12', 1, 0, 13),
(16, 'Quận Thủ Đức', 1, 0, 14),
(17, 'Quận Gò Vấp', 1, 0, 15),
(18, 'Quận Bình Thạnh', 1, 0, 16),
(19, 'Tp Biên Hòa', 2, 0, 18),
(20, 'Long Thành', 2, 0, 19),
(21, 'Long Khánh', 2, 0, 20),
(22, 'Thị trấn dĩ an', 3, 0, 22);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lydo`
--

CREATE TABLE `tbl_lydo` (
  `id` int(10) UNSIGNED NOT NULL,
  `tieu_de` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `noi_dung` text CHARACTER SET utf8,
  `id_hinhanh` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `deleted` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_lydo`
--

INSERT INTO `tbl_lydo` (`id`, `tieu_de`, `noi_dung`, `id_hinhanh`, `order`, `deleted`) VALUES
(1, 'Celadon City - Khu rừng nhiệt đới rộng 16ha với 3 hồ sinh thái - Một Đà Lạt thơ mộng tại TPHCM', 'Khu công viên nội có diện tích rộng 16.4 ha và 3 hồ sinh thái, là một trong 3 công viên có quy mô lớn nhất TPHCM bên cạnh Công viên Tao Đàn (20ha) & Công viên Đầm Sen (19ha). Điều đặc biệt là khu công viên này nằm trọn trong khu dân cư Celadon City, là một tiện ích độc đáo và duy nhất, mà chưa khu dân cư nào khác tại TPHCM có được. Mật độ xây dựng toàn khu chỉ 20%.\r\n', 150, 2, 0),
(2, 'Vị trí đắc địa                                               ', 'Celadon City chỉ cách trung tâm thành phố 7 km và cách sân bay Tân Sơn Nhất 3 km. Vị trí rất thuận tiện, kết nối với đại lộ Đông Tây và quốc lộ 1A. Địa chỉ: Đường Bờ Bao Tân Thắng, Phường Sơn Kỳ, Quận Tân Phú, TP.HCM. Khi tuyến tàu điện ngầm số 2 Tham Lương - Chợ Bến Thành hoàn tất, từ Celadon City, bạn chỉ mất 10 phút để đến trung tâm quận 1.', 149, 1, 0),
(3, 'Celadon City Cuộc sống tiện nghi - đầy đủ tiện ích', 'Trung tâm thương mại & giải trí AEON (Nhật Bản) - 3.51 ha - đã khai trương ngày 11/1/2014 - tập trung các thương hiệu thời trang, mỹ phẩm, nhà hàng nổi tiếng, xuất xứ từ Nhật Bản. Trường dạy ngoại ngữ ILA, dạy toán KUMON. Rạp chiếu phim CGV - Megastar. Khu vui chơi dành cho trẻ em: Tini Town...', 155, 5, 0),
(4, 'Thiết kế đẹp, hiện đại. Diện tích căn hộ phù hợp.', 'Cẩn trọng đến từng chi tiết thiết kế, từ cảnh quan đến tiện ích hạ tầng, tối đa hóa sự tiện nghi cho cư dân và mang phong cách hiện đại đến từng căn hộ.', 156, 4, 0),
(5, 'Celadon City  - CĐT Uy Tín', 'Celadon City là thành quả của sự hợp tác chiến lược giữa hai tập đoàn bất động sản uy tín: Gamuda (Malaysia) & Sacomreal (Việt Nam).', 151, 3, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_page` int(11) DEFAULT NULL,
  `text` varchar(20) DEFAULT NULL,
  `id_parent` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `deleted` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `id_page`, `text`, `id_parent`, `order`, `deleted`) VALUES
(10, 2, 'Giới thiệu', 0, 1, 0),
(11, 4, 'Mặt bằng', 0, 2, 0),
(12, 3, 'Tiện ích', 0, 3, 0),
(13, 5, 'Căn hộ mẫu', 0, 4, 0),
(14, 1, 'Thanh toán', 0, 5, 0),
(15, 6, 'Liên hệ', 0, 6, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_page`
--

CREATE TABLE `tbl_page` (
  `id` int(10) UNSIGNED NOT NULL,
  `page` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `module` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ' ',
  `controller` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'index',
  `method` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'index',
  `seo_url` varchar(256) DEFAULT NULL,
  `template` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'template',
  `link` varchar(256) CHARACTER SET utf8 DEFAULT 'index/index',
  `param` varchar(256) DEFAULT NULL,
  `deleted` tinyint(9) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_page`
--

INSERT INTO `tbl_page` (`id`, `page`, `module`, `controller`, `method`, `seo_url`, `template`, `link`, `param`, `deleted`) VALUES
(1, 'Trang chủ', '', 'index', 'index', 'index.html', 'page', 'index/index', '', 0),
(2, 'Đăng nhập', '', 'index', 'login', 'login', 'box', 'index/login', '', 0),
(3, 'Giới Thiệu', '', 'index', 'gioithieu', 'gioi-thieu.html', 'right', 'index/gioithieu', NULL, 1),
(4, 'Tìm kiếm', ' ', 'index', 'index', 'tim-kiem.html', 'right', 'index/searchtin', '', 1),
(5, 'Tin', ' ', 'index', 'index', 'tin-tuc/(:num)-(.*).html', 'right', 'index/tintuc', '$1', 1),
(6, 'Tin Tức', ' ', 'index', 'index', 'tin-tuc.html', 'right', 'index/searchtintuc', '', 1),
(7, 'Đăng kí', ' ', 'index', 'index', 'dang-ki.html', 'box', 'index/signin', '', 0),
(8, 'Tin', ' ', 'index', 'index', 'tin/(:num)-(.*).html', 'right', 'index/tin', '$1', 1),
(9, 'Giới thiệu', ' ', 'index', 'index', 'gioi-thieu.html', 'box', 'index/gioithieu', '', 1),
(10, 'Trang cá nhân', ' ', 'index', 'index', 'admin', 'left', 'member/index', '', 0),
(11, 'Sửa giới thiệu', ' ', 'index', 'index', 'edit-gioi-thieu.html', 'left', 'member/editgioithieu', '', 1),
(12, '', ' ', 'index', 'index', '', 'box', 'index/_remap', '', 1),
(13, 'Đăng xuất', ' ', 'index', 'index', 'logout', 'box', 'index/logout', '', 0),
(14, '', ' ', 'index', 'index', '(:num)-(.*).html', 'box', 'index/page', '$1', 0),
(15, '', ' ', 'index', 'index', '', 'left', 'member/quanlyuser', '', 0),
(16, 'Chat', ' ', 'index', 'index', '', 'left', 'member/adminchat', '', 0),
(17, 'Quản lý contact', ' ', 'index', 'index', 'contact.html', 'left', 'member/quanlymessage', '', 0),
(18, 'Edit Banner', ' ', 'index', 'index', '', 'left', 'member/editbanner', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_page_web`
--

CREATE TABLE `tbl_page_web` (
  `id` int(10) UNSIGNED NOT NULL,
  `alias` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(256) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `deleted` int(10) UNSIGNED DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_page_web`
--

INSERT INTO `tbl_page_web` (`id`, `alias`, `title`, `content`, `deleted`) VALUES
(1, 'thanh-toan', 'Thanh toán', '<p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511841278_1511489876_D.jpg\" style=\"width: 1500px; height: 1268px;\"></p><p><br></p><p style=\"text-align: center;\"><strong><span style=\"color: rgb(97, 189, 109);\">H&Atilde;Y LI&Ecirc;N HỆ NGAY ĐỂ ĐƯỢC TƯ VẤN &nbsp;&amp; SỞ HỮU NGAY NHỮNG CĂN HỘ C&Oacute; VỊ TR&Iacute; ĐẸP NHẤT C&Ugrave;NG VỚI NHỮNG CH&Iacute;NH S&Aacute;CH GI&Aacute; ƯU Đ&Atilde;I NHẤT TỪ CHỦ ĐẦU TƯ.</span></strong></p><p style=\"text-align: center;\"><strong><span style=\"color: rgb(184, 49, 47);\">HOTLINE : 090.331.5757 ( ZALO + VIBER + SMS )</span></strong></p><p style=\"text-align: center;\"><strong><span style=\"color: rgb(97, 189, 109);\">Tr&acirc;n trọng cảm ơn qu&yacute; kh&aacute;ch h&agrave;ng - K&iacute;nh ch&uacute;c qu&yacute; kh&aacute;ch h&agrave;ng sức khỏe &amp; th&agrave;nh c&ocirc;ng !</span></strong></p><p><br></p>', 0),
(2, 'gioi-thieu', 'Giới thiệu', '<p><strong>Celadon City</strong> l&agrave; dự &aacute;n nh&agrave; ở hiện đại tại Th&agrave;nh phố Hồ Ch&iacute; Minh với 5 khu chức năng đ&atilde; được quy hoạch tr&ecirc;n phần diện t&iacute;ch 82 ha với đầy đủ tiện nghi v&agrave; kh&ocirc;ng gian sống h&agrave;i h&ograve;a với thi&ecirc;n nhi&ecirc;n.</p><p><strong>Dự &aacute;n căn hộ Celadon City</strong> nằm cạnh quốc lộ 1A gi&aacute;p với quận B&igrave;nh T&acirc;n n&ecirc;n cư d&acirc;n thuận tiện trong việc đi lại giữa c&aacute;c tỉnh l&acirc;n cận v&agrave; lưu th&ocirc;ng qua c&aacute;c tuyến đường lớn. Đi tuyến T&acirc;n Kỳ T&acirc;n Qu&yacute; đến quận T&acirc;n B&igrave;nh chỉ khoảng 5 ph&uacute;t xe m&aacute;y, tuyến T&acirc;y Thạnh qua Trường Chinh đi quận 12 cũng chưa đến 10 ph&uacute;t.</p><p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-27/1511778412_1492960337_du-an-celadon-city-01.jpg\" style=\"width: 1500px; height: 568px;\"></p><p><strong>Vị tr&iacute; dự &aacute;n Celadon City</strong></p><p>Ph&iacute;a Bắc <strong>Dự &aacute;n Celadon City</strong> gi&aacute;p khu d&acirc;n cư dọc đường L&ecirc; Trọng Tấn, ph&iacute;a Đ&ocirc;ng v&agrave; Nam gi&aacute;p đường Bờ Bao T&acirc;n Thắng, ph&iacute;a T&acirc;y gi&aacute;p đường k&ecirc;nh 19/5. Diện t&iacute;ch to&agrave;n khu l&ecirc;n đến 82 ha với 5 khu chức năng đ&aacute;p ứng nhu cầu sinh hoạt, vui chơi giải tr&iacute;, học tập v&agrave; l&agrave;m việc thoải m&aacute;i.</p><p>Tổng diện t&iacute;ch của <strong>dự &aacute;n Celadon City</strong> l&agrave; hơn 82 ha. Mật độ x&acirc;y dựng to&agrave;n khu ước đạt 20% với c&aacute;c t&ograve;a nh&agrave; c&oacute; số tầng tối đa l&agrave; 12 tầng, đạt 8.577 căn v&agrave; dự kiến đ&oacute;n 30.000 cư d&acirc;n đến ở.</p><p>Đến với <strong>Dự &aacute;n Celadon City</strong>, c&aacute;c gia đ&igrave;nh sẽ được sống trong m&ocirc;i trường đầy đủ tiện &iacute;ch v&agrave; h&agrave;i h&ograve;a với thi&ecirc;n nhi&ecirc;n. Mỗi khu đều trồng c&acirc;y xanh xen kẽ hợp l&yacute;, c&ocirc;ng vi&ecirc;n 16 ha rộng lớn c&oacute; hồ nước, khu BBQ v&agrave; đường đi bộ&hellip; Th&ecirc;m nữa l&agrave; khu vui chơi cho trẻ em, nơi thư gi&atilde;n cho người lớn tuổi, tr&aacute;nh xa ồn &agrave;o của phố phường tấp nập.</p><p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-27/1511778496_1507263852_17951645_10211103098272379_8305523166689534331_n.jpg\" style=\"width: 1500px; height: 768px;\"></p><p><br><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-27/1511778538_1507263879_22196136_926850727452993_8955136447750132908_n.jpg\" style=\"width: 1500px; height: 768px;\"></p><p><br><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-27/1511778579_1507263891_z787582078561_7b9c360ac61d71964175747a1a55f5e1.jpg\" style=\"width: 1500px; height: 768px;\"></p><p><br><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-27/1511778626_1507263901_22154438_926850704119662_347805716984428077_n.jpg\" style=\"width: 1500px; height: 768px;\"></p><p><br><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-27/1511778649_1507263924_22196413_926850870786312_329954217283772460_n.jpg\" style=\"width: 1500px; height: 768px;\"><br>Dự &aacute;n bố tr&iacute; c&aacute;c khu tiện &iacute;ch như ph&ograve;ng tập gym, s&acirc;n b&oacute;ng đ&aacute;, tennis, khu spa, chăm s&oacute;c sắc đẹp, nh&agrave; ăn, ph&ograve;ng y tế. Hệ thống an ninh đảm bảo t&uacute;c trực 24/24. Cư d&acirc;n sử dụng thẻ từ để ra v&agrave;o, gi&uacute;p tr&aacute;nh người lạ tr&agrave; trộn thực hiện &yacute; đồ xấu. Th&ecirc;m đ&oacute; l&agrave; hệ thống camera lắp đặt gi&aacute;m s&aacute;t, c&ugrave;ng bảo vệ chốt ở cửa ch&iacute;nh v&agrave; c&aacute;c khu.</p><h2><strong>Dự &aacute;n Celadon City</strong></h2><p><strong>Celadon City</strong> l&agrave; dự &aacute;n Việt Nam đầu ti&ecirc;n đạt chứng nhận Conquas của Singapore. Đ&acirc;y l&agrave; hệ thống kiểm định chất lượng c&ocirc;ng tr&igrave;nh d&acirc;n cư từ kết cấu, kiến tr&uacute;c cũng như điện v&agrave; cơ học của c&ocirc;ng tr&igrave;nh.</p><p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-27/1511778723_1492960288_du-an-celadon-city-03.jpg\" style=\"width: 1500px; height: 768px;\"></p><p><br><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-27/1511778751_23434748_1681077861924135_9097329065623502778_n.jpg\" style=\"width: 1500px; height: 768px;\"></p><p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-27/1511778792_23435181_1681077871924134_7295130586140092173_n.jpg\" style=\"width: 1500px; height: 768px;\"></p><p><br>Sau khi mở b&aacute;n, <strong>Dự &aacute;n Celadon City</strong> đ&atilde; nhận được sự quan t&acirc;m lớn v&agrave; g&acirc;y sốt thị trường nh&agrave; ở trung v&agrave; cao cấp tại Th&agrave;nh Phố Hồ Ch&iacute; Minh. Đến đ&acirc;y kh&aacute;ch h&agrave;ng sẽ nhận nhiều ưu đ&atilde;i như: bộ tủ bếp cao cấp, 3 năm ph&iacute; quản l&yacute;, 5 năm c&acirc;u lạc bộ thể dục thể thao&hellip; v&agrave; đặc biệt l&agrave; hỗ trợ vay ng&acirc;n h&agrave;ng với l&atilde;i suất ưu đ&atilde;i đặc biệt. Cư d&acirc;n sống tại <strong>Dự &aacute;n Celadon City</strong> c&ograve;n được miễn ph&iacute; c&aacute;c dịch vụ từ Chủ đầu tư như Xe điện đi mua sắm ở khu si&ecirc;u thị Aeon mall. Đến với Celadon City kh&aacute;ch h&agrave;ng sẽ c&oacute; &nbsp;điều kiện ph&aacute;t triển v&agrave; hưởng cuộc sống hiện đại, cao cấp.</p><p style=\"text-align: center;\"><strong><span style=\"color: rgb(97, 189, 109);\">H&Atilde;Y LI&Ecirc;N HỆ NGAY ĐỂ ĐƯỢC TƯ VẤN &nbsp;&amp; SỞ HỮU NGAY NHỮNG CĂN HỘ C&Oacute; VỊ TR&Iacute; ĐẸP NHẤT C&Ugrave;NG VỚI NHỮNG CH&Iacute;NH S&Aacute;CH GI&Aacute; ƯU Đ&Atilde;I NHẤT TỪ CHỦ ĐẦU TƯ.</span></strong></p><p style=\"text-align: center;\"><strong><span style=\"font-size: 24px; color: rgb(184, 49, 47);\">HOTLINE : 090.331.5757 ( ZALO + VIBER + SMS )</span></strong></p><p style=\"text-align: center;\"><strong><span style=\"color: rgb(97, 189, 109);\">Tr&acirc;n trọng cảm ơn qu&yacute; kh&aacute;ch h&agrave;ng - K&iacute;nh ch&uacute;c qu&yacute; kh&aacute;ch h&agrave;ng sức khỏe &amp; th&agrave;nh c&ocirc;ng !</span></strong></p>', 0),
(3, 'tien-ich', 'Tiện ích', '<p style=\"text-align: center;\"><strong><span style=\"font-size: 36px; color: rgb(65, 168, 95);\">KHU THƯƠNG MẠI</span></strong></p><p style=\"text-align: left;\">AEON MALL T&acirc;n Ph&uacute; Celadon l&agrave; khu trung t&acirc;m mua sắm quy m&ocirc; lớn đầu ti&ecirc;n tại TP.Hồ Ch&iacute; Minh thuộc C&ocirc;ng ty TNHH AEON Việt Nam. Đ&acirc;y l&agrave; khu mua sắm thứ 3 của AEON sau Trung Quốc v&agrave; Malaysia, thể hiện được sự đầu tư v&agrave; tiềm năng ph&aacute;t triển tại Celadon City.</p><p style=\"text-align: left;\"><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511844260_aeon-malll.jpg\" style=\"width: 1500px; height: 568px;\"></p><p>Tập đo&agrave;n AEON đ&atilde; đề ra chiến lược bắt đầu tập trung ph&aacute;t triển ở khu vực Ch&acirc;u &Aacute;, trong đ&oacute; c&oacute; Việt Nam. Chẳng thế m&agrave; v&agrave;o năm 2008, AEON đ&atilde; thực hiện cung cấp dịch vụ b&aacute;n h&agrave;ng trả g&oacute;p, đến cuối năm 2011, AEON triển khai cửa h&agrave;ng tiện &iacute;ch Ministop theo h&igrave;nh thức nhượng quyền thương hiệu, đến hay đ&atilde; c&oacute; 17 cửa h&agrave;ng. C&ograve;n trung t&acirc;m mua sắm, từ việc vận h&agrave;nh, quản l&yacute; đều do AEON Mall Việt Nam phụ tr&aacute;ch.</p><p>Với phương ch&acirc;m &ldquo;Kh&aacute;ch h&agrave;ng l&agrave; số 1&rdquo; tập đoạn AEON gia tăng mở c&aacute;c trung t&acirc;m mua sắm lớn, b&aacute;ch h&oacute;a tổng hợp, cửa h&agrave;ng chuy&ecirc;n dụng để mang đến cho kh&aacute;ch h&agrave;ng một cuộc sống tiện nghi, đầy đủ nhất.</p><p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511844365_1493212340_khu-thuong-mai-celadon-city-02.jpg\" style=\"width: 1500px; height: 568px;\"></p><p>Khu trung t&acirc;m mua sắm AEON MALL T&acirc;n Ph&uacute; <strong>Celadon City</strong> c&aacute;ch trung t&acirc;m TP.Hồ Ch&iacute; Minh 9km về ph&iacute;a t&acirc;y. Nếu đi bằng xe m&aacute;y th&igrave; bạn sẽ chỉ mất 15 ph&uacute;t, số lượng khu d&acirc;n cư cao, đạt 1,8 triệu người. B&ecirc;n cạnh đ&oacute;, khu trung t&acirc;m mua sắm n&agrave;y c&ograve;n được đặt ở khu đ&ocirc; thị kiểu mới của Celadon City, bao gồm nhiều khu phức hợp như trường học quốc tế, khu d&acirc;n cư, bệnh viện,&hellip;.</p><p>B&ecirc;n cạnh đ&oacute; phố đi bộ <strong>Celadon City</strong> v&agrave; khu phức hợp mua sắm theo m&ocirc; h&igrave;nh Eco Box, với tổ hợp gồm c&aacute;c cửa h&agrave;ng mua sắm v&agrave; ăn uống được l&agrave;m từ c&aacute;c th&ugrave;ng container cũ được trang tr&iacute; bắt mắt với h&igrave;nh vẽ m&agrave;u cờ c&aacute;c quốc gia nhằm tạo sự th&acirc;n thiện, quan t&acirc;m của giới trẻ v&agrave; khiến nhiều cư d&acirc;n nước ngo&agrave;i đang sinh sống tại đ&acirc;y cảm thấy như đang ở qu&ecirc; nh&agrave;.</p><p style=\"text-align: center;\"><span style=\"font-size: 30px;\"><strong><span style=\"color: rgb(26, 188, 156);\">KHU TRƯỜNG HỌC</span></strong></span></p><p>Được biết đến l&agrave; một khu đ&ocirc; thị kiểu mới, Celadon City tọa lạc ở Quận T&acirc;n Ph&uacute;, TP. HCM tập trung ch&uacute; trọng đến c&aacute;c tiện &iacute;ch cộng đồng, đặc biệt l&agrave; gi&aacute;o dục. Một hệ thống trường chuẩn quốc tế li&ecirc;n cấp xuy&ecirc;n suốt từ mầm mon đến cấp 1, 2, 3, với đầy đủ c&aacute;c trang thiết bị học tập hiện đại nhất, c&aacute;c gi&aacute;o vi&ecirc;n c&oacute; t&acirc;m với nghề, chuy&ecirc;n m&ocirc;n cao, đảm bảo thế hệ tương lai được gi&aacute;o dục tốt nhất.&nbsp;</p><p><img class=\"fr-dib fr-draggable\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511844630_2_35_1335144008_18_2_222d9.jpg\" style=\"width: 1500px; height: 568px;\"></p><p><strong>Khu trường học Celadon City</strong> với thiết kế tinh tế, hiện đại, trường hợp Celadon City đ&aacute;p ứng được tối đa nhu cầu học tập cũng như vui chơi giải tr&iacute; của trẻ nhỏ. S&acirc;n chơi rộng r&atilde;i với nhiều c&acirc;y xanh, tạo kh&ocirc;ng kh&iacute; tho&aacute;ng m&aacute;t, tinh thần học tập tốt nhất cho học sinh tại đ&acirc;y.</p><h2><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511844770_1493212448_truonghoc.jpg\" style=\"width: 1500px; height: 568px;\"></h2><p>Hệ thống b&agrave;i giảng được thiết kế ph&ugrave; hợp với mức độ học tập của học sinh của từng cấp, đ&atilde; qua kiểm duyệt v&agrave; thử nghiệm tại rất nhiều trường nổi tiếng tr&ecirc;n thế giới. Điều n&agrave;y tạo đ&ograve;n bẩy gi&uacute;p c&aacute;c em tiếp cận được nguồn tri thức mới, hội nhập.</p><p>Với sự đầu tư n&agrave;y tại Celadon City, chắc chắn những mầm non trong tương lai sẽ c&oacute; một m&ocirc;i trường ph&aacute;t triển tốt nhất, khiến những bậc phụ huynh an t&acirc;m hơn.</p><p style=\"text-align: center;\"><strong><span style=\"font-size: 30px; color: rgb(26, 188, 156);\">TRUNG T&Acirc;M THỂ THAO</span></strong></p><p>Nhằm đ&aacute;p ứng được nhu cầu vui chơi giải tr&iacute; của khu d&acirc;n cư, Celadon City tọa lạc ở Quận T&acirc;n Ph&uacute;, TP. HCM đầu tư x&acirc;y dựng c&aacute;c ph&ograve;ng tập thể h&igrave;nh chất lượng cao, c&oacute; đầy đủ m&aacute;y tập hiện đại sẽ được đưa v&agrave;o hoạt động từ th&aacute;ng 6 năm 2016. B&ecirc;n cạnh đ&oacute;, s&acirc;n tennis, s&acirc;n b&oacute;ng rổ, b&oacute;ng chuyền, s&acirc;n b&oacute;ng đ&aacute;, s&acirc;n đấu futsal, s&acirc;n cầu l&ocirc;ng trong nh&agrave;, hồ bơi được thiết kế theo độ d&agrave;i ti&ecirc;u chuẩn của Olympic v&agrave; hồ bơi d&agrave;nh ri&ecirc;ng cho trẻ em,&hellip;với tổng diện t&iacute;ch l&ecirc;n tới 5,43 ha.</p><p>Những dụng cụ cũng như s&acirc;n cỏ đều được x&acirc;y dựng theo ti&ecirc;u chuẩn quốc tế, đảm bảo sự bền vững, &nbsp;l&acirc;u d&agrave;i của ch&uacute;ng. Kh&ocirc;ng những thế, hệ thống c&acirc;y xanh phủ khắp, &aacute;nh s&aacute;ng chan h&ograve;a gi&uacute;p bạn giữ được một tinh thần luyện tập thư th&aacute;i nhất, x&oacute;a tan những lo lắng, stress về c&ocirc;ng việc h&agrave;ng ng&agrave;y.</p><p>Chắc chắn khi bạn sinh sống ở Celadon City, bạn sẽ c&oacute; một trải nghiệm th&uacute; vị, một cuộc sống tiện nghi hiện đại, với sức khỏe tốt, kh&ocirc;ng kh&iacute; trong l&agrave;nh. Điều n&agrave;y, &iacute;t địa chỉ c&oacute; được như ở Celadon City, sẽ kh&ocirc;ng l&agrave;m bạn thất vọng.</p><p style=\"text-align: center;\"><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511844872_1493212539_15268051_1180111828731181_8102260151946448652_n.jpg\" style=\"width: 1500px; height: 768px;\"></p><p style=\"text-align: left;\"><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511844917_1511430403_IMG_0642.JPG\" style=\"width: 1500px; height: 768px;\"></p><p><br><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511844945_1511430416_IMG_0644.JPG\" style=\"width: 1500px; height: 768px;\"></p><p><br><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511844980_1511430426_IMG_0635.jpg\" style=\"width: 1500px; height: 768px;\"></p><p style=\"text-align: center;\"><strong><span style=\"font-size: 30px; color: rgb(26, 188, 156);\">KHU BỆNH VIỆN</span></strong></p><p style=\"text-align: center;\"><strong><span style=\"font-size: 30px; color: rgb(26, 188, 156);\"><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511845054_bv_TP.jpg\" style=\"width: 1500px; height: 768px;\"></span></strong></p><p style=\"text-align: left;\"><strong>- BỆNH VIỆN QUẬN T&Acirc;N PH&Uacute; ( c&aacute;ch 3,5 km)</strong><br>Điện thoại &nbsp; &nbsp;<br>&nbsp; + Cấp cứu &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : (028) 386 57 948<br>&nbsp; + vệ tinh 115 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : (028) 54087115<br>&nbsp; + P.KHTH - Tư vấn : (028) 540 88 928 - 0908170405<br>&nbsp; + P.TCHC &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; : (028) 540 88 924<br>&nbsp; + Fax &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;: (028) 540 67581<br>Đường d&acirc;y n&oacute;ng phản &aacute;nh (Hotline) : 096 637 1010</p><p><strong>- Ph&ograve;ng kh&aacute;m đa khoa Cộng H&ograve;a (c&aacute;ch 2,2 km)</strong></p><ul><li>61, L&ecirc; Trọng Tấn, P. Sơn Kỳ, Q. T&acirc;n Ph&uacute;, Tp. Hồ Ch&iacute; Minh</li></ul><section><p style=\"text-align: center;\"><br></p></section><section data-slide=\"7\"><br></section>', 0),
(4, 'mat-bang', 'Mặt bằng', '<p style=\"text-align: center;\"><strong><span style=\"color: rgb(97, 189, 109);\">MẶT BẰNG TỔNG THỂ DỰ &Aacute;N CELADON CITY T&Acirc;N PH&Uacute;</span></strong></p><p style=\"text-align: center;\"><strong><span style=\"color: rgb(97, 189, 109);\"><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511842729_1493211162_mat-bang-tong-the-celadon-city.jpg\" style=\"width: 1500px; height: 568px;\"></span></strong></p><p style=\"text-align: center;\"><strong>Mặt bằng căn hộ Celadon City</strong></p><p>Được thiết kế hiện đại, sang trọng, tinh tế tr&ecirc;n từng đường n&eacute;t từ c&aacute;c hạng mục tiện &iacute;ch đến cảnh quan xung quanh, Celadon City hiện đang l&agrave; khu căn hộ cao cấp tiện nghi bậc nhất hiện nay.</p><p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511842779_1507263321_17861497_406454129722803_1594328877685879565_n.jpg\" style=\"width: 1500px; height: 568px;\"></p><p style=\"text-align: center;\"><em>Mặt bằng dự &aacute;n Celadon City T&acirc;n Ph&uacute;</em></p><p><em><strong>Mặt bằng khu Ruby &ndash; Celadon City:</strong></em></p><p>Ở khu Ruby c&oacute; tổng cộng 1.488 căn hộ, gồm 5 Block A, B, C, D, E. Trong đ&oacute;, Block A, B, C đ&atilde; ho&agrave;n th&agrave;nh v&agrave; b&agrave;n giao sổ hồng cho kh&aacute;ch h&agrave;ng. Nếu bạn c&oacute; nhu cầu mua căn hộ tại khu RUBY th&igrave; c&oacute; thể li&ecirc;n hệ ngay với ch&uacute;ng t&ocirc;i, bạn chỉ cần thanh to&aacute;n trước 15% v&agrave; nhận nh&agrave; ngay, 85% c&ograve;n lại thanh to&aacute;n trong 36 đến 48 th&aacute;ng sau đ&oacute; với mức l&atilde;i suất 0%.</p><p>C&ograve;n 2 Block D, E tại khu Ruby hiện đang trong giai đoạn ho&agrave;n thiện v&agrave; chuẩn bị giao nh&agrave; cho kh&aacute;ch h&agrave;ng.</p><p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511842834_1507263212_mat_bang_khu_RuBy1.jpg\" style=\"width: 1500px; height: 568px;\"></p><p><br><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511842872_1507263879_22196136_926850727452993_8955136447750132908_n.jpg\" style=\"width: 1500px; height: 768px;\"><br><strong><em>CELADON CITY MỞ B&Aacute;N KHU CĂN HỘ CAO CẤP EMERALD PRECINCT :</em></strong></p><p><strong><em><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511842927_1507263399_12A2.jpg\" style=\"width: 1500px; height: 768px;\"></em></strong></p><p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511842972_1507263417_Untitled-2.jpg\" style=\"width: 1500px; height: 968px;\"></p><p style=\"text-align: center;\"><br><strong><em>BLOCK A - EMERALD PRECINCT :</em></strong></p><p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511843021_1507263489_z695168857038_47e7d912da8900534fc020619073ecfd.jpg\" style=\"width: 1500px; height: 768px;\"></p><p><br><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511843060_1507263500_Untitled-211.jpg\" style=\"width: 1500px; height: 768px;\"></p><p style=\"text-align: center;\"><br><strong><em>BLOCK B - EMERALD PRECINCT :</em></strong></p><p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511843098_1507263532_Untitled-b.jpg\" style=\"width: 1500px; height: 1568px;\"></p><p style=\"text-align: center;\"><br><strong><em>BLOCK C - EMERALD PRECINCT :</em></strong></p><p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511843131_1507263559_Untitled-1c.jpg\" style=\"width: 1500px; height: 1568px;\"></p><p style=\"text-align: center;\"><br><strong><em>BLOCK D - EMERALD PRECINCT :</em></strong></p><p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511843178_1511491212_Đ.jpg\" style=\"width: 1500px; height: 1568px;\"></p><p style=\"text-align: center;\"><br><strong><em><strong><em>BLOCK F - EMERALD PRECINCT :</em></strong></em></strong></p><p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511843212_1511491236_z832344119187_d76f3c7a9ea6acb13b3ffed081ca6e78.jpg\" style=\"width: 1500px; height: 1668px;\"></p><p style=\"text-align: center;\"><strong><span style=\"color: rgb(97, 189, 109);\">H&Atilde;Y LI&Ecirc;N HỆ NGAY ĐỂ ĐƯỢC TƯ VẤN &nbsp;&amp; SỞ HỮU NGAY NHỮNG CĂN HỘ C&Oacute; VỊ TR&Iacute; ĐẸP NHẤT C&Ugrave;NG VỚI NHỮNG CH&Iacute;NH S&Aacute;CH GI&Aacute; ƯU Đ&Atilde;I NHẤT TỪ CHỦ ĐẦU TƯ.</span></strong></p><p style=\"text-align: center;\"><strong><span style=\"color: rgb(184, 49, 47);\">HOTLINE : 090.331.5757 ( ZALO + VIBER + SMS )</span></strong></p><p style=\"text-align: center;\"><strong><span style=\"color: rgb(97, 189, 109);\">Tr&acirc;n trọng cảm ơn qu&yacute; kh&aacute;ch h&agrave;ng - K&iacute;nh ch&uacute;c qu&yacute; kh&aacute;ch h&agrave;ng sức khỏe &amp; th&agrave;nh c&ocirc;ng !</span></strong></p>', 0),
(5, 'can-ho-mau', 'Căn hộ mẫu', '<p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511845970_1508392362_0_22551805_1518552054900893_810293463_n.jpg\" style=\"width: 1500px; height: 968px;\"></p><p><br><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511846058_1508392368_0_22554356_1518552114900887_1248205743_n.jpg\" style=\"width: 1500px; height: 968px;\"></p><p><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511846109_1508392382_0_22635095_1518552134900885_1745894488_n.jpg\" style=\"width: 1500px; height: 968px;\"></p><p><br><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511846155_1508392387_0_22635420_1518552348234197_336691912_n.jpg\" style=\"width: 1500px; height: 968px;\"></p><p><br><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511846188_1508392714_0_30.jpg\" style=\"width: 1500px; height: 968px;\"></p><p><br><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511846215_1508392717_0_27.jpg\" style=\"width: 1500px; height: 968px;\"></p><p><br><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511846253_1508392390_0_22657120_1518552098234222_415590271_n.jpg\" style=\"width: 1500px; height: 1268px;\"></p><p><br><img class=\"fr-dib fr-draggable fr-bordered\" src=\"http://canhodxp.com/public/uploads/2017-11-28/1511846280_1508392374_0_22627602_1518552564900842_1335593997_n.jpg\" style=\"width: 1500px; height: 1268px;\"></p>', 0),
(6, 'lien-he', 'Liên hệ', '<div class=\"col-xs-4 row\"><p>Căn hộ <strong>Celadon City</strong> đang được rất nhiều kh&aacute;ch h&agrave;ng quan t&acirc;m, bới những tiện &iacute;ch m&agrave; căn hộ mang lại. Kh&ocirc;ng chỉ thuận lợi về vị tr&iacute; địa l&iacute;, căn hộ <strong>Celadon City</strong> c&ograve;n hội tụ đủ tố chất của một nơi đ&aacute;ng sống bậc nhất th&agrave;nh phố. Một kh&ocirc;ng gian sống xanh sạch, tho&aacute;ng đ&atilde;ng, bầu kh&ocirc;ng kh&iacute; trong l&agrave;nh.</p><p><strong><span style=\"font-size: 18px; color: rgb(65, 168, 95);\">TH&Ocirc;NG TIN LI&Ecirc;N HỆ.</span></strong></p><p>Ph&ograve;ng kinh doanh chủ đầu tư <strong><span>&nbsp;</span><strong>Celadon City.</strong></strong></p><p><strong>Hotline&nbsp;</strong>: <strong><span style=\"color: rgb(184, 49, 47);\">090.331.5757</span></strong> ( ZALO + VIBER + SMS ).</p><p><strong>Địa chỉ:</strong> Số 88, Đường N1, P.Sơn Kỳ, Q.T&acirc;n Ph&uacute;, TP. HCM, Việt Nam.</p><p><strong>Email:</strong> hth2191993@gmail.com</p><p>Cảm ơn Bạn đ&atilde; gh&eacute; thăm trang Web của ch&uacute;ng T&ocirc;i.Ch&uacute;c Bạn một ng&agrave;y l&agrave;m việc vui vẻ .................<span style=\"font-size: 30px;\"><strong><span style=\"color: rgb(65, 168, 95);\">THANKS</span></strong></span>................</p><p><br></p><p><br></p></div><div class=\"mbr-company col-xs-8\"><div class=\"mbr-map\"><iframe src=\"https://www.google.com/maps/embed/v1/place?key=AIzaSyA0Dx_boXQiwvdz8sJHoYeZNVTdoWONYkU&q=place_id:ChIJ97h1XvordTERXrqco_d2EI0\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0\" allowfullscreen=\"\"></iframe></div></div>', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_phaply`
--

CREATE TABLE `tbl_phaply` (
  `id_phaply` int(10) UNSIGNED NOT NULL,
  `ten_phaply` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `deleted` tinyint(9) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_phaply`
--

INSERT INTO `tbl_phaply` (`id_phaply`, `ten_phaply`, `order`, `deleted`) VALUES
(1, 'Sổ đỏ / Sổ hồng', 1, 0),
(2, 'Giấy tờ hợp pháp', 2, 0),
(3, 'Giấy phép Xây dựng', 3, 0),
(4, 'Giấy phép Kinh Doanh', 4, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_hinhanh` int(10) UNSIGNED NOT NULL,
  `animate_1` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `animate_2` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `animate_3` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `animate_4` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `deleted` tinyint(9) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`id`, `id_hinhanh`, `animate_1`, `animate_2`, `animate_3`, `animate_4`, `order`, `deleted`) VALUES
(1, 171, '', '', '', NULL, 2, 0),
(2, 170, '', '', '', NULL, 1, 0),
(3, 66, '', '', '', NULL, 3, 1),
(4, 172, '', '', '', NULL, 3, 0),
(5, 173, '', '', '', NULL, 4, 0),
(6, 174, '', '', '', NULL, 5, 0),
(7, 176, '', '', '', NULL, 6, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tienich`
--

CREATE TABLE `tbl_tienich` (
  `id` int(10) UNSIGNED NOT NULL,
  `tieu_de` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `id_hinhanh` int(11) DEFAULT NULL,
  `deleted` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Đang đổ dữ liệu cho bảng `tbl_tienich`
--

INSERT INTO `tbl_tienich` (`id`, `tieu_de`, `id_hinhanh`, `deleted`) VALUES
(6, 'Công viên nội khu', 169, 0),
(7, 'Trường học', 79, 0),
(8, 'Bệnh viện', 191, 0),
(9, 'Siêu thị', 189, 0),
(10, 'Trung tâm thương mại', 111, 0),
(11, 'Trung tâm thể dục thể thao', 190, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tin`
--

CREATE TABLE `tbl_tin` (
  `id_tin` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `alias` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `content` longtext COLLATE utf8_unicode_ci,
  `date` datetime DEFAULT NULL,
  `id_user` int(10) UNSIGNED DEFAULT NULL,
  `id_khuvuc` int(10) UNSIGNED DEFAULT NULL,
  `diachi` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `dientich` int(10) UNSIGNED DEFAULT NULL,
  `gia` int(10) UNSIGNED DEFAULT NULL,
  `chieudai` int(10) UNSIGNED DEFAULT NULL,
  `chieurong` int(10) UNSIGNED DEFAULT NULL,
  `id_phaply` int(10) UNSIGNED DEFAULT NULL,
  `id_huong` int(10) UNSIGNED DEFAULT NULL,
  `type` int(10) UNSIGNED DEFAULT '1',
  `active` tinyint(9) UNSIGNED NOT NULL DEFAULT '1',
  `deleted` tinyint(9) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_tin`
--

INSERT INTO `tbl_tin` (`id_tin`, `title`, `alias`, `content`, `date`, `id_user`, `id_khuvuc`, `diachi`, `dientich`, `gia`, `chieudai`, `chieurong`, `id_phaply`, `id_huong`, `type`, `active`, `deleted`) VALUES
(8, 'Cần Bán 2 Lô Đất 75m2 P,B,Tr,Tây Và P,B,Tr,Đông Q2', 'can-ban-2-lo-dat-75m2-pbtrtay-va-pbtrdong-q2', '<h2>Dịch vụ x&acirc;y dựng chuy&ecirc;n nghiệp</h2><p><br></p><p><br></p><p><img height=\"350\" src=\"http://catxanh.vn/wp-content/uploads/2016/06/thi-cong-xy-dung-nha-pho-16-570x350.jpg\" alt=\"thi-cong-xy-dung-nha-pho-16\" srcset=\"http://catxanh.vn/wp-content/uploads/2016/06/thi-cong-xy-dung-nha-pho-16-570x350.jpg 570w, <a href=\" class=\"fr-dii fr-draggable\" style=\"width: 570px;\">http://catxanh.vn/wp-content/uploads/2016/06/thi-cong-xy-dung-nha-pho-16-340x210.jpg 340w&quot; sizes=&quot;(max-width: 570px) 100vw, 570px&quot;&gt;</p><p><br></p><p><br></p><p>X&acirc;y dựng thi c&ocirc;ng chắc chắn là m&ocirc;̣t n&ocirc;̃i lo lớn của m&ocirc;̃i chủ đ&acirc;̀u tư, vì đ&ecirc;̉ có m&ocirc;̣t đ&ocirc;̣i ngũ x&acirc;y dựng giàu kinh nghi&ecirc;̣m, và chuy&ecirc;n m&ocirc;n, thi c&ocirc;ng kĩ càng, uy tín và đ&acirc;̀y trách nhi&ecirc;̣m là đi&ecirc;̀u sẽ làm bạn phải suy nghĩ lựa chọn r&acirc;́t khó khăn&hellip;</p><p>vì hi&ecirc;̣n nay r&acirc;́t nhi&ecirc;̀u c&ocirc;ng ty x&acirc;y dựng, và đ&acirc;u đó chúng ta v&acirc;̃n phải nghe v&ecirc;̀ những c&ocirc;ng ty làm ăn kh&ocirc;ng đàng hoàng như cam k&ecirc;́t v&acirc;̣t tư ch&acirc;́t lượng thương hi&ecirc;̣u, nhưng lại pha tr&ocirc;̣n hàng kém ch&acirc;́t lượng, hàng giả, hàng cũ, hàng l&ocirc;̃i, hàng t&ocirc;̀n kho hoặc bớt xén v&acirc;̣t tư &hellip; Hoặc ăn bớt c&ocirc;ng x&acirc;y&hellip;</p><p><img alt=\"thi-cong-xy-dung-nha-pho-16\" height=\"300\" src=\"http://localhost/wordpress/wp-content/uploads/2016/06/thi-cong-xy-dung-nha-pho-16-225x300.jpg\" srcset=\"http://catxanh.vn/wp-content/uploads/2016/06/thi-cong-xy-dung-nha-pho-16-225x300.jpg 225w, <a href=\" class=\"fr-dii fr-draggable\" style=\"width: 225px;\">http://catxanh.vn/wp-content/uploads/2016/06/thi-cong-xy-dung-nha-pho-16.jpg 719w&quot; sizes=&quot;(max-width: 225px) 100vw, 225px&quot;&gt;</p><p>Hi&ecirc;̉u được đi&ecirc;̀u đó, CAT XANH lu&ocirc;n coi từng ng&ocirc;i nhà, từng dự án mà chúng t&ocirc;i thực hi&ecirc;̣n, chúng t&ocirc;i đ&ecirc;̀u coi đó là x&acirc;y cho nhà mình, và tư tưởng này được xuy&ecirc;n su&ocirc;́t tới từng thợ h&ocirc;̀. Và được quản lý bởi h&ecirc;̣ th&ocirc;́ng quản trị chuy&ecirc;n nghi&ecirc;̣p của chúng t&ocirc;i đ&ecirc;̉ làm sao đáp ứng v&ecirc;̀ chuy&ecirc;n m&ocirc;n, chuy&ecirc;n nghi&ecirc;̣p mà đạo đức ngh&ecirc;̀ nghi&ecirc;̣p được ti&ecirc;n quy&ecirc;́t.</p>', '2017-04-03 16:22:30', 1, 5, 'Lô Đất 75m2 P,B,Tr,Tây Và P,B,Tr,Đông Q2', 120, 200, 123, 10, 4, 5, 1, 1, 0),
(9, 'DO LÀM ĂN XA KHÔNG CÓ NGƯỞI QUẢN LÍ NÊN BÁN GẤP 24 PHÒNG TRỌ VÀ 600M2 ĐẤT GẦN TP.HCM', 'do-lam-an-xa-khong-co-nguoi-quan-li-nen-ban-gap-24-phong-tro-va-600m2-dat-gan-tphcm', '<p>Th&ocirc;ng tin l&ocirc; đất 0912.052.896 Gặp LU&Acirc;N 1. ĐẤT NỀN - 600m2 đất mặt tiền đường, gần chợ,gần trường học, nằm trong khu đ&ocirc; thị, th&ocirc;ng d&agrave;i ra khu c&ocirc;ng nghiệp, gần QL 13. tiện ở, kinh doanh, x&acirc;y trọ.. - Diện T&iacute;ch: 600m2 t&aacute;ch l&agrave;m 4 l&ocirc; (5x30) = 150</p>', '2017-04-03 16:22:57', 1, 12, '120/40 Đường Đại Lộ Bình Dương, Phường Phú Lợi, Thị xã Thủ Dầu Một, Bình Dương', 1200, 10000, 12, 100, 1, 2, 1, 1, 0),
(10, 'Bán nhà Quận 10, MT Sư Vạn Hạnh, 12 x 25, 39.9 Tỷ', 'ban-nha-quan-10-mt-su-van-hanh-12-x-25-399-ty', '<p>B&aacute;n Nh&agrave; Mặt Tiền Đường Sư Vạn Hạnh, Phường 12, Quận 10. DT: 12m x 25m, x&acirc;y 6 lầu thang m&aacute;y, để s&acirc;n trước 7m, s&acirc;n sau 1m. Kết cấu: Hầm + 5 lầu, c&oacute; thang m&aacute;y. - Vị tr&iacute; cực kỳ đắc địa, MT đường Sư Vạn Hạnh, P12, Q10 (từ 3/2 đến T&ocirc; Hiến Th&agrave;nh). Gần 3 trư</p>', '2017-04-03 16:23:22', 1, 13, 'Sư Vạn Hạnh', 150, 39000, 12, 25, 3, 3, 1, 1, 0),
(11, 'Bán Gấp 2 Dãy Nhà Trọ Tại Bình Chánh 18 Phòng, Diện Tích 260m2, SHR, Thu Nhập 19tr/Tháng', 'ban-gap-2-day-nha-tro-tai-binh-chanh-18-phong-dien-tich-260m2-shr-thu-nhap-19trthang', '<p>+Nằm ngay cụm KCN T&Acirc;N Đ&Ocirc; + HẠNH PH&Uacute;C. +Diện t&iacute;ch 260m2 ngang 10m d&agrave;i 26m +2 d&atilde;y l&agrave; 17 ph&ograve;ng v&agrave; 1 ki ốt +Diễn t&iacute;ch mỗi ph&ograve;ng trọ 4x3=12m2 v&agrave; c&oacute; g&aacute;c đ&uacute;c, ri&ecirc;ng ki ốt l&agrave; 4x4=16m2 +Nh&agrave; trọ đ&atilde; c&oacute; sổ hồng +Nh&agrave; trọ cho thu&ecirc; 3 năm rồi, c&ocirc;ng nh&acirc;n</p>', '2017-04-03 16:23:47', 1, 12, 'Bình Chánh', 260, 1000, 56, 12, 4, 6, 1, 1, 0),
(12, '62 Đường 743, Phường Bình Thắng, Thị xã Dĩ An, Bình Dương', '62-duong-743-phuong-binh-thang-thi-xa-di-an-binh-duong', '<h3><span data-mce-style=\"color: #0000ff;\"><strong>ĐỪNG CHỜ MUA ĐẤT - H&Atilde;Y MUA ĐẤT ĐỂ CHỜ <span data-mce-style=\"color: #ff0000;\">GI&Aacute;&nbsp;</span></strong></span><span data-mce-style=\"color: #ff0000;\">L&Ecirc;N GẤP 3-10</span><strong><span data', '2016-07-01 14:34:02', 1, 22, '62 Đường 743, Phường Bình Thắng, Thị xã Dĩ An, Bình Dương', 120, 1000, 12, 10, 3, 7, 1, 1, 1),
(13, 'NGÂN HÀNG THANH LÝ NHÀ TRỌ - NHÀ VÀ ĐẤT GẦN TP.HỒ CHÍ MINH GIÁ CHỈ 119 TRIỆU MUA NGAY', 'ngan-hang-thanh-ly-nha-tro---nha-va-dat-gan-tpho-chi-minh-gia-chi-119-trieu-mua-ngay', '<h3><span data-mce-style=\"color: #0000ff;\"><strong>ĐỪNG CHỜ MUA ĐẤT - H&Atilde;Y MUA ĐẤT ĐỂ CHỜ <span data-mce-style=\"color: #ff0000;\">GI&Aacute;&nbsp;</span></strong></span><span data-mce-style=\"color: #ff0000;\">L&Ecirc;N GẤP 3-10</span><strong><span data-mce-style=\"color: #ff0000;\">&nbsp;LẦN B&Aacute;N ĐI</span>.</strong></h3><p><img alt=\"MBB-ngan-hang-quan-doi-binh-duong\" data-mce-=\"\" height=\"255\" src=\"http://bandatbinhduong.net.vn/wp-content/uploads/2016/06/MBB-ngan-hang-quan-doi-binh-duong.jpg\" class=\"fr-dii fr-draggable\" style=\"width: 771px;\"><span data-mce-style=\"color: #000000;\"><a data-mce-=\"\" data-mce-style=\"color: #000000;\" href=\"http://bandatbinhduong.net.vn/ngan-hang-thanh-ly-nha-dat-nha-tro-dat-nen-gan-thanh-pho-ho-chi-minh-voi-gia-rat-re\">Ng&acirc;n h&agrave;ng thanh l&yacute;&nbsp;</a></span><strong><span data-mce-style=\"color: #000000;\"><u>Nh&agrave;</u></span>, <u>Nh&agrave; trọ</u>, <u>Đất nền thổ cư</u></strong> tại c&aacute;c Khu vực : Thuận An, Dĩ An, Thủ Dầu Một, TP mới B&igrave;nh Dương ...v...v... ==&gt;&gt; <strong><span data-mce-style=\"color: #0000ff;\">Tất cả c&aacute;c t&agrave;i sản tr&ecirc;n đều c&oacute; Sổ hồng ri&ecirc;ng v&agrave; thổ cư 100%</span></strong></p><p>- &nbsp;Giấy tờ minh bạch-mua b&aacute;n sang t&ecirc;n tại ph&ograve;ng c&ocirc;ng chứng-sau 10 ng&agrave;y c&oacute; sổ mang t&ecirc;n kh&aacute;ch ngay )</p><p>- &nbsp;Để việc <span data-mce-style=\"color: #000000;\"><a data-mce-=\"\" data-mce-style=\"color: #000000;\" href=\"http://bandatbinhduong.net.vn/ngan-hang-thanh-ly-nha-dat-nha-tro-dat-nen-gan-thanh-pho-ho-chi-minh-voi-gia-rat-re\">ng&acirc;n h&agrave;ng thanh l&yacute; nh&agrave;</a></span> đất được nhanh hơn <span data-mce-style=\"color: #ff0000;\"><strong>Ng&acirc;n H&agrave;ng hỗ trợ vay 80%</strong></span>, l&atilde;i xuất thấp nhất thị trường.</p><h3><u><strong><span data-mce-style=\"color: #0000ff;\">HOTLINE BỘ PHẬN THANH L&Yacute;</span> : <span data-mce-style=\"color: #0000ff;\">0909.345.598 - 0901.379.463</span> ANH HUY&nbsp;</strong></u></h3><p><strong>&nbsp; &nbsp; <em>&nbsp; &nbsp; C&oacute; xe đi tham quan miễn ph&iacute; v&agrave; c&aacute;c giấy tờ đất ngay tại TPHCM</em></strong></p><p><span data-mce-style=\"text-decoration: underline;\"><strong>1&gt; <span data-mce-style=\"color: #000000;\"><a data-mce-=\"\" data-mce-style=\"color: #000000; text-decoration: underline;\" href=\"http://bandatbinhduong.net.vn/ngan-hang-thanh-ly-nha-dat-nha-tro-dat-nen-gan-thanh-pho-ho-chi-minh-voi-gia-rat-re\">NG&Acirc;N H&Agrave;NG THANH L&Yacute; NH&Agrave;</a></span> ĐẤT THỔ CƯ 100%, SỔ HỒNG TỪNG NỀN:</strong></span></p><p><strong>+ DT 5m x 20m = <span data-mce-style=\"color: #0000ff;\">90 triệu</span></strong> ( MT 16m, đối diện Khu CN Việt - Nhật, gần chợ v&agrave; d&acirc;n cư - đ&ocirc;ng đ&uacute;c )</p><p><strong>+ DT 5m x 30m = <span data-mce-style=\"color: #0000ff;\">115 triệu</span></strong> ( MT 16m, c&aacute;ch trường học cấp 1, 2, 3 v&agrave; chợ trong phạm vi 200m )</p><p><strong>+ DT 5m x 30m = <span data-mce-style=\"color: #0000ff;\">235 triệu</span></strong> ( ngay chợ đang hoạt động, c&aacute;ch nh&agrave; m&aacute;y Vinamilk 150m, d&acirc;n cư đ&ocirc;ng tiện x&acirc;y trọ hoặc kinh doanh, bu&ocirc;n b&aacute;n )</p><p><strong>+ DT 6.7m x 30m = <span data-mce-style=\"color: #0000ff;\">420 triệu</span></strong> ( Nằm ngay trung t&acirc;m Thương mại v&agrave; si&ecirc;u thị H&agrave;n Quốc , MT 25m đường nhựa, d&acirc;n cư đ&ocirc;ng, vị tr&iacute; đẹp )</p><p><span data-mce-style=\"text-decoration: underline;\"><strong>2&gt;<span data-mce-style=\"color: #000000;\"><a data-mce-=\"\" data-mce-style=\"color: #000000; text-decoration: underline;\" href=\"http://bandatbinhduong.net.vn/ngan-hang-thanh-ly-nha-dat-nha-tro-dat-nen-gan-thanh-pho-ho-chi-minh-voi-gia-rat-re\">&nbsp;NG&Acirc;N H&Agrave;NG THANH L&Yacute; NH&Agrave;</a></span> TRỌ ĐANG CHO THU&Ecirc; K&Iacute;N, SỔ HỒNG, THỔ CƯ 100%</strong></span></p><p>+ 1 d&atilde;y 8 ph&ograve;ng gồm: 1kiot + 7 Ph&ograve;ng<strong><span data-mce-style=\"color: #0000ff;\">&nbsp;gi&aacute; 450 triệu</span></strong></p><p>+ 2 d&atilde;y 16 ph&ograve;ng gồm: &nbsp;2kiot + 14 ph&ograve;ng <strong><span data-mce-style=\"color: #0000ff;\">gi&aacute; 55o triệu/d&atilde;y.&nbsp;</span></strong><span data-mce-style=\"color: #0000ff;\"><span data-mce-style=\"color: #000000;\">P</span></span>h&ograve;ng g&aacute;c đ&uacute;c, gạch ốp 1m2, tolet ri&ecirc;ng, kệ bếp )</p><p><span data-mce-style=\"text-decoration: underline;\"><span data-mce-style=\"color: #000000;\"><strong>3&gt; <span data-mce-style=\"color: #000000;\"><a data-mce-=\"\" data-mce-style=\"color: #000000; text-decoration: underline;\" href=\"http://bandatbinhduong.net.vn/ngan-hang-thanh-ly-nha-dat-nha-tro-dat-nen-gan-thanh-pho-ho-chi-minh-voi-gia-rat-re\">NG&Acirc;N H&Agrave;NG THANH L&Yacute; NH&Agrave;&nbsp;</a></span>PHỐ MẶT TIỀN ĐƯỜNG 16M - 62M</strong></span></span></p><p>+ Nh&agrave; 1 trệt 3 lầu, 1 s&acirc;n thượng, 7 ph&ograve;ng ngủ: <strong>DT 5m x 30m = <span data-mce-style=\"color: #0000ff;\">880 triệu</span></strong></p><p>+ Nh&agrave; 1 trệt, 1 lửng 2 lầu, 5 ph&ograve;ng ngủ : <strong>DT 5m x 25m = <span data-mce-style=\"color: #0000ff;\">720 triệu</span></strong></p><h3><u><strong><span data-mce-style=\"color: #0000ff;\">GỌI NGAY BỘ PHẬN THANH L&Yacute;</span> : <span data-mce-style=\"color: #0000ff;\">0909.345.598 - 0901.379.463</span> ANH HUY&nbsp;</strong></u></h3><p><strong>&nbsp; &nbsp; <em>&nbsp; &nbsp; C&oacute; xe đi tham quan miễn ph&iacute; v&agrave; c&aacute;c giấy tờ đất ngay tại TPHCM</em></strong></p><p>-------------------------------------------------------------------------------------------------</p><p>+ Tất cả t&agrave;i sản <span data-mce-style=\"color: #000000;\"><a data-mce-=\"\" data-mce-style=\"color: #000000;\" href=\"http://bandatbinhduong.net.vn/ngan-hang-thanh-ly-nha-dat-nha-tro-dat-nen-gan-thanh-pho-ho-chi-minh-voi-gia-rat-re\">ng&acirc;n h&agrave;ng thanh l&yacute; nh&agrave;</a></span> đều nằm ở <strong>MT đường 16 - 62m.</strong></p><p>+ Đất ở Đ&ocirc; Thị, thổ cư, sổ đỏ ri&ecirc;ng c&ocirc;ng chứng. <strong>C&aacute;ch QL13 chỉ từ 200m.</strong></p><p>+ Khu vực d&acirc;n đ&ocirc;ng tiện x&acirc;y cất nh&agrave; ở, nh&agrave; trọ, villa, biệt thự, mở mặt bằng, kinh doanh, cho thu&ecirc;...</p><p><span data-mce-style=\"color: #ff0000;\"><strong>T&Agrave;I SẢN <span data-mce-style=\"color: #000000;\"><a data-mce-=\"\" data-mce-style=\"color: #000000; text-decoration: underline;\" href=\"http://bandatbinhduong.net.vn/ngan-hang-thanh-ly-nha-dat-nha-tro-dat-nen-gan-thanh-pho-ho-chi-minh-voi-gia-rat-re\">&nbsp;NG&Acirc;N H&Agrave;NG THANH L&Yacute; NH&Agrave;</a></span> Đ&Uacute;NG GI&Aacute; NI&Ecirc;M YẾT ( kh&ocirc;ng đấu gi&aacute; t&agrave;i sản )</strong></span></p><p>C&aacute;c đơn vị, hệ thống SGD nhận giao dịch thực hiện đ&uacute;ng theo qui định tr&ecirc;n.<br><span data-mce-style=\"color: #ff0000;\"><strong>[Gi&aacute; b&aacute;n đ&atilde; bao gồm: Chi ph&iacute; sang t&ecirc;n + Bao Giấy Ph&eacute;p, Bản Vẽ X&acirc;y Dưng]</strong></span></p><p><span data-mce-style=\"color: #0000ff;\"><u><strong>HOTLINE BỘ PHẬN THANH L&Yacute; : 0909.345.598 - 0901.379.463 ( ANH HUY )&nbsp;</strong></u><strong>hỗ trợ 24/24</strong></span></p><p><strong>C&oacute; xe đi tham quan miễn ph&iacute; v&agrave; c&aacute;c giấy tờ đất ngay tại TPHCM</strong></p><dl data-mce-style=\"width: 610px;\"><dt><img data-mce-=\"\" height=\"450\" src=\"http://muabannhadat789.com/public/upload/images/225365.jpg\" class=\"fr-dii fr-draggable\" style=\"width: 600px;\"></dt><dd>ĐẤT G&Oacute;C 2 MẶT TIỀN</dd></dl><dl data-mce-style=\"width: 609px;\"><dt><img data-mce-=\"\" height=\"337\" src=\"http://1.bp.blogspot.com/-plYrQ4eWzy4/VkKWpDd1FtI/AAAAAAAABEY/INTYltW_wbg/s1600/L43%2Bm%25E1%25BB%25B9%2Bph%25C6%25B0%25E1%25BB%259Bc%2B3.jpg\" class=\"fr-dii fr-draggable\" style=\"width: 599px;\"></dt><dd>VỊ TR&Iacute; ĐẤT</dd></dl><dl data-mce-style=\"width: 607px;\"><dt><img data-mce-=\"\" height=\"435\" src=\"http://maunhadepmoi.com/wp-content/uploads/2015/08/xay-nha-tro-gia-re-tphcm1-480x350.png\" class=\"fr-dii fr-draggable\" style=\"width: 597px;\"></dt><dd>NH&Agrave; TRỌ ĐANG B&Aacute;N</dd></dl><dl data-mce-style=\"width: 606px;\"><dt><img data-mce-=\"\" height=\"607\" src=\"https://www.chotot.com/kinhnghiem/wp-content/uploads/2015/04/Thue-nha-Ha-Noi-qua-dang-tu-nhung-chieu-tro-1.png\" class=\"fr-dii fr-draggable\" style=\"width: 596px;\"></dt><dd>NỘI THẤT B&Ecirc;N TRONG PH&Ograve;NG TRỌ</dd></dl><dl data-mce-style=\"width: 599px;\"><dt><img data-mce-=\"\" height=\"785\" src=\"http://nhadatdian24h.com.vn/wp-content/uploads/2015/01/IMG_0318.jpg\" class=\"fr-dii fr-draggable\" style=\"width: 589px;\"></dt><dd>NH&Agrave; ĐANG B&Aacute;N</dd></dl><p><img data-mce-=\"\" height=\"784\" src=\"http://imganuncios.mitula.net/chinh_ch_cho_thue_g_p_ha_mt_ng_n_i_b_8m_khu_c_xa_ai_ra_a_p_13_q_6_8570039446926427620.jpg\" class=\"fr-dii fr-draggable\" style=\"width: 588px;\"></p><dl data-mce-style=\"width: 598px;\"><dt><img alt=\"tien ich dich vu trong tpm binh duong\" data-mce-=\"\" height=\"588\" src=\"http://bandatbinhduong.net.vn/wp-content/uploads/2015/09/tien-ich-dich-vu-trong-tpm-binh-duong.jpg\" class=\"fr-dii fr-draggable\" style=\"width: 588px;\"></dt><dd>TIỆN &Iacute;CH XUNG QUANH V&Agrave; SỔ ĐẤT</dd></dl><p><span data-mce-style=\"color: #0000ff;\"><u><strong>HOTLINE BỘ PHẬN THANH L&Yacute; : 0909.345.598 - 0901.379.463 ( ANH HUY )&nbsp;</strong></u><strong>hỗ trợ 24/24</strong></span></p><p><strong>C&oacute; xe đi tham quan miễn ph&iacute; v&agrave; c&aacute;c giấy tờ đất ngay tại TPHCM</strong></p>', '2017-04-03 16:24:59', 1, 22, '62 Đường 743, Phường Bình Thắng, Thị xã Dĩ An, Bình Dương', 120, 1000, 12, 10, 2, 6, 1, 1, 0),
(14, 'BECAMEX tung ra sản phẩm ngay KCN VN-SINGAPORE,VSIP 1 2,KHU THƯƠNG MẠI, BIG C chỉ 279TR/NỀ', 'becamex-tung-ra-san-pham-ngay-kcn-vn-singaporevsip-1-2khu-thuong-mai-big-c-chi-279trne', '<p><br></p><p><span><span><strong><b><span><span><span><span><b><i><b><i><b><i><b><b><b><b><b><span><span><span><span><b><span><span><span><span><b><span><span><span><span><b><b><i><b><i><b><b><b><i><b><b><b><b><b><i>Th&ocirc;ng Tin Sản Phẩm &amp; h&igrave;nh ảnh đất thực tế</i></b></b></b></b></b></i></b></b></b></i></b></i></b></b></span></span></span></span></b></span></span></span></span></b></span></span></span></span></b></b></b></b></b></i></b></i></b></i></b></span></span></span></span></b></strong></span></span></p><p><span><span><span><span><span><strong><span><span><span><span><b><span><span><span><span><b><b><i><b><i><b><b><b><b><i><b><b>1/ DT: 120m2(4X30) gi&aacute; 125tr, MT 16m (c&ograve;n 2 nền)</b></b></i></b></b></b></b></i></b></i></b></b></span></span></span></span></b></span></span></span></span></strong></span><br><span><strong><b><i><b><i><b><b><b><i><b><b><b>2/ DT: 150m2(5X30) gi&aacute; 168-235tr, MT 25m (c&ograve;n 3 nền)</b></b></b></i></b></b></b></i></b></i></b></strong></span><br><span><strong><b><i><b><i><b><i><b><b><b><b><b>3/ DT: 150m2(5X30) gi&aacute; 300tr, MT nhựa 25m (c&ograve;n 4 nền)</b></b></b></b></b></i></b></i></b></i></b></strong></span></span><br><strong><b><i><b><i><b><i><b><b><b><b><b><img alt=\"\" border=\"0\" height=\"223\" src=\"http://kinhdoanhnhadat24h.com/wp-content/uploads/2016/04/imag4823-1452844885-1024x574.jpg\" class=\"fr-dii fr-draggable\" style=\"width: 400px;\"></b></b></b></b></b></i></b></i></b></i></b></strong><br><span><span><strong><b><i><b><i><b><i><b><b><b><b><b>4/ DT: 300m2(10x30) gi&aacute; 310tr, MT nhựa 18m (c&ograve;n 2 nền)</b></b></b></b></b></i></b></i></b></i></b></strong></span><br><span><strong><b><i><b><i><b><i><b><b><b><b><b><b><b>5/ DT: 600m2 (20x30) gi&aacute; 725tr, L&ocirc; Gốc 2MT 25-30m</b></b></b></b></b></b></b></i></b></i></b></i></b></strong></span><br><span><strong><b><i><b><i><b><i><b><b><b><b><b><b>6/ DT: 900m2 (30x30) gi&aacute; 1,330Tỷ, MT nhựa 35m th&ocirc;ng thẳng qua cụm KCN ( đ&atilde; t&aacute;ch 3 sổ ri&ecirc;ng ) th&iacute;ch hợp để x&acirc;y dựng nh&agrave; kho/xưỡng.</b></b></b></b></b></b></i></b></i></b></i></b></strong></span><br><br><span><strong><b><i><b><i><i><b><b><b><b><b><b><b>7/ Nh&agrave; trọ 24p+2Kiot c&oacute; g&aacute;c đ&uacute;c, nh&agrave; vệ sinh+điện nước ri&ecirc;ng trong từng ph&ograve;ng, gạch ốp tường cao 1m3, giữa lối đi 2m chỉ 580tr/d&atilde;y&nbsp;</b></b></b></b></b></b></b></i></i></b></i></b></strong></span></span><br><strong><b><i><b><i><i><b><b><b><b><b><b><b><img alt=\"\" border=\"0\" height=\"299\" src=\"https://lh3.googleusercontent.com/-nFhfooE34Qw/VQKNB15DzkI/AAAAAAAAAtw/ay17VfJ3kQs/w769-h577-no/CAM01723%2B%28FILEminimizer%29.jpg\" class=\"fr-dii fr-draggable\" style=\"width: 400px;\"></b></b></b></b></b></b></b></i></i></b></i></b></strong><br><span><strong><b><i><b><i><i><b><b><b><b><b><b><b><b>HOTLINE MS TR&Uacute;C - 0906.848.766</b></b></b></b></b></b></b></b></i></i></b></i></b></strong></span><br><strong><b><b><b><b><i><b><b><i><b><b><i><b><b><i><img alt=\"\" border=\"0\" height=\"224\" src=\"http://images.tienphong.vn/Uploaded/thien/2014_06_19/9a_EXVA.jpg.ashx?width=600\" class=\"fr-dii fr-draggable\" style=\"width: 400px;\"></i></b></b></i></b></b></i></b></b></i></b></b></b></b></strong><br><br><span><strong><b><b><b><b><i><b><b><i><b><b><i><b><b><i><span><span><span><span><span><span><b><span>ĐẶC BIỆT HƠN:</span></b></span></span></span></span></span></span><br><span><span><span>- <span>Thổ cư 100%</span></span></span></span><br><span><span><span><span>- K&yacute; hợp đồng giao nền x&acirc;y dựng ngay. Kiểu mẫu x&acirc;y dựng tự do.</span></span></span><br><span><span><span>- Miễn ph&iacute; GPXD v&agrave; bản vẽ thiết kế nh&agrave; cho 06 kh&aacute;ch h&agrave;ng đầu ti&ecirc;n.</span></span></span><br><span><span><span>- Ph&aacute;p l&yacute; r&otilde; r&agrave;ng v&agrave; minh bạch, thanh to&aacute;n linh hoạt th&agrave;nh nhiều đợt, k&yacute; hợp đồng trực tiếp chủ đầu tư v&agrave; miễn ph&iacute; c&ocirc;ng chứng bao sang t&ecirc;N</span></span></span></span></i></b></b></i></b></b></i></b></b></i></b></b></b></b></strong></span><br><strong><b><b><b><b><b><i><b><i><b><b><i><b><b><i><img alt=\"\" border=\"0\" height=\"200\" src=\"https://lh4.googleusercontent.com/-81pPM_hBEkw/VL9ZCUhXY6I/AAAAAAAAAqI/FvU8dMLJFsc/w1044-h522-no/DSC_8500.jpg\" class=\"fr-dii fr-draggable\" style=\"width: 400px;\"></i></b></b></i></b></b></i></b></i></b></b></b></b></b></strong><br><span><strong>LI&Ecirc;N HỆ C.TR&Uacute;C 0906.848.766 - 0168.6224.683 ĐỂ ĐƯỢC HỖ TRỢ TẬN T&Igrave;NH!</strong></span></span></span></span><span><span>- Tặng ngay 01-05 chỉ v&agrave;ng SJC cho kh&aacute;ch h&agrave;ng giao dịch th&agrave;nh c&ocirc;ng.</span></span></p><p><br></p><p><span><span>- Tặng ngay sổ tiết kiệm 5-20 triệu cho kh&aacute;ch h&agrave;ng giao dịch th&agrave;nh c&ocirc;ng</span></span></p><p><br></p><p><span><span>- Chương tr&igrave;nh b&oacute;c thăm tr&uacute;ng thưởng hấp dẫn với tổng gi&aacute; trị giải thưởng l&ecirc;n tới 5 tỷ đồng: 10 xe hơi, 100 Vespa, 1000 chỉ v&agrave;ng, g&oacute;i nội thất cao cấp.</span></span></p><p><br></p><p><span><span><strong>LI&Ecirc;N HỆ C.TR&Uacute;C 0906.848.766 ĐỂ ĐƯỢC TƯ VẤN HỖ TRỢ NHIỆT T&Igrave;NH!</strong></span></span></p>', '2016-07-02 14:14:10', 3, 22, 'Đường 22 tháng 12, Phường An Thạnh, Thị xã Thuận An, Bình Dương', 120, 1000, 12, 12, 2, 6, 1, 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_tintuc`
--

CREATE TABLE `tbl_tintuc` (
  `id_tintuc` int(10) UNSIGNED NOT NULL,
  `title` text,
  `content` longtext,
  `date` datetime DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `active` tinyint(9) UNSIGNED NOT NULL DEFAULT '1',
  `deleted` tinyint(9) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_tintuc`
--

INSERT INTO `tbl_tintuc` (`id_tintuc`, `title`, `content`, `date`, `id_user`, `active`, `deleted`) VALUES
(1, 'Doanh nghiệp vàng muốn bỏ giấy phép con', '<p>Ng&agrave;y 30-6, trao đổi với ph&oacute;ng vi&ecirc;n B&aacute;o Người Lao Động, &ocirc;ng Nguyễn Th&agrave;nh Long, Chủ tịch Hiệp hội Kinh doanh v&agrave;ng Việt Nam (VGTA), cho biết thời gian qua, c&aacute;c giải ph&aacute;p b&igrave;nh ổn thị trường v&agrave;ng, chống v&agrave;ng h&oacute;a nền <a href=\"http://www.24h.com.vn/tai-chinh-bat-dong-san-c161.html\" title=\"kinh tế\">kinh tế</a> được <a href=\"http://www.24h.com.vn/ngan-hang-c587.html\" title=\"Ngân hàng\">Ng&acirc;n h&agrave;ng</a> (NH) Nh&agrave; nước &aacute;p dụng đ&atilde; đem lại hiệu quả. Tuy nhi&ecirc;n, qua giai đoạn mới, thị trường v&agrave;ng - nhất l&agrave; v&agrave;ng trang sức mỹ nghệ - phải theo cơ chế thị trường chứ kh&ocirc;ng thể siết chặt m&atilde;i. Hiện nay, c&oacute; qu&aacute; nhiều giấy ph&eacute;p con &aacute;p dụng đối với doanh nghiệp (DN) sản xuất v&agrave;ng trang sức mỹ nghệ.</p><p><strong>Bị &ldquo;tr&oacute;i tay&rdquo;</strong></p><p>Trước đ&oacute;, VGTA đ&atilde; gửi văn bản kiến nghị tới Thủ tướng Ch&iacute;nh phủ về việc b&atilde;i bỏ c&aacute;c giấy ph&eacute;p con trong lĩnh vực v&agrave;ng nhằm th&aacute;o gỡ kh&oacute; khăn cho DN, r&agrave; so&aacute;t c&aacute;c quy định điều kiện kinh doanh theo Luật DN 2014, Luật Đầu tư 2014 v&agrave; chỉ đạo của Thủ tướng tại Nghị quyết 35/NQ-CP.</p><p align=\"center\"><img alt=\"Doanh nghiệp vàng muốn bỏ giấy phép con - 1\" src=\"http://image.24h.com.vn/upload/3-2016/images/2016-07-01/1467334605-doanh-nghiep-vang-muon-bo-giay-phep-con.jpg\" class=\"fr-dii fr-draggable\" style=\"width: 500px;\"></p><p>Doanh nghiệp kiến nghị Ch&iacute;nh phủ b&atilde;i bỏ c&aacute;c điều kiện bất hợp l&yacute; trong lĩnh vực kinh doanh v&agrave;ng trang sức Ảnh: TẤN THẠNH</p><p>Tại văn bản n&agrave;y, VGTA cho rằng Th&ocirc;ng tư 16/2012 v&agrave; Th&ocirc;ng tư 38/2016 của NH Nh&agrave; nước ban h&agrave;nh nhằm triển khai Nghị định 24/2012 của Ch&iacute;nh phủ về quản l&yacute; thị trường v&agrave;ng, trong đ&oacute; y&ecirc;u cầu điều kiện cấp giấy ph&eacute;p kinh doanh mua b&aacute;n v&agrave;ng miếng, DN phải đăng k&yacute; địa điểm chi nh&aacute;nh, địa điểm kinh doanh chờ NH Nh&agrave; nước xem x&eacute;t. Đồng thời, mỗi lần điều chỉnh địa điểm lại phải xin ph&eacute;p NH Nh&agrave; nước, trong khi c&aacute;c ti&ecirc;u ch&iacute; xem x&eacute;t kh&ocirc;ng được c&ocirc;ng khai, kh&ocirc;ng đ&uacute;ng thời gian giải quyết hồ sơ theo thủ tục h&agrave;nh ch&iacute;nh, g&acirc;y kh&oacute; cho DN.</p><p>Theo nhiều DN kinh doanh v&agrave;ng, khi DN được cấp giấy ph&eacute;p kinh doanh mua b&aacute;n v&agrave;ng miếng đồng nghĩa tất cả chi nh&aacute;nh, địa điểm kinh doanh trực thuộc kh&ocirc;ng phải xin ph&eacute;p m&agrave; chỉ cần l&agrave;m th&ocirc;ng b&aacute;o tăng mạng lưới để tr&aacute;nh &ldquo;đẻ&rdquo; th&ecirc;m giấy ph&eacute;p con. &ldquo;Từng địa chỉ mua b&aacute;n v&agrave;ng miếng cũng phải đăng k&yacute; với NH Nh&agrave; nước g&acirc;y tốn k&eacute;m rất nhiều chi ph&iacute; v&agrave; thời gian cho DN, trong khi kinh doanh thuận lợi hay ế ẩm lại do thị trường quyết định&rdquo; - &ocirc;ng Long nh&igrave;n nhận.</p><p>Trong điều kiện cấp ph&eacute;p kinh doanh v&agrave;ng miếng, VGTA cho rằng Nghị định 24/2012 đ&atilde; y&ecirc;u cầu giấy x&aacute;c nhận nộp thuế của cơ quan thuế nhưng Th&ocirc;ng tư 38/2016 vẫn y&ecirc;u cầu phải c&oacute; th&ecirc;m &ldquo;b&aacute;o c&aacute;o <a href=\"http://www.24h.com.vn/tai-chinh-bat-dong-san-c161.html\" title=\"tài chính\">t&agrave;i ch&iacute;nh</a> đ&atilde; được kiểm to&aacute;n của 2 năm liền kề trước đ&oacute;&rdquo; l&agrave; ph&aacute;t sinh th&ecirc;m thủ tục. Với hồ sơ cấp giấy ph&eacute;p sản xuất v&agrave;ng trang sức mỹ nghệ, Th&ocirc;ng tư 38/2016 cũng y&ecirc;u cầu th&ecirc;m &ldquo;bản kế hoạch dự kiến thực hiện quy định của ph&aacute;p luật về quản l&yacute; chất lượng v&agrave;ng trang sức mỹ nghệ&rdquo; vốn thuộc thẩm quyền của Bộ Khoa học v&agrave; C&ocirc;ng nghệ, theo VGTA l&agrave; kh&ocirc;ng ph&ugrave; hợp. C&aacute;c ti&ecirc;u ch&iacute; x&eacute;t duyệt hồ sơ cũng kh&ocirc;ng r&otilde; r&agrave;ng thế n&agrave;o l&agrave; đạt, dễ ph&aacute;t sinh nguy cơ thiếu minh bạch đối với DN.</p><p><strong>Muốn được b&igrave;nh đẳng</strong></p><p>Một trong những kiến nghị của VGTA tới Thủ tướng Ch&iacute;nh phủ l&agrave; vốn t&iacute;n dụng cho DN v&agrave;ng trang sức mỹ nghệ. &Ocirc;ng Nguyễn Th&agrave;nh Long cho rằng v&agrave;ng trang sức mỹ nghệ l&agrave; h&agrave;ng h&oacute;a th&ocirc;ng thường, kh&ocirc;ng thuộc đối tượng bị hạn chế kinh doanh hay kinh doanh c&oacute; điều kiện theo quy định hiện h&agrave;nh. Nếu NH Nh&agrave; nước hạn chế quyền vay vốn t&iacute;n dụng của c&aacute;c DN sản xuất, kinh doanh v&agrave;ng trang sức mỹ nghệ sẽ tr&aacute;i với tinh thần Nghị quyết 35/NĐ-CP về hỗ trợ v&agrave; ph&aacute;t triển DN.</p><p>Trước đ&oacute;, theo quy định trong c&aacute;c th&ocirc;ng tư của NH Nh&agrave; nước, DN sản xuất v&agrave;ng trang sức mỹ nghệ chỉ được vay vốn t&iacute;n dụng khi c&oacute; sự chấp thuận của thống đốc. &ldquo;Hơn 4 năm qua, chưa DN n&agrave;o được vay vốn từ NH thương mại để sản xuất, kinh doanh v&agrave;ng trang sức mỹ nghệ. Cơ quan quản l&yacute; cũng chưa c&oacute; hướng dẫn cụ thể về nguy&ecirc;n tắc, điều kiện v&agrave; thủ tục tr&igrave;nh thống đốc xin vay vốn&rdquo; - &ocirc;ng Long n&ecirc;u r&otilde;.</p><p>Theo Luật Đầu tư 2014, hoạt động vay vốn t&iacute;n dụng phục vụ sản xuất, kinh doanh v&agrave;ng trang sức mỹ nghệ kh&ocirc;ng thuộc ng&agrave;nh nghề kinh doanh c&oacute; điều kiện. Ngo&agrave;i ra, Thủ tướng cũng đ&atilde; chỉ đạo nếu những th&ocirc;ng tư kh&ocirc;ng được n&acirc;ng cấp l&ecirc;n th&agrave;nh nghị định th&igrave; sau ng&agrave;y 1-7 sẽ hết hiệu lực thi h&agrave;nh.</p><p>&ldquo;Một số ng&agrave;nh nghề kinh doanh kh&aacute;c c&oacute; rủi ro cũng được tiếp cận vốn t&iacute;n dụng, trong khi DN v&agrave;ng trang sức kh&ocirc;ng được vay vốn l&agrave; chưa c&ocirc;ng bằng. Khi vay vốn, c&aacute;c NH thương mại sẽ quyết định hiệu quả hoạt động của DN v&agrave;ng trang sức để cấp t&iacute;n dụng n&ecirc;n hiệp hội mong muốn DN trong ng&agrave;nh được &ldquo;trả về thị trường&rdquo; - &ocirc;ng Long kiến nghị.</p><p>Chủ tịch Hội Mỹ nghệ kim ho&agrave;n TP HCM Nguyễn Văn Dưng nh&igrave;n nhận hoạt động sản xuất, kinh doanh v&agrave;ng trang sức mỹ nghệ của c&aacute;c DN thời gian qua gặp rất nhiều kh&oacute; khăn v&agrave; bị tr&oacute;i buộc bằng những cơ chế, ch&iacute;nh s&aacute;ch kh&ocirc;ng thuận lợi như những ng&agrave;nh kh&aacute;c. Đ&acirc;y chỉ l&agrave; một ng&agrave;nh giống như kinh doanh c&aacute;c loại h&agrave;ng h&oacute;a th&ocirc;ng thường nhưng DN lại kh&ocirc;ng được tạo điều kiện ph&aacute;t triển tương xứng.</p><p>Ngay việc nhập khẩu v&agrave;ng nguy&ecirc;n liệu để sản xuất v&agrave;ng trang sức mỹ nghệ, theo c&aacute;c DN v&agrave;ng, nhu cầu của thị trường Việt Nam mỗi năm khoảng 15-20 tấn kh&ocirc;ng phải qu&aacute; lớn để g&acirc;y x&aacute;o trộn nền kinh tế. Tuy nhi&ecirc;n, suốt 4 năm qua, do kh&ocirc;ng được cấp ph&eacute;p nhập khẩu v&agrave;ng để sản xuất v&agrave;ng trang sức mỹ nghệ đ&atilde; khiến cả ng&agrave;nh v&agrave;ng ở v&agrave;o thế &ldquo;ch&ocirc;ng ch&ecirc;nh&rdquo;, phải mua nguy&ecirc;n liệu tr&ocirc;i nổi, thậm ch&iacute; cả nguy&ecirc;n liệu v&agrave;ng kh&ocirc;ng hợp ph&aacute;p để sản xuất.</p><p>Một chuy&ecirc;n gia trong lĩnh vực v&agrave;ng cho rằng quy m&ocirc; thị trường v&agrave;ng trang sức của Việt Nam rất lớn nhưng thiếu m&ocirc;i trường kinh doanh thuận lợi để c&aacute;c DN ph&aacute;t triển tương xứng. Trong khi đ&oacute;, trang sức Việt đang phải cạnh tranh gay gắt tr&ecirc;n s&acirc;n nh&agrave; v&agrave; khi hội nhập với c&aacute;c hiệp định thương mại, trang sức ngoại tr&agrave;n v&agrave;o.</p><p>&ldquo;Nếu kh&ocirc;ng c&oacute; chiến lược ph&aacute;t triển ng&agrave;nh trang sức theo hướng n&acirc;ng cao năng lực cạnh tranh cho c&aacute;c DN vừa v&agrave; nhỏ, thị trường v&agrave;ng nữ trang Việt Nam trong tương lai c&oacute; nguy cơ phải &ldquo;nhường s&acirc;n&rdquo; cho h&agrave;ng ngoại&rdquo; - vị n&agrave;y lo ngại.</p><p>Chiều 30-6, một l&atilde;nh đạo NH Nh&agrave; nước cho biết đ&atilde; nhận được văn bản kiến nghị của VGTA v&agrave; đ&atilde; chuyển cho c&aacute;c vụ, cục chức năng để r&agrave; so&aacute;t c&aacute;c quy định theo đ&uacute;ng luật, tr&igrave;nh Thống đốc v&agrave; Thủ tướng xem x&eacute;t. Theo vị n&agrave;y, những kiến nghị của VGTA mới chỉ từ ph&iacute;a c&aacute;c DN n&ecirc;n NH Nh&agrave; nước sẽ nghi&ecirc;n cứu quy định để trả lời trong thời gian sớm nhất.</p>', '2016-07-02 15:25:17', NULL, 1, 1),
(2, 'Doanh nghiệp vàng muốn bỏ giấy phép con', '<p>Ng&agrave;y 30-6, trao đổi với ph&oacute;ng vi&ecirc;n B&aacute;o Người Lao Động, &ocirc;ng Nguyễn Th&agrave;nh Long, Chủ tịch Hiệp hội Kinh doanh v&agrave;ng Việt Nam (VGTA), cho biết thời gian qua, c&aacute;c giải ph&aacute;p b&igrave;nh ổn thị trường v&agrave;ng, chống v&agrave;ng h&oacute;a nền <a href=\"http://www.24h.com.vn/tai-chinh-bat-dong-san-c161.html\" title=\"kinh tế\">kinh tế</a> được <a href=\"http://www.24h.com.vn/ngan-hang-c587.html\" title=\"Ngân hàng\">Ng&acirc;n h&agrave;ng</a> (NH) Nh&agrave; nước &aacute;p dụng đ&atilde; đem lại hiệu quả. Tuy nhi&ecirc;n, qua giai đoạn mới, thị trường v&agrave;ng - nhất l&agrave; v&agrave;ng trang sức mỹ nghệ - phải theo cơ chế thị trường chứ kh&ocirc;ng thể siết chặt m&atilde;i. Hiện nay, c&oacute; qu&aacute; nhiều giấy ph&eacute;p con &aacute;p dụng đối với doanh nghiệp (DN) sản xuất v&agrave;ng trang sức mỹ nghệ.</p><p><strong>Bị &ldquo;tr&oacute;i tay&rdquo;</strong></p><p>Trước đ&oacute;, VGTA đ&atilde; gửi văn bản kiến nghị tới Thủ tướng Ch&iacute;nh phủ về việc b&atilde;i bỏ c&aacute;c giấy ph&eacute;p con trong lĩnh vực v&agrave;ng nhằm th&aacute;o gỡ kh&oacute; khăn cho DN, r&agrave; so&aacute;t c&aacute;c quy định điều kiện kinh doanh theo Luật DN 2014, Luật Đầu tư 2014 v&agrave; chỉ đạo của Thủ tướng tại Nghị quyết 35/NQ-CP.</p><p align=\"center\"><img alt=\"Doanh nghiệp vàng muốn bỏ giấy phép con - 1\" src=\"http://image.24h.com.vn/upload/3-2016/images/2016-07-01/1467334605-doanh-nghiep-vang-muon-bo-giay-phep-con.jpg\" class=\"fr-dii fr-draggable\" style=\"width: 500px;\"></p><p>Doanh nghiệp kiến nghị Ch&iacute;nh phủ b&atilde;i bỏ c&aacute;c điều kiện bất hợp l&yacute; trong lĩnh vực kinh doanh v&agrave;ng trang sức Ảnh: TẤN THẠNH</p><p>Tại văn bản n&agrave;y, VGTA cho rằng Th&ocirc;ng tư 16/2012 v&agrave; Th&ocirc;ng tư 38/2016 của NH Nh&agrave; nước ban h&agrave;nh nhằm triển khai Nghị định 24/2012 của Ch&iacute;nh phủ về quản l&yacute; thị trường v&agrave;ng, trong đ&oacute; y&ecirc;u cầu điều kiện cấp giấy ph&eacute;p kinh doanh mua b&aacute;n v&agrave;ng miếng, DN phải đăng k&yacute; địa điểm chi nh&aacute;nh, địa điểm kinh doanh chờ NH Nh&agrave; nước xem x&eacute;t. Đồng thời, mỗi lần điều chỉnh địa điểm lại phải xin ph&eacute;p NH Nh&agrave; nước, trong khi c&aacute;c ti&ecirc;u ch&iacute; xem x&eacute;t kh&ocirc;ng được c&ocirc;ng khai, kh&ocirc;ng đ&uacute;ng thời gian giải quyết hồ sơ theo thủ tục h&agrave;nh ch&iacute;nh, g&acirc;y kh&oacute; cho DN.</p><p>Theo nhiều DN kinh doanh v&agrave;ng, khi DN được cấp giấy ph&eacute;p kinh doanh mua b&aacute;n v&agrave;ng miếng đồng nghĩa tất cả chi nh&aacute;nh, địa điểm kinh doanh trực thuộc kh&ocirc;ng phải xin ph&eacute;p m&agrave; chỉ cần l&agrave;m th&ocirc;ng b&aacute;o tăng mạng lưới để tr&aacute;nh &ldquo;đẻ&rdquo; th&ecirc;m giấy ph&eacute;p con. &ldquo;Từng địa chỉ mua b&aacute;n v&agrave;ng miếng cũng phải đăng k&yacute; với NH Nh&agrave; nước g&acirc;y tốn k&eacute;m rất nhiều chi ph&iacute; v&agrave; thời gian cho DN, trong khi kinh doanh thuận lợi hay ế ẩm lại do thị trường quyết định&rdquo; - &ocirc;ng Long nh&igrave;n nhận.</p><p>Trong điều kiện cấp ph&eacute;p kinh doanh v&agrave;ng miếng, VGTA cho rằng Nghị định 24/2012 đ&atilde; y&ecirc;u cầu giấy x&aacute;c nhận nộp thuế của cơ quan thuế nhưng Th&ocirc;ng tư 38/2016 vẫn y&ecirc;u cầu phải c&oacute; th&ecirc;m &ldquo;b&aacute;o c&aacute;o <a href=\"http://www.24h.com.vn/tai-chinh-bat-dong-san-c161.html\" title=\"tài chính\">t&agrave;i ch&iacute;nh</a> đ&atilde; được kiểm to&aacute;n của 2 năm liền kề trước đ&oacute;&rdquo; l&agrave; ph&aacute;t sinh th&ecirc;m thủ tục. Với hồ sơ cấp giấy ph&eacute;p sản xuất v&agrave;ng trang sức mỹ nghệ, Th&ocirc;ng tư 38/2016 cũng y&ecirc;u cầu th&ecirc;m &ldquo;bản kế hoạch dự kiến thực hiện quy định của ph&aacute;p luật về quản l&yacute; chất lượng v&agrave;ng trang sức mỹ nghệ&rdquo; vốn thuộc thẩm quyền của Bộ Khoa học v&agrave; C&ocirc;ng nghệ, theo VGTA l&agrave; kh&ocirc;ng ph&ugrave; hợp. C&aacute;c ti&ecirc;u ch&iacute; x&eacute;t duyệt hồ sơ cũng kh&ocirc;ng r&otilde; r&agrave;ng thế n&agrave;o l&agrave; đạt, dễ ph&aacute;t sinh nguy cơ thiếu minh bạch đối với DN.</p><p><strong>Muốn được b&igrave;nh đẳng</strong></p><p>Một trong những kiến nghị của VGTA tới Thủ tướng Ch&iacute;nh phủ l&agrave; vốn t&iacute;n dụng cho DN v&agrave;ng trang sức mỹ nghệ. &Ocirc;ng Nguyễn Th&agrave;nh Long cho rằng v&agrave;ng trang sức mỹ nghệ l&agrave; h&agrave;ng h&oacute;a th&ocirc;ng thường, kh&ocirc;ng thuộc đối tượng bị hạn chế kinh doanh hay kinh doanh c&oacute; điều kiện theo quy định hiện h&agrave;nh. Nếu NH Nh&agrave; nước hạn chế quyền vay vốn t&iacute;n dụng của c&aacute;c DN sản xuất, kinh doanh v&agrave;ng trang sức mỹ nghệ sẽ tr&aacute;i với tinh thần Nghị quyết 35/NĐ-CP về hỗ trợ v&agrave; ph&aacute;t triển DN.</p><p>Trước đ&oacute;, theo quy định trong c&aacute;c th&ocirc;ng tư của NH Nh&agrave; nước, DN sản xuất v&agrave;ng trang sức mỹ nghệ chỉ được vay vốn t&iacute;n dụng khi c&oacute; sự chấp thuận của thống đốc. &ldquo;Hơn 4 năm qua, chưa DN n&agrave;o được vay vốn từ NH thương mại để sản xuất, kinh doanh v&agrave;ng trang sức mỹ nghệ. Cơ quan quản l&yacute; cũng chưa c&oacute; hướng dẫn cụ thể về nguy&ecirc;n tắc, điều kiện v&agrave; thủ tục tr&igrave;nh thống đốc xin vay vốn&rdquo; - &ocirc;ng Long n&ecirc;u r&otilde;.</p><p>Theo Luật Đầu tư 2014, hoạt động vay vốn t&iacute;n dụng phục vụ sản xuất, kinh doanh v&agrave;ng trang sức mỹ nghệ kh&ocirc;ng thuộc ng&agrave;nh nghề kinh doanh c&oacute; điều kiện. Ngo&agrave;i ra, Thủ tướng cũng đ&atilde; chỉ đạo nếu những th&ocirc;ng tư kh&ocirc;ng được n&acirc;ng cấp l&ecirc;n th&agrave;nh nghị định th&igrave; sau ng&agrave;y 1-7 sẽ hết hiệu lực thi h&agrave;nh.</p><p>&ldquo;Một số ng&agrave;nh nghề kinh doanh kh&aacute;c c&oacute; rủi ro cũng được tiếp cận vốn t&iacute;n dụng, trong khi DN v&agrave;ng trang sức kh&ocirc;ng được vay vốn l&agrave; chưa c&ocirc;ng bằng. Khi vay vốn, c&aacute;c NH thương mại sẽ quyết định hiệu quả hoạt động của DN v&agrave;ng trang sức để cấp t&iacute;n dụng n&ecirc;n hiệp hội mong muốn DN trong ng&agrave;nh được &ldquo;trả về thị trường&rdquo; - &ocirc;ng Long kiến nghị.</p><p>Chủ tịch Hội Mỹ nghệ kim ho&agrave;n TP HCM Nguyễn Văn Dưng nh&igrave;n nhận hoạt động sản xuất, kinh doanh v&agrave;ng trang sức mỹ nghệ của c&aacute;c DN thời gian qua gặp rất nhiều kh&oacute; khăn v&agrave; bị tr&oacute;i buộc bằng những cơ chế, ch&iacute;nh s&aacute;ch kh&ocirc;ng thuận lợi như những ng&agrave;nh kh&aacute;c. Đ&acirc;y chỉ l&agrave; một ng&agrave;nh giống như kinh doanh c&aacute;c loại h&agrave;ng h&oacute;a th&ocirc;ng thường nhưng DN lại kh&ocirc;ng được tạo điều kiện ph&aacute;t triển tương xứng.</p><p>Ngay việc nhập khẩu v&agrave;ng nguy&ecirc;n liệu để sản xuất v&agrave;ng trang sức mỹ nghệ, theo c&aacute;c DN v&agrave;ng, nhu cầu của thị trường Việt Nam mỗi năm khoảng 15-20 tấn kh&ocirc;ng phải qu&aacute; lớn để g&acirc;y x&aacute;o trộn nền kinh tế. Tuy nhi&ecirc;n, suốt 4 năm qua, do kh&ocirc;ng được cấp ph&eacute;p nhập khẩu v&agrave;ng để sản xuất v&agrave;ng trang sức mỹ nghệ đ&atilde; khiến cả ng&agrave;nh v&agrave;ng ở v&agrave;o thế &ldquo;ch&ocirc;ng ch&ecirc;nh&rdquo;, phải mua nguy&ecirc;n liệu tr&ocirc;i nổi, thậm ch&iacute; cả nguy&ecirc;n liệu v&agrave;ng kh&ocirc;ng hợp ph&aacute;p để sản xuất.</p><p>Một chuy&ecirc;n gia trong lĩnh vực v&agrave;ng cho rằng quy m&ocirc; thị trường v&agrave;ng trang sức của Việt Nam rất lớn nhưng thiếu m&ocirc;i trường kinh doanh thuận lợi để c&aacute;c DN ph&aacute;t triển tương xứng. Trong khi đ&oacute;, trang sức Việt đang phải cạnh tranh gay gắt tr&ecirc;n s&acirc;n nh&agrave; v&agrave; khi hội nhập với c&aacute;c hiệp định thương mại, trang sức ngoại tr&agrave;n v&agrave;o.</p><p>&ldquo;Nếu kh&ocirc;ng c&oacute; chiến lược ph&aacute;t triển ng&agrave;nh trang sức theo hướng n&acirc;ng cao năng lực cạnh tranh cho c&aacute;c DN vừa v&agrave; nhỏ, thị trường v&agrave;ng nữ trang Việt Nam trong tương lai c&oacute; nguy cơ phải &ldquo;nhường s&acirc;n&rdquo; cho h&agrave;ng ngoại&rdquo; - vị n&agrave;y lo ngại.</p><p>Chiều 30-6, một l&atilde;nh đạo NH Nh&agrave; nước cho biết đ&atilde; nhận được văn bản kiến nghị của VGTA v&agrave; đ&atilde; chuyển cho c&aacute;c vụ, cục chức năng để r&agrave; so&aacute;t c&aacute;c quy định theo đ&uacute;ng luật, tr&igrave;nh Thống đốc v&agrave; Thủ tướng xem x&eacute;t. Theo vị n&agrave;y, những kiến nghị của VGTA mới chỉ từ ph&iacute;a c&aacute;c DN n&ecirc;n NH Nh&agrave; nước sẽ nghi&ecirc;n cứu quy định để trả lời trong thời gian sớm nhất.</p>', '2016-07-02 15:26:03', NULL, 1, 1),
(3, 'Doanh nghiệp vàng muốn bỏ ', '<p>Ng&agrave;y 30-6, trao đổi với ph&oacute;ng vi&ecirc;n B&aacute;o Người Lao Động, &ocirc;ng Nguyễn Th&agrave;nh Long, Chủ tịch Hiệp hội Kinh doanh v&agrave;ng Việt Nam (VGTA), cho biết thời gian qua, c&aacute;c giải ph&aacute;p b&igrave;nh ổn thị trường v&agrave;ng, chống v&agrave;ng h&oacute;a nền <a href=\"http://www.24h.com.vn/tai-chinh-bat-dong-san-c161.html\" title=\"kinh tế\">kinh tế</a> được <a href=\"http://www.24h.com.vn/ngan-hang-c587.html\" title=\"Ngân hàng\">Ng&acirc;n h&agrave;ng</a> (NH) Nh&agrave; nước &aacute;p dụng đ&atilde; đem lại hiệu quả. Tuy nhi&ecirc;n, qua giai đoạn mới, thị trường v&agrave;ng - nhất l&agrave; v&agrave;ng trang sức mỹ nghệ - phải theo cơ chế thị trường chứ kh&ocirc;ng thể siết chặt m&atilde;i. Hiện nay, c&oacute; qu&aacute; nhiều giấy ph&eacute;p con &aacute;p dụng đối với doanh nghiệp (DN) sản xuất v&agrave;ng trang sức mỹ nghệ.</p><p><strong>Bị &ldquo;tr&oacute;i tay&rdquo;</strong></p><p>Trước đ&oacute;, VGTA đ&atilde; gửi văn bản kiến nghị tới Thủ tướng Ch&iacute;nh phủ về việc b&atilde;i bỏ c&aacute;c giấy ph&eacute;p con trong lĩnh vực v&agrave;ng nhằm th&aacute;o gỡ kh&oacute; khăn cho DN, r&agrave; so&aacute;t c&aacute;c quy định điều kiện kinh doanh theo Luật DN 2014, Luật Đầu tư 2014 v&agrave; chỉ đạo của Thủ tướng tại Nghị quyết 35/NQ-CP.</p><p align=\"center\"><br></p><p>Doanh nghiệp kiến nghị Ch&iacute;nh phủ b&atilde;i bỏ c&aacute;c điều kiện bất hợp l&yacute; trong lĩnh vực kinh doanh v&agrave;ng trang sức Ảnh: TẤN THẠNH</p><p>Tại văn bản n&agrave;y, VGTA cho rằng Th&ocirc;ng tư 16/2012 v&agrave; Th&ocirc;ng tư 38/2016 của NH Nh&agrave; nước ban h&agrave;nh nhằm triển khai Nghị định 24/2012 của Ch&iacute;nh phủ về quản l&yacute; thị trường v&agrave;ng, trong đ&oacute; y&ecirc;u cầu điều kiện cấp giấy ph&eacute;p kinh doanh mua b&aacute;n v&agrave;ng miếng, DN phải đăng k&yacute; địa điểm chi nh&aacute;nh, địa điểm kinh doanh chờ NH Nh&agrave; nước xem x&eacute;t. Đồng thời, mỗi lần điều chỉnh địa điểm lại phải xin ph&eacute;p NH Nh&agrave; nước, trong khi c&aacute;c ti&ecirc;u ch&iacute; xem x&eacute;t kh&ocirc;ng được c&ocirc;ng khai, kh&ocirc;ng đ&uacute;ng thời gian giải quyết hồ sơ theo thủ tục h&agrave;nh ch&iacute;nh, g&acirc;y kh&oacute; cho DN.</p><p>Theo nhiều DN kinh doanh v&agrave;ng, khi DN được cấp giấy ph&eacute;p kinh doanh mua b&aacute;n v&agrave;ng miếng đồng nghĩa tất cả chi nh&aacute;nh, địa điểm kinh doanh trực thuộc kh&ocirc;ng phải xin ph&eacute;p m&agrave; chỉ cần l&agrave;m th&ocirc;ng b&aacute;o tăng mạng lưới để tr&aacute;nh &ldquo;đẻ&rdquo; th&ecirc;m giấy ph&eacute;p con. &ldquo;Từng địa chỉ mua b&aacute;n v&agrave;ng miếng cũng phải đăng k&yacute; với NH Nh&agrave; nước g&acirc;y tốn k&eacute;m rất nhiều chi ph&iacute; v&agrave; thời gian cho DN, trong khi kinh doanh thuận lợi hay ế ẩm lại do thị trường quyết định&rdquo; - &ocirc;ng Long nh&igrave;n nhận.</p><p>Trong điều kiện cấp ph&eacute;p kinh doanh v&agrave;ng miếng, VGTA cho rằng Nghị định 24/2012 đ&atilde; y&ecirc;u cầu giấy x&aacute;c nhận nộp thuế của cơ quan thuế nhưng Th&ocirc;ng tư 38/2016 vẫn y&ecirc;u cầu phải c&oacute; th&ecirc;m &ldquo;b&aacute;o c&aacute;o <a href=\"http://www.24h.com.vn/tai-chinh-bat-dong-san-c161.html\" title=\"tài chính\">t&agrave;i ch&iacute;nh</a> đ&atilde; được kiểm to&aacute;n của 2 năm liền kề trước đ&oacute;&rdquo; l&agrave; ph&aacute;t sinh th&ecirc;m thủ tục. Với hồ sơ cấp giấy ph&eacute;p sản xuất v&agrave;ng trang sức mỹ nghệ, Th&ocirc;ng tư 38/2016 cũng y&ecirc;u cầu th&ecirc;m &ldquo;bản kế hoạch dự kiến thực hiện quy định của ph&aacute;p luật về quản l&yacute; chất lượng v&agrave;ng trang sức mỹ nghệ&rdquo; vốn thuộc thẩm quyền của Bộ Khoa học v&agrave; C&ocirc;ng nghệ, theo VGTA l&agrave; kh&ocirc;ng ph&ugrave; hợp. C&aacute;c ti&ecirc;u ch&iacute; x&eacute;t duyệt hồ sơ cũng kh&ocirc;ng r&otilde; r&agrave;ng thế n&agrave;o l&agrave; đạt, dễ ph&aacute;t sinh nguy cơ thiếu minh bạch đối với DN.</p><p><strong>Muốn được b&igrave;nh đẳng</strong></p><p>Một trong những kiến nghị của VGTA tới Thủ tướng Ch&iacute;nh phủ l&agrave; vốn t&iacute;n dụng cho DN v&agrave;ng trang sức mỹ nghệ. &Ocirc;ng Nguyễn Th&agrave;nh Long cho rằng v&agrave;ng trang sức mỹ nghệ l&agrave; h&agrave;ng h&oacute;a th&ocirc;ng thường, kh&ocirc;ng thuộc đối tượng bị hạn chế kinh doanh hay kinh doanh c&oacute; điều kiện theo quy định hiện h&agrave;nh. Nếu NH Nh&agrave; nước hạn chế quyền vay vốn t&iacute;n dụng của c&aacute;c DN sản xuất, kinh doanh v&agrave;ng trang sức mỹ nghệ sẽ tr&aacute;i với tinh thần Nghị quyết 35/NĐ-CP về hỗ trợ v&agrave; ph&aacute;t triển DN.</p><p>Trước đ&oacute;, theo quy định trong c&aacute;c th&ocirc;ng tư của NH Nh&agrave; nước, DN sản xuất v&agrave;ng trang sức mỹ nghệ chỉ được vay vốn t&iacute;n dụng khi c&oacute; sự chấp thuận của thống đốc. &ldquo;Hơn 4 năm qua, chưa DN n&agrave;o được vay vốn từ NH thương mại để sản xuất, kinh doanh v&agrave;ng trang sức mỹ nghệ. Cơ quan quản l&yacute; cũng chưa c&oacute; hướng dẫn cụ thể về nguy&ecirc;n tắc, điều kiện v&agrave; thủ tục tr&igrave;nh thống đốc xin vay vốn&rdquo; - &ocirc;ng Long n&ecirc;u r&otilde;.</p><p>Theo Luật Đầu tư 2014, hoạt động vay vốn t&iacute;n dụng phục vụ sản xuất, kinh doanh v&agrave;ng trang sức mỹ nghệ kh&ocirc;ng thuộc ng&agrave;nh nghề kinh doanh c&oacute; điều kiện. Ngo&agrave;i ra, Thủ tướng cũng đ&atilde; chỉ đạo nếu những th&ocirc;ng tư kh&ocirc;ng được n&acirc;ng cấp l&ecirc;n th&agrave;nh nghị định th&igrave; sau ng&agrave;y 1-7 sẽ hết hiệu lực thi h&agrave;nh.</p><p>&ldquo;Một số ng&agrave;nh nghề kinh doanh kh&aacute;c c&oacute; rủi ro cũng được tiếp cận vốn t&iacute;n dụng, trong khi DN v&agrave;ng trang sức kh&ocirc;ng được vay vốn l&agrave; chưa c&ocirc;ng bằng. Khi vay vốn, c&aacute;c NH thương mại sẽ quyết định hiệu quả hoạt động của DN v&agrave;ng trang sức để cấp t&iacute;n dụng n&ecirc;n hiệp hội mong muốn DN trong ng&agrave;nh được &ldquo;trả về thị trường&rdquo; - &ocirc;ng Long kiến nghị.</p><p>Chủ tịch Hội Mỹ nghệ kim ho&agrave;n TP HCM Nguyễn Văn Dưng nh&igrave;n nhận hoạt động sản xuất, kinh doanh v&agrave;ng trang sức mỹ nghệ của c&aacute;c DN thời gian qua gặp rất nhiều kh&oacute; khăn v&agrave; bị tr&oacute;i buộc bằng những cơ chế, ch&iacute;nh s&aacute;ch kh&ocirc;ng thuận lợi như những ng&agrave;nh kh&aacute;c. Đ&acirc;y chỉ l&agrave; một ng&agrave;nh giống như kinh doanh c&aacute;c loại h&agrave;ng h&oacute;a th&ocirc;ng thường nhưng DN lại kh&ocirc;ng được tạo điều kiện ph&aacute;t triển tương xứng.</p><p>Ngay việc nhập khẩu v&agrave;ng nguy&ecirc;n liệu để sản xuất v&agrave;ng trang sức mỹ nghệ, theo c&aacute;c DN v&agrave;ng, nhu cầu của thị trường Việt Nam mỗi năm khoảng 15-20 tấn kh&ocirc;ng phải qu&aacute; lớn để g&acirc;y x&aacute;o trộn nền kinh tế. Tuy nhi&ecirc;n, suốt 4 năm qua, do kh&ocirc;ng được cấp ph&eacute;p nhập khẩu v&agrave;ng để sản xuất v&agrave;ng trang sức mỹ nghệ đ&atilde; khiến cả ng&agrave;nh v&agrave;ng ở v&agrave;o thế &ldquo;ch&ocirc;ng ch&ecirc;nh&rdquo;, phải mua nguy&ecirc;n liệu tr&ocirc;i nổi, thậm ch&iacute; cả nguy&ecirc;n liệu v&agrave;ng kh&ocirc;ng hợp ph&aacute;p để sản xuất.</p><p>Một chuy&ecirc;n gia trong lĩnh vực v&agrave;ng cho rằng quy m&ocirc; thị trường v&agrave;ng trang sức của Việt Nam rất lớn nhưng thiếu m&ocirc;i trường kinh doanh thuận lợi để c&aacute;c DN ph&aacute;t triển tương xứng. Trong khi đ&oacute;, trang sức Việt đang phải cạnh tranh gay gắt tr&ecirc;n s&acirc;n nh&agrave; v&agrave; khi hội nhập với c&aacute;c hiệp định thương mại, trang sức ngoại tr&agrave;n v&agrave;o.</p><p>&ldquo;Nếu kh&ocirc;ng c&oacute; chiến lược ph&aacute;t triển ng&agrave;nh trang sức theo hướng n&acirc;ng cao năng lực cạnh tranh cho c&aacute;c DN vừa v&agrave; nhỏ, thị trường v&agrave;ng nữ trang Việt Nam trong tương lai c&oacute; nguy cơ phải &ldquo;nhường s&acirc;n&rdquo; cho h&agrave;ng ngoại&rdquo; - vị n&agrave;y lo ngại.</p><p>Chiều 30-6, một l&atilde;nh đạo NH Nh&agrave; nước cho biết đ&atilde; nhận được văn bản kiến nghị của VGTA v&agrave; đ&atilde; chuyển cho c&aacute;c vụ, cục chức năng để r&agrave; so&aacute;t c&aacute;c quy định theo đ&uacute;ng luật, tr&igrave;nh Thống đốc v&agrave; Thủ tướng xem x&eacute;t. Theo vị n&agrave;y, những kiến nghị của VGTA mới chỉ từ ph&iacute;a c&aacute;c DN n&ecirc;n NH Nh&agrave; nước sẽ nghi&ecirc;n cứu quy định để trả lời trong thời gian sớm nhất.</p>', '2017-04-03 16:33:11', 1, 1, 0),
(4, 'Dịch vụ xây dựng chuyên nghiệp', '<h2><p>X&acirc;y dựng thi c&ocirc;ng chắc chắn là m&ocirc;̣t n&ocirc;̃i lo lớn của m&ocirc;̃i chủ đ&acirc;̀u tư, vì đ&ecirc;̉ có m&ocirc;̣t đ&ocirc;̣i ngũ x&acirc;y dựng giàu kinh nghi&ecirc;̣m, và chuy&ecirc;n m&ocirc;n, thi c&ocirc;ng kĩ càng, uy tín và đ&acirc;̀y trách nhi&ecirc;̣m là đi&ecirc;̀u sẽ làm bạn phải suy nghĩ lựa chọn r&acirc;́t khó khăn&hellip;</p><p>vì hi&ecirc;̣n nay r&acirc;́t nhi&ecirc;̀u c&ocirc;ng ty x&acirc;y dựng, và đ&acirc;u đó chúng ta v&acirc;̃n phải nghe v&ecirc;̀ những c&ocirc;ng ty làm ăn kh&ocirc;ng đàng hoàng như cam k&ecirc;́t v&acirc;̣t tư ch&acirc;́t lượng thương hi&ecirc;̣u, nhưng lại pha tr&ocirc;̣n hàng kém ch&acirc;́t lượng, hàng giả, hàng cũ, hàng l&ocirc;̃i, hàng t&ocirc;̀n kho hoặc bớt xén v&acirc;̣t tư &hellip; Hoặc ăn bớt c&ocirc;ng x&acirc;y&hellip;</p><p><img alt=\"thi-cong-xy-dung-nha-pho-16\" height=\"300\" src=\"http://localhost/wordpress/wp-content/uploads/2016/06/thi-cong-xy-dung-nha-pho-16-225x300.jpg\" srcset=\"http://catxanh.vn/wp-content/uploads/2016/06/thi-cong-xy-dung-nha-pho-16-225x300.jpg 225w, <a href=\" class=\"fr-dii fr-draggable\" style=\"width: 225px;\"></p><p>Hi&ecirc;̉u được đi&ecirc;̀u đó, CAT XANH lu&ocirc;n coi từng ng&ocirc;i nhà, từng dự án mà chúng t&ocirc;i thực hi&ecirc;̣n, chúng t&ocirc;i đ&ecirc;̀u coi đó là x&acirc;y cho nhà mình, và tư tưởng này được xuy&ecirc;n su&ocirc;́t tới từng thợ h&ocirc;̀. Và được quản lý bởi h&ecirc;̣ th&ocirc;́ng quản trị chuy&ecirc;n nghi&ecirc;̣p của chúng t&ocirc;i đ&ecirc;̉ làm sao đáp ứng v&ecirc;̀ chuy&ecirc;n m&ocirc;n, chuy&ecirc;n nghi&ecirc;̣p mà đạo đức ngh&ecirc;̀ nghi&ecirc;̣p được ti&ecirc;n quy&ecirc;́t.</p></h2>', '2017-04-03 16:33:26', 1, 1, 0),
(5, 'Tiết lộ sốc: Làm việc tại Facebook như sống tại... Triều Tiên', '<p>Antonio Garcia Martinez, cựu gi&aacute;m đốc quảng c&aacute;o của Facebook, bị sa thải v&agrave;o năm 2013 sau hai năm l&agrave;m việc đ&atilde; v&iacute; l&agrave;m việc tại Facebook &quot;như sống tại Triều Ti&ecirc;n&quot;.</p><p>Theo &ocirc;ng, nh&acirc;n vi&ecirc;n nữ kh&ocirc;ng được mặc trang phục c&oacute; thể l&agrave;m &quot;ph&acirc;n t&acirc;m&quot; nh&acirc;n vi&ecirc;n nam. Họ sẽ bị khiển tr&aacute;ch nếu mang v&aacute;y hay quần short qu&aacute; ngắn. Gi&aacute;m đốc ph&ograve;ng nh&acirc;n sự sẽ l&agrave;m một b&agrave;i ph&aacute;t biểu trước c&aacute;c nh&acirc;n vi&ecirc;n mới, trong đ&oacute; y&ecirc;u cầu phụ nữ phải tu&acirc;n theo một quy định trang phục nghi&ecirc;m khắc. Trước đ&acirc;y một nh&acirc;n vi&ecirc;n thực tập nữ thường mang quần short đến văn ph&ograve;ng đ&atilde; bị khiển tr&aacute;ch nghi&ecirc;m trọng.</p><p align=\"center\"><img alt=\"Tiết lộ sốc: Làm việc tại Facebook như sống tại... Triều Tiên - 1\" src=\"http://image.24h.com.vn/upload/3-2016/images/2016-07-02/1467462700-mark-quan-ly-facebook-nhu-trieu-tien_zagt.jpg\" class=\"fr-dii fr-draggable\"></p><p>&nbsp;Mark Zuckerberg được cho l&agrave; quản l&yacute; Facebook như &nbsp;Triều Ti&ecirc;n. &nbsp;Ảnh: EXPRESS.CO.UK</p><p>Trong khi đ&oacute;, nh&acirc;n vi&ecirc;n nam kh&ocirc;ng phải tu&acirc;n theo bất cứ quy định trang phục n&agrave;o. Martinez cho biết nh&acirc;n vi&ecirc;n mới đến phải trải qua nhiều cuộc phỏng vấn nhằm hướng nh&acirc;n vi&ecirc;n đi theo quan điểm của c&ocirc;ng ty. Martinez m&ocirc; tả l&agrave;m việc cho Facebook giống như ở trong một gi&aacute;o ph&aacute;i với Zuckerberg l&agrave; &quot;gi&aacute;o chủ&quot; c&ograve;n nh&acirc;n vi&ecirc;n l&agrave; những &quot;t&iacute;n đồ ch&acirc;n ch&iacute;nh&quot;.</p><p>Ng&agrave;y m&agrave; một nh&acirc;n vi&ecirc;n gia nhập Facebook được gọi l&agrave; &quot;Faceversary&quot; v&agrave; được kỷ niệm như lễ rửa tội của c&aacute;c t&iacute;n đồ C&ocirc;ng gi&aacute;o. Ng&agrave;y n&agrave;y được xem như ng&agrave;y sinh nhật thứ hai v&agrave; tất cả mọi người sẽ ch&uacute;c mừng tặng bong b&oacute;ng cho nh&acirc;n vi&ecirc;n mới. Ng&agrave;y bạn rời khỏi Facebook được xem như ng&agrave;y &quot;dứt t&igrave;nh&quot;. Facebook sẽ đăng tải ảnh thẻ ID kh&ocirc;ng c&ograve;n nguy&ecirc;n vẹn của bạn khi bạn bước ra khỏi cửa c&ocirc;ng ty.</p><p>C&aacute;c nh&acirc;n vi&ecirc;n tại ph&ograve;ng truyền th&ocirc;ng của Facebook đ&atilde; đặt biệt danh cho Zuckerberg l&agrave; &quot;tiểu ho&agrave;ng đế&quot;, do c&ocirc;ng ty c&oacute; một lực lượng cảnh s&aacute;t nội bộ l&agrave;m, việc nghi&ecirc;m ngặt như Ủy ban An ninh Quốc gia Mỹ (NSA). Lực lượng n&agrave;y c&oacute; t&ecirc;n gọi &quot;The Sec&quot;, theo d&otilde;i nhất cử nhất động của đội ngũ nh&acirc;n vi&ecirc;n, theo Antonio Garcia Martinez.</p><p align=\"center\"><img alt=\"Tiết lộ sốc: Làm việc tại Facebook như sống tại... Triều Tiên - 2\" src=\"http://image.24h.com.vn/upload/3-2016/images/2016-07-02/1467462700-mark-2.jpg\" class=\"fr-dii fr-draggable\"></p><p>&nbsp;&Ocirc;ng chủ Facebook bị c&aacute;o buộc c&oacute; ch&iacute;nh s&aacute;ch ph&acirc;n biệt giới t&iacute;nh tại nơi l&agrave;m việc. Ảnh: &nbsp;EXPRESS.CO.UK</p><p>Văn ph&ograve;ng của Zuckerberg c&ograve;n c&oacute; t&ecirc;n gọi l&agrave; &quot;Bể c&aacute;&quot;, v&igrave; tất cả bức tường bao quanh đều bằn k&iacute;nh. Trong khi đ&oacute; ph&ograve;ng hội nghị của nữ gi&aacute;m đốc Sheryl Sandberg th&igrave; được đặt t&ecirc;n l&agrave; &quot;Chỉ nhận tin tốt&quot;, v&igrave; đ&oacute; l&agrave; tất cả những g&igrave; nữ gi&aacute;m đốc n&agrave;y muốn nghe bằng kh&ocirc;ng c&ocirc; sẽ &quot;nổi trận l&ocirc;i đ&igrave;nh&quot;. Theo Martinez, nh&acirc;n vi&ecirc;n c&oacute; nhiều ng&agrave;y phải l&agrave;m việc tới 20 giờ. Nhưng b&ugrave; lại, nh&agrave; ăn c&ocirc;ng ty sẽ phục vụ tất cả bữa ăn trong ng&agrave;y.</p><p>Cựu nh&acirc;n vi&ecirc;n n&agrave;y cũng khẳng định &ocirc;ng chủ Zuckerberg c&oacute; những khẩu hiệu &quot;khắc khổ&quot;, điển h&igrave;nh như &quot;Kh&ocirc;ng bao giờ hết việc&quot; được vẽ tr&ecirc;n tường văn ph&ograve;ng. Zuckerberg cũng đ&atilde; chửi mắng nh&acirc;n vi&ecirc;n do kh&ocirc;ng trang tr&iacute; văn ph&ograve;ng theo c&aacute;ch m&igrave;nh muốn. &Ocirc;ng y&ecirc;u cầu nh&acirc;n vi&ecirc;n sơn lại văn ph&ograve;ng m&igrave;nh nhưng khi nh&igrave;n thấy những h&igrave;nh vẽ &quot;nguệch ngoạc&quot; tr&ecirc;n tường, anh đ&atilde; gửi email chửi mắng thậm tệ: &quot;T&ocirc;i tin tưởng anh sẽ tạo ra t&aacute;c phẩm nghệ thuật nhưng thứ qu&aacute;i dị m&agrave; ch&iacute;nh anh l&agrave;m ra đ&atilde; ph&aacute; hoại nơi n&agrave;y.&quot;</p><p align=\"center\"><img alt=\"Tiết lộ sốc: Làm việc tại Facebook như sống tại... Triều Tiên - 3\" src=\"http://image.24h.com.vn/upload/3-2016/images/2016-07-02/1467462700-mark-3.jpg\" class=\"fr-dii fr-draggable\"></p><p>&nbsp;Bảng viết phấn do c&aacute;c nh&acirc;n vi&ecirc;n vẽ v&agrave; ghi ch&eacute;p tại Facebook. Ảnh: &nbsp;DAILYMAIL.CO.UK</p><p>Theo Martinez, &ocirc;ng chủ Facebook bị &aacute;m ảnh với sự bảo mật. Khi một nh&acirc;n vi&ecirc;n l&agrave;m r&ograve; rỉ th&ocirc;ng tin chi tiết về một sản phẩm sắp ra mắt, Zuckerberg đ&atilde; gửi email cảnh c&aacute;o tới to&agrave;n thể nh&acirc;n vi&ecirc;n c&ocirc;ng ty với d&ograve;ng ti&ecirc;u đề: &quot;H&atilde;y từ chức đi&quot;. Zuckerberg đ&atilde; rất tức giận với những nh&acirc;n vi&ecirc;n đ&atilde; để lộ th&ocirc;ng tin sản phẩm. Trong mail, Zuckerberg chỉ tr&iacute;ch đạo đức nghề nghiệp của nh&acirc;n vi&ecirc;n n&agrave;y, cho rằng người n&agrave;y &quot;đ&atilde; phản bội&quot; c&ocirc;ng ty.</p><p>Sau một v&agrave;i lần tiếp x&uacute;c trực tiếp với Zuckerberg, Martinez cho rằng &ocirc;ng chủ Facebook rất lỗ m&atilde;ng. Zuckerberg đ&atilde; từng nhiều lần ngắt lời khi anh tr&igrave;nh b&agrave;y. Martinez kể lại rằng trong một cuộc họp về quảng c&aacute;o, Zuckerberg đ&atilde; kh&ocirc;ng xem lại chi tiết kỹ thuật bởi v&igrave; &quot;kh&ocirc;ng c&oacute; ki&ecirc;n nhẫn để đọc&quot;.</p><p>Zuckerberg thường đưa ra c&aacute;c quyết định ảnh hưởng đến 1,6 tỉ người d&ugrave;ng Facebook chỉ dựa tr&ecirc;n &quot;cảm t&iacute;nh&quot; v&agrave; &quot;t&igrave;nh h&igrave;nh ch&iacute;nh trị&quot; m&agrave; kh&ocirc;ng c&acirc;n nhắc kỹ c&agrave;ng quyết định đ&oacute;, theo Martinez.</p><p>Martinez thậm ch&iacute; c&ograve;n viết trong s&aacute;ch rằng Zuckerberg đ&atilde; từng nhốt cả c&ocirc;ng ty v&agrave; kh&ocirc;ng cho ph&eacute;p bất cứ ai rời khỏi t&ograve;a nh&agrave; khi Google cho ra mắt Google Plus. Tuy nhi&ecirc;n, sau khi nhận ra Google Plus kh&ocirc;ng phải l&agrave; mối đe dọa lớn, &ocirc;ng chủ Facebook cho rằng Google đ&atilde; thổi phồng t&iacute;nh năng của mạng x&atilde; hội mới.</p><p>Ngo&agrave;i Martinez, Katherine Losse cũng viết cuốn s&aacute;ch kh&aacute;c c&aacute;o buộc Facebook c&oacute; h&agrave;nh vi ph&acirc;n biệt giới t&iacute;nh. Cuốn s&aacute;ch c&ograve;n cho biết nh&acirc;n vi&ecirc;n nữ phải l&agrave;m người ch&agrave;o đ&oacute;n kh&aacute;ch ở một số hội nghị của Facebook.</p><p>Hiện Facebook vẫn chưa b&igrave;nh luận về cuốn s&aacute;ch của Antonio.</p>', '2017-04-03 16:33:41', 1, 1, 0),
(6, 'Vì sao gần đây hay tìm được kim cương \"khủng\"?', '<p>Vi&ecirc;n kim cương lớn thứ hai lịch sử thế giới được đấu gi&aacute; ng&agrave;y 29.6 v&agrave; l&agrave; một trong 3 vi&ecirc;n kim cương k&iacute;ch thước &ldquo;khủng&rdquo; nhất được t&igrave;m thấy gần đ&acirc;y. Ph&oacute;ng vi&ecirc;n Clare Spencer của BBC rất thắc mắc v&igrave; sao sau hơn 100 năm c&aacute;c c&ocirc;ng ty mới lại li&ecirc;n tục t&igrave;m thấy những vi&ecirc;n kim cương k&iacute;ch thước kỉ lục tới vậy.</p><p>Ng&agrave;y 16.11.2015, Tiroyanone Mathaba đang t&igrave;m kiếm ở mỏ Karowe, Botswana th&igrave; ph&aacute;t hiện ra vi&ecirc;n kim cương nặng tới 1.109 carat. K&iacute;ch thước vi&ecirc;n kim cương bằng đ&uacute;ng quả b&oacute;ng tennis.</p><p>&Ocirc;ng chủ của mỏ khai th&aacute;c William Lamb trả lời b&aacute;o ch&iacute; rằng to&agrave;n bộ 804 nh&acirc;n vi&ecirc;n của khu mỏ đều được thưởng sau sự kiện n&agrave;y, tuy nhi&ecirc;n kh&ocirc;ng tiết lộ chi tiết số tiền.</p><p>Trong v&ograve;ng 72 tiếng, khu mỏ Karowe c&ograve;n xuất hiện th&ecirc;m hai vi&ecirc;n đ&aacute; qu&yacute; nữa c&oacute; k&iacute;ch thước khủng. Một vi&ecirc;n kim cương nặng 374 carat chưa được đặt t&ecirc;n v&agrave; một vi&ecirc;n kh&aacute;c 812 carat được gọi t&ecirc;n Constellation đ&atilde; được t&igrave;m thấy chỉ trong 3 ng&agrave;y.</p><p align=\"center\"><img alt=\"Vì sao gần đây hay tìm được kim cương \" src=\"http://image.24h.com.vn/upload/2-2016/images/2016-06-30/1467285482-146727327845094-2--copy-.jpg\" class=\"fr-dii fr-draggable\" style=\"width: 500px;\"></p><p align=\"center\">Trước khi nghiền nhỏ, đ&aacute; quặng được soi bằng m&aacute;y X-quang.</p><p>Hai năm trước, Mathaba từng nghi ngờ việc xuất hiện những vi&ecirc;n kim cương k&iacute;ch thước lớn hơn khi một vi&ecirc;n đ&aacute; qu&yacute; 239 carat được t&igrave;m thấy. &nbsp;Mathaba đang l&agrave;m việc cho c&ocirc;ng ty khai th&aacute;c kim cương Lucara c&oacute; trụ sở ở Canada.</p><p>Năm 2014, c&ocirc;ng ty Lucara nghi ngờ những m&aacute;y ph&acirc;n loại đ&aacute; kimberlite thường bỏ s&oacute;t hoặc nghiền nhỏ những vi&ecirc;n đ&aacute; c&oacute; k&iacute;ch thước lớn hơn 30mm. Ch&iacute;nh điều n&agrave;y l&agrave;m những vi&ecirc;n &nbsp;kim cương c&oacute; k&iacute;ch thước lớn kh&ocirc;ng được ph&aacute;t hiện.</p><p>Sau đ&oacute;, c&ocirc;ng ty n&agrave;y đ&atilde; mang một m&aacute;y soi X-quang tới mỏ kim cương v&agrave; số tiền đầu tư đ&atilde; ph&aacute;t huy t&aacute;c dụng ngay lập tức. Vi&ecirc;n Constellation được b&aacute;n với gi&aacute; 62 triệu USD (khoảng 1.400 tỉ đồng) hồi th&aacute;ng 5 vừa qua.</p><p>Vi&ecirc;n kim cương Lesedi la Rona dự kiến b&aacute;n ng&agrave;y 29.6 nhưng chưa c&oacute; kh&aacute;ch mua. Hai vi&ecirc;n kim cương n&agrave;y được cho l&agrave; lớn nhất từng t&igrave;m thấy trong qu&aacute; tr&igrave;nh khai th&aacute;c c&ocirc;ng nghiệp.</p><p>Vi&ecirc;n lớn nhất hiện nay l&agrave; Cullinan, t&igrave;m thấy hơn 100 năm trước ở độ s&acirc;u 9m v&agrave; sử dụng một con dao kẹp để khai th&aacute;c. Ng&agrave;y nay, khai th&aacute;c kim cương &aacute;p dụng c&ocirc;ng nghệ hiện đại hơn bằng c&aacute;ch sử dụng thuốc nổ, t&aacute;ch quặng rồi d&ugrave;ng m&aacute;y nghiền.</p><p>Paul Day, gi&aacute;m đốc điều h&agrave;nh c&ocirc;ng ty Lucara cho rằng qu&aacute; tr&igrave;nh khai th&aacute;c c&ocirc;ng nghiệp đ&atilde; l&agrave;m mất đi những vi&ecirc;n kim cương k&iacute;ch thước lớn do bị nghiền n&aacute;t. Paul n&oacute;i: &ldquo;D&ugrave; kim cương rất cứng nhưng kh&ocirc;ng đồng nghĩa l&agrave; kh&ocirc;ng thể nghiền n&aacute;t&rdquo;.</p><p align=\"center\"><img alt=\"Vì sao gần đây hay tìm được kim cương \" src=\"http://image.24h.com.vn/upload/2-2016/images/2016-06-30/1467285482-14672732788988-3--copy-.jpg\" class=\"fr-dii fr-draggable\" style=\"width: 500px;\"></p><p align=\"center\">Vi&ecirc;n kim cương lớn nhất thế giới được b&aacute;n cho Anh v&agrave; cắt nhỏ để gắn l&ecirc;n vương miện nữ ho&agrave;ng.</p><p>Paul Day cho biết nếu vi&ecirc;n kim cương 100 carat bị đập bằng b&uacute;a sắt v&agrave;o một miếng th&eacute;p th&igrave; n&oacute; ho&agrave;n to&agrave;n c&oacute; thể vỡ th&agrave;nh nhiều mảnh. Kim cương được cho l&agrave; loại vật liệu cứng nhất thế giới.</p><p>Paul Day tin rằng việc thay đổi c&aacute;ch thức khai th&aacute;c kim cương nhờ m&aacute;y X-quang gi&uacute;p ph&aacute;t hiện ra những vi&ecirc;n c&oacute; k&iacute;ch thước lớn gấp nhiều lần trong qu&aacute; khứ. Tuy nhi&ecirc;n, theo Paul, vấn đề đau đầu tiếp theo l&agrave; ai sẽ chi tiền cho những vi&ecirc;n đ&aacute; qu&yacute; qu&aacute; đắt đỏ n&agrave;y?</p>', '2017-04-03 16:33:56', 1, 1, 0),
(7, 'Nhiều hệ lụy từ Brexit tác động tới thị trường BĐS', '<p>Theo đ&aacute;nh gi&aacute; của một số chuy&ecirc;n gia bất động sản, việc đầu tư vốn v&agrave;o thị trường bất động sản ch&acirc;u &Aacute; - Th&aacute;i B&igrave;nh Dương c&oacute; thể bị ảnh hưởng do c&aacute;c kh&aacute;ch h&agrave;ng nước ngo&agrave;i đang phải hứng chịu những ảnh hưởng trực tiếp từ Brexit. Theo đ&aacute;nh gi&aacute; của C&ocirc;ng ty JLL, nhiều nh&agrave; đầu tư c&oacute; khả năng kh&ocirc;ng tham gia đấu thầu cho đến khi biến động từ Brexit đi qua, kể cả c&aacute;c <a href=\"http://www.24h.com.vn/ngan-hang-c587.html\" title=\"ngân hàng\">ng&acirc;n h&agrave;ng</a> c&oacute; mối quan hệ chặt chẽ với ch&acirc;u &Acirc;u cũng kh&ocirc;ng c&oacute; khả năng đ&aacute;nh gi&aacute; rủi ro với thị trường bấp b&ecirc;nh như hiện nay.</p><p>Tiến sĩ Megan Walters, Trưởng bộ phận Nghi&ecirc;n cứu thị trường vốn tại ch&acirc;u &Aacute; - Th&aacute;i B&igrave;nh Dương của JLL n&oacute;i rằng một v&agrave;i hợp đồng lớn tại thị trường bất động sản ch&acirc;u &Aacute; c&oacute; thể bị đ&igrave;nh trệ trong thời gian ngắn, do c&oacute; li&ecirc;n quan đến c&aacute;c quỹ đầu tư với nhiều nh&agrave; đầu tư ch&acirc;u &Acirc;u.</p><p>Tuy nhi&ecirc;n, theo quy luật của thị trường vốn to&agrave;n cầu, bất kể khoảng trống đầu tư n&agrave;o m&agrave; c&aacute;c nh&agrave; đầu tư ch&acirc;u &Acirc;u để lại cũng sẽ nhanh ch&oacute;ng được tận dụng bởi c&aacute;c nguồn vốn kh&aacute;c. Trong những thời kỳ biến động n&agrave;y, bất động sản đ&oacute;ng vai tr&ograve; l&agrave; k&ecirc;nh đầu tư cố định cho danh mục đầu tư khi m&agrave; c&aacute;c nh&agrave; quản l&yacute; quỹ tập trung hơn v&agrave;o c&aacute;c t&agrave;i sản linh động. C&aacute;c chuy&ecirc;n gia JLL cho rằng Brexit sẽ mang lại cơ hội ngắn hạn cho c&aacute;c nh&agrave; đầu tư quốc tế nhưng nhu cầu về nh&agrave; ở sẽ yếu đi c&ugrave;ng với sự hạn chế về d&ograve;ng vốn.</p><p>Trong giai đoạn biến động <a href=\"http://www.24h.com.vn/tai-chinh-bat-dong-san-c161.html\" title=\"tài chính\">t&agrave;i ch&iacute;nh</a> vẫn đang tiếp tục, c&oacute; thể d&ograve;ng tiền đầu tư v&agrave;o thị trường bất động sản sẽ chậm lại. Thế nhưng, JLL tin rằng sẽ c&oacute; người chiến thắng sau giai đoạn n&agrave;y. Lượng đầu tư ở ch&acirc;u &Aacute; - Th&aacute;i B&igrave;nh Dương lớn tới nỗi c&aacute;c k&ecirc;nh đầu tư kh&aacute;c tại khu vực ch&acirc;u &Aacute; c&oacute; thể nắm lợi thế từ những cơ hội hiện tại.</p><p>Một v&agrave;i gi&aacute; trị tiền tệ sẽ mạnh hơn - đặc biệt l&agrave; đồng yen Nhật, qua đ&oacute; l&agrave;m gia tăng sức mua. Sự gia tăng đ&aacute;ng kể của c&aacute;c loại tiền tệ n&agrave;y cũng c&oacute; thể khiến l&atilde;i suất của Ng&acirc;n h&agrave;ng Nhật xuống &acirc;m hơn v&agrave; phải nới lỏng định lượng hơn nữa. Những ch&iacute;nh s&aacute;ch n&agrave;y, nếu được ban h&agrave;nh, th&igrave; thị trường bất động sản ch&acirc;u &Aacute; sẽ c&oacute; được hưởng lợi.</p><p>JLL cho rằng c&oacute; 6 hệ lụy đối với thị trường bất động sản khi Anh rời khỏi EU. Thứ nhất, nhu cầu nh&agrave; ở sẽ suy yếu c&ugrave;ng với sự tăng trưởng chậm về <a href=\"http://www.24h.com.vn/tai-chinh-bat-dong-san-c161.html\" title=\"kinh tế\">kinh tế</a> v&agrave; t&acirc;m l&yacute; thị trường giảm s&uacute;t. T&aacute;c động về gi&aacute; thu&ecirc; c&oacute; thể được giới hạn bởi nguồn cung hạn chế, nhưng hoạt động kinh doanh chắc chắn sẽ bị ảnh hưởng.</p><p>Thứ hai, t&acirc;m l&yacute; nh&agrave; đầu tư xấu đi, sẽ c&agrave;ng l&agrave;m giảm d&ograve;ng vốn ngắn hạn đến trung hạn. Thứ ba, c&oacute; khả năng l&agrave; gi&aacute; trị t&agrave;i sản sẽ bị điều chỉnh thấp hơn trong v&ograve;ng hai năm tới. Thứ tư, thị trường nh&agrave; ở được dự đo&aacute;n sẽ dịu xuống d&ugrave; l&atilde;i suất c&oacute; giảm xuống, nhưng sẽ kh&ocirc;ng c&oacute; những điều chỉnh đ&aacute;ng kể, ngoại trừ ở London, nơi m&agrave; gi&aacute; trị t&agrave;i sản cao hơn, l&agrave;m cho thị trường dễ biến động hơn.</p><p>Thứ năm l&agrave; đối với thị trường bất động sản, những điều chỉnh ban đầu sẽ rất khốc kiệt, nhưng theo sau đ&oacute; sẽ l&agrave; xu hướng tăng khi c&aacute;c cơ hội t&aacute;i xuất hiện tại c&aacute;c thị trường ch&iacute;nh ở Anh v&agrave; khi thị trường nhận ra lợi &iacute;ch của việc đồng bảng Anh yếu đi. T&acirc;m l&yacute; thị trường v&agrave; gi&aacute; cả sẽ l&agrave; ch&igrave;a kh&oacute;a để vực dậy nhu cầu thị trường.</p><p>Chris Ireland, Gi&aacute;m đốc điều h&agrave;nh JLL tại Anh đ&aacute;nh gi&aacute; ngay cả m&ocirc;i trường kinh doanh của quốc gia n&agrave;y vẫn giữ như b&igrave;nh thường về mặt thương mại v&agrave; luật ph&aacute;p cho đến năm 2018, một sự thay đổi lớn như vậy chắc hẳn sẽ tạo ra nhiều biến động trong thị trường kinh tế v&agrave; bất động sản tr&ecirc;n to&agrave;n cầu. Tuy nhi&ecirc;n, &ocirc;ng Chris Ireland n&oacute;i rằng những ảnh hưởng tr&ecirc;n chủ yếu chỉ g&oacute;i gọn trong phạm vi nước Anh nếu sự ra đi khỏi EU của nước n&agrave;y diễn ra su&ocirc;n sẻ.</p>', '2016-07-03 11:03:08', 1, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_type`
--

CREATE TABLE `tbl_type` (
  `id_type` int(10) UNSIGNED NOT NULL,
  `name_type` varchar(256) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_type`
--

INSERT INTO `tbl_type` (`id_type`, `name_type`, `deleted`) VALUES
(1, 'Đất nền', 0),
(2, 'Căn hộ', 0),
(3, 'Biệt thự', 0),
(4, 'Nhà phố', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `gioitinh` varchar(10) DEFAULT NULL,
  `deleted` tinyint(9) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`, `gioitinh`, `deleted`) VALUES
(1, '127.0.0.1', 'administrator', '$2y$08$kta7mERQUwSznQ4P8rIHlemTkHGMtyjty0B8YojxhUlVjosT3CluC', '', 'admin@admin.com', NULL, NULL, NULL, 'bVr249DmpobC4oaWzSG7p.', 1268889823, 1526112931, 1, 'Admin', 'tran', 'ADMIN', '0195623455', 'Nam', 0),
(3, '::1', 'duychung', '$2y$08$07kIFreRASeuR6lTozy0bebZM7AQ2fNqhul1sGhxeRBKweaBH2wlm', NULL, 'acvjsd@gmail.com', NULL, NULL, NULL, NULL, 1467461122, 1467723116, 1, NULL, 'Lê Duy Chung', NULL, '0903525787', 'Nam', 1),
(5, '::1', 'dat.09', '$2y$08$nO6dbYtKKa9DC7l/64sVFeugr.DldcC/0zA5oxA/MhDvA.BhERabS', NULL, 'dat.celadoncity@gmail.com', NULL, NULL, NULL, 'kl9vI3Sn06Vb7cjXYJr64u', 1493346401, 1508937871, 1, NULL, 'dat09', NULL, '', 'Nam', 0),
(7, '115.73.30.40', 'dfgdfdfgdf', '$2y$08$7pdh418YR8begnMFXMGspuzCSD1sPmrYIn/hIleVroL3hxLV48eo.', NULL, 'lytranuit@gmail.com', '54146ac1983f86b4c8568af4a926fddd2bda7e35', NULL, NULL, NULL, 1495634239, NULL, 0, NULL, 'dao ly tran', NULL, '123124234234', 'Nam', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(7, 1, 1),
(8, 1, 2),
(10, 2, 2),
(9, 3, 2),
(12, 4, 1),
(13, 4, 2),
(15, 5, 1),
(16, 5, 2),
(17, 6, 2),
(18, 7, 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id_option`);

--
-- Chỉ mục cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_cron`
--
ALTER TABLE `tbl_cron`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_hinhanh`
--
ALTER TABLE `tbl_hinhanh`
  ADD PRIMARY KEY (`id_hinhanh`);

--
-- Chỉ mục cho bảng `tbl_hinhanh_tin`
--
ALTER TABLE `tbl_hinhanh_tin`
  ADD PRIMARY KEY (`id_hinhand_tin`);

--
-- Chỉ mục cho bảng `tbl_hinhanh_tintuc`
--
ALTER TABLE `tbl_hinhanh_tintuc`
  ADD PRIMARY KEY (`id_hinhanh_tintuc`);

--
-- Chỉ mục cho bảng `tbl_huong`
--
ALTER TABLE `tbl_huong`
  ADD PRIMARY KEY (`id_huong`);

--
-- Chỉ mục cho bảng `tbl_khuvuc`
--
ALTER TABLE `tbl_khuvuc`
  ADD PRIMARY KEY (`id_khuvuc`);

--
-- Chỉ mục cho bảng `tbl_lydo`
--
ALTER TABLE `tbl_lydo`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_page`
--
ALTER TABLE `tbl_page`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_page_web`
--
ALTER TABLE `tbl_page_web`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_phaply`
--
ALTER TABLE `tbl_phaply`
  ADD PRIMARY KEY (`id_phaply`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_tienich`
--
ALTER TABLE `tbl_tienich`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_tin`
--
ALTER TABLE `tbl_tin`
  ADD PRIMARY KEY (`id_tin`);

--
-- Chỉ mục cho bảng `tbl_tintuc`
--
ALTER TABLE `tbl_tintuc`
  ADD PRIMARY KEY (`id_tintuc`);

--
-- Chỉ mục cho bảng `tbl_type`
--
ALTER TABLE `tbl_type`
  ADD PRIMARY KEY (`id_type`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `options`
--
ALTER TABLE `options`
  MODIFY `id_option` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `tbl_cron`
--
ALTER TABLE `tbl_cron`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_hinhanh`
--
ALTER TABLE `tbl_hinhanh`
  MODIFY `id_hinhanh` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT cho bảng `tbl_hinhanh_tin`
--
ALTER TABLE `tbl_hinhanh_tin`
  MODIFY `id_hinhand_tin` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_hinhanh_tintuc`
--
ALTER TABLE `tbl_hinhanh_tintuc`
  MODIFY `id_hinhanh_tintuc` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `tbl_huong`
--
ALTER TABLE `tbl_huong`
  MODIFY `id_huong` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_khuvuc`
--
ALTER TABLE `tbl_khuvuc`
  MODIFY `id_khuvuc` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_lydo`
--
ALTER TABLE `tbl_lydo`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `tbl_page`
--
ALTER TABLE `tbl_page`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `tbl_page_web`
--
ALTER TABLE `tbl_page_web`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_phaply`
--
ALTER TABLE `tbl_phaply`
  MODIFY `id_phaply` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_tienich`
--
ALTER TABLE `tbl_tienich`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `tbl_tin`
--
ALTER TABLE `tbl_tin`
  MODIFY `id_tin` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `tbl_tintuc`
--
ALTER TABLE `tbl_tintuc`
  MODIFY `id_tintuc` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_type`
--
ALTER TABLE `tbl_type`
  MODIFY `id_type` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
