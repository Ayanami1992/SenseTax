-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2020-01-28 06:11:00
-- 服务器版本： 10.4.6-MariaDB
-- PHP 版本： 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `tax`
--

-- --------------------------------------------------------

--
-- 表的结构 `authority`
--

CREATE TABLE `authority` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `authority`
--

INSERT INTO `authority` (`id`, `name`) VALUES
(1, 'ROLE_ADMIN'),
(2, 'ROLE_USER');

-- --------------------------------------------------------

--
-- 表的结构 `a_taxlist`
--

CREATE TABLE `a_taxlist` (
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `tax` int(11) DEFAULT NULL COMMENT '未払計上前　当期利益(損失)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `a_taxlist`
--

INSERT INTO `a_taxlist` (`user_id`, `year`, `company_id`, `tax`) VALUES
('1', '2019', 1, -2220941);

-- --------------------------------------------------------

--
-- 表的结构 `company`
--

CREATE TABLE `company` (
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `legalPersonName_k` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人名フリガナ',
  `legalPersonName_h` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人名ふりがな',
  `legalPersonName` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人名',
  `B_03` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '管轄税務署',
  `B_04` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '納税地',
  `B_05` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '電話番号',
  `representativeName_k` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '代表者フリガナ',
  `representativeName_h` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '代表者ふりがな',
  `representativeName` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '代表者氏名',
  `B_10` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '代表者住所',
  `accountingName_h` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '経理責任者ふりがな',
  `accountingName` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '経理責任者氏名',
  `B_12` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '事業種目',
  `B_13` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '整理番号',
  `B_14` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '青色白色区分',
  `B_68` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人の区分',
  `B_15` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '翌年別表等送付要否',
  `B_16` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '期首日',
  `B_17` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '期末日',
  `B_18` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '中間申告',
  `B_19` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `B_20` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '期末資本金',
  `B_21` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '〃＋資本準備金',
  `B_22` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '提出日',
  `B_23` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '決算確定日',
  `B_24` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '申告区分',
  `B_25` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '中間配当効力日',
  `B_26` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '所轄',
  `B_27` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '業種目',
  `B_28` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '概況書',
  `B_29` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '要否中間',
  `B_30` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '別表等送付',
  `B_71` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人番号',
  `B_67` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '税理士書面提出',
  `B_31` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '申告期限の延長の処分の有無 法人税',
  `B_32` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '申告期限の延長の処分の有無　事業税',
  `B_33` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '翌期の中間申告の要否',
  `B_34` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '国外関連者の有無',
  `Q46` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '利子割還付額の均等割への充当',
  `B_35` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '銀行名',
  `B_69` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `B_36` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '支店名',
  `B_70` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `B_37` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '口座種類',
  `B_38` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '口座番号',
  `B_39` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '郵便局名',
  `B_40` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '貯金記号',
  `B_41` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '貯金番号',
  `B_42` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '税理士名',
  `B_43` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '税理士電話',
  `B_44` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `B_45` varchar(11) CHARACTER SET utf8 DEFAULT NULL,
  `B_46` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '上部左',
  `B_47` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '上部右',
  `B_48` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '下部上段',
  `B_49` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `B_50` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `B_51` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '下部上段',
  `B_52` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `B_53` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `B_56` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '下部下段',
  `B_57` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `B_58` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `B_59` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '下部下段',
  `B_60` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `B_61` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `billing_amount` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '売上金額'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `company`
--

INSERT INTO `company` (`user_id`, `year`, `company_id`, `legalPersonName_k`, `legalPersonName_h`, `legalPersonName`, `B_03`, `B_04`, `B_05`, `representativeName_k`, `representativeName_h`, `representativeName`, `B_10`, `accountingName_h`, `accountingName`, `B_12`, `B_13`, `B_14`, `B_68`, `B_15`, `B_16`, `B_17`, `B_18`, `B_19`, `B_20`, `B_21`, `B_22`, `B_23`, `B_24`, `B_25`, `B_26`, `B_27`, `B_28`, `B_29`, `B_30`, `B_71`, `B_67`, `B_31`, `B_32`, `B_33`, `B_34`, `Q46`, `B_35`, `B_69`, `B_36`, `B_70`, `B_37`, `B_38`, `B_39`, `B_40`, `B_41`, `B_42`, `B_43`, `B_44`, `B_45`, `B_46`, `B_47`, `B_48`, `B_49`, `B_50`, `B_51`, `B_52`, `B_53`, `B_56`, `B_57`, `B_58`, `B_59`, `B_60`, `B_61`, `billing_amount`) VALUES
('1', '2019', 1, 'ササキケンセツ', '', '株式会社佐々木建装', '朝霞', '埼玉県新座市片山三丁目9番34－16号', '０９０３６９４０９１１', 'ササキ　ケン', '', '佐々木　健', '埼玉県新座市片山三丁目9番34－16号', '', '', '建築業', '', '青色申告', '普通法人', '要', '2019-08-01', '2020-07-31', '', '', '3000000', '', '', '', '確定', '', '', '', '', '', '', ' ', '第30条の書面提出有', '無', '無', NULL, '無', 'しない', '', '金庫', 'ae', '支店', '普通', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `c_establishmentinfo`
--

CREATE TABLE `c_establishmentinfo` (
  `company_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `year` varchar(4) NOT NULL,
  `c_01` varchar(50) DEFAULT NULL,
  `c_02` varchar(50) DEFAULT NULL COMMENT '都道府県',
  `c_03` varchar(50) DEFAULT NULL,
  `c_05` int(11) DEFAULT NULL COMMENT '期間末日人数',
  `c_06` int(11) DEFAULT NULL COMMENT '切捨月数',
  `c_g71` int(11) DEFAULT NULL COMMENT '(県　均等割　円)',
  `c_g72` int(11) DEFAULT NULL COMMENT '(県　森林環境税　円)',
  `c_07` int(11) DEFAULT NULL COMMENT '県　合計　円',
  `c_g74` int(11) DEFAULT NULL,
  `c_g75` int(11) DEFAULT NULL,
  `c_08` int(11) DEFAULT NULL,
  `c_10` int(11) DEFAULT NULL COMMENT '廃止前月末人数',
  `c_11` int(11) DEFAULT NULL COMMENT '切上月数',
  `c_12` varchar(10) DEFAULT NULL COMMENT '事0～400　%',
  `c_13` varchar(10) DEFAULT NULL COMMENT '事400～800　%',
  `c_14` varchar(10) DEFAULT NULL COMMENT '事業税800～　%',
  `c_15` varchar(10) DEFAULT NULL COMMENT '県　法人税割　%',
  `c_g84` varchar(10) DEFAULT NULL COMMENT '県　地方法人特別税　%',
  `c_16` varchar(50) DEFAULT NULL COMMENT '市　法人税割　%',
  `c_19` varchar(255) DEFAULT NULL COMMENT '事業所名',
  `c_20` varchar(512) DEFAULT NULL COMMENT '所在地',
  `c_22` varchar(50) DEFAULT NULL COMMENT '第6号様式宛先',
  `c_23` varchar(50) DEFAULT NULL COMMENT '第20号様式宛先',
  `c_24` varchar(50) DEFAULT NULL COMMENT '整理番号',
  `c_25` varchar(255) DEFAULT NULL COMMENT '事務所',
  `c_26` varchar(50) DEFAULT NULL COMMENT '管理番号',
  `c_27` varchar(50) DEFAULT NULL COMMENT '申告区分',
  `c_n72` varchar(50) DEFAULT NULL COMMENT '欄外番号',
  `c_28` varchar(50) DEFAULT NULL COMMENT '整理番号',
  `c_29` varchar(255) DEFAULT NULL COMMENT '事務所',
  `c_30` varchar(50) DEFAULT NULL COMMENT '管理番号',
  `c_31` varchar(50) DEFAULT NULL COMMENT '申告区分',
  `c_n83` varchar(50) DEFAULT NULL COMMENT '封 一連番号',
  `c_n84` varchar(50) DEFAULT NULL COMMENT '組織',
  `c_n85` varchar(50) DEFAULT NULL COMMENT '法人名',
  `c_n86` varchar(50) DEFAULT NULL COMMENT '資本金',
  `c_m87` varchar(50) DEFAULT NULL COMMENT '利',
  `c_o87` varchar(50) DEFAULT NULL COMMENT '事延',
  `c_m88` varchar(50) DEFAULT NULL COMMENT '分非',
  `c_o88` varchar(50) DEFAULT NULL COMMENT '都延',
  `c_m89` varchar(50) DEFAULT NULL COMMENT '自主',
  `c_o89` varchar(50) DEFAULT NULL COMMENT '繰'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `c_establishmentinfo`
--

INSERT INTO `c_establishmentinfo` (`company_id`, `user_id`, `year`, `c_01`, `c_02`, `c_03`, `c_05`, `c_06`, `c_g71`, `c_g72`, `c_07`, `c_g74`, `c_g75`, `c_08`, `c_10`, `c_11`, `c_12`, `c_13`, `c_14`, `c_15`, `c_g84`, `c_16`, `c_19`, `c_20`, `c_22`, `c_23`, `c_24`, `c_25`, `c_26`, `c_27`, `c_n72`, `c_28`, `c_29`, `c_30`, `c_31`, `c_n83`, `c_n84`, `c_n85`, `c_n86`, `c_m87`, `c_o87`, `c_m88`, `c_o88`, `c_m89`, `c_o89`) VALUES
(1, '1', '2019', '62', '埼玉県', '政令指定都市以外', 1, 12, 20000, 0, 20000, 0, 0, 0, 1, 12, '3.4', '5.1', '6.7', '3.2', '43.2', '0', '株式会社佐々木建装', '埼玉県新座市片山三丁目9番34－16号', '朝霞県税事務所', '朝霞市税事務所', '11', '12', '13', '14', '15', '21', '22', '23', '24', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `d_table52`
--

CREATE TABLE `d_table52` (
  `company_id` int(11) NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `d_h97` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人税',
  `d_h98` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '道府県民税',
  `d_h99` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '市町村民税',
  `d_h100` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '事業税',
  `d_h102` varchar(11) CHARACTER SET utf8 DEFAULT NULL COMMENT '納税充当金(42)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `d_table52`
--

INSERT INTO `d_table52` (`company_id`, `user_id`, `year`, `d_h97`, `d_h98`, `d_h99`, `d_h100`, `d_h102`) VALUES
(1, '1', '2019', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `e_table51`
--

CREATE TABLE `e_table51` (
  `company_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `year` varchar(4) NOT NULL,
  `e_h108` varchar(11) DEFAULT NULL COMMENT '利益準備金',
  `e_01` varchar(255) DEFAULT NULL COMMENT '区分名1',
  `e_h109` varchar(11) DEFAULT NULL COMMENT '区分名1金額',
  `e_h110` varchar(11) DEFAULT NULL COMMENT '仮払税金',
  `e_h111` varchar(11) DEFAULT NULL COMMENT '未収還付法人税',
  `e_h112` varchar(11) DEFAULT NULL COMMENT '未収還付道府県民税',
  `e_h113` varchar(11) DEFAULT NULL COMMENT '未収還付市町村民税',
  `e_c114` varchar(255) DEFAULT NULL COMMENT '区分名2',
  `e_h114` varchar(11) DEFAULT NULL COMMENT '区分名2金額',
  `e_c115` varchar(255) DEFAULT NULL COMMENT '区分名3',
  `e_h115` varchar(11) DEFAULT NULL COMMENT '区分名3金額',
  `e_c116` varchar(255) DEFAULT NULL COMMENT '区分名4',
  `e_h116` varchar(11) DEFAULT NULL COMMENT '区分名4金額',
  `e_c117` varchar(255) DEFAULT NULL COMMENT '区分名5',
  `e_h117` varchar(11) DEFAULT NULL COMMENT '区分名5金額',
  `e_c118` varchar(255) DEFAULT NULL COMMENT '区分名6',
  `e_h118` varchar(11) DEFAULT NULL COMMENT '区分名6金額',
  `e_c119` varchar(255) DEFAULT NULL COMMENT '区分名7',
  `e_h119` varchar(11) DEFAULT NULL COMMENT '区分名7金額',
  `e_h120` varchar(11) DEFAULT NULL COMMENT '減価償却の償却超過額',
  `e_h121` varchar(11) DEFAULT NULL COMMENT '未収還付法人税',
  `e_h122` varchar(11) DEFAULT NULL COMMENT '未収還付道府県民税',
  `e_h123` varchar(11) DEFAULT NULL COMMENT '未収還付市町村民税',
  `e_h125` varchar(11) DEFAULT NULL COMMENT '繰越損益金',
  `e_h127` varchar(11) DEFAULT NULL COMMENT '未納法人税',
  `e_h128` varchar(11) DEFAULT NULL COMMENT '未納道府県民税',
  `e_h129` varchar(11) DEFAULT NULL COMMENT '未納市町村民税'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `e_table51`
--

INSERT INTO `e_table51` (`company_id`, `user_id`, `year`, `e_h108`, `e_01`, `e_h109`, `e_h110`, `e_h111`, `e_h112`, `e_h113`, `e_c114`, `e_h114`, `e_c115`, `e_h115`, `e_c116`, `e_h116`, `e_c117`, `e_h117`, `e_c118`, `e_h118`, `e_c119`, `e_h119`, `e_h120`, `e_h121`, `e_h122`, `e_h123`, `e_h125`, `e_h127`, `e_h128`, `e_h129`) VALUES
(1, '1', '2019', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `f_carry_over_loss`
--

CREATE TABLE `f_carry_over_loss` (
  `company_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `year` varchar(4) NOT NULL,
  `f_d136` varchar(10) DEFAULT NULL,
  `f_d137` varchar(10) DEFAULT NULL,
  `f_d138` varchar(10) DEFAULT NULL,
  `f_d139` varchar(10) DEFAULT NULL,
  `f_d140` varchar(10) DEFAULT NULL,
  `f_d141` varchar(10) DEFAULT NULL,
  `f_d142` varchar(10) DEFAULT NULL,
  `f_d143` varchar(10) DEFAULT NULL,
  `f_d144` varchar(10) DEFAULT NULL,
  `f_d145` varchar(10) DEFAULT NULL,
  `f_d149` varchar(10) DEFAULT NULL,
  `f_d150` varchar(10) DEFAULT NULL,
  `f_d151` varchar(10) DEFAULT NULL,
  `f_d152` varchar(10) DEFAULT NULL,
  `f_d153` varchar(10) DEFAULT NULL,
  `f_d154` varchar(10) DEFAULT NULL,
  `f_d155` varchar(10) DEFAULT NULL,
  `f_d156` varchar(10) DEFAULT NULL,
  `f_d157` varchar(10) DEFAULT NULL,
  `f_f136` varchar(10) DEFAULT NULL,
  `f_f137` varchar(10) DEFAULT NULL,
  `f_f138` varchar(10) DEFAULT NULL,
  `f_f139` varchar(10) DEFAULT NULL,
  `f_f140` varchar(10) DEFAULT NULL,
  `f_f141` varchar(10) DEFAULT NULL,
  `f_f142` varchar(10) DEFAULT NULL,
  `f_f143` varchar(10) DEFAULT NULL,
  `f_f144` varchar(10) DEFAULT NULL,
  `f_f145` varchar(10) DEFAULT NULL,
  `f_f149` varchar(10) DEFAULT NULL,
  `f_f150` varchar(10) DEFAULT NULL,
  `f_f151` varchar(10) DEFAULT NULL,
  `f_f152` varchar(10) DEFAULT NULL,
  `f_f153` varchar(10) DEFAULT NULL,
  `f_f154` varchar(10) DEFAULT NULL,
  `f_f155` varchar(10) DEFAULT NULL,
  `f_f156` varchar(10) DEFAULT NULL,
  `f_f157` varchar(10) DEFAULT NULL,
  `f_h136` varchar(11) DEFAULT NULL,
  `f_h137` varchar(11) DEFAULT NULL,
  `f_h138` varchar(11) DEFAULT NULL,
  `f_h139` varchar(11) DEFAULT NULL,
  `f_h140` varchar(11) DEFAULT NULL,
  `f_h141` varchar(11) DEFAULT NULL,
  `f_h142` varchar(11) DEFAULT NULL,
  `f_h143` varchar(11) DEFAULT NULL,
  `f_h144` varchar(11) DEFAULT NULL,
  `f_h145` varchar(11) DEFAULT NULL,
  `f_h149` varchar(11) DEFAULT NULL,
  `f_h150` varchar(11) DEFAULT NULL,
  `f_h151` varchar(11) DEFAULT NULL,
  `f_h152` varchar(11) DEFAULT NULL,
  `f_h153` varchar(11) DEFAULT NULL,
  `f_h154` varchar(11) DEFAULT NULL,
  `f_h155` varchar(11) DEFAULT NULL,
  `f_h156` varchar(11) DEFAULT NULL,
  `f_h157` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `g_temporarytaxcancellation`
--

CREATE TABLE `g_temporarytaxcancellation` (
  `company_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `year` varchar(4) NOT NULL,
  `g_i162` int(11) DEFAULT NULL,
  `g_i165` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `g_temporarytaxcancellation`
--

INSERT INTO `g_temporarytaxcancellation` (`company_id`, `user_id`, `year`, `g_i162`, `g_i165`) VALUES
(1, '1', '2019', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `h_taxpayments`
--

CREATE TABLE `h_taxpayments` (
  `company_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `year` varchar(4) NOT NULL,
  `h_k173` int(11) DEFAULT NULL,
  `h_k177` int(11) DEFAULT NULL,
  `h_k178` int(11) DEFAULT NULL,
  `h_k179` int(11) DEFAULT NULL,
  `h_k180` int(11) DEFAULT NULL,
  `h_k182` int(11) DEFAULT NULL,
  `h_k186` int(11) DEFAULT NULL,
  `h_k187` int(11) DEFAULT NULL,
  `h_k188` int(11) DEFAULT NULL,
  `h_k189` int(11) DEFAULT NULL,
  `h_k191` int(11) DEFAULT NULL,
  `h_k192` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `h_taxpayments`
--

INSERT INTO `h_taxpayments` (`company_id`, `user_id`, `year`, `h_k173`, `h_k177`, `h_k178`, `h_k179`, `h_k180`, `h_k182`, `h_k186`, `h_k187`, `h_k188`, `h_k189`, `h_k191`, `h_k192`) VALUES
(1, '1', '2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `i_taxpayback`
--

CREATE TABLE `i_taxpayback` (
  `company_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `year` varchar(4) NOT NULL,
  `i_k197` int(11) DEFAULT NULL,
  `i_k198` int(11) DEFAULT NULL,
  `i_k199` int(11) DEFAULT NULL,
  `i_k200` int(11) DEFAULT NULL,
  `i_k201` int(11) DEFAULT NULL,
  `i_k202` int(11) DEFAULT NULL,
  `i_k207` int(11) DEFAULT NULL,
  `i_k208` int(11) DEFAULT NULL,
  `i_k209` int(11) DEFAULT NULL,
  `i_k210` int(11) DEFAULT NULL,
  `i_k211` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `i_taxpayback`
--

INSERT INTO `i_taxpayback` (`company_id`, `user_id`, `year`, `i_k197`, `i_k198`, `i_k199`, `i_k200`, `i_k201`, `i_k202`, `i_k207`, `i_k208`, `i_k209`, `i_k210`, `i_k211`) VALUES
(1, '1', '2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `j_intermediatepayments`
--

CREATE TABLE `j_intermediatepayments` (
  `company_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `year` varchar(4) NOT NULL,
  `j_g224` int(11) DEFAULT NULL,
  `j_g225` int(11) DEFAULT NULL,
  `j_g226` int(11) DEFAULT NULL,
  `j_g227` int(11) DEFAULT NULL,
  `j_g228` int(11) DEFAULT NULL,
  `j_g229` int(11) DEFAULT NULL,
  `j_g230` int(11) DEFAULT NULL,
  `j_g231` int(11) DEFAULT NULL,
  `j_m224` int(11) DEFAULT NULL,
  `j_m225` int(11) DEFAULT NULL,
  `j_m226` int(11) DEFAULT NULL,
  `j_m227` int(11) DEFAULT NULL,
  `j_m228` int(11) DEFAULT NULL,
  `j_m229` int(11) DEFAULT NULL,
  `j_m230` int(11) DEFAULT NULL,
  `j_m231` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `j_intermediatepayments`
--

INSERT INTO `j_intermediatepayments` (`company_id`, `user_id`, `year`, `j_g224`, `j_g225`, `j_g226`, `j_g227`, `j_g228`, `j_g229`, `j_g230`, `j_g231`, `j_m224`, `j_m225`, `j_m226`, `j_m227`, `j_m228`, `j_m229`, `j_m230`, `j_m231`) VALUES
(1, '1', '2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `k_taxcourses`
--

CREATE TABLE `k_taxcourses` (
  `company_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `year` varchar(4) NOT NULL,
  `k_c237` varchar(255) DEFAULT NULL,
  `k_e237` int(11) DEFAULT NULL,
  `k_h237` varchar(50) DEFAULT NULL,
  `k_l239` int(11) DEFAULT NULL,
  `k_l240` int(11) DEFAULT NULL,
  `k_l241` int(11) DEFAULT NULL,
  `k_l242` int(11) DEFAULT NULL,
  `k_l243` int(11) DEFAULT NULL,
  `k_l244` int(11) DEFAULT NULL,
  `k_l245` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `k_taxcourses`
--

INSERT INTO `k_taxcourses` (`company_id`, `user_id`, `year`, `k_c237`, `k_e237`, `k_h237`, `k_l239`, `k_l240`, `k_l241`, `k_l242`, `k_l243`, `k_l244`, `k_l245`) VALUES
(1, '1', '2019', '', NULL, '賞与', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `local_tax_rate`
--

CREATE TABLE `local_tax_rate` (
  `city_area` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prefecture` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `area` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city_tax_rate1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city_tax_rate2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city_equalization9` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city_equalization8` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city_equalization7` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city_equalization6` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prefecture_equalization_1000` int(11) DEFAULT NULL,
  `prefecture_equalization1000_` int(11) DEFAULT NULL,
  `forest_environment_tax1000_` int(11) DEFAULT NULL,
  `forest_environment_tax_1001` int(11) DEFAULT NULL,
  `city_forest_a` int(11) DEFAULT NULL,
  `city_forest_b` int(11) DEFAULT NULL,
  `city_forest_c` int(11) DEFAULT NULL,
  `city_forest_d` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='地方税税率・均等割' ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `local_tax_rate`
--

INSERT INTO `local_tax_rate` (`city_area`, `prefecture`, `city`, `area`, `city_tax_rate1`, `city_tax_rate2`, `city_equalization9`, `city_equalization8`, `city_equalization7`, `city_equalization6`, `prefecture_equalization_1000`, `prefecture_equalization1000_`, `forest_environment_tax1000_`, `forest_environment_tax_1001`, `city_forest_a`, `city_forest_b`, `city_forest_c`, `city_forest_d`) VALUES
('さいたま市中央区', '埼玉県', 'さいたま市', '中央区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('さいたま市北区', '埼玉県', 'さいたま市', '北区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('さいたま市南区', '埼玉県', 'さいたま市', '南区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('さいたま市大宮区', '埼玉県', 'さいたま市', '大宮区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('さいたま市岩槻区', '埼玉県', 'さいたま市', '岩槻区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('さいたま市桜区', '埼玉県', 'さいたま市', '桜区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('さいたま市浦和区', '埼玉県', 'さいたま市', '浦和区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('さいたま市緑区', '埼玉県', 'さいたま市', '緑区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('さいたま市西区', '埼玉県', 'さいたま市', '西区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('さいたま市見沼区', '埼玉県', 'さいたま市', '見沼区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('三重県の市町村', '三重県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 2000, 5000, NULL, NULL, NULL, NULL),
('京都市上京区', '京都府', '京都市', '上京区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('京都市下京区', '京都府', '京都市', '下京区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('京都市中京区', '京都府', '京都市', '中京区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('京都市伏見区', '京都府', '京都市', '伏見区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('京都市北区', '京都府', '京都市', '北区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('京都市南区', '京都府', '京都市', '南区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('京都市右京区', '京都府', '京都市', '右京区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('京都市山科区', '京都府', '京都市', '山科区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('京都市左京区', '京都府', '京都市', '左京区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('京都市東山区', '京都府', '京都市', '東山区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('京都市西京区', '京都府', '京都市', '西京区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('京都府の市町村', '京都府', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('仙台市太白区', '宮城県', '仙台市', '太白区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 2000, 5000, NULL, NULL, NULL, NULL),
('仙台市宮城野区', '宮城県', '仙台市', '宮城野区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 2000, 5000, NULL, NULL, NULL, NULL),
('仙台市泉区', '宮城県', '仙台市', '泉区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 2000, 5000, NULL, NULL, NULL, NULL),
('仙台市若林区', '宮城県', '仙台市', '若林区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 2000, 5000, NULL, NULL, NULL, NULL),
('仙台市青葉区', '宮城県', '仙台市', '青葉区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 2000, 5000, NULL, NULL, NULL, NULL),
('佐賀県の市町村', '佐賀県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('兵庫県の市町村', '兵庫県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 2000, 5000, NULL, NULL, NULL, NULL),
('北九州市八幡東区', '福岡県', '北九州市', '八幡東区', '12.300', '9.700', '60000', '144000', '156000', '180000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('北九州市八幡西区', '福岡県', '北九州市', '八幡西区', '12.300', '9.700', '60000', '144000', '156000', '180000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('北九州市小倉北区', '福岡県', '北九州市', '小倉北区', '12.300', '9.700', '60000', '144000', '156000', '180000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('北九州市小倉南区', '福岡県', '北九州市', '小倉南区', '12.300', '9.700', '60000', '144000', '156000', '180000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('北九州市戸畑区', '福岡県', '北九州市', '戸畑区', '12.300', '9.700', '60000', '144000', '156000', '180000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('北九州市若松区', '福岡県', '北九州市', '若松区', '12.300', '9.700', '60000', '144000', '156000', '180000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('北九州市門司区', '福岡県', '北九州市', '門司区', '12.300', '9.700', '60000', '144000', '156000', '180000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('北海道の市町村', '北海道', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('千葉市中央区', '千葉県', '千葉市', '中央区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('千葉市稲毛区', '千葉県', '千葉市', '稲毛区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('千葉市緑区', '千葉県', '千葉市', '緑区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('千葉市美浜区', '千葉県', '千葉市', '美浜区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('千葉市花見川区', '千葉県', '千葉市', '花見川区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('千葉市若葉区', '千葉県', '千葉市', '若葉区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('千葉県の市町村', '千葉県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('名古屋市中区', '愛知県', '名古屋市', '中区', '11.685', '9.215', '47500', '114000', '123500', '142500', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('名古屋市中川区', '愛知県', '名古屋市', '中川区', '11.685', '9.215', '47500', '114000', '123500', '142500', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('名古屋市中村区', '愛知県', '名古屋市', '中村区', '11.685', '9.215', '47500', '114000', '123500', '142500', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('名古屋市北区', '愛知県', '名古屋市', '北区', '11.685', '9.215', '47500', '114000', '123500', '142500', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('名古屋市千種区', '愛知県', '名古屋市', '千種区', '11.685', '9.215', '47500', '114000', '123500', '142500', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('名古屋市南区', '愛知県', '名古屋市', '南区', '11.685', '9.215', '47500', '114000', '123500', '142500', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('名古屋市名東区', '愛知県', '名古屋市', '名東区', '11.685', '9.215', '47500', '114000', '123500', '142500', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('名古屋市天白区', '愛知県', '名古屋市', '天白区', '11.685', '9.215', '47500', '114000', '123500', '142500', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('名古屋市守山区', '愛知県', '名古屋市', '守山区', '11.685', '9.215', '47500', '114000', '123500', '142500', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('名古屋市昭和区', '愛知県', '名古屋市', '昭和区', '11.685', '9.215', '47500', '114000', '123500', '142500', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('名古屋市東区', '愛知県', '名古屋市', '東区', '11.685', '9.215', '47500', '114000', '123500', '142500', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('名古屋市港区', '愛知県', '名古屋市', '港区', '11.685', '9.215', '47500', '114000', '123500', '142500', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('名古屋市熱田区', '愛知県', '名古屋市', '熱田区', '11.685', '9.215', '47500', '114000', '123500', '142500', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('名古屋市瑞穂区', '愛知県', '名古屋市', '瑞穂区', '11.685', '9.215', '47500', '114000', '123500', '142500', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('名古屋市緑区', '愛知県', '名古屋市', '緑区', '11.685', '9.215', '47500', '114000', '123500', '142500', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('名古屋市西区', '愛知県', '名古屋市', '西区', '11.685', '9.215', '47500', '114000', '123500', '142500', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('和歌山県の市町村', '和歌山県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('埼玉県の市町村', '埼玉県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('堺市中区', '大阪府', '堺市', '中区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('堺市北区', '大阪府', '堺市', '北区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('堺市南区', '大阪府', '堺市', '南区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('堺市堺区', '大阪府', '堺市', '堺区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('堺市東区', '大阪府', '堺市', '東区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('堺市美原区', '大阪府', '堺市', '美原区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('堺市西区', '大阪府', '堺市', '西区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大分県の市町村', '大分県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('大阪市中央区', '大阪府', '大阪市', '中央区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大阪市住之江区', '大阪府', '大阪市', '住之江区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大阪市住吉区', '大阪府', '大阪市', '住吉区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大阪市北区', '大阪府', '大阪市', '北区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大阪市城東区', '大阪府', '大阪市', '城東区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大阪市大正区', '大阪府', '大阪市', '大正区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大阪市天王寺区', '大阪府', '大阪市', '天王寺区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大阪市平野区', '大阪府', '大阪市', '平野区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大阪市旭区', '大阪府', '大阪市', '旭区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大阪市東住吉区', '大阪府', '大阪市', '東住吉区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大阪市東成区', '大阪府', '大阪市', '東成区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大阪市東淀川区', '大阪府', '大阪市', '東淀川区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大阪市此花区', '大阪府', '大阪市', '此花区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大阪市浪速区', '大阪府', '大阪市', '浪速区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大阪市淀川区', '大阪府', '大阪市', '淀川区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大阪市港区', '大阪府', '大阪市', '港区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大阪市生野区', '大阪府', '大阪市', '生野区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大阪市福島区', '大阪府', '大阪市', '福島区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大阪市西区', '大阪府', '大阪市', '西区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大阪市西成区', '大阪府', '大阪市', '西成区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大阪市西淀川区', '大阪府', '大阪市', '西淀川区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大阪市都島区', '大阪府', '大阪市', '都島区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大阪市阿倍野区', '大阪府', '大阪市', '阿倍野区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大阪市鶴見区', '大阪府', '大阪市', '鶴見区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('大阪府の市町村', '大阪府', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 75000, NULL, NULL, NULL, NULL, NULL, NULL),
('奈良県の市町村', '奈良県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('宮城県の市町村', '宮城県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 2000, 5000, NULL, NULL, NULL, NULL),
('宮崎県の市町村', '宮崎県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('富山県の市町村', '富山県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('山口県の市町村', '山口県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('山形県の市町村', '山形県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 2000, 5000, NULL, NULL, NULL, NULL),
('山梨県の市町村', '山梨県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('岐阜県の市町村', '岐阜県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 2000, 5000, NULL, NULL, NULL, NULL),
('岡山市中区', '岡山県', '岡山市', '中区', '14.7', '12.1', '50000', '120000', '130000', '150000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('岡山市北区', '岡山県', '岡山市', '北区', '14.7', '12.1', '50000', '120000', '130000', '150000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('岡山市南区', '岡山県', '岡山市', '南区', '14.7', '12.1', '50000', '120000', '130000', '150000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('岡山市東区', '岡山県', '岡山市', '東区', '14.7', '12.1', '50000', '120000', '130000', '150000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('岡山県の市町村', '岡山県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('岩手県の市町村', '岩手県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 2000, 5000, NULL, NULL, NULL, NULL),
('島根県の市町村', '島根県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('川崎市中原区', '神奈川県', '川崎市', '中原区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('川崎市多摩区', '神奈川県', '川崎市', '多摩区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('川崎市宮前区', '神奈川県', '川崎市', '宮前区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('川崎市川崎区', '神奈川県', '川崎市', '川崎区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('川崎市幸区', '神奈川県', '川崎市', '幸区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('川崎市高津区', '神奈川県', '川崎市', '高津区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('川崎市麻生区', '神奈川県', '川崎市', '麻生区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('広島市中区', '広島県', '広島市', '中区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('広島市佐伯区', '広島県', '広島市', '佐伯区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('広島市南区', '広島県', '広島市', '南区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('広島市安佐北区', '広島県', '広島市', '安佐北区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('広島市安佐南区', '広島県', '広島市', '安佐南区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('広島市安芸区', '広島県', '広島市', '安芸区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('広島市東区', '広島県', '広島市', '東区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('広島市西区', '広島県', '広島市', '西区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('広島県の市町村', '広島県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('徳島県の市町村', '徳島県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('愛媛県の市町村', '愛媛県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 1400, 3500, NULL, NULL, NULL, NULL),
('愛知県の市町村', '愛知県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('新潟市中央区', '新潟県', '新潟市', '中央区', '13.500', '10.900', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('新潟市北区', '新潟県', '新潟市', '北区', '13.500', '10.900', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('新潟市南区', '新潟県', '新潟市', '南区', '13.500', '10.900', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('新潟市東区', '新潟県', '新潟市', '東区', '13.500', '10.900', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('新潟市江南区', '新潟県', '新潟市', '江南区', '13.500', '10.900', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('新潟市秋葉区', '新潟県', '新潟市', '秋葉区', '13.500', '10.900', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('新潟市西区', '新潟県', '新潟市', '西区', '13.500', '10.900', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('新潟市西蒲区', '新潟県', '新潟市', '西蒲区', '13.500', '10.900', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('新潟県の市町村', '新潟県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('札幌市中央区', '北海道', '札幌市', '中央区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('札幌市北区', '北海道', '札幌市', '北区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('札幌市南区', '北海道', '札幌市', '南区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('札幌市厚別区', '北海道', '札幌市', '厚別区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('札幌市手稲区', '北海道', '札幌市', '手稲区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('札幌市東区', '北海道', '札幌市', '東区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('札幌市清田区', '北海道', '札幌市', '清田区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('札幌市白石区', '北海道', '札幌市', '白石区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('札幌市西区', '北海道', '札幌市', '西区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('札幌市豊平区', '北海道', '札幌市', '豊平区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('東京都の市町村', '東京都', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('東京都世田谷区', '東京都', '世田谷区', '未使用2', '12.300', '9.700', '70000', '140000', '180000', '200000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('東京都中央区', '東京都', '中央区', '未使用2', '12.300', '9.700', '70000', '140000', '180000', '200000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('東京都中野区', '東京都', '中野区', '未使用2', '12.300', '9.700', '70000', '140000', '180000', '200000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('東京都北区', '東京都', '北区', '未使用2', '12.300', '9.700', '70000', '140000', '180000', '200000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('東京都千代田区', '東京都', '千代田区', '未使用2', '12.300', '9.700', '70000', '140000', '180000', '200000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('東京都台東区', '東京都', '台東区', '未使用2', '12.300', '9.700', '70000', '140000', '180000', '200000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('東京都品川区', '東京都', '品川区', '未使用2', '12.300', '9.700', '70000', '140000', '180000', '200000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('東京都墨田区', '東京都', '墨田区', '未使用2', '12.300', '9.700', '70000', '140000', '180000', '200000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('東京都大田区', '東京都', '大田区', '未使用2', '12.300', '9.700', '70000', '140000', '180000', '200000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('東京都文京区', '東京都', '文京区', '未使用2', '12.300', '9.700', '70000', '140000', '180000', '200000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('東京都新宿区', '東京都', '新宿区', '未使用2', '12.300', '9.700', '70000', '140000', '180000', '200000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('東京都杉並区', '東京都', '杉並区', '未使用2', '12.300', '9.700', '70000', '140000', '180000', '200000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('東京都板橋区', '東京都', '板橋区', '未使用2', '12.300', '9.700', '70000', '140000', '180000', '200000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('東京都江戸川区', '東京都', '江戸川区', '未使用2', '12.300', '9.700', '70000', '140000', '180000', '200000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('東京都江東区', '東京都', '江東区', '未使用2', '12.300', '9.700', '70000', '140000', '180000', '200000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('東京都渋谷区', '東京都', '渋谷区', '未使用2', '12.300', '9.700', '70000', '140000', '180000', '200000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('東京都港区', '東京都', '港区', '未使用2', '12.300', '9.700', '70000', '140000', '180000', '200000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('東京都目黒区', '東京都', '目黒区', '未使用2', '12.300', '9.700', '70000', '140000', '180000', '200000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('東京都練馬区', '東京都', '練馬区', '未使用2', '12.300', '9.700', '70000', '140000', '180000', '200000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('東京都荒川区', '東京都', '荒川区', '未使用2', '12.300', '9.700', '70000', '140000', '180000', '200000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('東京都葛飾区', '東京都', '葛飾区', '未使用2', '12.300', '9.700', '70000', '140000', '180000', '200000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('東京都豊島区', '東京都', '豊島区', '未使用2', '12.300', '9.700', '70000', '140000', '180000', '200000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('東京都足立区', '東京都', '足立区', '未使用2', '12.300', '9.700', '70000', '140000', '180000', '200000', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL),
('栃木県の市町村', '栃木県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 2000, 3500, NULL, NULL, NULL, NULL),
('横浜市中区', '神奈川県', '横浜市', '中区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, 4500, 10800, 11700, 13500),
('横浜市保土ケ谷区', '神奈川県', '横浜市', '保土ケ谷区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, 4500, 10800, 11700, 13500),
('横浜市南区', '神奈川県', '横浜市', '南区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, 4500, 10800, 11700, 13500),
('横浜市戸塚区', '神奈川県', '横浜市', '戸塚区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, 4500, 10800, 11700, 13500),
('横浜市旭区', '神奈川県', '横浜市', '旭区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, 4500, 10800, 11700, 13500),
('横浜市栄区', '神奈川県', '横浜市', '栄区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, 4500, 10800, 11700, 13500),
('横浜市泉区', '神奈川県', '横浜市', '泉区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, 4500, 10800, 11700, 13500),
('横浜市港北区', '神奈川県', '横浜市', '港北区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, 4500, 10800, 11700, 13500),
('横浜市港南区', '神奈川県', '横浜市', '港南区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, 4500, 10800, 11700, 13500),
('横浜市瀬谷区', '神奈川県', '横浜市', '瀬谷区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, 4500, 10800, 11700, 13500),
('横浜市磯子区', '神奈川県', '横浜市', '磯子区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, 4500, 10800, 11700, 13500),
('横浜市神奈川区', '神奈川県', '横浜市', '神奈川区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, 4500, 10800, 11700, 13500),
('横浜市緑区', '神奈川県', '横浜市', '緑区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, 4500, 10800, 11700, 13500),
('横浜市西区', '神奈川県', '横浜市', '西区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, 4500, 10800, 11700, 13500),
('横浜市都筑区', '神奈川県', '横浜市', '都筑区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, 4500, 10800, 11700, 13500),
('横浜市金沢区', '神奈川県', '横浜市', '金沢区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, 4500, 10800, 11700, 13500),
('横浜市青葉区', '神奈川県', '横浜市', '青葉区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, 4500, 10800, 11700, 13500),
('横浜市鶴見区', '神奈川県', '横浜市', '鶴見区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, 4500, 10800, 11700, 13500),
('沖縄県の市町村', '沖縄県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('浜松市中区', '静岡県', '浜松市', '中区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('浜松市北区', '静岡県', '浜松市', '北区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('浜松市南区', '静岡県', '浜松市', '南区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('浜松市天竜区', '静岡県', '浜松市', '天竜区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('浜松市東区', '静岡県', '浜松市', '東区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('浜松市浜北区', '静岡県', '浜松市', '浜北区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('浜松市西区', '静岡県', '浜松市', '西区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('滋賀県の市町村', '滋賀県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 2200, 5500, NULL, NULL, NULL, NULL),
('熊本市中央区', '熊本県', '熊本市', '中央区', '14.7', '12.1', '60000', '144000', '156000', '180000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('熊本市北区', '熊本県', '熊本市', '北区', '14.7', '12.1', '60000', '144000', '156000', '180000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('熊本市南区', '熊本県', '熊本市', '南区', '14.7', '12.1', '60000', '144000', '156000', '180000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('熊本市東区', '熊本県', '熊本市', '東区', '14.7', '12.1', '60000', '144000', '156000', '180000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('熊本市西区', '熊本県', '熊本市', '西区', '14.7', '12.1', '60000', '144000', '156000', '180000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('熊本県の市町村', '熊本県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('相模原市中央区', '神奈川県', '相模原市', '中央区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('相模原市南区', '神奈川県', '相模原市', '南区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('相模原市緑区', '神奈川県', '相模原市', '緑区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('石川県の市町村', '石川県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('神奈川県の市町村', '神奈川県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('神戸市中央区', '兵庫県', '神戸市', '中央区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 2000, 5000, NULL, NULL, NULL, NULL),
('神戸市兵庫区', '兵庫県', '神戸市', '兵庫区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 2000, 5000, NULL, NULL, NULL, NULL),
('神戸市北区', '兵庫県', '神戸市', '北区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 2000, 5000, NULL, NULL, NULL, NULL),
('神戸市垂水区', '兵庫県', '神戸市', '垂水区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 2000, 5000, NULL, NULL, NULL, NULL),
('神戸市東灘区', '兵庫県', '神戸市', '東灘区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 2000, 5000, NULL, NULL, NULL, NULL),
('神戸市灘区', '兵庫県', '神戸市', '灘区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 2000, 5000, NULL, NULL, NULL, NULL),
('神戸市西区', '兵庫県', '神戸市', '西区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 2000, 5000, NULL, NULL, NULL, NULL),
('神戸市長田区', '兵庫県', '神戸市', '長田区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 2000, 5000, NULL, NULL, NULL, NULL),
('神戸市須磨区', '兵庫県', '神戸市', '須磨区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 2000, 5000, NULL, NULL, NULL, NULL),
('福井県の市町村', '福井県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('福岡市中央区', '福岡県', '福岡市', '中央区', '13.9', '11.3', '50000', '120000', '156000', '180000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('福岡市南区', '福岡県', '福岡市', '南区', '13.9', '11.3', '50000', '120000', '156000', '180000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('福岡市博多区', '福岡県', '福岡市', '博多区', '13.9', '11.3', '50000', '120000', '156000', '180000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('福岡市城南区', '福岡県', '福岡市', '城南区', '13.9', '11.3', '50000', '120000', '156000', '180000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('福岡市早良区', '福岡県', '福岡市', '早良区', '13.9', '11.3', '50000', '120000', '156000', '180000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('福岡市東区', '福岡県', '福岡市', '東区', '13.9', '11.3', '50000', '120000', '156000', '180000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('福岡市西区', '福岡県', '福岡市', '西区', '13.9', '11.3', '50000', '120000', '156000', '180000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('福岡県の市町村', '福岡県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('福島県の市町村', '福島県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 2000, 5000, NULL, NULL, NULL, NULL),
('秋田県の市町村', '秋田県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 1600, 4000, NULL, NULL, NULL, NULL),
('群馬県の市町村', '群馬県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 2000, 3500, NULL, NULL, NULL, NULL),
('茨城県の市町村', '茨城県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 2000, 5000, NULL, NULL, NULL, NULL),
('長崎県の市町村', '長崎県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('長野県の市町村', '長野県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('青森県の市町村', '青森県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('静岡市清水区', '静岡県', '静岡市', '清水区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('静岡市葵区', '静岡県', '静岡市', '葵区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('静岡市駿河区', '静岡県', '静岡市', '駿河区', '12.300', '9.700', '50000', '120000', '130000', '150000', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('静岡県の市町村', '静岡県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('香川県の市町村', '香川県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, NULL, NULL, NULL, NULL, NULL, NULL),
('高知県の市町村', '高知県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 500, 500, NULL, NULL, NULL, NULL),
('鳥取県の市町村', '鳥取県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL),
('鹿児島県の市町村', '鹿児島県', '政令指定都市以外', '未使用2', '0', '0', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', '市均等割円↓入力↓', 20000, 50000, 1000, 2500, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `l_interestanddividends`
--

CREATE TABLE `l_interestanddividends` (
  `company_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `year` varchar(4) NOT NULL,
  `l_f252` int(11) DEFAULT NULL,
  `l_h252` int(11) DEFAULT NULL,
  `l_j252` int(11) DEFAULT NULL,
  `l_f256` varchar(20) DEFAULT NULL,
  `l_f257` varchar(10) DEFAULT NULL,
  `l_f258` int(11) DEFAULT NULL,
  `l_f259` int(11) DEFAULT NULL,
  `l_f260` int(11) DEFAULT NULL,
  `l_f261` int(11) DEFAULT NULL,
  `l_f262` int(11) DEFAULT NULL,
  `l_h256` varchar(20) DEFAULT NULL,
  `l_h257` varchar(10) DEFAULT NULL,
  `l_h258` int(11) DEFAULT NULL,
  `l_h259` int(11) DEFAULT NULL,
  `l_h260` int(11) DEFAULT NULL,
  `l_h261` int(11) DEFAULT NULL,
  `l_h262` int(11) DEFAULT NULL,
  `l_j256` varchar(20) DEFAULT NULL,
  `l_j257` varchar(10) DEFAULT NULL,
  `l_j258` int(11) DEFAULT NULL,
  `l_j259` int(11) DEFAULT NULL,
  `l_j260` int(11) DEFAULT NULL,
  `l_j261` int(11) DEFAULT NULL,
  `l_j262` int(11) DEFAULT NULL,
  `l_l256` varchar(20) DEFAULT NULL,
  `l_l257` varchar(10) DEFAULT NULL,
  `l_l258` int(11) DEFAULT NULL,
  `l_l259` int(11) DEFAULT NULL,
  `l_l260` int(11) DEFAULT NULL,
  `l_l261` int(11) DEFAULT NULL,
  `l_l262` int(11) DEFAULT NULL,
  `l_n256` varchar(20) DEFAULT NULL,
  `l_n257` varchar(10) DEFAULT NULL,
  `l_n258` int(11) DEFAULT NULL,
  `l_n259` int(11) DEFAULT NULL,
  `l_n260` int(11) DEFAULT NULL,
  `l_n261` int(11) DEFAULT NULL,
  `l_n262` int(11) DEFAULT NULL,
  `l_f264` varchar(20) DEFAULT NULL,
  `l_f265` varchar(10) DEFAULT NULL,
  `l_f266` int(11) DEFAULT NULL,
  `l_f267` int(11) DEFAULT NULL,
  `l_f268` int(11) DEFAULT NULL,
  `l_f269` int(11) DEFAULT NULL,
  `l_f270` int(11) DEFAULT NULL,
  `l_h264` varchar(20) DEFAULT NULL,
  `l_h265` varchar(10) DEFAULT NULL,
  `l_h266` int(11) DEFAULT NULL,
  `l_h267` int(11) DEFAULT NULL,
  `l_h268` int(11) DEFAULT NULL,
  `l_h269` int(11) DEFAULT NULL,
  `l_h270` int(11) DEFAULT NULL,
  `l_j264` varchar(20) DEFAULT NULL,
  `l_j265` varchar(10) DEFAULT NULL,
  `l_j266` int(11) DEFAULT NULL,
  `l_j267` int(11) DEFAULT NULL,
  `l_j268` int(11) DEFAULT NULL,
  `l_j269` int(11) DEFAULT NULL,
  `l_j270` int(11) DEFAULT NULL,
  `l_l264` varchar(20) DEFAULT NULL,
  `l_l265` varchar(10) DEFAULT NULL,
  `l_l266` int(11) DEFAULT NULL,
  `l_l267` int(11) DEFAULT NULL,
  `l_l268` int(11) DEFAULT NULL,
  `l_l269` int(11) DEFAULT NULL,
  `l_l270` int(11) DEFAULT NULL,
  `l_n264` varchar(20) DEFAULT NULL,
  `l_n265` varchar(10) DEFAULT NULL,
  `l_n266` int(11) DEFAULT NULL,
  `l_n267` int(11) DEFAULT NULL,
  `l_n268` int(11) DEFAULT NULL,
  `l_n269` int(11) DEFAULT NULL,
  `l_n270` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `l_interestanddividends`
--

INSERT INTO `l_interestanddividends` (`company_id`, `user_id`, `year`, `l_f252`, `l_h252`, `l_j252`, `l_f256`, `l_f257`, `l_f258`, `l_f259`, `l_f260`, `l_f261`, `l_f262`, `l_h256`, `l_h257`, `l_h258`, `l_h259`, `l_h260`, `l_h261`, `l_h262`, `l_j256`, `l_j257`, `l_j258`, `l_j259`, `l_j260`, `l_j261`, `l_j262`, `l_l256`, `l_l257`, `l_l258`, `l_l259`, `l_l260`, `l_l261`, `l_l262`, `l_n256`, `l_n257`, `l_n258`, `l_n259`, `l_n260`, `l_n261`, `l_n262`, `l_f264`, `l_f265`, `l_f266`, `l_f267`, `l_f268`, `l_f269`, `l_f270`, `l_h264`, `l_h265`, `l_h266`, `l_h267`, `l_h268`, `l_h269`, `l_h270`, `l_j264`, `l_j265`, `l_j266`, `l_j267`, `l_j268`, `l_j269`, `l_j270`, `l_l264`, `l_l265`, `l_l266`, `l_l267`, `l_l268`, `l_l269`, `l_l270`, `l_n264`, `l_n265`, `l_n266`, `l_n267`, `l_n268`, `l_n269`, `l_n270`) VALUES
(1, '1', '2019', NULL, NULL, NULL, '', '社債', NULL, NULL, NULL, NULL, NULL, '', '配当', NULL, NULL, NULL, NULL, NULL, '', '投資', NULL, NULL, NULL, NULL, NULL, '', '社債', NULL, NULL, NULL, NULL, NULL, '', '配当', NULL, NULL, NULL, NULL, NULL, '', '社債', NULL, NULL, NULL, NULL, NULL, '', '社債', NULL, NULL, NULL, NULL, NULL, '', '社債', NULL, NULL, NULL, NULL, NULL, '', '配当', NULL, NULL, NULL, NULL, NULL, '', '投資', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `m_expenses`
--

CREATE TABLE `m_expenses` (
  `company_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `year` varchar(4) NOT NULL,
  `m_g276` int(11) DEFAULT NULL,
  `m_m276` int(11) DEFAULT NULL,
  `m_s276` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `m_expenses`
--

INSERT INTO `m_expenses` (`company_id`, `user_id`, `year`, `m_g276`, `m_m276`, `m_s276`) VALUES
(1, '1', '2019', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `n_donation`
--

CREATE TABLE `n_donation` (
  `company_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `year` varchar(4) NOT NULL,
  `n_c282` varchar(10) DEFAULT NULL,
  `n_e282` varchar(512) DEFAULT NULL,
  `n_i282` varchar(50) DEFAULT NULL,
  `n_k282` varchar(512) DEFAULT NULL,
  `n_p282` int(11) DEFAULT NULL,
  `n_c283` varchar(10) DEFAULT NULL,
  `n_e283` varchar(512) DEFAULT NULL,
  `n_i283` varchar(50) DEFAULT NULL,
  `n_k283` varchar(512) DEFAULT NULL,
  `n_p283` int(11) DEFAULT NULL,
  `n_c284` varchar(10) DEFAULT NULL,
  `n_e284` varchar(512) DEFAULT NULL,
  `n_i284` varchar(50) DEFAULT NULL,
  `n_k284` varchar(512) DEFAULT NULL,
  `n_p284` int(11) DEFAULT NULL,
  `n_c289` varchar(10) DEFAULT NULL,
  `n_e289` varchar(512) DEFAULT NULL,
  `n_g289` varchar(512) DEFAULT NULL,
  `n_k289` varchar(512) DEFAULT NULL,
  `n_p289` int(11) DEFAULT NULL,
  `n_c290` varchar(10) DEFAULT NULL,
  `n_e290` varchar(512) DEFAULT NULL,
  `n_g290` varchar(512) DEFAULT NULL,
  `n_k290` varchar(512) DEFAULT NULL,
  `n_p290` int(11) DEFAULT NULL,
  `n_c291` varchar(10) DEFAULT NULL,
  `n_e291` varchar(512) DEFAULT NULL,
  `n_g291` varchar(512) DEFAULT NULL,
  `n_k291` varchar(512) DEFAULT NULL,
  `n_p291` int(11) DEFAULT NULL,
  `n_c296` varchar(10) DEFAULT NULL,
  `n_e296` varchar(512) DEFAULT NULL,
  `n_h296` varchar(512) DEFAULT NULL,
  `n_m296` varchar(512) DEFAULT NULL,
  `n_p296` int(11) DEFAULT NULL,
  `n_c297` varchar(10) DEFAULT NULL,
  `n_e297` varchar(512) DEFAULT NULL,
  `n_h297` varchar(512) DEFAULT NULL,
  `n_m297` varchar(512) DEFAULT NULL,
  `n_p297` int(11) DEFAULT NULL,
  `n_c298` varchar(10) DEFAULT NULL,
  `n_e298` varchar(512) DEFAULT NULL,
  `n_h298` varchar(512) DEFAULT NULL,
  `n_m298` varchar(512) DEFAULT NULL,
  `n_p298` int(11) DEFAULT NULL,
  `n_h301` int(11) DEFAULT NULL,
  `n_h302` int(11) DEFAULT NULL,
  `n_h303` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `n_donation`
--

INSERT INTO `n_donation` (`company_id`, `user_id`, `year`, `n_c282`, `n_e282`, `n_i282`, `n_k282`, `n_p282`, `n_c283`, `n_e283`, `n_i283`, `n_k283`, `n_p283`, `n_c284`, `n_e284`, `n_i284`, `n_k284`, `n_p284`, `n_c289`, `n_e289`, `n_g289`, `n_k289`, `n_p289`, `n_c290`, `n_e290`, `n_g290`, `n_k290`, `n_p290`, `n_c291`, `n_e291`, `n_g291`, `n_k291`, `n_p291`, `n_c296`, `n_e296`, `n_h296`, `n_m296`, `n_p296`, `n_c297`, `n_e297`, `n_h297`, `n_m297`, `n_p297`, `n_c298`, `n_e298`, `n_h298`, `n_m298`, `n_p298`, `n_h301`, `n_h302`, `n_h303`) VALUES
(1, '1', '2019', '', '', '', '', NULL, '', '', '', '', NULL, '', '', '', '', NULL, '', '', '', '', NULL, '', '', '', '', NULL, '', '', '', '', NULL, '', '', '', '', NULL, '', '', '', '', NULL, '', '', '', '', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `o_loanallowance`
--

CREATE TABLE `o_loanallowance` (
  `company_id` int(11) NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `o_g308` varchar(512) DEFAULT NULL,
  `o_k308` varchar(512) DEFAULT NULL,
  `o_o308` varchar(512) DEFAULT NULL,
  `o_s308` varchar(512) DEFAULT NULL,
  `o_g310` varchar(255) DEFAULT NULL,
  `o_k310` varchar(255) DEFAULT NULL,
  `o_o310` varchar(255) DEFAULT NULL,
  `o_s310` varchar(255) DEFAULT NULL,
  `o_g312` varchar(255) DEFAULT NULL,
  `o_k312` varchar(255) DEFAULT NULL,
  `o_o312` varchar(255) DEFAULT NULL,
  `o_s312` varchar(255) DEFAULT NULL,
  `o_g313` varchar(128) DEFAULT NULL,
  `o_i313` varchar(128) DEFAULT NULL,
  `o_k313` varchar(128) DEFAULT NULL,
  `o_m313` varchar(128) DEFAULT NULL,
  `o_o313` varchar(128) DEFAULT NULL,
  `o_q313` varchar(128) DEFAULT NULL,
  `o_s313` varchar(128) DEFAULT NULL,
  `o_u313` varchar(128) DEFAULT NULL,
  `o_g314` varchar(32) DEFAULT NULL,
  `o_k314` varchar(32) DEFAULT NULL,
  `o_o314` varchar(32) DEFAULT NULL,
  `o_s314` varchar(32) DEFAULT NULL,
  `o_g315` int(11) DEFAULT NULL,
  `o_k315` int(11) DEFAULT NULL,
  `o_o315` int(11) DEFAULT NULL,
  `o_s315` int(11) DEFAULT NULL,
  `o_g316` int(11) DEFAULT NULL,
  `o_k316` int(11) DEFAULT NULL,
  `o_o316` int(11) DEFAULT NULL,
  `o_s316` int(11) DEFAULT NULL,
  `o_g317` int(11) DEFAULT NULL,
  `o_k317` int(11) DEFAULT NULL,
  `o_o317` int(11) DEFAULT NULL,
  `o_s317` int(11) DEFAULT NULL,
  `o_g318` varchar(32) DEFAULT NULL,
  `o_k318` varchar(32) DEFAULT NULL,
  `o_o318` varchar(32) DEFAULT NULL,
  `o_s318` varchar(32) DEFAULT NULL,
  `o_g319` varchar(32) DEFAULT NULL,
  `o_k319` varchar(32) DEFAULT NULL,
  `o_o319` varchar(32) DEFAULT NULL,
  `o_s319` varchar(32) DEFAULT NULL,
  `o_g320` varchar(32) DEFAULT NULL,
  `o_k320` varchar(32) DEFAULT NULL,
  `o_o320` varchar(32) DEFAULT NULL,
  `o_s320` varchar(32) DEFAULT NULL,
  `o_g321` varchar(32) DEFAULT NULL,
  `o_k321` varchar(32) DEFAULT NULL,
  `o_o321` varchar(32) DEFAULT NULL,
  `o_s321` varchar(32) DEFAULT NULL,
  `o_g322` int(11) DEFAULT NULL,
  `o_k322` int(11) DEFAULT NULL,
  `o_o322` int(11) DEFAULT NULL,
  `o_s322` int(11) DEFAULT NULL,
  `o_g323` int(11) DEFAULT NULL,
  `o_k323` int(11) DEFAULT NULL,
  `o_o323` int(11) DEFAULT NULL,
  `o_s323` int(11) DEFAULT NULL,
  `o_g324` int(11) DEFAULT NULL,
  `o_k324` int(11) DEFAULT NULL,
  `o_o324` int(11) DEFAULT NULL,
  `o_s324` int(11) DEFAULT NULL,
  `o_g325` int(11) DEFAULT NULL,
  `o_k325` int(11) DEFAULT NULL,
  `o_o325` int(11) DEFAULT NULL,
  `o_s325` int(11) DEFAULT NULL,
  `o_g326` varchar(32) DEFAULT NULL,
  `o_k326` varchar(32) DEFAULT NULL,
  `o_o326` varchar(32) DEFAULT NULL,
  `o_s326` varchar(32) DEFAULT NULL,
  `o_h331` int(11) DEFAULT NULL,
  `o_q331` varchar(32) DEFAULT NULL,
  `o_c334` varchar(32) DEFAULT NULL,
  `o_f334` int(11) DEFAULT NULL,
  `o_h334` int(11) DEFAULT NULL,
  `o_j334` int(11) DEFAULT NULL,
  `o_l334` int(11) DEFAULT NULL,
  `o_n334` int(11) DEFAULT NULL,
  `o_p334` int(11) DEFAULT NULL,
  `o_c335` varchar(32) DEFAULT NULL,
  `o_f335` int(11) DEFAULT NULL,
  `o_h335` int(11) DEFAULT NULL,
  `o_j335` int(11) DEFAULT NULL,
  `o_l335` int(11) DEFAULT NULL,
  `o_n335` int(11) DEFAULT NULL,
  `o_p335` int(11) DEFAULT NULL,
  `o_c336` varchar(32) DEFAULT NULL,
  `o_f336` int(11) DEFAULT NULL,
  `o_h336` int(11) DEFAULT NULL,
  `o_j336` int(11) DEFAULT NULL,
  `o_l336` int(11) DEFAULT NULL,
  `o_n336` int(11) DEFAULT NULL,
  `o_p336` int(11) DEFAULT NULL,
  `o_c337` varchar(32) DEFAULT NULL,
  `o_f337` int(11) DEFAULT NULL,
  `o_h337` int(11) DEFAULT NULL,
  `o_j337` int(11) DEFAULT NULL,
  `o_l337` int(11) DEFAULT NULL,
  `o_n337` int(11) DEFAULT NULL,
  `o_p337` int(11) DEFAULT NULL,
  `o_c338` varchar(32) DEFAULT NULL,
  `o_f338` int(11) DEFAULT NULL,
  `o_h338` int(11) DEFAULT NULL,
  `o_j338` int(11) DEFAULT NULL,
  `o_l338` int(11) DEFAULT NULL,
  `o_n338` int(11) DEFAULT NULL,
  `o_p338` int(11) DEFAULT NULL,
  `o_c339` varchar(32) DEFAULT NULL,
  `o_f339` int(11) DEFAULT NULL,
  `o_h339` int(11) DEFAULT NULL,
  `o_j339` int(11) DEFAULT NULL,
  `o_l339` int(11) DEFAULT NULL,
  `o_n339` int(11) DEFAULT NULL,
  `o_p339` int(11) DEFAULT NULL,
  `o_c340` varchar(32) DEFAULT NULL,
  `o_f340` int(11) DEFAULT NULL,
  `o_h340` int(11) DEFAULT NULL,
  `o_j340` int(11) DEFAULT NULL,
  `o_l340` int(11) DEFAULT NULL,
  `o_n340` int(11) DEFAULT NULL,
  `o_p340` int(11) DEFAULT NULL,
  `o_i342` int(11) DEFAULT NULL,
  `o_i343` int(11) DEFAULT NULL,
  `o_i344` int(11) DEFAULT NULL,
  `o_i345` int(11) DEFAULT NULL,
  `o_i346` int(11) DEFAULT NULL,
  `o_i347` int(11) DEFAULT NULL,
  `o_i348` int(11) DEFAULT NULL,
  `o_i349` int(11) DEFAULT NULL,
  `o_i351` int(11) DEFAULT NULL,
  `o_i352` int(11) DEFAULT NULL,
  `o_i353` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `o_loanallowance`
--

INSERT INTO `o_loanallowance` (`company_id`, `user_id`, `year`, `o_g308`, `o_k308`, `o_o308`, `o_s308`, `o_g310`, `o_k310`, `o_o310`, `o_s310`, `o_g312`, `o_k312`, `o_o312`, `o_s312`, `o_g313`, `o_i313`, `o_k313`, `o_m313`, `o_o313`, `o_q313`, `o_s313`, `o_u313`, `o_g314`, `o_k314`, `o_o314`, `o_s314`, `o_g315`, `o_k315`, `o_o315`, `o_s315`, `o_g316`, `o_k316`, `o_o316`, `o_s316`, `o_g317`, `o_k317`, `o_o317`, `o_s317`, `o_g318`, `o_k318`, `o_o318`, `o_s318`, `o_g319`, `o_k319`, `o_o319`, `o_s319`, `o_g320`, `o_k320`, `o_o320`, `o_s320`, `o_g321`, `o_k321`, `o_o321`, `o_s321`, `o_g322`, `o_k322`, `o_o322`, `o_s322`, `o_g323`, `o_k323`, `o_o323`, `o_s323`, `o_g324`, `o_k324`, `o_o324`, `o_s324`, `o_g325`, `o_k325`, `o_o325`, `o_s325`, `o_g326`, `o_k326`, `o_o326`, `o_s326`, `o_h331`, `o_q331`, `o_c334`, `o_f334`, `o_h334`, `o_j334`, `o_l334`, `o_n334`, `o_p334`, `o_c335`, `o_f335`, `o_h335`, `o_j335`, `o_l335`, `o_n335`, `o_p335`, `o_c336`, `o_f336`, `o_h336`, `o_j336`, `o_l336`, `o_n336`, `o_p336`, `o_c337`, `o_f337`, `o_h337`, `o_j337`, `o_l337`, `o_n337`, `o_p337`, `o_c338`, `o_f338`, `o_h338`, `o_j338`, `o_l338`, `o_n338`, `o_p338`, `o_c339`, `o_f339`, `o_h339`, `o_j339`, `o_l339`, `o_n339`, `o_p339`, `o_c340`, `o_f340`, `o_h340`, `o_j340`, `o_l340`, `o_n340`, `o_p340`, `o_i342`, `o_i343`, `o_i344`, `o_i345`, `o_i346`, `o_i347`, `o_i348`, `o_i349`, `o_i351`, `o_i352`, `o_i353`) VALUES
(1, '1', '2019', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '', '', NULL, '割賦小売業等', '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- 表的结构 `p_dividendsreceivable`
--

CREATE TABLE `p_dividendsreceivable` (
  `company_id` int(11) NOT NULL,
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `p_g357` varchar(11) DEFAULT NULL COMMENT '当期に支払う負債利子',
  `p_o357` varchar(11) DEFAULT NULL COMMENT '基準年度の負債利子等の合計',
  `p_g358` varchar(11) DEFAULT NULL COMMENT '連結法人に支払う負債利子',
  `p_o358` varchar(11) DEFAULT NULL COMMENT '同上の関係法人等に係る負債利子',
  `p_g359` varchar(10) DEFAULT NULL COMMENT '基準年度実績を使う',
  `p_d363` varchar(11) DEFAULT NULL,
  `p_g363` varchar(11) DEFAULT NULL,
  `p_k363` varchar(11) DEFAULT NULL,
  `p_n363` varchar(11) DEFAULT NULL,
  `p_p363` varchar(11) DEFAULT NULL,
  `p_d364` varchar(11) DEFAULT NULL,
  `p_g364` varchar(11) DEFAULT NULL,
  `p_k364` varchar(11) DEFAULT NULL,
  `p_n364` varchar(11) DEFAULT NULL,
  `p_p364` varchar(11) DEFAULT NULL,
  `p_d368` varchar(255) DEFAULT NULL,
  `p_g368` varchar(512) DEFAULT NULL,
  `p_k368` varchar(10) DEFAULT NULL,
  `p_m368` varchar(10) DEFAULT NULL,
  `p_o368` varchar(11) DEFAULT NULL,
  `p_d369` varchar(255) DEFAULT NULL,
  `p_g369` varchar(512) DEFAULT NULL,
  `p_k369` varchar(10) DEFAULT NULL,
  `p_m369` varchar(10) DEFAULT NULL,
  `p_o369` varchar(11) DEFAULT NULL,
  `p_d373` varchar(255) DEFAULT NULL,
  `p_g373` varchar(512) DEFAULT NULL,
  `p_k373` varchar(10) DEFAULT NULL,
  `p_m373` varchar(10) DEFAULT NULL,
  `p_o373` varchar(11) DEFAULT NULL,
  `p_q373` varchar(11) DEFAULT NULL,
  `p_t373` varchar(11) DEFAULT NULL,
  `p_d374` varchar(255) DEFAULT NULL,
  `p_g374` varchar(512) DEFAULT NULL,
  `p_k374` varchar(10) DEFAULT NULL,
  `p_m374` varchar(10) DEFAULT NULL,
  `p_o374` varchar(11) DEFAULT NULL,
  `p_q374` varchar(11) DEFAULT NULL,
  `p_t374` varchar(11) DEFAULT NULL,
  `p_d378` varchar(255) DEFAULT NULL,
  `p_g378` varchar(521) DEFAULT NULL,
  `p_k378` varchar(11) DEFAULT NULL,
  `p_n378` varchar(11) DEFAULT NULL,
  `p_d379` varchar(255) DEFAULT NULL,
  `p_g379` varchar(521) DEFAULT NULL,
  `p_k379` varchar(11) DEFAULT NULL,
  `p_n379` varchar(11) DEFAULT NULL,
  `p_d383` varchar(255) DEFAULT NULL,
  `p_g383` varchar(512) DEFAULT NULL,
  `p_k383` varchar(10) DEFAULT NULL,
  `p_m383` varchar(10) DEFAULT NULL,
  `p_o383` varchar(11) NOT NULL,
  `p_r383` varchar(11) NOT NULL,
  `p_d384` varchar(255) DEFAULT NULL,
  `p_g384` varchar(512) DEFAULT NULL,
  `p_k384` varchar(10) DEFAULT NULL,
  `p_m384` varchar(10) DEFAULT NULL,
  `p_o384` varchar(11) NOT NULL,
  `p_r384` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `p_dividendsreceivable`
--

INSERT INTO `p_dividendsreceivable` (`company_id`, `user_id`, `year`, `p_g357`, `p_o357`, `p_g358`, `p_o358`, `p_g359`, `p_d363`, `p_g363`, `p_k363`, `p_n363`, `p_p363`, `p_d364`, `p_g364`, `p_k364`, `p_n364`, `p_p364`, `p_d368`, `p_g368`, `p_k368`, `p_m368`, `p_o368`, `p_d369`, `p_g369`, `p_k369`, `p_m369`, `p_o369`, `p_d373`, `p_g373`, `p_k373`, `p_m373`, `p_o373`, `p_q373`, `p_t373`, `p_d374`, `p_g374`, `p_k374`, `p_m374`, `p_o374`, `p_q374`, `p_t374`, `p_d378`, `p_g378`, `p_k378`, `p_n378`, `p_d379`, `p_g379`, `p_k379`, `p_n379`, `p_d383`, `p_g383`, `p_k383`, `p_m383`, `p_o383`, `p_r383`, `p_d384`, `p_g384`, `p_k384`, `p_m384`, `p_o384`, `p_r384`) VALUES
(1, '1', '2019', '', '', '', '', '使う', '', '', '', '', '', '', '', '', '', '', '41', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `q_excessdepreciation`
--

CREATE TABLE `q_excessdepreciation` (
  `company_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `year` varchar(4) NOT NULL,
  `q_h390` int(11) DEFAULT NULL,
  `q_h392` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `q_excessdepreciation`
--

INSERT INTO `q_excessdepreciation` (`company_id`, `user_id`, `year`, `q_h390`, `q_h392`) VALUES
(1, '1', '2019', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `r_unpaidcorporationtax`
--

CREATE TABLE `r_unpaidcorporationtax` (
  `company_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `year` varchar(4) NOT NULL,
  `r_k9` int(11) NOT NULL,
  `r_i398` int(11) DEFAULT NULL,
  `r_i399` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `r_unpaidcorporationtax`
--

INSERT INTO `r_unpaidcorporationtax` (`company_id`, `user_id`, `year`, `r_k9`, `r_i398`, `r_i399`) VALUES
(1, '1', '2019', 1000, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `s_transferloss`
--

CREATE TABLE `s_transferloss` (
  `company_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `year` varchar(4) NOT NULL,
  `s_e405` varchar(11) DEFAULT NULL,
  `s_e409` varchar(11) DEFAULT NULL,
  `s_e413` varchar(127) DEFAULT NULL,
  `s_g413` varchar(127) DEFAULT NULL,
  `s_e414` varchar(127) DEFAULT NULL,
  `s_g414` varchar(127) DEFAULT NULL,
  `s_e415` varchar(127) DEFAULT NULL,
  `s_g415` varchar(127) DEFAULT NULL,
  `s_e416` varchar(127) DEFAULT NULL,
  `s_g416` varchar(127) DEFAULT NULL,
  `s_e417` varchar(127) DEFAULT NULL,
  `s_g417` varchar(127) DEFAULT NULL,
  `s_e418` varchar(127) DEFAULT NULL,
  `s_g418` varchar(127) DEFAULT NULL,
  `s_e419` varchar(127) DEFAULT NULL,
  `s_g419` varchar(127) DEFAULT NULL,
  `s_e420` varchar(127) DEFAULT NULL,
  `s_g420` varchar(127) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `s_transferloss`
--

INSERT INTO `s_transferloss` (`company_id`, `user_id`, `year`, `s_e405`, `s_e409`, `s_e413`, `s_g413`, `s_e414`, `s_g414`, `s_e415`, `s_g415`, `s_e416`, `s_g416`, `s_e417`, `s_g417`, `s_e418`, `s_g418`, `s_e419`, `s_g419`, `s_e420`, `s_g420`) VALUES
(1, '1', '2019', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `t_01`
--

CREATE TABLE `t_01` (
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `legalPersonName_k` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人名フリガナ',
  `legalPersonName_h` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人名ふりがな',
  `legalPersonName` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人名',
  `b_03` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '管轄税務署',
  `b_04` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '納税地',
  `b_05` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '電話番号',
  `representativeName_k` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '代表者フリガナ',
  `representativeName_h` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '代表者ふりがな',
  `representativeName` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '代表者氏名',
  `b_10` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '代表者住所',
  `a1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '旧納税地及び旧法人名等',
  `accountingName_h` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '経理責任者ふりがな',
  `accountingName` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '経理責任者氏名',
  `b_12` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '事業種目',
  `b_13` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '整理番号',
  `b_14` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '青色白色区分',
  `b_68` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人の区分',
  `b_15` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '翌年別表等送付要否',
  `b_16` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '期首日',
  `b_17` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '期末日',
  `b_18` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '中間申告',
  `b_19` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `b_20` varchar(11) DEFAULT NULL COMMENT '期末資本金',
  `b_21` varchar(11) DEFAULT NULL COMMENT '〃＋資本準備金',
  `b_22` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '提出日',
  `b_23` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '決算確定日',
  `b_24` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '申告区分',
  `b_25` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '中間配当効力日',
  `b_26` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '所轄',
  `b_27` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '業種目',
  `b_28` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '概況書',
  `b_29` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '要否中間',
  `b_30` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '別表等送付',
  `b_71` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人番号',
  `b_67` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '税理士書面提出',
  `b_31` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '申告期限の延長の処分の有無 法人税',
  `b_32` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '申告期限の延長の処分の有無　事業税',
  `b_33` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '翌期の中間申告の要否',
  `b_34` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '国外関連者の有無',
  `q46` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '利子割還付額の均等割への充当',
  `b_35` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '銀行名',
  `b_35_1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '金庫･組合',
  `b_35_2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '農協･漁協',
  `b_69` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `b_36` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '本店･支店',
  `b_36_1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '出張所',
  `b_36_2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '本所･支所',
  `b_70` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `b_37` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '口座種類',
  `b_38` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '口座番号',
  `b_39` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '郵便局名',
  `b_40` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '貯金記号',
  `b_41` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '貯金番号',
  `b_42` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '税理士名',
  `b_43` varchar(11) DEFAULT NULL COMMENT '税理士電話',
  `billing_amount` varchar(11) DEFAULT NULL COMMENT '売上金額',
  `a2` varchar(55) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '一連番号',
  `f_1` decimal(11,0) DEFAULT NULL COMMENT '所得金額又は欠損金額',
  `f_2` decimal(11,0) DEFAULT NULL COMMENT '法人税額  (56)又は(57)',
  `f_3` decimal(11,0) DEFAULT NULL COMMENT '法人税額の特別控除額',
  `f_4` decimal(11,0) DEFAULT NULL COMMENT '差引法人税額  (2)-(3)',
  `f_5` decimal(11,0) DEFAULT NULL COMMENT '連結納税を取り消された場合等における既に控除された法人税額の特別控除額の加算額',
  `f_6` decimal(11,0) DEFAULT NULL COMMENT '課税土地譲渡利益金額',
  `f_7` decimal(11,0) DEFAULT NULL COMMENT '同上に対する税額  (22)+(23)+(24)',
  `f_8` decimal(11,0) DEFAULT NULL COMMENT '課税留保金額  (別表三(一)「4」)',
  `f_9` decimal(11,0) DEFAULT NULL COMMENT '同上に対する税額  (別表三(一)「8」)',
  `f_10` decimal(20,0) DEFAULT NULL COMMENT '法人税額計  (4)+(5)+(7)+(9)',
  `f_11` decimal(11,0) DEFAULT NULL COMMENT '外国関係会社等に係る控除対象所得税額等相当額の控除額（別表十七（三の十二）「3」）',
  `f_12` decimal(11,0) DEFAULT NULL COMMENT '仮装経理に基づく過大申告の更正に伴う控除法人税額',
  `f_13` decimal(11,0) DEFAULT NULL COMMENT '控除税額  (((10)-(11)-(12))と(19)のうち少ない金額)',
  `f_14` decimal(11,0) DEFAULT NULL COMMENT '差引所得に対する法人税額  (10)-(11)-(12)-(13)',
  `f_15` decimal(11,0) DEFAULT NULL COMMENT '中間申告分の法人税',
  `f_16` decimal(11,0) DEFAULT NULL COMMENT '差引確定法人税額  (14)-(15)',
  `f_17` decimal(11,0) DEFAULT NULL COMMENT '所得税の額等',
  `f_18` decimal(11,0) DEFAULT NULL COMMENT '外国税額',
  `f_19` decimal(11,0) DEFAULT NULL COMMENT '計  (17)+(18)',
  `f_20` decimal(11,0) DEFAULT NULL COMMENT '控除した金額  (13)',
  `f_21` decimal(11,0) DEFAULT NULL COMMENT '控除しきれなかった金額  (19)-(20)',
  `f_22` decimal(11,0) DEFAULT NULL COMMENT '土地譲渡税額',
  `f_23` decimal(11,0) DEFAULT NULL COMMENT '土地譲渡税額',
  `f_24` decimal(11,0) DEFAULT NULL COMMENT '土地譲渡税額',
  `f_25` decimal(11,0) DEFAULT NULL COMMENT '所得税額等の還付金額  (21)',
  `f_26` decimal(11,0) DEFAULT NULL COMMENT '中間納付額  (15)-(14)',
  `f_27` decimal(11,0) DEFAULT NULL COMMENT '欠損金の繰戻しによる還付請求税額',
  `f_28` decimal(11,0) DEFAULT NULL COMMENT '計  (25)+(26)+(27)',
  `f_29` decimal(11,0) DEFAULT NULL COMMENT 'この申告前の所得金額又は欠損金額',
  `f_30` decimal(11,0) DEFAULT NULL COMMENT 'この申告により納付すべき法人税額又は減少する還付請求税額 ',
  `f_31` decimal(11,0) DEFAULT NULL COMMENT '欠損金又は災害損失金等の当期控除額',
  `f_32` decimal(11,0) DEFAULT NULL COMMENT '翌期へ繰り越す欠損金又は災害損失金',
  `f_33` decimal(11,0) DEFAULT NULL COMMENT '所得の金額に対する法人税額(4)＋(5)＋(7)＋(10の外書)',
  `f_34` decimal(11,0) DEFAULT NULL COMMENT '課税留保金額に対する法人税額(9)',
  `f_35` decimal(11,0) DEFAULT NULL COMMENT '課税標準法人税額(33)＋(34)',
  `f_36` decimal(11,0) DEFAULT NULL COMMENT '地方法人税額(60)',
  `f_37` decimal(11,0) DEFAULT NULL COMMENT '課税留保金額に係る地方法人税額(61)',
  `f_38` decimal(11,0) DEFAULT NULL COMMENT '所得地方法人税額(36)＋(37)',
  `f_39` decimal(11,0) DEFAULT NULL COMMENT '外国関係会社等に係る控除対象所得税額等相当額等の控除額（別表十七（三の十二）「4」と（38）のうち少ない金額）',
  `f_40` decimal(11,0) DEFAULT NULL COMMENT '外国税額の控除額',
  `f_41` decimal(11,0) DEFAULT NULL COMMENT '仮装経理に基づく過大申告の更正に伴う地方法人税額',
  `f_42` decimal(11,0) DEFAULT NULL COMMENT '差引地方法人税額(38)－(39)－(40)－(41)',
  `f_43` decimal(11,0) DEFAULT NULL COMMENT '中間申告分の地方法人税額',
  `f_44` decimal(11,0) DEFAULT NULL COMMENT '差引確定地方法人税額(42)－(43)',
  `f_45` decimal(11,0) DEFAULT NULL COMMENT 'この申告による還付金額(43)－(42)',
  `f_46` decimal(11,0) DEFAULT NULL COMMENT '所得の金額に対する法人税額(70)',
  `f_47` decimal(11,0) DEFAULT NULL COMMENT '課税留保金額に対する法人税額(71)',
  `f_48` decimal(11,0) DEFAULT NULL COMMENT '課税標準法人税額(72)',
  `f_49` decimal(11,0) DEFAULT NULL COMMENT 'この申告により納付すべき地方法人税額(76)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `t_01_01`
--

CREATE TABLE `t_01_01` (
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `legalPersonName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ymdFrom` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ymdTo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_50` decimal(11,0) DEFAULT NULL,
  `f_51` decimal(11,0) DEFAULT NULL,
  `f_52` decimal(11,0) DEFAULT NULL,
  `f_53` decimal(11,0) DEFAULT NULL,
  `f_54` decimal(11,0) DEFAULT NULL,
  `f_55` decimal(11,0) DEFAULT NULL,
  `f_56` decimal(11,0) DEFAULT NULL,
  `f_57` decimal(11,0) DEFAULT NULL,
  `f_58` decimal(11,0) DEFAULT NULL,
  `f_59` decimal(11,0) DEFAULT NULL,
  `f_60` decimal(11,0) DEFAULT NULL,
  `f_61` decimal(11,0) DEFAULT NULL,
  `f_62` decimal(11,0) DEFAULT NULL,
  `f_63` decimal(11,0) DEFAULT NULL,
  `f_64` decimal(11,0) DEFAULT NULL,
  `f_65` decimal(11,0) DEFAULT NULL,
  `f_66` decimal(11,0) DEFAULT NULL,
  `f_67` decimal(11,0) DEFAULT NULL,
  `f_68` decimal(11,0) DEFAULT NULL,
  `f_69` decimal(11,0) DEFAULT NULL,
  `f_70` decimal(11,0) DEFAULT NULL,
  `f_71` decimal(11,0) DEFAULT NULL,
  `f_72` decimal(11,0) DEFAULT NULL,
  `f_73` decimal(11,0) DEFAULT NULL,
  `f_74` decimal(11,0) DEFAULT NULL,
  `f_75` decimal(11,0) DEFAULT NULL,
  `f_76` decimal(11,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `t_02`
--

CREATE TABLE `t_02` (
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `legalPersonName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ymdFrom` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ymdTo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_1` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '期末現在の発行済株式数又は出資金額',
  `f_2` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '(19)と(21)の上位3位',
  `f_3` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '株式数等による判定(2)/(1)',
  `f_4` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '期末現在の議決権の総数',
  `f_5` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '(20)と(22)の上位3位',
  `f_6` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '議決権の数による判定(5)/(4)',
  `f_7` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '期末現在の社員の総数',
  `f_8` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '社員3人以下及び同族関係者の合計人数のうちもっとも多い数',
  `f_9` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '社員の数による判定(8)/(7)',
  `f_10` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '同族会社の判定割合(3)､(6)又は(9)のうち最も高い割合',
  `f_11` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(21)の上位1順位',
  `f_12` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '株式数による判定(11)/(1)',
  `f_13` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '(22)の上位1順位',
  `f_14` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '議決権の数による判定(13)/(4)',
  `f_15` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '(21)の上位1順位社員1人及びその同族関係者の合計人数のうち多い数',
  `f_16` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '社員の数による判定(15)/(7)',
  `f_17` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '特定同族会社の判定割合(12),(14)又は(16)のうち最も高い割合',
  `f_18` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '判定結果',
  `b_17` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `c_17` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `d_17` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `e_17` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `h_17` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `i_17` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `j_17` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `k_17` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `b_18` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `c_18` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `d_18` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `e_18` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `g_18` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `h_18` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `i_18` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `j_18` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `k_18` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `b_19` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `c_19` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `d_19` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `e_19` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `g_19` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `h_19` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `i_19` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `j_19` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `k_19` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `b_20` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `c_20` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `d_20` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `e_20` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `g_20` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `h_20` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `i_20` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `j_20` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `k_20` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `b_21` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `c_21` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `d_21` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `e_21` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `g_21` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `h_21` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `i_21` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `j_21` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `k_21` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `b_22` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `c_22` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `d_22` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `e_22` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `g_22` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `h_22` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `i_22` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `j_22` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `k_22` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `b_23` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `c_23` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `d_23` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `e_23` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `g_23` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `h_23` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `i_23` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `j_23` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `k_23` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `b_24` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `c_24` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `d_24` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `e_24` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `g_24` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `h_24` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `i_24` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `j_24` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `k_24` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `b_25` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `c_25` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `d_25` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `e_25` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `g_25` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `h_25` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `i_25` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `j_25` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `k_25` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `b_26` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `c_26` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `d_26` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `e_26` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `g_26` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `h_26` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `i_26` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `j_26` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `k_26` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `b_27` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `c_27` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `d_27` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `e_27` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `g_27` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `h_27` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `i_27` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `j_27` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `k_27` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `b_28` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `c_28` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `d_28` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `e_28` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `g_28` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `h_28` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `i_28` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `j_28` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `k_28` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `b_29` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `c_29` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `d_29` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `e_29` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `g_29` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `h_29` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `i_29` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `j_29` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `k_29` varchar(50) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `t_02`
--

INSERT INTO `t_02` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1`, `f_2`, `f_3`, `f_4`, `f_5`, `f_6`, `f_7`, `f_8`, `f_9`, `f_10`, `f_11`, `f_12`, `f_13`, `f_14`, `f_15`, `f_16`, `f_17`, `f_18`, `b_17`, `c_17`, `d_17`, `e_17`, `h_17`, `i_17`, `j_17`, `k_17`, `b_18`, `c_18`, `d_18`, `e_18`, `g_18`, `h_18`, `i_18`, `j_18`, `k_18`, `b_19`, `c_19`, `d_19`, `e_19`, `g_19`, `h_19`, `i_19`, `j_19`, `k_19`, `b_20`, `c_20`, `d_20`, `e_20`, `g_20`, `h_20`, `i_20`, `j_20`, `k_20`, `b_21`, `c_21`, `d_21`, `e_21`, `g_21`, `h_21`, `i_21`, `j_21`, `k_21`, `b_22`, `c_22`, `d_22`, `e_22`, `g_22`, `h_22`, `i_22`, `j_22`, `k_22`, `b_23`, `c_23`, `d_23`, `e_23`, `g_23`, `h_23`, `i_23`, `j_23`, `k_23`, `b_24`, `c_24`, `d_24`, `e_24`, `g_24`, `h_24`, `i_24`, `j_24`, `k_24`, `b_25`, `c_25`, `d_25`, `e_25`, `g_25`, `h_25`, `i_25`, `j_25`, `k_25`, `b_26`, `c_26`, `d_26`, `e_26`, `g_26`, `h_26`, `i_26`, `j_26`, `k_26`, `b_27`, `c_27`, `d_27`, `e_27`, `g_27`, `h_27`, `i_27`, `j_27`, `k_27`, `b_28`, `c_28`, `d_28`, `e_28`, `g_28`, `h_28`, `i_28`, `j_28`, `k_28`, `b_29`, `c_29`, `d_29`, `e_29`, `g_29`, `h_29`, `i_29`, `j_29`, `k_29`) VALUES
('1', '2019', 1, 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '20191117', '20191117', '131', '102', '77.800', '132', '1294', '980.300', '141', '142', '0', '100.7', '8', '6.100', '39', '29.500', '143', '101.400', '101.4', '同族会社', '1', '2', '3', '4', '6', '7', '8', '999', '2', '12', '13', '14', '15', '16', '17', '18', '19', '3', '22', '23', '24', '25', '26', '27', '28', '29', '31', '1', '33', '34', '35', '36', '37', '38', '39', '41', '2', '43', '44', '45', '46', '47', '48', '49', '51', '3', '53', '54', '55', '56', '57', '58', '59', '61', '62', '63', '64', '65', '66', '67', '68', '69', '71', '72', '73', '74', '75', '76', '77', '78', '79', '81', '82', '83', '84', '85', '86', '87', '88', '89', '91', '92', '93', '94', '95', '96', '97', '98', '99', '101', '102', '103', '104', '105', '106', '107', '108', '109', '111', '112', '113', '114', '115', '116', '117', '118', '119', '121', '122', '123', '124', '125', '126', '127', '128', '129');

-- --------------------------------------------------------

--
-- 表的结构 `t_03`
--

CREATE TABLE `t_03` (
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `legalPersonName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ymdFrom` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ymdTo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_1` decimal(11,0) DEFAULT NULL COMMENT '年3,000万円相当額以下',
  `f_2` decimal(11,0) DEFAULT NULL COMMENT '年3,000万円超1億円以下',
  `f_3` decimal(11,0) DEFAULT NULL COMMENT '年1億円超',
  `f_4` decimal(11,0) DEFAULT NULL COMMENT '計',
  `f_5` decimal(11,0) DEFAULT NULL COMMENT '10％相当額',
  `f_6` decimal(11,0) DEFAULT NULL COMMENT '15％相当額',
  `f_7` decimal(11,0) DEFAULT NULL COMMENT '20％相当額',
  `f_8` decimal(11,0) DEFAULT NULL COMMENT '計',
  `f_9` decimal(11,0) DEFAULT NULL COMMENT '留保所得金額',
  `f_10` decimal(11,0) DEFAULT NULL COMMENT '前期末配当等の額',
  `f_11` decimal(11,0) DEFAULT NULL COMMENT '当期末配当等の額',
  `f_12` decimal(11,0) DEFAULT NULL COMMENT '法人税額',
  `f_13` decimal(11,0) DEFAULT NULL COMMENT '住民税額',
  `f_14` decimal(11,0) DEFAULT NULL COMMENT '外国関係会社等に係る控除対象所得税額等相当額',
  `f_15` decimal(11,0) DEFAULT NULL COMMENT '法人税額等の合計額',
  `f_16` decimal(11,0) DEFAULT NULL COMMENT '当期留保金額',
  `f_17` decimal(11,0) DEFAULT NULL COMMENT '留保控除額',
  `f_18` decimal(11,0) DEFAULT NULL COMMENT '課税留保金額',
  `f_19` decimal(11,0) DEFAULT NULL COMMENT '中小企業以外(大法人)',
  `f_20` decimal(11,0) DEFAULT NULL COMMENT '大法人による完全支配関係がある中小企業者',
  `f_21` decimal(11,0) DEFAULT NULL COMMENT '住民税額',
  `f_22` decimal(11,0) DEFAULT NULL COMMENT '特定寄附金の合計額に係る控除額',
  `f_23` decimal(11,0) DEFAULT NULL COMMENT '調整地方税額に係る控除額',
  `f_24` decimal(11,0) DEFAULT NULL COMMENT '住民税から控除される金額',
  `f_25` decimal(11,0) DEFAULT NULL COMMENT '住民税額'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `t_03`
--

INSERT INTO `t_03` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1`, `f_2`, `f_3`, `f_4`, `f_5`, `f_6`, `f_7`, `f_8`, `f_9`, `f_10`, `f_11`, `f_12`, `f_13`, `f_14`, `f_15`, `f_16`, `f_17`, `f_18`, `f_19`, `f_20`, `f_21`, `f_22`, `f_23`, `f_24`, `f_25`) VALUES
('1', '2019', 1, 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '20191117', '20191117', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901');

-- --------------------------------------------------------

--
-- 表的结构 `t_03_tsuki`
--

CREATE TABLE `t_03_tsuki` (
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `legalPersonName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ymdFrom` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ymdTo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_1` decimal(11,0) DEFAULT NULL COMMENT '期末資本額・出資額',
  `f_2` decimal(11,0) DEFAULT NULL COMMENT '同上の25％',
  `f_3` decimal(11,0) DEFAULT NULL COMMENT '期首利益積立金額',
  `f_4` decimal(11,0) DEFAULT NULL COMMENT '適格合併等により増加した利益積立金額',
  `f_5` decimal(11,0) DEFAULT NULL COMMENT '減少した利益積立金額',
  `f_6` decimal(11,0) DEFAULT NULL COMMENT '期末利益積立金額',
  `f_7` decimal(11,0) DEFAULT NULL COMMENT '積立金基準額',
  `f_8` decimal(11,0) DEFAULT NULL COMMENT '定額基準額',
  `f_9` decimal(11,0) DEFAULT NULL COMMENT '所得金額総計',
  `f_10` decimal(11,0) DEFAULT NULL COMMENT '非適格合併による移転資産',
  `f_11` decimal(11,0) DEFAULT NULL COMMENT '受取配当等益金不算入',
  `f_12` decimal(11,0) DEFAULT NULL COMMENT '外国子会社から受ける剰余金の配当等の益金不算入額',
  `f_13` decimal(11,0) DEFAULT NULL COMMENT '受贈益の益金不算入額',
  `f_14` decimal(11,0) DEFAULT NULL COMMENT '法人税額の還付金等',
  `f_15` decimal(11,0) DEFAULT NULL COMMENT '当期控除額',
  `f_16` decimal(11,0) DEFAULT NULL COMMENT '中間申告における繰戻しによる還付に係る災害損失欠損金額の益金算入額',
  `f_17` decimal(11,0) DEFAULT NULL COMMENT '新鉱床探鉱費',
  `f_18` decimal(11,0) DEFAULT NULL COMMENT '対外船舶運航業者：損金算入額',
  `f_19` decimal(11,0) DEFAULT NULL COMMENT '対外船舶運航業者：益金算入額',
  `f_20` decimal(11,0) DEFAULT NULL COMMENT '沖縄の認定法人の特別控除額',
  `f_21` decimal(11,0) DEFAULT NULL COMMENT '特別区域での損金益金算入額',
  `f_22` decimal(11,0) DEFAULT NULL COMMENT '収用等特別控除額',
  `f_23` decimal(11,0) DEFAULT NULL COMMENT '肉用牛の特別控除額',
  `f_24` decimal(11,0) DEFAULT NULL COMMENT '超過利子額の損金算入',
  `f_25` decimal(11,0) DEFAULT NULL COMMENT '課税対象金額益金算入',
  `f_26` decimal(11,0) DEFAULT NULL COMMENT '所得等の金額',
  `f_27` decimal(11,0) DEFAULT NULL COMMENT '所得基準額',
  `f_28` decimal(11,0) DEFAULT NULL COMMENT '留保控除額'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `t_03_tsuki`
--

INSERT INTO `t_03_tsuki` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1`, `f_2`, `f_3`, `f_4`, `f_5`, `f_6`, `f_7`, `f_8`, `f_9`, `f_10`, `f_11`, `f_12`, `f_13`, `f_14`, `f_15`, `f_16`, `f_17`, `f_18`, `f_19`, `f_20`, `f_21`, `f_22`, `f_23`, `f_24`, `f_25`, `f_26`, `f_27`, `f_28`) VALUES
('1', '2019', 1, 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '20191117', '20191117', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901');

-- --------------------------------------------------------

--
-- 表的结构 `t_04`
--

CREATE TABLE `t_04` (
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `legalPersonName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ymdFrom` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ymdTo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_1_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期利益又は当期欠損の額の総額',
  `f_1_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期利益又は当期欠損の額の処分の留保',
  `f_1_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期利益又は当期欠損の額の処分の社外流出1',
  `f_1_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期利益又は当期欠損の額の処分の社外流出2',
  `f_2_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理した法人税(附帯税を除くの総額）',
  `f_2_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理した法人税(附帯税を除くの処分の留保）',
  `f_3_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理した道府県民税(利子割額を除く。)及び市町村民税の総額',
  `f_3_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理した道府県民税(利子割額を除く。)及び市町村民税の処分の留保',
  `f_4_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理した納税充当金の総額',
  `f_4_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理した納税充当金の処分の留保',
  `f_5_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理した附帯税(利子税を除く)加算金､延滞金(延納分を除く)及び過怠税の総額',
  `f_5_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理した附帯税(利子税を除く)加算金､延滞金(延納分を除く)及び過怠税の処分の社外流出2',
  `f_6_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '減価償却の償却超過額の総額',
  `f_6_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '減価償却の償却超過額の処分の留保',
  `f_7_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '役員給与の損金不算入額の総額',
  `f_7_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '役員給与の損金不算入額の処分の社外流出2',
  `f_8_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交際費等の損金不算入額の総額',
  `f_8_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '交際費等の損金不算入額の処分の社外流出2',
  `f_9_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '総額',
  `f_9_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '処分の留保',
  `f_9_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '処分の社外流出1',
  `f_9_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '処分の社外流出2',
  `f_10_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_10_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '総額',
  `f_10_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '処分の留保',
  `f_10_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '処分の社外流出1',
  `f_10_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '処分の社外流出2',
  `f_11_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '小計の総額',
  `f_11_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '小計の処分の留保',
  `f_11_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '小計の処分の社外流出2',
  `f_12_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '減価償却超過額の当期認容額の総額',
  `f_12_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '減価償却超過額の当期認容額の処分の留保',
  `f_13_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '納税充当金から支出した事業、税等の金額の総額',
  `f_13_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '納税充当金から支出した事業、税等の金額の処分の留保',
  `f_14_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受取配当等の益金不算入額(別表八(一）「13」又は「26」）の総額',
  `f_14_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受取配当等の益金不算入額(別表八(一）「13」又は「26」）の社外流出2',
  `f_15_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外国子会社から受ける剰余金の配当等の益金不算入額（別表八（二）「13」）の総額',
  `f_15_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外国子会社から受ける剰余金の配当等の益金不算入額（別表八（二）「13」）の社外流出2',
  `f_16_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受贈益の益金不算入額の総額',
  `f_16_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受贈益の益金不算入額の社外流出2',
  `f_17_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '適格現物分配に係る益金不算入額の総額',
  `f_17_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '適格現物分配に係る益金不算入額の社外流出2',
  `f_18_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法人税等の中間納付額及び、過誤納に係る還付金額の総額',
  `f_18_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法人税等の中間納付額及び、過誤納に係る還付金額の留保',
  `f_19_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得税額等及び欠損金の繰戻しによる還付金額等の総額',
  `f_19_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得税額等及び欠損金の繰戻しによる還付金額等の社外流出2',
  `f_20_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '総額',
  `f_20_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '処分の留保',
  `f_20_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '処分の社外流出1',
  `f_20_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '処分の社外流出2',
  `f_21_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '小計の総額',
  `f_21_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '小計の処分の留保',
  `f_21_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_21_4_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外　※',
  `f_21_4_d` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '小計の処分の社外流出2',
  `f_22_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮計　(1)+(11)-(21)の総額',
  `f_22_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮計　(1)+(11)-(21)の処分の留保',
  `f_22_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_22_4_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮計　(1)+(11)-(21)の処分の社外流出1',
  `f_22_4_d` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮計　(1)+(11)-(21)の処分の社外流出2',
  `f_23_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '関連者等に係る支払利子等の損金不算入額の総額',
  `f_23_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '関連者等に係る支払利子等の損金不算入額の処分の社外流出1',
  `f_23_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '関連者等に係る支払利子等の損金不算入額の処分の社外流出2',
  `f_24_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '超過利子額の損金算入額の総額',
  `f_24_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '超過利子額の損金算入額の処分の社外流出1',
  `f_24_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '超過利子額の損金算入額の処分の社外流出2',
  `f_25_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮計　(22)から(24)の計の総額',
  `f_25_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮計　(22)から(24)の計の処分の留保',
  `f_25_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮計　(22)から(24)の計の処分の社外流出1',
  `f_25_4_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮計　(22)から(24)の計の処分の社外流出2',
  `f_25_4_d` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_26_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄付金の損金不算入額(別表十四(二)｢24｣又は「40」）の総額',
  `f_26_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄付金の損金不算入額(別表十四(二)｢24｣又は「40」）の処分の社外流出2',
  `f_29_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法人税額から控除される所得税額(別表六(一）「6の③」）の総額',
  `f_29_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法人税額から控除される所得税額(別表六(一）「6の③」）の処分の社外流出2',
  `f_30_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '税額控除の対象とした外国法人税の額等(別表六（ニのニ）「7」）の総額',
  `f_30_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '税額控除の対象とした外国法人税の額等(別表六（ニのニ）「7」）の処分の社外流出2',
  `f_31_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外国関係会社等に係る控除対象所得税額等相当額（別表十七（三の十二）「1」）の総額',
  `f_31_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外国関係会社等に係る控除対象所得税額等相当額（別表十七（三の十二）「1」）の処分の社外流出2',
  `f_34_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '合計　(25)+(26)+(29)+(30)+(31)の総額',
  `f_34_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '合計　(25)+(26)+(29)+(30)+(31)の処分の留保',
  `f_34_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '合計　(25)+(26)+(29)+(30)+(31)の処分の社外流出1',
  `f_34_4_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '合計　(25)+(26)+(29)+(30)+(31)の処分の社外流出2',
  `f_34_4_d` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_35_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '契約者配当の益金算入額 (別表九(一)「13」）の総額',
  `f_35_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '契約者配当の益金算入額 (別表九(一)「13」）の処分の留保',
  `f_37_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中間申告における繰戻しによる還付に係る災害損失欠損金額の益金算入額の総額',
  `f_37_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中間申告における繰戻しによる還付に係る災害損失欠損金額の益金算入額の処分の留保',
  `f_37_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中間申告における繰戻しによる還付に係る災害損失欠損金額の益金算入額の処分の社外流出1',
  `f_37_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中間申告における繰戻しによる還付に係る災害損失欠損金額の益金算入額の処分の社外流出2',
  `f_38_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '非適格合併又は残余財産の全部分配等による移転資産等の譲渡利益額又は譲渡損失額の総額',
  `f_38_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '非適格合併又は残余財産の全部分配等による移転資産等の譲渡利益額又は譲渡損失額の処分の社外流出2',
  `f_39_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引計 (34)+(35)+(37)+(38)の総額',
  `f_39_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引計 (34)+(35)+(37)+(38)の処分の留保',
  `f_39_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引計 (34)+(35)+(37)+(38)の処分の社外流出1',
  `f_39_4_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引計 (34)+(35)+(37)+(38)の処分の社外流出2',
  `f_39_4_d` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_40_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '欠損金又は災害損失金等の当期控除額 (別表七(一)｢4の計」）の総額',
  `f_40_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '欠損金又は災害損失金等の当期控除額 (別表七(一)｢4の計」）の処分の社外流出2',
  `f_41_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '総計 (39)+(40)の総額',
  `f_41_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '総計 (39)+(40)の処分の留保',
  `f_41_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '総計 (39)+(40)の処分の社外流出1',
  `f_41_4_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '総計 (39)+(40)の処分の社外流出2_u',
  `f_41_4_d` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '総計 (39)+(40)の処分の社外流出2_d',
  `f_42_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '新鉱床探鉱費又は海外新鉱床探鉱費の特別控除額(別表十（三）「43」）の総額',
  `f_42_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '新鉱床探鉱費又は海外新鉱床探鉱費の特別控除額(別表十（三）「43」）の処分の社外流出2',
  `f_48_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '残余財産の確定の日の属する事業年度にかかる事業税の損金算入額の総額',
  `f_48_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '残余財産の確定の日の属する事業年度にかかる事業税の損金算入額の留保',
  `f_49_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得金額又は欠損金額の総額',
  `f_49_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得金額又は欠損金額の処分の留保',
  `f_49_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得金額又は欠損金額の処分の社外流出1',
  `f_49_4_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得金額又は欠損金額の処分の社外流出2',
  `f_49_4_d` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_50_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_50_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_50_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_51_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_51_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_51_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_51_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `t_0501`
--

CREATE TABLE `t_0501` (
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `legalPersonName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ymdFrom` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ymdTo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_1_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_1_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_1_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_1_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_2_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_2_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_2_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_2_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_3_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_3_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_3_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_3_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_4_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_4_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_4_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_4_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_5_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_5_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_5_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_5_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_6_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_6_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_6_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_6_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_7_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_7_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_7_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_7_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_8_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_8_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_8_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_8_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_9_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_9_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_9_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_9_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_10_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_10_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_10_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_10_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_11_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_11_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_11_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_11_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_12_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_12_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_12_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_12_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_13_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_13_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_13_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_13_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_14_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_14_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_14_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_14_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_15_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_15_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_15_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_15_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_16_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_16_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_16_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_16_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_17_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_17_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_17_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_17_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_18_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_18_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_18_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_18_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_19_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_19_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_19_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_19_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_20_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_20_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_20_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_20_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_21_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_21_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_21_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_21_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_22_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_22_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_22_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_22_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_23_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_23_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_23_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_23_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_24_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_24_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_24_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_24_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_25_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_25_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_25_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_25_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_26_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_26_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_26_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_26_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_27_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_27_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_27_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_27_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_28_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_28_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_28_3_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増の中間',
  `f_28_3_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増の確定',
  `f_28_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_29_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_29_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_29_3_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増の中間',
  `f_29_3_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増の確定',
  `f_29_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_30_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_30_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_30_3_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増の中間',
  `f_30_3_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増の確定',
  `f_30_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_31_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_31_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_31_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_31_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_32_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_32_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_32_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_32_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_33_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_33_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_33_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_33_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_34_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_34_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_34_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_34_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_35_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_35_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_35_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_35_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_36_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_36_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_36_3` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_36_4` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- 表的结构 `t_0502`
--

CREATE TABLE `t_0502` (
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `legalPersonName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ymdFrom` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ymdTo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_1_1` decimal(11,0) DEFAULT NULL COMMENT '期首現在未納税額',
  `f_1_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_1_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_1_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_1_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_2_1` decimal(11,0) DEFAULT NULL COMMENT '期首現在未納税額',
  `f_2_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_2_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_2_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_2_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_3_2` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_3_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_3_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_3_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_3_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_4_2` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_4_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_5_1` decimal(11,0) DEFAULT NULL COMMENT '期首現在未納税額',
  `f_5_2` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_5_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_5_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_5_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_5_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_6_1` decimal(11,0) DEFAULT NULL COMMENT '期首現在未納税額',
  `f_6_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_6_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_6_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_6_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_7_1_u` decimal(11,0) DEFAULT NULL COMMENT '期首現在未納税額',
  `f_7_3_u` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_7_4_u` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_7_5_u` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_7_6_u` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_7_1_d` decimal(11,0) DEFAULT NULL,
  `f_7_3_d` decimal(11,0) DEFAULT NULL,
  `f_7_4_d` decimal(11,0) DEFAULT NULL,
  `f_7_5_d` decimal(11,0) DEFAULT NULL,
  `f_7_6_d` decimal(11,0) DEFAULT NULL,
  `f_8_2` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_8_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_8_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_8_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_8_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_9_2_u` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_9_2_d` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_9_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_9_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_9_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_9_6_u` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_9_6_d` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_10_2` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_10_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_11_1` decimal(11,0) DEFAULT NULL COMMENT '期首現在未納税額',
  `f_11_2` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_11_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_11_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_11_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_11_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_12_1_u` decimal(11,0) DEFAULT NULL,
  `f_12_1_d` decimal(11,0) DEFAULT NULL COMMENT '期首現在未納税額',
  `f_12_3_u` decimal(11,0) DEFAULT NULL,
  `f_12_3_d` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_12_4_u` decimal(11,0) DEFAULT NULL,
  `f_12_4_d` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_12_5_u` decimal(11,0) DEFAULT NULL,
  `f_12_5_d` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_12_6_u` decimal(11,0) DEFAULT NULL,
  `f_12_6_d` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_13_1` decimal(11,0) DEFAULT NULL COMMENT '期首現在未納税額',
  `f_13_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_13_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_13_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_13_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_14_2_u` decimal(11,0) DEFAULT NULL,
  `f_14_2_d` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_14_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_14_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_14_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_14_6_u` decimal(11,0) DEFAULT NULL,
  `f_14_6_d` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_15_2` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_15_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_16_1` decimal(11,0) DEFAULT NULL COMMENT '期首現在未納税額',
  `f_16_2` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_16_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_16_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_16_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_16_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_17_1` decimal(11,0) DEFAULT NULL COMMENT '期首現在未納税額',
  `f_17_2` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_17_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_17_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_17_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_17_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_18_1` decimal(11,0) DEFAULT NULL COMMENT '期首現在未納税額',
  `f_18_2` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_18_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_18_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_18_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_18_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_19_2` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_19_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_19_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_19_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_19_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_20_1` decimal(11,0) DEFAULT NULL COMMENT '期首現在未納税額',
  `f_20_2` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_20_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_20_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_20_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_20_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_21_1` decimal(11,0) DEFAULT NULL COMMENT '期首現在未納税額',
  `f_21_2` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_21_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_21_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_21_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_21_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_22_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_22_1` decimal(11,0) DEFAULT NULL COMMENT '期首現在未納税額',
  `f_22_2` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_22_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_22_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_22_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_22_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_23_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_23_1` decimal(11,0) DEFAULT NULL COMMENT '期首現在未納税額',
  `f_23_2` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_23_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_23_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_23_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_23_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_24_1` decimal(11,0) DEFAULT NULL COMMENT '期首現在未納税額',
  `f_24_2` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_24_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_24_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_24_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_24_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_25_1` decimal(11,0) DEFAULT NULL COMMENT '期首現在未納税額',
  `f_25_2` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_25_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_25_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_25_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_25_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_26_1` decimal(11,0) DEFAULT NULL COMMENT '期首現在未納税額',
  `f_26_2` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_26_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_26_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_26_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_26_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_27_1` decimal(11,0) DEFAULT NULL COMMENT '期首現在未納税額',
  `f_27_2` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_27_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_27_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_27_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_27_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_28_1` decimal(11,0) DEFAULT NULL COMMENT '期首現在未納税額',
  `f_28_2` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_28_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_28_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_28_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_28_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_29_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_29_1` decimal(11,0) DEFAULT NULL COMMENT '期首現在未納税額',
  `f_29_2` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_29_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_29_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_29_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_29_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_30_1` decimal(11,0) DEFAULT NULL COMMENT '期首現在未納税額',
  `f_30_2` decimal(11,0) DEFAULT NULL COMMENT '当期発生税額',
  `f_30_3` decimal(11,0) DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_30_4` decimal(11,0) DEFAULT NULL COMMENT '仮払経理による納付',
  `f_30_5` decimal(11,0) DEFAULT NULL COMMENT '損金経理による納付',
  `f_30_6` decimal(11,0) DEFAULT NULL COMMENT '期末現在未納税額',
  `f_31` decimal(11,0) DEFAULT NULL COMMENT '期首納税充当金',
  `f_32` decimal(11,0) DEFAULT NULL COMMENT '損金経理をした納税充当金',
  `f_33` decimal(11,0) DEFAULT NULL,
  `f_34` decimal(11,0) DEFAULT NULL COMMENT '計(31)+(32)',
  `f_35` decimal(11,0) DEFAULT NULL COMMENT '法人税額等（5の③）+（10の③）+（15の③）',
  `f_36` decimal(11,0) DEFAULT NULL COMMENT '事業税(19の③)',
  `f_37` decimal(11,0) DEFAULT NULL COMMENT '損金算入のもの',
  `f_38` decimal(11,0) DEFAULT NULL COMMENT '損金不算入のもの',
  `f_39` decimal(11,0) DEFAULT NULL,
  `f_40` decimal(11,0) DEFAULT NULL COMMENT '仮払税金消却',
  `f_41` decimal(11,0) DEFAULT NULL COMMENT '計（34）+（35）+（36）+（37）+（38）+（39）',
  `f_42` decimal(11,0) DEFAULT NULL COMMENT '期末納税充当金(30)+(33)-(40)',
  `f_1_date_from` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_2_date_from` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_6_date_from` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_7_date_from` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_11_date_from` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_12_date_from` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_16_date_from` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_17_date_from` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_1_date_to` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_2_date_to` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_6_date_to` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_7_date_to` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_11_date_to` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_12_date_to` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_16_date_to` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_17_date_to` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `t_0502`
--

INSERT INTO `t_0502` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1_1`, `f_1_3`, `f_1_4`, `f_1_5`, `f_1_6`, `f_2_1`, `f_2_3`, `f_2_4`, `f_2_5`, `f_2_6`, `f_3_2`, `f_3_3`, `f_3_4`, `f_3_5`, `f_3_6`, `f_4_2`, `f_4_6`, `f_5_1`, `f_5_2`, `f_5_3`, `f_5_4`, `f_5_5`, `f_5_6`, `f_6_1`, `f_6_3`, `f_6_4`, `f_6_5`, `f_6_6`, `f_7_1_u`, `f_7_3_u`, `f_7_4_u`, `f_7_5_u`, `f_7_6_u`, `f_7_1_d`, `f_7_3_d`, `f_7_4_d`, `f_7_5_d`, `f_7_6_d`, `f_8_2`, `f_8_3`, `f_8_4`, `f_8_5`, `f_8_6`, `f_9_2_u`, `f_9_2_d`, `f_9_3`, `f_9_4`, `f_9_5`, `f_9_6_u`, `f_9_6_d`, `f_10_2`, `f_10_6`, `f_11_1`, `f_11_2`, `f_11_3`, `f_11_4`, `f_11_5`, `f_11_6`, `f_12_1_u`, `f_12_1_d`, `f_12_3_u`, `f_12_3_d`, `f_12_4_u`, `f_12_4_d`, `f_12_5_u`, `f_12_5_d`, `f_12_6_u`, `f_12_6_d`, `f_13_1`, `f_13_3`, `f_13_4`, `f_13_5`, `f_13_6`, `f_14_2_u`, `f_14_2_d`, `f_14_3`, `f_14_4`, `f_14_5`, `f_14_6_u`, `f_14_6_d`, `f_15_2`, `f_15_6`, `f_16_1`, `f_16_2`, `f_16_3`, `f_16_4`, `f_16_5`, `f_16_6`, `f_17_1`, `f_17_2`, `f_17_3`, `f_17_4`, `f_17_5`, `f_17_6`, `f_18_1`, `f_18_2`, `f_18_3`, `f_18_4`, `f_18_5`, `f_18_6`, `f_19_2`, `f_19_3`, `f_19_4`, `f_19_5`, `f_19_6`, `f_20_1`, `f_20_2`, `f_20_3`, `f_20_4`, `f_20_5`, `f_20_6`, `f_21_1`, `f_21_2`, `f_21_3`, `f_21_4`, `f_21_5`, `f_21_6`, `f_22_name`, `f_22_1`, `f_22_2`, `f_22_3`, `f_22_4`, `f_22_5`, `f_22_6`, `f_23_name`, `f_23_1`, `f_23_2`, `f_23_3`, `f_23_4`, `f_23_5`, `f_23_6`, `f_24_1`, `f_24_2`, `f_24_3`, `f_24_4`, `f_24_5`, `f_24_6`, `f_25_1`, `f_25_2`, `f_25_3`, `f_25_4`, `f_25_5`, `f_25_6`, `f_26_1`, `f_26_2`, `f_26_3`, `f_26_4`, `f_26_5`, `f_26_6`, `f_27_1`, `f_27_2`, `f_27_3`, `f_27_4`, `f_27_5`, `f_27_6`, `f_28_1`, `f_28_2`, `f_28_3`, `f_28_4`, `f_28_5`, `f_28_6`, `f_29_name`, `f_29_1`, `f_29_2`, `f_29_3`, `f_29_4`, `f_29_5`, `f_29_6`, `f_30_1`, `f_30_2`, `f_30_3`, `f_30_4`, `f_30_5`, `f_30_6`, `f_31`, `f_32`, `f_33`, `f_34`, `f_35`, `f_36`, `f_37`, `f_38`, `f_39`, `f_40`, `f_41`, `f_42`, `f_1_date_from`, `f_2_date_from`, `f_6_date_from`, `f_7_date_from`, `f_11_date_from`, `f_12_date_from`, `f_16_date_from`, `f_17_date_from`, `f_1_date_to`, `f_2_date_to`, `f_6_date_to`, `f_7_date_to`, `f_11_date_to`, `f_12_date_to`, `f_16_date_to`, `f_17_date_to`) VALUES
('1', '2019', 1, 'さくら', '2009-04-01', '2010-03-31', NULL, NULL, NULL, NULL, '0', '12', '13', '21', '10', '-32', '25', NULL, NULL, '25', '0', NULL, NULL, '12', NULL, '13', '21', '35', NULL, NULL, NULL, NULL, NULL, NULL, '-22', NULL, '-23', '-13', '14', '35', '14', NULL, '-13', '-1', '29', NULL, NULL, '29', '29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '-33', '47', NULL, '15', '0', NULL, '-14', '23', '-19', '9', NULL, NULL, NULL, '33', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0', '15', '-28', '16', '-25', '9', '-13', NULL, '37', NULL, NULL, '37', NULL, '9', '16', '-25', '46', '-26', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '-16', NULL, NULL, '-16', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '25', NULL, NULL, '25', '0', NULL, '26', NULL, NULL, '26', '0', NULL, NULL, NULL, NULL, NULL, '0', NULL, '27', NULL, NULL, '27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '12', NULL, NULL, '12', '0', '16', NULL, NULL, NULL, NULL, NULL, '200', NULL, '200', '42', '16', NULL, NULL, NULL, '22', '80', '136', NULL, '', '2018-04-01', '', '2018-04-01', '', '2018-04-01', '', '2018-04-01', '', '2019-03-31', '', '2019-03-31', '', '2019-03-31', '', '2019-03-31');

-- --------------------------------------------------------

--
-- 表的结构 `t_06`
--

CREATE TABLE `t_06` (
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `legalPersonName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ymdFrom` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ymdTo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_1_1` decimal(11,0) DEFAULT NULL COMMENT '収入金額',
  `f_1_2` decimal(11,0) DEFAULT NULL COMMENT '①について課される所得税額',
  `f_1_3` decimal(11,0) DEFAULT NULL COMMENT '②のうち控除を受ける所得税額',
  `f_2_1` decimal(11,0) DEFAULT NULL COMMENT '収入金額',
  `f_2_2` decimal(11,0) DEFAULT NULL COMMENT '①について課される所得税額',
  `f_2_3` decimal(11,0) DEFAULT NULL COMMENT '②のうち控除を受ける所得税額',
  `f_3_1` decimal(11,0) DEFAULT NULL COMMENT '収入金額',
  `f_3_2` decimal(11,0) DEFAULT NULL COMMENT '①について課される所得税額',
  `f_3_3` decimal(11,0) DEFAULT NULL COMMENT '②のうち控除を受ける所得税額',
  `f_4_1` decimal(11,0) DEFAULT NULL COMMENT '収入金額',
  `f_4_2` decimal(11,0) DEFAULT NULL COMMENT '①について課される所得税額',
  `f_4_3` decimal(11,0) DEFAULT NULL COMMENT '②のうち控除を受ける所得税額',
  `f_5_1` decimal(11,0) DEFAULT NULL COMMENT '収入金額',
  `f_5_2` decimal(11,0) DEFAULT NULL COMMENT '①について課される所得税額',
  `f_5_3` decimal(11,0) DEFAULT NULL COMMENT '②のうち控除を受ける所得税額',
  `f_6_1` decimal(11,0) DEFAULT NULL COMMENT '収入金額',
  `f_6_2` decimal(11,0) DEFAULT NULL COMMENT '①について課される所得税額',
  `f_6_3` decimal(11,0) DEFAULT NULL COMMENT '②のうち控除を受ける所得税額',
  `f_brand_1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '銘柄',
  `f_7_1` decimal(11,0) DEFAULT NULL COMMENT '収入金額',
  `f_8_1` decimal(11,0) DEFAULT NULL COMMENT '所得税額',
  `f_9_1` decimal(11,0) DEFAULT NULL COMMENT '利子配当等の計算期間',
  `f_10_1` decimal(11,0) DEFAULT NULL COMMENT '（18）のうち元本所有期間',
  `f_11_1` decimal(11,0) DEFAULT NULL COMMENT '所有期間割合',
  `f_12_1` decimal(11,0) DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_brand_2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '銘柄',
  `f_7_2` decimal(11,0) DEFAULT NULL COMMENT '収入金額',
  `f_8_2` decimal(11,0) DEFAULT NULL COMMENT '所得税額',
  `f_9_2` decimal(11,0) DEFAULT NULL COMMENT '利子配当等の計算期間',
  `f_10_2` decimal(11,0) DEFAULT NULL COMMENT '（18）のうち元本所有期間',
  `f_11_2` decimal(11,0) DEFAULT NULL COMMENT '所有期間割合',
  `f_12_2` decimal(11,0) DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_brand_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '銘柄',
  `f_7_3` decimal(11,0) DEFAULT NULL COMMENT '収入金額',
  `f_8_3` decimal(11,0) DEFAULT NULL COMMENT '所得税額',
  `f_9_3` decimal(11,0) DEFAULT NULL COMMENT '利子配当等の計算期間',
  `f_10_3` decimal(11,0) DEFAULT NULL COMMENT '（18）のうち元本所有期間',
  `f_11_3` decimal(11,0) DEFAULT NULL COMMENT '所有期間割合',
  `f_12_3` decimal(11,0) DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_brand_4` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '銘柄',
  `f_7_4` decimal(11,0) DEFAULT NULL COMMENT '収入金額',
  `f_8_4` decimal(11,0) DEFAULT NULL COMMENT '所得税額',
  `f_9_4` decimal(11,0) DEFAULT NULL COMMENT '利子配当等の計算期間',
  `f_10_4` decimal(11,0) DEFAULT NULL COMMENT '（18）のうち元本所有期間',
  `f_11_4` decimal(11,0) DEFAULT NULL COMMENT '所有期間割合',
  `f_12_4` decimal(11,0) DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_brand_5` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '銘柄',
  `f_7_5` decimal(11,0) DEFAULT NULL COMMENT '収入金額',
  `f_8_5` decimal(11,0) DEFAULT NULL COMMENT '所得税額',
  `f_9_5` decimal(11,0) DEFAULT NULL COMMENT '利子配当等の計算期間',
  `f_10_5` decimal(11,0) DEFAULT NULL COMMENT '（18）のうち元本所有期間',
  `f_11_5` decimal(11,0) DEFAULT NULL COMMENT '所有期間割合',
  `f_12_5` decimal(11,0) DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_brand_6` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '銘柄',
  `f_13_1` decimal(11,0) DEFAULT NULL COMMENT '収入金額',
  `f_14_1` decimal(11,0) DEFAULT NULL COMMENT '所得税額',
  `f_15_1` decimal(11,0) DEFAULT NULL COMMENT '利子配当等の計算期間',
  `f_16_1` decimal(11,0) DEFAULT NULL COMMENT '利子配当等の計算期首の所有元本数等',
  `f_17_1` decimal(11,0) DEFAULT NULL COMMENT '（24）-（25）/2又は12',
  `f_18_1` decimal(11,0) DEFAULT NULL COMMENT '所有元本割合',
  `f_19_1` decimal(11,0) DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_brand_7` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '銘柄',
  `f_13_2` decimal(11,0) DEFAULT NULL COMMENT '収入金額',
  `f_14_2` decimal(11,0) DEFAULT NULL COMMENT '所得税額',
  `f_15_2` decimal(11,0) DEFAULT NULL COMMENT '利子配当等の計算期間',
  `f_16_2` decimal(11,0) DEFAULT NULL COMMENT '利子配当等の計算期首の所有元本数等',
  `f_17_2` decimal(11,0) DEFAULT NULL COMMENT '（24）-（25）/2又は12',
  `f_18_2` decimal(11,0) DEFAULT NULL COMMENT '所有元本割合',
  `f_19_2` decimal(11,0) DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_brand_8` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '銘柄',
  `f_13_3` decimal(11,0) DEFAULT NULL COMMENT '収入金額',
  `f_14_3` decimal(11,0) DEFAULT NULL COMMENT '所得税額',
  `f_15_3` decimal(11,0) DEFAULT NULL COMMENT '利子配当等の計算期間',
  `f_16_3` decimal(11,0) DEFAULT NULL COMMENT '利子配当等の計算期首の所有元本数等',
  `f_17_3` decimal(11,0) DEFAULT NULL COMMENT '（24）-（25）/2又は12',
  `f_18_3` decimal(11,0) DEFAULT NULL COMMENT '所有元本割合',
  `f_19_3` decimal(11,0) DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_brand_9` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '銘柄',
  `f_13_4` decimal(11,0) DEFAULT NULL COMMENT '収入金額',
  `f_14_4` decimal(11,0) DEFAULT NULL COMMENT '所得税額',
  `f_15_4` decimal(11,0) DEFAULT NULL COMMENT '利子配当等の計算期間',
  `f_16_4` decimal(11,0) DEFAULT NULL COMMENT '利子配当等の計算期首の所有元本数等',
  `f_17_4` decimal(11,0) DEFAULT NULL COMMENT '（24）-（25）/2又は12',
  `f_18_4` decimal(11,0) DEFAULT NULL COMMENT '所有元本割合',
  `f_19_4` decimal(11,0) DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_brand_10` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '銘柄',
  `f_13_5` decimal(11,0) DEFAULT NULL COMMENT '収入金額',
  `f_14_5` decimal(11,0) DEFAULT NULL COMMENT '所得税額',
  `f_15_5` decimal(11,0) DEFAULT NULL COMMENT '利子配当等の計算期間',
  `f_16_5` decimal(11,0) DEFAULT NULL COMMENT '利子配当等の計算期首の所有元本数等',
  `f_17_5` decimal(11,0) DEFAULT NULL COMMENT '（24）-（25）/2又は12',
  `f_18_5` decimal(11,0) DEFAULT NULL COMMENT '所有元本割合',
  `f_19_5` decimal(11,0) DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_name_1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払者の氏名又は法人名',
  `f_address_1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払者の住所又は所在地',
  `f_date_1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払を受けた年月日',
  `f_20_1` decimal(11,0) DEFAULT NULL COMMENT '収入金額',
  `f_21_1` decimal(11,0) DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_reference_1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '参考',
  `f_name_2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払者の氏名又は法人名',
  `f_address_2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払者の住所又は所在地',
  `f_date_2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払を受けた年月日',
  `f_20_2` decimal(11,0) DEFAULT NULL COMMENT '収入金額',
  `f_21_2` decimal(11,0) DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_reference_2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '参考',
  `f_name_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払者の氏名又は法人名',
  `f_address_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払者の住所又は所在地',
  `f_date_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払を受けた年月日',
  `f_20_3` decimal(11,0) DEFAULT NULL COMMENT '収入金額',
  `f_21_3` decimal(11,0) DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_reference_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '参考',
  `f_name_4` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払者の氏名又は法人名',
  `f_address_4` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払者の住所又は所在地',
  `f_date_4` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払を受けた年月日',
  `f_20_4` decimal(11,0) DEFAULT NULL COMMENT '収入金額',
  `f_21_4` decimal(11,0) DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_reference_4` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '参考',
  `f_name_5` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払者の氏名又は法人名',
  `f_address_5` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払者の住所又は所在地',
  `f_date_5` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払を受けた年月日',
  `f_20_5` decimal(11,0) DEFAULT NULL COMMENT '収入金額',
  `f_21_5` decimal(11,0) DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_reference_5` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '参考',
  `f_total_1` decimal(11,0) DEFAULT NULL COMMENT '計',
  `f_total_2` decimal(11,0) DEFAULT NULL COMMENT '計'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `t_06`
--

INSERT INTO `t_06` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1_1`, `f_1_2`, `f_1_3`, `f_2_1`, `f_2_2`, `f_2_3`, `f_3_1`, `f_3_2`, `f_3_3`, `f_4_1`, `f_4_2`, `f_4_3`, `f_5_1`, `f_5_2`, `f_5_3`, `f_6_1`, `f_6_2`, `f_6_3`, `f_brand_1`, `f_7_1`, `f_8_1`, `f_9_1`, `f_10_1`, `f_11_1`, `f_12_1`, `f_brand_2`, `f_7_2`, `f_8_2`, `f_9_2`, `f_10_2`, `f_11_2`, `f_12_2`, `f_brand_3`, `f_7_3`, `f_8_3`, `f_9_3`, `f_10_3`, `f_11_3`, `f_12_3`, `f_brand_4`, `f_7_4`, `f_8_4`, `f_9_4`, `f_10_4`, `f_11_4`, `f_12_4`, `f_brand_5`, `f_7_5`, `f_8_5`, `f_9_5`, `f_10_5`, `f_11_5`, `f_12_5`, `f_brand_6`, `f_13_1`, `f_14_1`, `f_15_1`, `f_16_1`, `f_17_1`, `f_18_1`, `f_19_1`, `f_brand_7`, `f_13_2`, `f_14_2`, `f_15_2`, `f_16_2`, `f_17_2`, `f_18_2`, `f_19_2`, `f_brand_8`, `f_13_3`, `f_14_3`, `f_15_3`, `f_16_3`, `f_17_3`, `f_18_3`, `f_19_3`, `f_brand_9`, `f_13_4`, `f_14_4`, `f_15_4`, `f_16_4`, `f_17_4`, `f_18_4`, `f_19_4`, `f_brand_10`, `f_13_5`, `f_14_5`, `f_15_5`, `f_16_5`, `f_17_5`, `f_18_5`, `f_19_5`, `f_name_1`, `f_address_1`, `f_date_1`, `f_20_1`, `f_21_1`, `f_reference_1`, `f_name_2`, `f_address_2`, `f_date_2`, `f_20_2`, `f_21_2`, `f_reference_2`, `f_name_3`, `f_address_3`, `f_date_3`, `f_20_3`, `f_21_3`, `f_reference_3`, `f_name_4`, `f_address_4`, `f_date_4`, `f_20_4`, `f_21_4`, `f_reference_4`, `f_name_5`, `f_address_5`, `f_date_5`, `f_20_5`, `f_21_5`, `f_reference_5`, `f_total_1`, `f_total_2`) VALUES
('1', '2019', 1, 'さくら', '2009-04-01', '2010-03-31', '1000', '101', '101', '0', '0', '0', '0', '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, '1000', '101', '101', '11', '21', '31', '51', '61', '0', '31', '12', '22', '32', '52', '62', '0', '32', '13', '23', '33', '53', '63', '0', '33', '14', '24', '34', '54', '64', '0', '34', '15', '25', '35', '55', '65', '0', '35', '71', '81', '91', '111', '121', '0', '0', '91', '72', '82', '92', '112', '122', '0', '0', '92', '73', '83', '93', '113', '123', '0', '0', '93', '74', '84', '94', '114', '124', '0', '0', '94', '75', '85', '95', '115', '125', '0', '0', '95', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `t_07`
--

CREATE TABLE `t_07` (
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `legalPersonName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ymdFrom` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ymdTo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除前所得金額',
  `f_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得金額控除限度額',
  `f_date_1_from` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_date_1_to` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_3_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_date_2_from` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_date_2_to` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_3_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_date_3_from` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_date_3_to` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_3_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_date_4_from` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_date_4_to` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_3_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_date_5_from` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_date_5_to` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_3_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_date_6_from` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_date_6_to` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_3_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_date_7_from` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_date_7_to` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_3_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_date_8_from` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_date_8_to` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_3_8` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_8` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_8` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_date_9_from` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_date_9_to` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_3_9` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_9` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_9` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_date_10_from` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_date_10_to` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_3_10` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_10` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_10` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_6_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期の欠損金額の計',
  `f_7_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '資産の滅失等の棚卸資産',
  `f_7_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '資産の滅失等の固定資産',
  `f_7_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '資産の滅失等の計',
  `f_8_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '原状回復費用の棚卸資産',
  `f_8_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '原状回復費用の固定資産',
  `f_8_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '原状回復費用の計',
  `f_9_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '災害の拡大又は防止の棚卸資産',
  `f_9_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '災害の拡大又は防止の固定資産',
  `f_9_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '災害の拡大又は防止の計',
  `f_10_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計　⑦+⑧+⑨の棚卸資産',
  `f_10_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計　⑦+⑧+⑨の固定資産',
  `f_10_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計　⑦+⑧+⑨の計',
  `f_11_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '保険金または損害賠償等の棚卸資産',
  `f_11_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '保険金または損害賠償等の固定資産',
  `f_11_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '保険金または損害賠償等の計',
  `f_12_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引の棚卸資産',
  `f_12_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引の固定資産',
  `f_12_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引の計',
  `f_13_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '同上のうち所得税額の還付又は欠損金の繰戻しの対象となる災害損失金額の棚卸資産',
  `f_13_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '同上のうち所得税額の還付又は欠損金の繰戻しの対象となる災害損失金額の固定資産',
  `f_13_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '同上のうち所得税額の還付又は欠損金の繰戻しの対象となる災害損失金額の計',
  `f_14_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中間申告における災害損失欠損金の繰戻し額の計',
  `f_15_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '繰戻しの対象となる災害損失欠損金額の計',
  `f_16_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '繰越控除の対象の計',
  `f_total_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計',
  `f_total_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計',
  `f_total_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計',
  `f_17` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '欠損金額',
  `f_18_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '災害損失金',
  `f_18_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '災害損失金',
  `f_18_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '災害損失金',
  `f_19_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '青色欠損金',
  `f_19_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '青色欠損金',
  `f_19_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '青色欠損金',
  `f_total` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '合計',
  `f_20` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_21_date` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `t_07`
--

INSERT INTO `t_07` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1`, `f_2`, `f_date_1_from`, `f_date_1_to`, `f_3_1`, `f_4_1`, `f_date_2_from`, `f_date_2_to`, `f_3_2`, `f_4_2`, `f_5_2`, `f_date_3_from`, `f_date_3_to`, `f_3_3`, `f_4_3`, `f_5_3`, `f_date_4_from`, `f_date_4_to`, `f_3_4`, `f_4_4`, `f_5_4`, `f_date_5_from`, `f_date_5_to`, `f_3_5`, `f_4_5`, `f_5_5`, `f_date_6_from`, `f_date_6_to`, `f_3_6`, `f_4_6`, `f_5_6`, `f_date_7_from`, `f_date_7_to`, `f_3_7`, `f_4_7`, `f_5_7`, `f_date_8_from`, `f_date_8_to`, `f_3_8`, `f_4_8`, `f_5_8`, `f_date_9_from`, `f_date_9_to`, `f_3_9`, `f_4_9`, `f_5_9`, `f_date_10_from`, `f_date_10_to`, `f_3_10`, `f_4_10`, `f_5_10`, `f_6_3`, `f_7_1`, `f_7_2`, `f_7_3`, `f_8_1`, `f_8_2`, `f_8_3`, `f_9_1`, `f_9_2`, `f_9_3`, `f_10_1`, `f_10_2`, `f_10_3`, `f_11_1`, `f_11_2`, `f_11_3`, `f_12_1`, `f_12_2`, `f_12_3`, `f_13_1`, `f_13_2`, `f_13_3`, `f_14_3`, `f_15_3`, `f_16_3`, `f_total_1`, `f_total_2`, `f_total_3`, `f_17`, `f_18_1`, `f_18_2`, `f_18_3`, `f_19_1`, `f_19_2`, `f_19_3`, `f_total`, `f_20`, `f_21_date`) VALUES
('1', '2019', 1, 'さくら', '平成301001', '平成301001', NULL, NULL, '2009-04-01', '2010-03-31', '10', '10', '2010-04-01', '2011-03-31', '11', '11', '0', '2011-04-01', '2012-03-31', '12', '12', '0', '2012-04-01', '2013-03-31', '13', '13', '0', '2013-04-01', '2014-03-31', '14', '14', '0', '2014-04-01', '2015-03-31', '15', '15', '0', '2015-04-01', '2016-03-31', '16', '16', '0', '2016-04-01', '2017-03-31', '17', '17', '0', '2017-04-01', '2018-03-31', '18', '18', '0', '2018-04-01', '2019-03-31', '19', '19', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '145', '145', '0', '0', NULL, NULL, NULL, '0', NULL, NULL, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `t_08`
--

CREATE TABLE `t_08` (
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `legalPersonName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ymdFrom` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ymdTo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '完全子法人株式等に係る受取配当等の額（31の計）',
  `f_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受取配当金等の金額　（34の計）',
  `f_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期に支払う負債利子',
  `f_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '連結法人に支払う負債利子',
  `f_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '国外支配株主等に係る負債の利子等の損金算入額',
  `f_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '超過利子額の損金算入額',
  `f_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計　（3）-（4）-（5）+（6）',
  `f_8` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '総資産価額　（29の計）',
  `f_9` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末関係法人株式等の帳簿価額（30の計）',
  `f_10` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配当等の額から控除する利子　（7）×（9）/（8）',
  `f_11` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'その他株式などにかかる配当金額（37の計）',
  `f_12` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '非支配目的株式等に係る受取配当等の額　(付表「14の計」)',
  `f_13` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受取配当等の益金不算入額',
  `f_14` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '完全子法人株式等に係る受取配当等の額（31の計）',
  `f_15` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受取配当等の金額 (34の計）',
  `f_16` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期に支払う負債利子',
  `f_17` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '国外支配株主等に係る負債の利子等の損金算入額',
  `f_18` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '超過利子額の損金算入額',
  `f_19` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計　（16）-(17)+(18)',
  `f_20` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'H27.4.1～H29.3.31までの負債利子の額',
  `f_21` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '同上の各事業年度の関係法人株式等に係る負債利子等の額の合計額',
  `f_22` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除割合　（21）/（20）',
  `f_23` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '配当の額から控除する利子　（19）×（22）',
  `f_24` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受取配当等の金額　（付表「8の計」）',
  `f_25` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '非支配目的株式等に係る受取配当等の額　付表「14の計」',
  `f_26` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受取配当等の益金不算入額',
  `f_27_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '総資産の帳簿価額の前期末現在',
  `f_28_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '負債利子の元本負債の前期末現在',
  `f_29_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '総資産価額　(27)-(28)の前期末現在',
  `f_30_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末関係法人株式等の前期末現在',
  `f_27_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '総資産の帳簿価額の当期末現在',
  `f_28_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '負債利子の元本負債の当期末現在',
  `f_29_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '総資産価額　(27)-(28)の当期末現在',
  `f_30_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末関係法人株式等の当期末現在',
  `f_27_total` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '総資産の帳簿価額の計',
  `f_28_total` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '負債利子の元本負債の計',
  `f_29_total` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '総資産価額　(27)-(28)の計',
  `f_30_total` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末関係法人株式等の計',
  `f_brand_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法人名又は銘柄',
  `f_HeadOfficeLocation_1` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '本店の所在地',
  `f_dataFrom_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計算期間（自）',
  `f_dataTo_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計算期間（至）',
  `f_31_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受取配当額',
  `f_brand_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法人名又は銘柄',
  `f_HeadOfficeLocation_2` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '本店の所在地',
  `f_dataFrom_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計算期間（自）',
  `f_dataTo_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計算期間（至）',
  `f_31_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受取配当額',
  `f_31_total` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受取配当額の計',
  `f_brand_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法人名又は銘柄',
  `f_HeadOfficeLocation_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '本店の所在地',
  `f_dataFrom_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計算期間（自）',
  `f_dataTo_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計算期間（至）',
  `f_holdingRatio_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '保有割合',
  `f_32_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受取配当額',
  `f_33_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '益金算入額',
  `f_34_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '益金不算入対象額',
  `f_brand_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法人名又は銘柄',
  `f_HeadOfficeLocation_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '本店の所在地',
  `f_dataFrom_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計算期間（自）',
  `f_dataTo_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計算期間（至）',
  `f_holdingRatio_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '保有割合',
  `f_32_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受取配当額',
  `f_33_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '益金算入額',
  `f_34_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '益金不算入対象額',
  `f_32_total` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受取配当額の計',
  `f_33_total` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '益金算入額の計',
  `f_34_total` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '益金不算入対象額の計',
  `f_brand_5` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法人名又は銘柄',
  `f_HeadOfficeLocation_5` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '本店の所在地',
  `f_35_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受取配当額',
  `f_36_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '益金算入額',
  `f_37_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '益金不算入対象額',
  `f_brand_6` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法人名又は銘柄',
  `f_HeadOfficeLocation_6` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '本店の所在地',
  `f_35_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受取配当額',
  `f_36_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '益金算入額',
  `f_37_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '益金不算入対象額',
  `f_35_total` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受取配当額の計',
  `f_36_total` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '益金算入額の計',
  `f_37_total` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '益金不算入対象額の計',
  `f_brand_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法人名又は銘柄',
  `f_38_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '本店の所在地',
  `f_39_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '基準日',
  `f_40_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '保有割合',
  `f_41_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受取配当額',
  `f_42_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '益金算入額',
  `f_43_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '益金不算入対象額',
  `f_brand_8` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法人名又は銘柄',
  `f_38_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '本店の所在地',
  `f_39_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '基準日',
  `f_40_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '保有割合',
  `f_41_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受取配当額',
  `f_42_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '益金算入額',
  `f_43_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '益金不算入対象額',
  `f_41_total` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受取配当額の計',
  `f_42_total` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '益金算入額の計',
  `f_43_total` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '益金不算入対象額の計'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `t_08`
--

INSERT INTO `t_08` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1`, `f_2`, `f_3`, `f_4`, `f_5`, `f_6`, `f_7`, `f_8`, `f_9`, `f_10`, `f_11`, `f_12`, `f_13`, `f_14`, `f_15`, `f_16`, `f_17`, `f_18`, `f_19`, `f_20`, `f_21`, `f_22`, `f_23`, `f_24`, `f_25`, `f_26`, `f_27_1`, `f_28_1`, `f_29_1`, `f_30_1`, `f_27_2`, `f_28_2`, `f_29_2`, `f_30_2`, `f_27_total`, `f_28_total`, `f_29_total`, `f_30_total`, `f_brand_1`, `f_HeadOfficeLocation_1`, `f_dataFrom_1`, `f_dataTo_1`, `f_31_1`, `f_brand_2`, `f_HeadOfficeLocation_2`, `f_dataFrom_2`, `f_dataTo_2`, `f_31_2`, `f_31_total`, `f_brand_3`, `f_HeadOfficeLocation_3`, `f_dataFrom_3`, `f_dataTo_3`, `f_holdingRatio_1`, `f_32_1`, `f_33_1`, `f_34_1`, `f_brand_4`, `f_HeadOfficeLocation_4`, `f_dataFrom_4`, `f_dataTo_4`, `f_holdingRatio_2`, `f_32_2`, `f_33_2`, `f_34_2`, `f_32_total`, `f_33_total`, `f_34_total`, `f_brand_5`, `f_HeadOfficeLocation_5`, `f_35_1`, `f_36_1`, `f_37_1`, `f_brand_6`, `f_HeadOfficeLocation_6`, `f_35_2`, `f_36_2`, `f_37_2`, `f_35_total`, `f_36_total`, `f_37_total`, `f_brand_7`, `f_38_1`, `f_39_1`, `f_40_1`, `f_41_1`, `f_42_1`, `f_43_1`, `f_brand_8`, `f_38_2`, `f_39_2`, `f_40_2`, `f_41_2`, `f_42_2`, `f_43_2`, `f_41_total`, `f_42_total`, `f_43_total`) VALUES
('1', '2019', 1, 'さくら', '平成301001', '平成301001', '96', '-2', '11', '13', NULL, NULL, '-2', '-2', '56', '56', '-2', '-2', '95', '138', '-2', '11', NULL, NULL, '11', '12', '14', '1.166', '12', '-2', '-2', '136', '21', '22', '-1', '23', '31', '32', '-1', '33', '52', '54', '-2', '56', '41', '42', '2019-10-01', '2019-10-21', '43', '51', '52', '2019-10-22', '2019-10-23', '53', '96', '61', '62', '2019-10-21', '2019-10-22', '63', '64', '65', '-1', '71', '72', '2019-10-24', '2019-10-25', '73', '74', '75', '-1', '138', '140', '-2', '81', '82', '83', '84', '-1', '91', '92', '93', '94', '-1', '176', '178', '-2', '101', '102', '2019-10-28', '103', '104', '105', '-1', '111', '112', '2019-10-29', '113', '114', '115', '-1', '218', '220', '-2');

-- --------------------------------------------------------

--
-- 表的结构 `t_6a_d`
--

CREATE TABLE `t_6a_d` (
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `legalPersonName_k` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人名フリガナ',
  `legalPersonName_h` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人名ふりがな',
  `legalPersonName` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人名',
  `b_03` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '管轄税務署',
  `b_04` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '納税地',
  `b_05` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '電話番号',
  `representativeName_k` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '代表者フリガナ',
  `representativeName_h` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '代表者ふりがな',
  `representativeName` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '代表者氏名',
  `b_10` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '代表者住所',
  `a1` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '旧納税地及び旧法人名等',
  `accountingName_h` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '経理責任者ふりがな',
  `accountingName` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '経理責任者氏名',
  `b_12` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '事業種目',
  `b_13` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '整理番号',
  `b_14` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '青色白色区分',
  `b_68` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人の区分',
  `b_15` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '翌年別表等送付要否',
  `b_16` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '期首日',
  `b_17` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '期末日',
  `b_18` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '中間申告',
  `b_19` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `b_20` varchar(11) DEFAULT NULL COMMENT '期末資本金',
  `b_21` varchar(11) DEFAULT NULL COMMENT '〃＋資本準備金',
  `b_22` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '提出日',
  `b_23` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '決算確定日',
  `b_24` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '申告区分',
  `b_25` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '中間配当効力日',
  `b_26` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '所轄',
  `b_27` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '業種目',
  `b_28` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '概況書',
  `b_29` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '要否中間',
  `b_30` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '別表等送付',
  `b_71` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人番号',
  `b_67` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '税理士書面提出',
  `b_31` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '申告期限の延長の処分の有無 法人税',
  `b_32` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '申告期限の延長の処分の有無　事業税',
  `b_33` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '翌期の中間申告の要否',
  `b_34` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '国外関連者の有無',
  `q46` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '利子割還付額の均等割への充当',
  `b_35` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '銀行名',
  `b_35_1` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '金庫･組合',
  `b_35_2` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '農協･漁協',
  `b_69` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `b_36` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '本店･支店',
  `b_36_1` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '出張所',
  `b_36_2` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '本所･支所',
  `b_70` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `b_37` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '口座種類',
  `b_38` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '口座番号',
  `b_39` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '郵便局名',
  `b_40` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '貯金記号',
  `b_41` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '貯金番号',
  `b_42` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '税理士名',
  `b_43` varchar(11) DEFAULT NULL COMMENT '税理士電話',
  `billing_amount` varchar(11) DEFAULT NULL COMMENT '売上金額',
  `a2` varchar(55) COLLATE utf8_unicode_ci NOT NULL COMMENT '一連番号',
  `f_1` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法人税法の規定によって計算した法人税額',
  `f_2` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '試験研究費の増加の場合の法人税額の特別控除額',
  `f_3` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '還付法人税額等の控除額',
  `f_4` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '退職年金等積立金に係る法人税額',
  `f_5` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '課税標準となる法人税額    ①＋②－③＋④',
  `f_6` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '分割法人における課税標準となる法人税額',
  `f_7` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法人税割額    （⑤又は⑥×税率） ',
  `f_8` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '都民税の特定寄附金税額控除額',
  `f_9` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外国関係会社等に係る控除対象所得税額等相当額又は個別控除対象所得税額等相当額の控除額',
  `f_10` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外国の法人税等の額の控除額',
  `f_11` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮装経理に基づく法人税割額の控除額',
  `f_12` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引法人税割額    ⑦－⑧－⑨－⑩',
  `f_13` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '既に納付の確定した当期分の法人税割額',
  `f_14` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '租税条約の実施に係る法人税割額の控除額',
  `f_15` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'この申告により納付すべき法人税割額    ⑫－⑬－⑭＋⑮',
  `f_16` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '算定期間中において事務所等を有していた月数          【均等割】',
  `f_17` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '算定期間中において事務所等を有していた月数',
  `f_18` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '既に納付の確定した当期分の均等割額',
  `f_19` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'この申告により納付すべき均等割額    ⑱－⑲',
  `f_20` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'この申告により納付すべき道府県民税額    ⑯＋⑳',
  `f_21` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '21のうち見込納付額',
  `f_22` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引    21-22',
  `f_23` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '特別区分の課税標準額',
  `f_24` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '同上に対する税額    24×税率',
  `f_25` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '市町村分の課税標準額',
  `f_26` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '同上に対する税額    26×税率',
  `f_27` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '総額',
  `f_28_1` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '年400万円以下の金額',
  `f_29_1` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '年400万円を超え年800万円以下の金額',
  `f_30_1` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '年800万円を超える金額',
  `f_31_1` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計    27+28+29',
  `f_32_1` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '軽減税率不適用法人の金額',
  `f_28_2` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '年400万円以下の金額',
  `f_29_2` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '年400万円を超え年800万円以下の金額',
  `f_30_2` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '年800万円を超える金額',
  `f_31_2` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計    27+28+29',
  `f_32_2` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '軽減税率不適用法人の金額',
  `f_33` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '付加価値額総額',
  `f_34_1` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '付加価値額課税標準',
  `f_34_2` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '付加価値額税額',
  `f_35` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '資本金等の額総額',
  `f_36_1` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '資本金等の額課税標準',
  `f_36_2` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '資本金等の額税額',
  `f_37` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額総額',
  `f_38_1` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額課税標準',
  `f_38_2` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額税額',
  `f_39` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '合計事業税額   30+33+35+37又は31+33+35+37',
  `f_40` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '平成28年改正法附則第5条の控除額',
  `f_41` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業税の特定寄附金税額控除額',
  `f_42` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮装経理に基づく事業税額の控除額',
  `f_43` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引事業税額　38-39-40-41',
  `f_44` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '既に納付の確定した当期分の事業税額',
  `f_45` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '租税条約の実施に係る事業税額の控除額',
  `f_46` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'この申告により納付すべき事業税額    42-43-44',
  `f_47` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得割',
  `f_48` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '付加価値割',
  `f_49` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '資本割',
  `f_50` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入割',
  `f_51` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '（45）のうち見込納付額',
  `f_52` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引    45-50',
  `f_53_1` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得割課税標準',
  `f_53_2` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得割税額',
  `f_54_1` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入割課税標準',
  `f_54_2` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入割税額',
  `f_55` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '合計地方法人特別税額    52+53',
  `f_56` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮装経理に基づく地方法人特別税額の控除額',
  `f_57` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引地方法人特別税額　54-55',
  `f_58` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '既に納付の確定した当期分の地方法人特別税額',
  `f_59` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '租税条約の実施にかかる地方法人特別税額の控除額',
  `f_60` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'この申告により納付すべき地方法人特別税額    56-57-58',
  `f_61` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '（59）のうち見込納付額',
  `f_62` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引    60-61　',
  `f_63` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得金額又は個別所得金額',
  `f_64` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金の額に算入した所得税額',
  `f_65` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金の額に算入した海外投資等損失準備金勘定への繰入額  ',
  `f_66` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '益金の額に算入した海外投資等損失準備金勘定からの戻入額  ',
  `f_67` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外国の事業に帰属する所得以外の所得に対して課された外国法人税額',
  `f_68` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮計　62+63+64-65-66',
  `f_69` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '繰越欠損金額等若しくは災害損失金額又は債務免除等があった場合の欠損金額の当期控除額',
  `f_70` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法人税の所得金額又は個別所得金額',
  `f_71` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法第15条４の徴収猶予を受けようとする税額',
  `f_72` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中間納付額'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `t_6a_d`
--

INSERT INTO `t_6a_d` (`user_id`, `year`, `company_id`, `legalPersonName_k`, `legalPersonName_h`, `legalPersonName`, `b_03`, `b_04`, `b_05`, `representativeName_k`, `representativeName_h`, `representativeName`, `b_10`, `a1`, `accountingName_h`, `accountingName`, `b_12`, `b_13`, `b_14`, `b_68`, `b_15`, `b_16`, `b_17`, `b_18`, `b_19`, `b_20`, `b_21`, `b_22`, `b_23`, `b_24`, `b_25`, `b_26`, `b_27`, `b_28`, `b_29`, `b_30`, `b_71`, `b_67`, `b_31`, `b_32`, `b_33`, `b_34`, `q46`, `b_35`, `b_35_1`, `b_35_2`, `b_69`, `b_36`, `b_36_1`, `b_36_2`, `b_70`, `b_37`, `b_38`, `b_39`, `b_40`, `b_41`, `b_42`, `b_43`, `billing_amount`, `a2`, `f_1`, `f_2`, `f_3`, `f_4`, `f_5`, `f_6`, `f_7`, `f_8`, `f_9`, `f_10`, `f_11`, `f_12`, `f_13`, `f_14`, `f_15`, `f_16`, `f_17`, `f_18`, `f_19`, `f_20`, `f_21`, `f_22`, `f_23`, `f_24`, `f_25`, `f_26`, `f_27`, `f_28_1`, `f_29_1`, `f_30_1`, `f_31_1`, `f_32_1`, `f_28_2`, `f_29_2`, `f_30_2`, `f_31_2`, `f_32_2`, `f_33`, `f_34_1`, `f_34_2`, `f_35`, `f_36_1`, `f_36_2`, `f_37`, `f_38_1`, `f_38_2`, `f_39`, `f_40`, `f_41`, `f_42`, `f_43`, `f_44`, `f_45`, `f_46`, `f_47`, `f_48`, `f_49`, `f_50`, `f_51`, `f_52`, `f_53_1`, `f_53_2`, `f_54_1`, `f_54_2`, `f_55`, `f_56`, `f_57`, `f_58`, `f_59`, `f_60`, `f_61`, `f_62`, `f_63`, `f_64`, `f_65`, `f_66`, `f_67`, `f_68`, `f_69`, `f_70`, `f_71`, `f_72`) VALUES
('1', '2019', 1, 'タロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウ', '1', '1', '1', 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '0312345678', '田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中', '1', '1', '〒604-8262 京都府京都市中京区油小路通り三条上ル宗林町92', '〒604-8262 京都府京都市中京区油小路通り三条上ル宗林町92', '1', '1', 'インターネット', '12345678', '1', '1', '1', '1', '1', '1', '1', 123456789, 1, '1', '1', 'green', '1', '1', '1', '1', '1', '1', '1234567890321', '1', '1', '1', '1', '1', '1', 'bank', 'ああああ', 'ああああ', '金庫', 'shop', 'ああああ', 'ああああ', '支店', '1234567', '1234567', 'ああああああああああああああああああああ', '1234567', '1234567', '1', 1, 12345678, '1234567890123456123456789012345', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876');

-- --------------------------------------------------------

--
-- 表的结构 `t_11`
--

CREATE TABLE `t_11` (
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `legalPersonName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ymdFrom` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ymdTo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_1_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '住所又は所在地',
  `f_1_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '住所又は所在地',
  `f_1_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '住所又は所在地',
  `f_1_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '住所又は所在地',
  `f_2_1_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '氏名又は名称',
  `f_2_1_d` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '氏名又は名称',
  `f_2_2_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '氏名又は名称',
  `f_2_2_d` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '氏名又は名称',
  `f_2_3_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '氏名又は名称',
  `f_2_3_d` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '氏名又は名称',
  `f_2_4_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '氏名又は名称',
  `f_2_4_d` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '氏名又は名称',
  `f_3_1_applicable` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '個別評価事由',
  `f_3_1_number` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_3_2_applicable` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '個別評価事由',
  `f_3_2_number` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_3_3_applicable` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '個別評価事由',
  `f_3_3_number` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_3_4_applicable` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '個別評価事由',
  `f_3_4_number` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_4_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '同上発生時期',
  `f_4_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '同上発生時期',
  `f_4_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '同上発生時期',
  `f_4_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '同上発生時期',
  `f_5_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期繰入額',
  `f_5_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期繰入額',
  `f_5_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期繰入額',
  `f_5_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期繰入額',
  `f_5_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期繰入額',
  `f_6_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '個別債権額',
  `f_6_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '個別債権額',
  `f_6_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '個別債権額',
  `f_6_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '個別債権額',
  `f_6_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '個別債権額',
  `f_7_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '5年弁済額',
  `f_7_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '5年弁済額',
  `f_7_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '5年弁済額',
  `f_7_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '5年弁済額',
  `f_8_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '担保権による取立',
  `f_8_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '担保権による取立',
  `f_8_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '担保権による取立',
  `f_8_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '担保権による取立',
  `f_9_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '他の者の保証取立',
  `f_9_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '他の者の保証取立',
  `f_9_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '他の者の保証取立',
  `f_9_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '他の者の保証取立',
  `f_10_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'その他による取立',
  `f_10_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'その他による取立',
  `f_10_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'その他による取立',
  `f_10_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'その他による取立',
  `f_11_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計',
  `f_11_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計',
  `f_11_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計',
  `f_11_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計',
  `f_12_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '実質債権否認額',
  `f_12_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '実質債権否認額',
  `f_12_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '実質債権否認額',
  `f_12_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '実質債権否認額',
  `f_13_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引',
  `f_13_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引',
  `f_13_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引',
  `f_13_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引',
  `f_14_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1項1号該当',
  `f_14_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1項1号該当',
  `f_14_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1項1号該当',
  `f_14_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1項1号該当',
  `f_14_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1項1号該当',
  `f_15_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1項2号該当',
  `f_15_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1項2号該当',
  `f_15_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1項2号該当',
  `f_15_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1項2号該当',
  `f_15_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1項2号該当',
  `f_16_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1項3号該当',
  `f_16_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1項3号該当',
  `f_16_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1項3号該当',
  `f_16_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1項3号該当',
  `f_16_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1項3号該当',
  `f_17_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1項4号該当',
  `f_17_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1項4号該当',
  `f_17_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1項4号該当',
  `f_17_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1項4号該当',
  `f_17_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '1項4号該当',
  `f_18_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '繰入限度超過',
  `f_18_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '繰入限度超過',
  `f_18_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '繰入限度超過',
  `f_18_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '繰入限度超過',
  `f_18_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '繰入限度超過',
  `f_19_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒損失の額等',
  `f_19_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒損失の額等',
  `f_19_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒損失の額等',
  `f_19_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒損失の額等',
  `f_19_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒損失の額等',
  `f_20_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '前期個別債権額',
  `f_20_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '前期個別債権額',
  `f_20_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '前期個別債権額',
  `f_20_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '前期個別債権額',
  `f_20_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '前期個別債権額',
  `f_21_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(19)が売掛債権',
  `f_21_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(19)が売掛債権',
  `f_21_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(19)が売掛債権',
  `f_21_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(19)が売掛債権',
  `f_21_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(19)が売掛債権',
  `f_22_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(21)が貸倒',
  `f_22_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(21)が貸倒',
  `f_22_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(21)が貸倒',
  `f_22_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(21)が貸倒',
  `f_22_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(21)が貸倒',
  `f_23_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(21)が個別対象',
  `f_23_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(21)が個別対象',
  `f_23_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(21)が個別対象',
  `f_23_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(21)が個別対象',
  `f_23_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(21)が個別対象',
  `f_24_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(21)の金額',
  `f_24_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(21)の金額',
  `f_24_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(21)の金額',
  `f_24_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(21)の金額',
  `f_24_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(21)の金額'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `t_11`
--

INSERT INTO `t_11` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1_1`, `f_1_2`, `f_1_3`, `f_1_4`, `f_2_1_u`, `f_2_1_d`, `f_2_2_u`, `f_2_2_d`, `f_2_3_u`, `f_2_3_d`, `f_2_4_u`, `f_2_4_d`, `f_3_1_applicable`, `f_3_1_number`, `f_3_2_applicable`, `f_3_2_number`, `f_3_3_applicable`, `f_3_3_number`, `f_3_4_applicable`, `f_3_4_number`, `f_4_1`, `f_4_2`, `f_4_3`, `f_4_4`, `f_5_1`, `f_5_2`, `f_5_3`, `f_5_4`, `f_5_5`, `f_6_1`, `f_6_2`, `f_6_3`, `f_6_4`, `f_6_5`, `f_7_1`, `f_7_2`, `f_7_3`, `f_7_4`, `f_8_1`, `f_8_2`, `f_8_3`, `f_8_4`, `f_9_1`, `f_9_2`, `f_9_3`, `f_9_4`, `f_10_1`, `f_10_2`, `f_10_3`, `f_10_4`, `f_11_1`, `f_11_2`, `f_11_3`, `f_11_4`, `f_12_1`, `f_12_2`, `f_12_3`, `f_12_4`, `f_13_1`, `f_13_2`, `f_13_3`, `f_13_4`, `f_14_1`, `f_14_2`, `f_14_3`, `f_14_4`, `f_14_5`, `f_15_1`, `f_15_2`, `f_15_3`, `f_15_4`, `f_15_5`, `f_16_1`, `f_16_2`, `f_16_3`, `f_16_4`, `f_16_5`, `f_17_1`, `f_17_2`, `f_17_3`, `f_17_4`, `f_17_5`, `f_18_1`, `f_18_2`, `f_18_3`, `f_18_4`, `f_18_5`, `f_19_1`, `f_19_2`, `f_19_3`, `f_19_4`, `f_19_5`, `f_20_1`, `f_20_2`, `f_20_3`, `f_20_4`, `f_20_5`, `f_21_1`, `f_21_2`, `f_21_3`, `f_21_4`, `f_21_5`, `f_22_1`, `f_22_2`, `f_22_3`, `f_22_4`, `f_22_5`, `f_23_1`, `f_23_2`, `f_23_3`, `f_23_4`, `f_23_5`, `f_24_1`, `f_24_2`, `f_24_3`, `f_24_4`, `f_24_5`) VALUES
('1', '2019', 1, 'さくら', '平成301001', '平成301001', '11', '12', '13', '14', '21', '31', '22', '32', '23', '33', '24', '34', '42', '41', '44', '43', '46', '45', '48', '47', '2019-10-01', '2019-10-01', '2019-10-01', '2019-10-01', '61', '62', '63', '64', '250', '71', '72', '73', '74', '290', '81', '82', '83', '84', '91', '92', '93', '94', '101', '102', '103', '104', '111', '112', '113', '114', '303', '306', '309', '312', '121', '122', '123', '124', '-434', '-438', '-442', '-446', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '-217.0', '-219.0', '-221.0', '-223.0', '-880.0', '278.0', '281.0', '284.0', '287.0', '1130.0', '131', '132', '133', '134', '530', '141', '142', '143', '144', '570', '151', '152', '153', '154', '610', '161', '162', '163', '164', '650', '171', '172', '173', '174', '690', '151', '152', '153', '154', '610');

-- --------------------------------------------------------

--
-- 表的结构 `t_15`
--

CREATE TABLE `t_15` (
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `legalPersonName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ymdFrom` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ymdTo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支出交際費の額',
  `f_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金算入基準額',
  `f_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '定額控除額限度額　※',
  `f_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金算入限度額',
  `f_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金不算入額',
  `f_6_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支出額',
  `f_7_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除される費用の額',
  `f_8_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引交際費等の額',
  `f_9_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(8)のうち接待飲食費の額',
  `f_6_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支出額',
  `f_7_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除される費用の額',
  `f_8_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引交際費等の額',
  `f_9_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(8)のうち接待飲食費の額',
  `f_subject_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '科目',
  `f_6_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支出額',
  `f_7_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除される費用の額',
  `f_8_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引交際費等の額',
  `f_9_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(8)のうち接待飲食費の額',
  `f_subject_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '科目',
  `f_6_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支出額',
  `f_7_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除される費用の額',
  `f_8_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引交際費等の額',
  `f_9_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(8)のうち接待飲食費の額',
  `f_subject_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '科目',
  `f_6_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支出額',
  `f_7_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除される費用の額',
  `f_8_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引交際費等の額',
  `f_9_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(8)のうち接待飲食費の額',
  `f_subject_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '科目',
  `f_6_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支出額',
  `f_7_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除される費用の額',
  `f_8_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引交際費等の額',
  `f_9_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(8)のうち接待飲食費の額',
  `f_subject_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '科目',
  `f_6_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支出額',
  `f_7_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除される費用の額',
  `f_8_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引交際費等の額',
  `f_9_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(8)のうち接待飲食費の額',
  `f_subject_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '科目',
  `f_6_8` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支出額',
  `f_7_8` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除される費用の額',
  `f_8_8` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引交際費等の額',
  `f_9_8` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(8)のうち接待飲食費の額',
  `f_subject_8` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '科目',
  `f_6_9` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支出額',
  `f_7_9` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除される費用の額',
  `f_8_9` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引交際費等の額',
  `f_9_9` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(8)のうち接待飲食費の額',
  `f_subject_9` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '科目',
  `f_6_10` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支出額',
  `f_7_10` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除される費用の額',
  `f_8_10` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引交際費等の額',
  `f_9_10` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(8)のうち接待飲食費の額',
  `f_subject_10` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '科目',
  `f_6_11` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支出額',
  `f_7_11` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除される費用の額',
  `f_8_11` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引交際費等の額',
  `f_9_11` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(8)のうち接待飲食費の額',
  `f_subject_11` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '科目',
  `f_6_total` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支出額',
  `f_7_total` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除される費用の額',
  `f_8_total` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引交際費等の額',
  `f_9_total` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(8)のうち接待飲食費の額'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `t_15`
--

INSERT INTO `t_15` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1`, `f_2`, `f_3`, `f_4`, `f_5`, `f_6_1`, `f_7_1`, `f_8_1`, `f_9_1`, `f_6_2`, `f_7_2`, `f_8_2`, `f_9_2`, `f_subject_2`, `f_6_3`, `f_7_3`, `f_8_3`, `f_9_3`, `f_subject_3`, `f_6_4`, `f_7_4`, `f_8_4`, `f_9_4`, `f_subject_4`, `f_6_5`, `f_7_5`, `f_8_5`, `f_9_5`, `f_subject_5`, `f_6_6`, `f_7_6`, `f_8_6`, `f_9_6`, `f_subject_6`, `f_6_7`, `f_7_7`, `f_8_7`, `f_9_7`, `f_subject_7`, `f_6_8`, `f_7_8`, `f_8_8`, `f_9_8`, `f_subject_8`, `f_6_9`, `f_7_9`, `f_8_9`, `f_9_9`, `f_subject_9`, `f_6_10`, `f_7_10`, `f_8_10`, `f_9_10`, `f_subject_10`, `f_6_11`, `f_7_11`, `f_8_11`, `f_9_11`, `f_subject_11`, `f_6_total`, `f_7_total`, `f_8_total`, `f_9_total`) VALUES
('1', '2019', 1, 'さくら', '平成301001', '平成301001', '-1', '6', '13', '13', '0', '11', '12', '-1', '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '11', '12', '-1', '13');

-- --------------------------------------------------------

--
-- 表的结构 `t_21_a_d`
--

CREATE TABLE `t_21_a_d` (
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `legalPersonName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ymdFrom` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ymdTo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_1_1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '千代田区名称',
  `f_1_2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '千代田区外',
  `f_1_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '千代田区月数',
  `f_1_4` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '千代田区従業者数の合計',
  `f_2_1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中央区名称',
  `f_2_2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中央区外',
  `f_2_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中央区月数',
  `f_2_4` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中央区従業者数の合計',
  `f_3_1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '港区名称',
  `f_3_2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '港区外',
  `f_3_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '港区月数',
  `f_3_4` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '港区従業者数の合計',
  `f_4_1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '新宿区名称',
  `f_4_2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '新宿区外',
  `f_4_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '新宿区月数',
  `f_4_4` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '新宿区従業者数の合計',
  `f_5_1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文京区名称',
  `f_5_2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文京区外',
  `f_5_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文京区月数',
  `f_5_4` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '文京区従業者数の合計',
  `f_6_1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '台東区名称',
  `f_6_2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '台東区外',
  `f_6_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '台東区月数',
  `f_6_4` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '台東区従業者数の合計',
  `f_7_1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '墨田区名称',
  `f_7_2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '墨田区外',
  `f_7_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '墨田区月数',
  `f_7_4` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '墨田区従業者数の合計',
  `f_8_1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '江東区名称',
  `f_8_2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '江東区外',
  `f_8_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '江東区月数',
  `f_8_4` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '江東区従業者数の合計',
  `f_9_1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '品川区名称',
  `f_9_2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '品川区外',
  `f_9_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '品川区月数',
  `f_9_4` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '品川区従業者数の合計',
  `f_10_1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '目黒区名称',
  `f_10_2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '目黒区外',
  `f_10_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '目黒区月数',
  `f_10_4` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '目黒区従業者数の合計',
  `f_11_1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '大田区名称',
  `f_11_2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '大田区外',
  `f_11_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '大田区月数',
  `f_11_4` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '大田区従業者数の合計',
  `f_12_1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '世田谷区名称',
  `f_12_2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '世田谷区外',
  `f_12_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '世田谷区月数',
  `f_12_4` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '世田谷区従業者数の合計',
  `f_13_1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '渋谷区名称',
  `f_13_2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '渋谷区外',
  `f_13_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '渋谷区月数',
  `f_13_4` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '渋谷区従業者数の合計',
  `f_14_1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中野区名称',
  `f_14_2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中野区外',
  `f_14_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中野区月数',
  `f_14_4` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中野区従業者数の合計',
  `f_15_1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '杉並区名称',
  `f_15_2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '杉並区外',
  `f_15_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '杉並区月数',
  `f_15_4` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '杉並区従業者数の合計',
  `f_16_1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '豊島区名称',
  `f_16_2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '豊島区外',
  `f_16_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '豊島区月数',
  `f_16_4` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '豊島区従業者数の合計',
  `f_17_1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '北区名称',
  `f_17_2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '北区外',
  `f_17_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '北区月数',
  `f_17_4` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '北区従業者数の合計',
  `f_18_1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '荒川区名称',
  `f_18_2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '荒川区外',
  `f_18_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '荒川区月数',
  `f_18_4` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '荒川区従業者数の合計',
  `f_19_1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '板橋区名称',
  `f_19_2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '板橋区外',
  `f_19_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '板橋区月数',
  `f_19_4` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '板橋区従業者数の合計',
  `f_20_1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '練馬区名称',
  `f_20_2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '練馬区外',
  `f_20_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '練馬区月数',
  `f_20_4` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '練馬区従業者数の合計',
  `f_21_1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '足立区名称',
  `f_21_2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '足立区外',
  `f_21_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '足立区月数',
  `f_21_4` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '足立区従業者数の合計',
  `f_22_1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '葛飾区名称',
  `f_22_2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '葛飾区外',
  `f_22_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '葛飾区月数',
  `f_22_4` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '葛飾区従業者数の合計',
  `f_23_1` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '江戸川区名称',
  `f_23_2` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '江戸川区外',
  `f_23_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '江戸川区月数',
  `f_23_4` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '江戸川区従業者数の合計',
  `f_total` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '合計',
  `f_24` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '市町村の存する区域内における従たる事務所等の名称',
  `f_25` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '市町村の存する区域内における従たる事務所等の所在地',
  `f_26` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '市町村の存する区域内における従たる事務所等の（外　箇所）',
  `f_27_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '設置の年月日',
  `f_27_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '設置の名称',
  `f_27_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '設置の所在地',
  `f_28_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '廃止の年月日',
  `f_28_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '廃止の名称',
  `f_28_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '廃止の所在地',
  `f_29_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '旧の主たる事務所の年月日',
  `f_29_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '旧の主たる事務所の名称',
  `f_29_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '旧の主たる事務所の所在地',
  `f_30` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '旧の主たる事務所の月',
  `f_31_1` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '主たる50人超①税額',
  `f_31_2` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '主たる50人超①月数',
  `f_31_3` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '主たる50人超①税額計算',
  `f_32_1` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '主たる50人以下②税額',
  `f_32_2` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '主たる50人以下②月数',
  `f_32_3` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '主たる50人以下②税額計算',
  `f_33_1` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '従たる50人超③税額',
  `f_33_2` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '従たる50人超③月数',
  `f_33_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '従たる50人超③区数',
  `f_33_4` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '従たる50人超③税額計算',
  `f_34_1` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '従たる50人以下④税額',
  `f_34_2` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '従たる50人以下④月数',
  `f_34_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '従たる50人以下④区数',
  `f_34_4` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '従たる50人以下④税額計算',
  `f_35_1` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '道府県分⑤税額',
  `f_35_2` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '道府県分⑤月数',
  `f_35_3` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '道府県分⑤税額計算',
  `f_36_1` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '特別区50人超⑥税額',
  `f_36_2` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '特別区50人超⑥月数',
  `f_36_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '特別区50人超⑥区数',
  `f_36_4` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '特別区50人超⑥税額計算',
  `f_37_1` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '特別区50人以下⑦税額',
  `f_37_2` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '特別区50人以下⑦月数',
  `f_37_3` varchar(2) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '特別区50人以下⑦区数',
  `f_37_4` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '特別区50人以下⑦税額計算',
  `f_38` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '納付すべき均等割額',
  `f_39` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '東京都内における主たる事務所等の所在地',
  `f_40` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '月数',
  `f_41` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '従業者数合計'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `t_21_a_d`
--

INSERT INTO `t_21_a_d` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1_1`, `f_1_2`, `f_1_3`, `f_1_4`, `f_2_1`, `f_2_2`, `f_2_3`, `f_2_4`, `f_3_1`, `f_3_2`, `f_3_3`, `f_3_4`, `f_4_1`, `f_4_2`, `f_4_3`, `f_4_4`, `f_5_1`, `f_5_2`, `f_5_3`, `f_5_4`, `f_6_1`, `f_6_2`, `f_6_3`, `f_6_4`, `f_7_1`, `f_7_2`, `f_7_3`, `f_7_4`, `f_8_1`, `f_8_2`, `f_8_3`, `f_8_4`, `f_9_1`, `f_9_2`, `f_9_3`, `f_9_4`, `f_10_1`, `f_10_2`, `f_10_3`, `f_10_4`, `f_11_1`, `f_11_2`, `f_11_3`, `f_11_4`, `f_12_1`, `f_12_2`, `f_12_3`, `f_12_4`, `f_13_1`, `f_13_2`, `f_13_3`, `f_13_4`, `f_14_1`, `f_14_2`, `f_14_3`, `f_14_4`, `f_15_1`, `f_15_2`, `f_15_3`, `f_15_4`, `f_16_1`, `f_16_2`, `f_16_3`, `f_16_4`, `f_17_1`, `f_17_2`, `f_17_3`, `f_17_4`, `f_18_1`, `f_18_2`, `f_18_3`, `f_18_4`, `f_19_1`, `f_19_2`, `f_19_3`, `f_19_4`, `f_20_1`, `f_20_2`, `f_20_3`, `f_20_4`, `f_21_1`, `f_21_2`, `f_21_3`, `f_21_4`, `f_22_1`, `f_22_2`, `f_22_3`, `f_22_4`, `f_23_1`, `f_23_2`, `f_23_3`, `f_23_4`, `f_total`, `f_24`, `f_25`, `f_26`, `f_27_1`, `f_27_2`, `f_27_3`, `f_28_1`, `f_28_2`, `f_28_3`, `f_29_1`, `f_29_2`, `f_29_3`, `f_30`, `f_31_1`, `f_31_2`, `f_31_3`, `f_32_1`, `f_32_2`, `f_32_3`, `f_33_1`, `f_33_2`, `f_33_3`, `f_33_4`, `f_34_1`, `f_34_2`, `f_34_3`, `f_34_4`, `f_35_1`, `f_35_2`, `f_35_3`, `f_36_1`, `f_36_2`, `f_36_3`, `f_36_4`, `f_37_1`, `f_37_2`, `f_37_3`, `f_37_4`, `f_38`, `f_39`, `f_40`, `f_41`) VALUES
('1', '2019', 1, 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '20191201', '20191220', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', '123456', 'あああああああああ', 'あああああああああ', 'あああああああああ', '20181212', 'あああああああああ', 'あああああああああ', '20181212', 'あああああああああ', 'あああああああああ', '20181212', 'あああああああああ', 'あああああああああ', '12', '1234567', '12', '12345678', '1234567', '12', '12345678', '1234567', '12', '12', '12345678', '1234567', '12', '12', '12345678', '1234567', '12', '12345678', '1234567', '12', '12', '12345678', '1234567', '12', '12', '12345678', '12345678', 'あああああああああ', '12', '12345678901');

-- --------------------------------------------------------

--
-- 表的结构 `t_1102`
--

CREATE TABLE `t_1102` (
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `legalPersonName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ymdFrom` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ymdTo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期繰入額',
  `f_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末一括評価債権合計',
  `f_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒実績率',
  `f_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除後の債権合計',
  `f_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法定繰入率',
  `f_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '繰入限度額',
  `f_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '公益法人等の繰入限度',
  `f_8` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '繰入限度超過額',
  `f_9` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期前3年以内債権合計',
  `f_10` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '（11）/事業年度の数',
  `f_11` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '令第96条第6ノ2　イ',
  `f_12` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '令第96条第6ノ2　ロ',
  `f_13` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '令第96条第6ノ2　ハ',
  `f_14` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '令第96条第6ノ2　ニ',
  `f_15` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '合計',
  `f_16` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '（16）×12/月数合計',
  `f_17` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒実績率',
  `f_account_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒実績率',
  `f_18_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末残高',
  `f_19_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒否認額',
  `f_20_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒認容額',
  `f_21_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '個別債権',
  `f_22_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '金銭債権の額',
  `f_23_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '連結債権',
  `f_24_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '債権の額',
  `f_25_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '実質否認額',
  `f_26_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除後債権の額',
  `f_account_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒実績率',
  `f_18_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末残高',
  `f_19_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒否認額',
  `f_20_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒認容額',
  `f_21_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '個別債権',
  `f_22_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '金銭債権の額',
  `f_23_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '連結債権',
  `f_24_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '債権の額',
  `f_25_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '実質否認額',
  `f_26_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除後債権の額',
  `f_account_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒実績率',
  `f_18_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末残高',
  `f_19_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒否認額',
  `f_20_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒認容額',
  `f_21_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '個別債権',
  `f_22_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '金銭債権の額',
  `f_23_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '連結債権',
  `f_24_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '債権の額',
  `f_25_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '実質否認額',
  `f_26_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除後債権の額',
  `f_account_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒実績率',
  `f_18_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末残高',
  `f_19_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒否認額',
  `f_20_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒認容額',
  `f_21_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '個別債権',
  `f_22_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '金銭債権の額',
  `f_23_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '連結債権',
  `f_24_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '債権の額',
  `f_25_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '実質否認額',
  `f_26_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除後債権の額',
  `f_account_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒実績率',
  `f_18_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末残高',
  `f_19_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒否認額',
  `f_20_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒認容額',
  `f_21_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '個別債権',
  `f_22_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '金銭債権の額',
  `f_23_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '連結債権',
  `f_24_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '債権の額',
  `f_25_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '実質否認額',
  `f_26_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除後債権の額',
  `f_account_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒実績率',
  `f_18_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末残高',
  `f_19_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒否認額',
  `f_20_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒認容額',
  `f_21_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '個別債権',
  `f_22_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '金銭債権の額',
  `f_23_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '連結債権',
  `f_24_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '債権の額',
  `f_25_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '実質否認額',
  `f_26_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除後債権の額',
  `f_account_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒実績率',
  `f_18_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末残高',
  `f_19_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒否認額',
  `f_20_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '貸倒認容額',
  `f_21_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '個別債権',
  `f_22_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '金銭債権の額',
  `f_23_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '連結債権',
  `f_24_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '債権の額',
  `f_25_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '実質否認額',
  `f_26_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除後債権の額',
  `f_18_8` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_19_8` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_20_8` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_21_8` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_22_8` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_23_8` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_24_8` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_25_8_u` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_25_8_d` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_26_8` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_27` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '基準年度の売掛金等合計',
  `f_28` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '実質的に債権と見られないもの',
  `f_29` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '債権からの控除割合',
  `f_30` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '実質的に債権と見られないもの'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `t_1102`
--

INSERT INTO `t_1102` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1`, `f_2`, `f_3`, `f_4`, `f_5`, `f_6`, `f_7`, `f_8`, `f_9`, `f_10`, `f_11`, `f_12`, `f_13`, `f_14`, `f_15`, `f_16`, `f_17`, `f_account_1`, `f_18_1`, `f_19_1`, `f_20_1`, `f_21_1`, `f_22_1`, `f_23_1`, `f_24_1`, `f_25_1`, `f_26_1`, `f_account_2`, `f_18_2`, `f_19_2`, `f_20_2`, `f_21_2`, `f_22_2`, `f_23_2`, `f_24_2`, `f_25_2`, `f_26_2`, `f_account_3`, `f_18_3`, `f_19_3`, `f_20_3`, `f_21_3`, `f_22_3`, `f_23_3`, `f_24_3`, `f_25_3`, `f_26_3`, `f_account_4`, `f_18_4`, `f_19_4`, `f_20_4`, `f_21_4`, `f_22_4`, `f_23_4`, `f_24_4`, `f_25_4`, `f_26_4`, `f_account_5`, `f_18_5`, `f_19_5`, `f_20_5`, `f_21_5`, `f_22_5`, `f_23_5`, `f_24_5`, `f_25_5`, `f_26_5`, `f_account_6`, `f_18_6`, `f_19_6`, `f_20_6`, `f_21_6`, `f_22_6`, `f_23_6`, `f_24_6`, `f_25_6`, `f_26_6`, `f_account_7`, `f_18_7`, `f_19_7`, `f_20_7`, `f_21_7`, `f_22_7`, `f_23_7`, `f_24_7`, `f_25_7`, `f_26_7`, `f_18_8`, `f_19_8`, `f_20_8`, `f_21_8`, `f_22_8`, `f_23_8`, `f_24_8`, `f_25_8_u`, `f_25_8_d`, `f_26_8`, `f_27`, `f_28`, `f_29`, `f_30`) VALUES
('1', '2019', 1, 'さくら', '平成301001', '平成301001', '181', '0', '0', '0', NULL, NULL, '0', NULL, '261', '87', '262', '263', '264', '265', '524', '174', '2.0000', '191', '192', '193', '194', '195', NULL, '196', '-200', '197', '-397', '201', '202', '203', '204', '205', NULL, '206', '-210', '207', '-417', '211', '212', '213', '214', '215', NULL, '216', '-220', '217', '-437', '221', '222', '223', '224', '225', NULL, '226', '-230', '227', '-457', '231', '232', '233', '234', '235', NULL, '236', '-240', '237', '-477', '241', '242', NULL, NULL, NULL, NULL, NULL, '-250', NULL, '-497', '251', '252', NULL, NULL, NULL, NULL, '0', '0', '0', '0', '1554', '1308', '1314', '1320', '0', '1326', '-1350', '1332', '0', '-2682', '269', '270', '-1350', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `t_1402`
--

CREATE TABLE `t_1402` (
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `legalPersonName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ymdFrom` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ymdTo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '公益法人等以外の場合',
  `f_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '指定寄附金等の金額',
  `f_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '特定公益増進法人への寄付金額',
  `f_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'その他の寄附金額',
  `f_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計',
  `f_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '完全支配関係がある法人に対する寄附金額',
  `f_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計',
  `f_8` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄附金支出前所得金額',
  `f_9` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '同上の2.5(1.25)/100相当額',
  `f_10` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '資本金額等',
  `f_11` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '同上月数換算額',
  `f_12` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '同上の2.5/1000相当額',
  `f_13` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '一般寄付金の損金算入限度額',
  `f_14` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄附金支出前所得金額の6.25(5)/100相当額',
  `f_15` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末の資本金等の額の月数換算額の3.75(2.5)/1000相当額',
  `f_16` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '特定公益増進法人等に対する寄付金の特別損金算入限度額',
  `f_17` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '特定公益増進法人の損金算入額',
  `f_18` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '指定寄附金等の金額',
  `f_19` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '国外関連者への寄附金額及び本店等に対する内部寄付金額',
  `f_20` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '同上の寄附金以外の寄付金額',
  `f_21` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '同上のうち損金不算入',
  `f_22` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '国外関連者への寄附金額及び本店等に対する内部寄付金額(19)',
  `f_23` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '連結法人間寄附金',
  `f_24` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計',
  `f_25` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '長期給付事業への繰入利子額',
  `f_26` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '同上以外のみなし寄付金額',
  `f_27` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'その他の寄付金額',
  `f_28` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計',
  `f_29` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得金額仮計',
  `f_30` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄付金支出前所得金額',
  `f_31` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '同上の20/100又は50/100',
  `f_32` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '公益社団法人又は公益財団法人の公益法人特別限度額',
  `f_33` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '長期給付事業を行う救済組合等の損金算入限度額',
  `f_34` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金算入限度額',
  `f_35` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '指定寄付金等の金額',
  `f_36` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '国外関連者に対する寄付金額及び完全支配関係がある法人に対する寄付金額',
  `f_37` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '(28)の寄付金額のうち同上の寄付金以外の寄付金額',
  `f_38` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '同上のうち損金の額に算入されない金額',
  `f_39` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '国外関連者に対する寄付金額及び完全支配関係がある(法)人に対する寄付金額',
  `f_40` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計',
  `f_41_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄附金額',
  `f_42_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄附金額又は支出金額',
  `f_43_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄付した日',
  `f_44_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄付先',
  `f_45_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '告示番号',
  `f_46_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄附金の使途',
  `f_47_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄附した日又は支出した日',
  `f_48_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄附先又は受託者',
  `f_49_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所在地',
  `f_50_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄附金の使途又は認定特定公益信託の名称',
  `f_51_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支出した日',
  `f_52_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受託者',
  `f_53_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所在地',
  `f_54_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '特定公益信託の名称',
  `f_55_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支出金額',
  `f_41_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄附金額',
  `f_42_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄附金額又は支出金額',
  `f_43_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄付した日',
  `f_44_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄付先',
  `f_45_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '告示番号',
  `f_46_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄附金の使途',
  `f_47_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄附した日又は支出した日',
  `f_48_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄附先又は受託者',
  `f_49_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所在地',
  `f_50_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄附金の使途又は認定特定公益信託の名称',
  `f_51_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支出した日',
  `f_52_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受託者',
  `f_53_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所在地',
  `f_54_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '特定公益信託の名称',
  `f_55_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支出金額',
  `f_41_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄附金額',
  `f_41_total` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_42_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄附金額又は支出金額',
  `f_42_total` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_43_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄付した日',
  `f_44_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄付先',
  `f_45_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '告示番号',
  `f_46_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄附金の使途',
  `f_47_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄附した日又は支出した日',
  `f_48_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄附先又は受託者',
  `f_49_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所在地',
  `f_50_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '寄附金の使途又は認定特定公益信託の名称',
  `f_51_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支出した日',
  `f_52_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受託者',
  `f_53_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所在地',
  `f_54_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '特定公益信託の名称',
  `f_55_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支出金額'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `t_1402`
--

INSERT INTO `t_1402` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1`, `f_2`, `f_3`, `f_4`, `f_5`, `f_6`, `f_7`, `f_8`, `f_9`, `f_10`, `f_11`, `f_12`, `f_13`, `f_14`, `f_15`, `f_16`, `f_17`, `f_18`, `f_19`, `f_20`, `f_21`, `f_22`, `f_23`, `f_24`, `f_25`, `f_26`, `f_27`, `f_28`, `f_29`, `f_30`, `f_31`, `f_32`, `f_33`, `f_34`, `f_35`, `f_36`, `f_37`, `f_38`, `f_39`, `f_40`, `f_41_1`, `f_42_1`, `f_43_1`, `f_44_1`, `f_45_1`, `f_46_1`, `f_47_1`, `f_48_1`, `f_49_1`, `f_50_1`, `f_51_1`, `f_52_1`, `f_53_1`, `f_54_1`, `f_55_1`, `f_41_2`, `f_42_2`, `f_43_2`, `f_44_2`, `f_45_2`, `f_46_2`, `f_47_2`, `f_48_2`, `f_49_2`, `f_50_2`, `f_51_2`, `f_52_2`, `f_53_2`, `f_54_2`, `f_55_2`, `f_41_3`, `f_41_total`, `f_42_3`, `f_42_total`, `f_43_3`, `f_44_3`, `f_45_3`, `f_46_3`, `f_47_3`, `f_48_3`, `f_49_3`, `f_50_3`, `f_51_3`, `f_52_3`, `f_53_3`, `f_54_3`, `f_55_3`) VALUES
('1', '2019', 1, 'さくら', '平成301001', '平成301001', '0', '0', '101', '101', '102', '203', NULL, NULL, NULL, '999999', '999999', '2499.9975', NULL, NULL, NULL, NULL, NULL, '0', '103', '-2', NULL, '103', '102', NULL, '0', '0', '0', '0', NULL, NULL, '0', '0', '0', '0', '72', '0', '0', '-72', '0', '-72', '14', '44', '2019-10-01', '11', '12', '13', '2019-10-04', '41', '42', '43', '2019-10-07', '75', '76', '77', '78', '24', '56', '2019-10-02', '21', '22', '23', '2019-10-05', '53', '54', '55', '2019-10-08', '86', '87', '88', '89', '34', '72', '67', '167', '2019-10-03', '31', '32', '33', '2019-10-06', '64', '65', '66', '2019-10-09', '97', '98', '99', '90');

-- --------------------------------------------------------

--
-- 表的结构 `t_companyidentification`
--

CREATE TABLE `t_companyidentification` (
  `company_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `year` varchar(4) NOT NULL,
  `t_b428` varchar(100) DEFAULT NULL,
  `t_c428` varchar(100) DEFAULT NULL,
  `t_d428` varchar(100) DEFAULT NULL,
  `t_h428` varchar(100) DEFAULT NULL,
  `t_k428` varchar(100) DEFAULT NULL,
  `t_l428` varchar(100) DEFAULT NULL,
  `t_m428` varchar(100) DEFAULT NULL,
  `t_n428` varchar(100) DEFAULT NULL,
  `t_o428` varchar(100) DEFAULT NULL,
  `t_b429` varchar(100) DEFAULT NULL,
  `t_c429` varchar(100) DEFAULT NULL,
  `t_d429` varchar(100) DEFAULT NULL,
  `t_h429` varchar(100) DEFAULT NULL,
  `t_k429` varchar(100) DEFAULT NULL,
  `t_l429` varchar(100) DEFAULT NULL,
  `t_m429` varchar(100) DEFAULT NULL,
  `t_n429` varchar(100) DEFAULT NULL,
  `t_o429` varchar(100) DEFAULT NULL,
  `t_b430` varchar(100) DEFAULT NULL,
  `t_c430` varchar(100) DEFAULT NULL,
  `t_d430` varchar(100) DEFAULT NULL,
  `t_h430` varchar(100) DEFAULT NULL,
  `t_k430` varchar(100) DEFAULT NULL,
  `t_l430` varchar(100) DEFAULT NULL,
  `t_m430` varchar(100) DEFAULT NULL,
  `t_n430` varchar(100) DEFAULT NULL,
  `t_o430` varchar(100) DEFAULT NULL,
  `t_b431` varchar(100) DEFAULT NULL,
  `t_c431` varchar(100) DEFAULT NULL,
  `t_d431` varchar(100) DEFAULT NULL,
  `t_h431` varchar(100) DEFAULT NULL,
  `t_k431` varchar(100) DEFAULT NULL,
  `t_l431` varchar(100) DEFAULT NULL,
  `t_m431` varchar(100) DEFAULT NULL,
  `t_n431` varchar(100) DEFAULT NULL,
  `t_o431` varchar(100) DEFAULT NULL,
  `t_b432` varchar(100) DEFAULT NULL,
  `t_c432` varchar(100) DEFAULT NULL,
  `t_d432` varchar(100) DEFAULT NULL,
  `t_h432` varchar(100) DEFAULT NULL,
  `t_k432` varchar(100) DEFAULT NULL,
  `t_l432` varchar(100) DEFAULT NULL,
  `t_m432` varchar(100) DEFAULT NULL,
  `t_n432` varchar(100) DEFAULT NULL,
  `t_o432` varchar(100) DEFAULT NULL,
  `t_b433` varchar(100) DEFAULT NULL,
  `t_c433` varchar(100) DEFAULT NULL,
  `t_d433` varchar(100) DEFAULT NULL,
  `t_h433` varchar(100) DEFAULT NULL,
  `t_k433` varchar(100) DEFAULT NULL,
  `t_l433` varchar(100) DEFAULT NULL,
  `t_m433` varchar(100) DEFAULT NULL,
  `t_n433` varchar(100) DEFAULT NULL,
  `t_o433` varchar(100) DEFAULT NULL,
  `t_b434` varchar(100) DEFAULT NULL,
  `t_c434` varchar(100) DEFAULT NULL,
  `t_d434` varchar(100) DEFAULT NULL,
  `t_h434` varchar(100) DEFAULT NULL,
  `t_k434` varchar(100) DEFAULT NULL,
  `t_l434` varchar(100) DEFAULT NULL,
  `t_m434` varchar(100) DEFAULT NULL,
  `t_n434` varchar(100) DEFAULT NULL,
  `t_o434` varchar(100) DEFAULT NULL,
  `t_b435` varchar(100) DEFAULT NULL,
  `t_c435` varchar(100) DEFAULT NULL,
  `t_d435` varchar(100) DEFAULT NULL,
  `t_h435` varchar(100) DEFAULT NULL,
  `t_k435` varchar(100) DEFAULT NULL,
  `t_l435` varchar(100) DEFAULT NULL,
  `t_m435` varchar(100) DEFAULT NULL,
  `t_n435` varchar(100) DEFAULT NULL,
  `t_o435` varchar(100) DEFAULT NULL,
  `t_b436` varchar(100) DEFAULT NULL,
  `t_c436` varchar(100) DEFAULT NULL,
  `t_d436` varchar(100) DEFAULT NULL,
  `t_h436` varchar(100) DEFAULT NULL,
  `t_k436` varchar(100) DEFAULT NULL,
  `t_l436` varchar(100) DEFAULT NULL,
  `t_m436` varchar(100) DEFAULT NULL,
  `t_n436` varchar(100) DEFAULT NULL,
  `t_o436` varchar(100) DEFAULT NULL,
  `t_b437` varchar(100) DEFAULT NULL,
  `t_c437` varchar(100) DEFAULT NULL,
  `t_d437` varchar(100) DEFAULT NULL,
  `t_h437` varchar(100) DEFAULT NULL,
  `t_k437` varchar(100) DEFAULT NULL,
  `t_l437` varchar(100) DEFAULT NULL,
  `t_m437` varchar(100) DEFAULT NULL,
  `t_n437` varchar(100) DEFAULT NULL,
  `t_o437` varchar(100) DEFAULT NULL,
  `t_b438` varchar(100) DEFAULT NULL,
  `t_c438` varchar(100) DEFAULT NULL,
  `t_d438` varchar(100) DEFAULT NULL,
  `t_h438` varchar(100) DEFAULT NULL,
  `t_k438` varchar(100) DEFAULT NULL,
  `t_l438` varchar(100) DEFAULT NULL,
  `t_m438` varchar(100) DEFAULT NULL,
  `t_n438` varchar(100) DEFAULT NULL,
  `t_o438` varchar(100) DEFAULT NULL,
  `t_b439` varchar(100) DEFAULT NULL,
  `t_c439` varchar(100) DEFAULT NULL,
  `t_d439` varchar(100) DEFAULT NULL,
  `t_h439` varchar(100) DEFAULT NULL,
  `t_k439` varchar(100) DEFAULT NULL,
  `t_l439` varchar(100) DEFAULT NULL,
  `t_m439` varchar(100) DEFAULT NULL,
  `t_n439` varchar(100) DEFAULT NULL,
  `t_o439` varchar(100) DEFAULT NULL,
  `t_b440` varchar(100) DEFAULT NULL,
  `t_c440` varchar(100) DEFAULT NULL,
  `t_d440` varchar(100) DEFAULT NULL,
  `t_h440` varchar(100) DEFAULT NULL,
  `t_k440` varchar(100) DEFAULT NULL,
  `t_l440` varchar(100) DEFAULT NULL,
  `t_m440` varchar(100) DEFAULT NULL,
  `t_n440` varchar(100) DEFAULT NULL,
  `t_o440` varchar(100) DEFAULT NULL,
  `t_i442` varchar(11) DEFAULT NULL,
  `t_n442` varchar(11) DEFAULT NULL,
  `t_n446` varchar(11) DEFAULT NULL,
  `t_n447` varchar(11) DEFAULT NULL,
  `t_n448` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `t_companyidentification`
--

INSERT INTO `t_companyidentification` (`company_id`, `user_id`, `year`, `t_b428`, `t_c428`, `t_d428`, `t_h428`, `t_k428`, `t_l428`, `t_m428`, `t_n428`, `t_o428`, `t_b429`, `t_c429`, `t_d429`, `t_h429`, `t_k429`, `t_l429`, `t_m429`, `t_n429`, `t_o429`, `t_b430`, `t_c430`, `t_d430`, `t_h430`, `t_k430`, `t_l430`, `t_m430`, `t_n430`, `t_o430`, `t_b431`, `t_c431`, `t_d431`, `t_h431`, `t_k431`, `t_l431`, `t_m431`, `t_n431`, `t_o431`, `t_b432`, `t_c432`, `t_d432`, `t_h432`, `t_k432`, `t_l432`, `t_m432`, `t_n432`, `t_o432`, `t_b433`, `t_c433`, `t_d433`, `t_h433`, `t_k433`, `t_l433`, `t_m433`, `t_n433`, `t_o433`, `t_b434`, `t_c434`, `t_d434`, `t_h434`, `t_k434`, `t_l434`, `t_m434`, `t_n434`, `t_o434`, `t_b435`, `t_c435`, `t_d435`, `t_h435`, `t_k435`, `t_l435`, `t_m435`, `t_n435`, `t_o435`, `t_b436`, `t_c436`, `t_d436`, `t_h436`, `t_k436`, `t_l436`, `t_m436`, `t_n436`, `t_o436`, `t_b437`, `t_c437`, `t_d437`, `t_h437`, `t_k437`, `t_l437`, `t_m437`, `t_n437`, `t_o437`, `t_b438`, `t_c438`, `t_d438`, `t_h438`, `t_k438`, `t_l438`, `t_m438`, `t_n438`, `t_o438`, `t_b439`, `t_c439`, `t_d439`, `t_h439`, `t_k439`, `t_l439`, `t_m439`, `t_n439`, `t_o439`, `t_b440`, `t_c440`, `t_d440`, `t_h440`, `t_k440`, `t_l440`, `t_m440`, `t_n440`, `t_o440`, `t_i442`, `t_n442`, `t_n446`, `t_n447`, `t_n448`) VALUES
(1, '1', '2019', '', '', '', '', '5', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `t_r1_no6_yosiki`
--

CREATE TABLE `t_r1_no6_yosiki` (
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `legalPersonName_k` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人名フリガナ',
  `legalPersonName_h` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人名ふりがな',
  `legalPersonName` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人名',
  `b_03` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '管轄税務署',
  `b_04` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '納税地',
  `b_05` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '電話番号',
  `representativeName_k` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '代表者フリガナ',
  `representativeName_h` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '代表者ふりがな',
  `representativeName` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '代表者氏名',
  `b_10` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '代表者住所',
  `a1` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '旧納税地及び旧法人名等',
  `accountingName_h` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '経理責任者ふりがな',
  `accountingName` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '経理責任者氏名',
  `b_12` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '事業種目',
  `b_13` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '整理番号',
  `b_14` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '青色白色区分',
  `b_68` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人の区分',
  `b_15` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '翌年別表等送付要否',
  `b_16` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '期首日',
  `b_17` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '期末日',
  `b_18` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '中間申告',
  `b_19` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `b_20` varchar(11) DEFAULT NULL COMMENT '期末資本金',
  `b_21` varchar(11) DEFAULT NULL COMMENT '〃＋資本準備金',
  `b_22` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '提出日',
  `b_23` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '決算確定日',
  `b_24` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '申告区分',
  `b_25` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '中間配当効力日',
  `b_26` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '所轄',
  `b_27` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '業種目',
  `b_28` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '概況書',
  `b_29` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '要否中間',
  `b_30` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '別表等送付',
  `b_71` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '法人番号',
  `b_67` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '税理士書面提出',
  `b_31` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '申告期限の延長の処分の有無 法人税',
  `b_32` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '申告期限の延長の処分の有無　事業税',
  `b_33` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '翌期の中間申告の要否',
  `b_34` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '国外関連者の有無',
  `q46` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '利子割還付額の均等割への充当',
  `b_35` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '銀行名',
  `b_35_1` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '金庫･組合',
  `b_35_2` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '農協･漁協',
  `b_69` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `b_36` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '本店･支店',
  `b_36_1` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '出張所',
  `b_36_2` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '本所･支所',
  `b_70` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `b_37` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '口座種類',
  `b_38` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '口座番号',
  `b_39` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '郵便局名',
  `b_40` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '貯金記号',
  `b_41` varchar(50) CHARACTER SET utf8 DEFAULT NULL COMMENT '貯金番号',
  `b_42` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '税理士名',
  `b_43` varchar(11) DEFAULT NULL COMMENT '税理士電話',
  `billing_amount` varchar(11) DEFAULT NULL COMMENT '売上金額',
  `a2` varchar(55) COLLATE utf8_unicode_ci NOT NULL COMMENT '一連番号',
  `f_1` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法人税法の規定によって計算した法人税額',
  `f_2` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '試験研究費の増加の場合の法人税額の特別控除額',
  `f_3` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '還付法人税額等の控除額',
  `f_4` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '退職年金等積立金に係る法人税額',
  `f_5` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '課税標準となる法人税額    ①＋②－③＋④',
  `f_6` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '分割法人における課税標準となる法人税額',
  `f_7` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法人税割額    （⑤又は⑥×税率） ',
  `f_8` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '道府県民税の特定寄附金税額控除額',
  `f_9` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外国関係会社等に係る控除対象所得税額等相当額又は個別控除対象所得税額等相当額の控除額',
  `f_10` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外国の法人税等の額の控除額',
  `f_11` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮装経理に基づく法人税割額の控除額',
  `f_12` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引法人税割額    ⑦－⑧－⑨－⑩',
  `f_13` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '既に納付の確定した当期分の法人税割額',
  `f_14` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '租税条約の実施に係る法人税割額の控除額',
  `f_15` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'この申告により納付すべき法人税割額    ⑫－⑬－⑭＋⑮',
  `f_16` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '算定期間中において事務所等を有していた月数          【均等割】',
  `f_17` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '算定期間中において事務所等を有していた月数',
  `f_18` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '既に納付の確定した当期分の均等割額',
  `f_19` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'この申告により納付すべき均等割額  ⑯－⑰',
  `f_20` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'この申告により納付すべき道府県民税額  ⑭+⑱',
  `f_21` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '⑲のうち見込納付額',
  `f_22` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引  ⑲－⑳',
  `f_23` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '特別区分の課税標準額',
  `f_24` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '同上に対する税額  22×税率',
  `f_25` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '市町村分の課税標準額',
  `f_26` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '同上に対する税額  24×税率',
  `f_27` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '総額',
  `f_28_1` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '年400万円以下の金額',
  `f_29_1` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '年400万円を超え年800万円以下の金額',
  `f_30_1` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '年800万円を超える金額',
  `f_31_1` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計    27+28+29',
  `f_32_1` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '軽減税率不適用法人の金額',
  `f_28_2` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '年400万円以下の金額',
  `f_29_2` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '年400万円を超え年800万円以下の金額',
  `f_30_2` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '年800万円を超える金額',
  `f_31_2` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計    27+28+29',
  `f_32_2` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '軽減税率不適用法人の金額',
  `f_33` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '総額',
  `f_34_1` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '付加価値額',
  `f_34_2` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '税額',
  `f_35` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '資本金等の額総額',
  `f_36_1` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '資本金等の額',
  `f_36_2` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '税額',
  `f_37` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '総額',
  `f_38_1` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額',
  `f_38_2` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '税額',
  `f_39` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '合計事業税額   30+33+35+37又は31+33+35+37',
  `f_40` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '平成28年改正法附則第5条の控除額',
  `f_41` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業税の特定寄附金税額控除額',
  `f_42` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮装経理に基づく事業税額の控除額',
  `f_43` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引事業税額　38-39-40-41',
  `f_44` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '既に納付の確定した当期分の事業税額',
  `f_45` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '租税条約の実施に係る事業税額の控除額',
  `f_46` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'この申告により納付すべき事業税額    42-43-44',
  `f_47` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得割',
  `f_48` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '付加価値割',
  `f_49` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '資本割',
  `f_50` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入割',
  `f_51` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '（45）のうち見込納付額',
  `f_52` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引    45-50',
  `f_53_1` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得割に係る地方法人特別税額課税標準',
  `f_53_2` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得割に係る地方法人特別税額税額',
  `f_54_1` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入割に係る地方法人特区別税額課税標準',
  `f_54_2` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入割に係る地方法人特区別税額税額',
  `f_55` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '合計地方法人特別税額',
  `f_56` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮装経理に基づく地方法人特別税額の控除額',
  `f_57` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引地方法人特別税額　54-55',
  `f_58` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '既に納付の確定した当期分の地方法人特別税額',
  `f_59` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '租税条約の実施に係る地方法人特別税の控除額',
  `f_60` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'この申告により納付すべき地方法人特別税額   56-57-58',
  `f_61` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '59のうち見込納付額',
  `f_62` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差　引　（59-60）',
  `f_63` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得金額 【事業税】',
  `f_64` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金の額に算入した所得税額',
  `f_65` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金の額に算入した海外投資等損失準備金勘定への繰入額  ',
  `f_66` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '益金の額に算入した海外投資等損失準備金勘定からの戻入額  ',
  `f_67` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外国の事業に帰属する所得以外の所得に対して課された外国法人税額',
  `f_68` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所 得 金 額 差 引 計     62+63+64-65-66',
  `f_69` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '繰越欠損金額等若しくは災害損失金額又は私財提供等があった場合の欠損金額の当期控除額',
  `f_70` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法人税の所得金額',
  `f_71` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法第15条４の徴収猶予を受けようとする税額',
  `f_72` varchar(14) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中間納付額'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `t_r1_no6_yosiki`
--

INSERT INTO `t_r1_no6_yosiki` (`user_id`, `year`, `company_id`, `legalPersonName_k`, `legalPersonName_h`, `legalPersonName`, `b_03`, `b_04`, `b_05`, `representativeName_k`, `representativeName_h`, `representativeName`, `b_10`, `a1`, `accountingName_h`, `accountingName`, `b_12`, `b_13`, `b_14`, `b_68`, `b_15`, `b_16`, `b_17`, `b_18`, `b_19`, `b_20`, `b_21`, `b_22`, `b_23`, `b_24`, `b_25`, `b_26`, `b_27`, `b_28`, `b_29`, `b_30`, `b_71`, `b_67`, `b_31`, `b_32`, `b_33`, `b_34`, `q46`, `b_35`, `b_35_1`, `b_35_2`, `b_69`, `b_36`, `b_36_1`, `b_36_2`, `b_70`, `b_37`, `b_38`, `b_39`, `b_40`, `b_41`, `b_42`, `b_43`, `billing_amount`, `a2`, `f_1`, `f_2`, `f_3`, `f_4`, `f_5`, `f_6`, `f_7`, `f_8`, `f_9`, `f_10`, `f_11`, `f_12`, `f_13`, `f_14`, `f_15`, `f_16`, `f_17`, `f_18`, `f_19`, `f_20`, `f_21`, `f_22`, `f_23`, `f_24`, `f_25`, `f_26`, `f_27`, `f_28_1`, `f_29_1`, `f_30_1`, `f_31_1`, `f_32_1`, `f_28_2`, `f_29_2`, `f_30_2`, `f_31_2`, `f_32_2`, `f_33`, `f_34_1`, `f_34_2`, `f_35`, `f_36_1`, `f_36_2`, `f_37`, `f_38_1`, `f_38_2`, `f_39`, `f_40`, `f_41`, `f_42`, `f_43`, `f_44`, `f_45`, `f_46`, `f_47`, `f_48`, `f_49`, `f_50`, `f_51`, `f_52`, `f_53_1`, `f_53_2`, `f_54_1`, `f_54_2`, `f_55`, `f_56`, `f_57`, `f_58`, `f_59`, `f_60`, `f_61`, `f_62`, `f_63`, `f_64`, `f_65`, `f_66`, `f_67`, `f_68`, `f_69`, `f_70`, `f_71`, `f_72`) VALUES
('1', '2019', 1, 'タロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウ', '1', '1', '1', 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '0312345678', '田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中', '1', '1', '〒604-8262 京都府京都市中京区油小路通り三条上ル宗林町92', '〒604-8262 京都府京都市中京区油小路通り三条上ル宗林町92', '1', '1', 'インターネット', '12345678', '1', '1', '1', '1', '1', '1', '1', 123456789, 1, '1', '1', 'green', '1', '1', '1', '1', '1', '1', '1234567890321', '1', '1', '1', '1', '1', '1', 'bank', 'ああああ', 'ああああ', '金庫', 'shop', 'ああああ', 'ああああ', '支店', '1234567', '1234567', 'ああああああああああああああああああああ', '1234567', '1234567', '1', 1, 12345678, '1234567890123456123456789012345', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '11', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876');

-- --------------------------------------------------------

--
-- 表的结构 `t_r1_no6_yosiki_beppyo9`
--

CREATE TABLE `t_r1_no6_yosiki_beppyo9` (
  `user_id` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `year` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `company_id` int(11) NOT NULL,
  `legalPersonName` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ymdFrom` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ymdTo` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_3_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_fiscalYearFrom_1` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_fiscalYearTo_1` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_division_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '区分',
  `f_3_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_fiscalYearFrom_2` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_fiscalYearTo_2` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_division_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '区分',
  `f_3_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_fiscalYearFrom_3` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_fiscalYearTo_3` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_division_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '区分',
  `f_3_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_fiscalYearFrom_4` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_fiscalYearTo_4` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_division_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '区分',
  `f_3_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_fiscalYearFrom_5` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_fiscalYearTo_5` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_division_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '区分',
  `f_3_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_fiscalYearFrom_6` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_fiscalYearTo_6` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_division_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '区分',
  `f_3_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_fiscalYearFrom_7` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_fiscalYearTo_7` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_division_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '区分',
  `f_3_8` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_8` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_8` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_fiscalYearFrom_8` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_fiscalYearTo_8` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_division_8` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '区分',
  `f_3_9` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_9` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_9` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_fiscalYearFrom_9` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_fiscalYearTo_9` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_division_9` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '区分',
  `f_3_10` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_4_10` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_5_10` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_fiscalYearFrom_10` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_fiscalYearTo_10` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_division_10` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_3_total` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額計',
  `f_4_total` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額計',
  `f_5_total` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額計',
  `f_division` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '区分',
  `f_3_11` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_3_12` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '災害損失金控除未決済額',
  `f_5_12` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '災害損失金翌期繰越額',
  `f_3_13` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '青色欠損金控除未決済額',
  `f_5_13` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '青色欠損金翌期繰越額',
  `f_5_14` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '合計翌期繰越額',
  `f_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期の欠損金額⑥',
  `f_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '災害により生じた損失の額⑦',
  `f_8` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '保険金又は損害賠償金等の額⑧',
  `f_9` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引災害により生じた損失の額⑨',
  `f_10` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '繰越控除の対象となる損失の額⑩',
  `f_11` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '災害の種類',
  `f_12` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '災害のやんだ日'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `t_r1_no6_yosiki_beppyo9`
--

INSERT INTO `t_r1_no6_yosiki_beppyo9` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1`, `f_2`, `f_3_1`, `f_4_1`, `f_fiscalYearFrom_1`, `f_fiscalYearTo_1`, `f_division_1`, `f_3_2`, `f_4_2`, `f_5_2`, `f_fiscalYearFrom_2`, `f_fiscalYearTo_2`, `f_division_2`, `f_3_3`, `f_4_3`, `f_5_3`, `f_fiscalYearFrom_3`, `f_fiscalYearTo_3`, `f_division_3`, `f_3_4`, `f_4_4`, `f_5_4`, `f_fiscalYearFrom_4`, `f_fiscalYearTo_4`, `f_division_4`, `f_3_5`, `f_4_5`, `f_5_5`, `f_fiscalYearFrom_5`, `f_fiscalYearTo_5`, `f_division_5`, `f_3_6`, `f_4_6`, `f_5_6`, `f_fiscalYearFrom_6`, `f_fiscalYearTo_6`, `f_division_6`, `f_3_7`, `f_4_7`, `f_5_7`, `f_fiscalYearFrom_7`, `f_fiscalYearTo_7`, `f_division_7`, `f_3_8`, `f_4_8`, `f_5_8`, `f_fiscalYearFrom_8`, `f_fiscalYearTo_8`, `f_division_8`, `f_3_9`, `f_4_9`, `f_5_9`, `f_fiscalYearFrom_9`, `f_fiscalYearTo_9`, `f_division_9`, `f_3_10`, `f_4_10`, `f_5_10`, `f_fiscalYearFrom_10`, `f_fiscalYearTo_10`, `f_division_10`, `f_3_total`, `f_4_total`, `f_5_total`, `f_division`, `f_3_11`, `f_3_12`, `f_5_12`, `f_3_13`, `f_5_13`, `f_5_14`, `f_6`, `f_7`, `f_8`, `f_9`, `f_10`, `f_11`, `f_12`) VALUES
('1', '2019', 1, 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '20191111', '20191212', '12345678901', '12345678901', '12345678901', '12345678901', '20181111', '20191212', 'AAAAAAA', '12345678901', '12345678901', '12345678901', '20191111', '20191112', 'AAAAAAA', '12345678901', '12345678901', '12345678901', '20191111', '20191111', 'AAAAAAA', '12345678901', '12345678901', '12345678901', '20191111', '20191111', 'AAAAAAA', '12345678901', '12345678901', '12345678901', '20191111', '20191111', 'AAAAAAA', '12345678901', '12345678901', '12345678901', '20191111', '20191111', 'AAAAAAA', '12345678901', '12345678901', '12345678901', '20191111', '20191111', 'AAAAAAA', '12345678901', '12345678901', '12345678901', '20191111', '20191111', 'AAAAAAA', '12345678901', '12345678901', '12345678901', '20191111', '20191111', 'AAAAAAA', '12345678901', '12345678901', '12345678901', '20191111', '20191111', 'AAAAAAA', '12345678901', '12345678901', '12345678901', 'AAAAAAA', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', 'あああああああああああ', '20121212');

-- --------------------------------------------------------

--
-- 表的结构 `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `avatar` varchar(200) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `name`, `email`, `avatar`, `create_time`, `last_login_time`, `status`) VALUES
(1, 'admin', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z5EHsM8lE9lBOsl7iKTVKIUi', '管理员', '475129036@qq.com', NULL, NULL, NULL, 'normal'),
(2, 'saysky', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z5EHsM8lE9lBOsl7iKTVKIUi', '言曌', '847064370@qq.com', NULL, NULL, NULL, 'normal'),
(3, 'lockuser', '$2a$10$N.zmdr9k7uOCQb376NoUnuTJ8iAt6Z5EHsM8lE9lBOsl7iKTVKIUi', '锁定账号', 'locked@qq.com', NULL, NULL, NULL, 'locked');

-- --------------------------------------------------------

--
-- 表的结构 `user_authority`
--

CREATE TABLE `user_authority` (
  `user_id` bigint(20) NOT NULL,
  `authority_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `user_authority`
--

INSERT INTO `user_authority` (`user_id`, `authority_id`) VALUES
(1, 1),
(2, 2),
(1, 2);

-- --------------------------------------------------------

--
-- 表的结构 `u_localtaxcommon`
--

CREATE TABLE `u_localtaxcommon` (
  `company_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `year` varchar(4) NOT NULL,
  `u_l455` varchar(11) DEFAULT NULL,
  `u_l456` varchar(11) DEFAULT NULL,
  `u_l457` varchar(11) DEFAULT NULL,
  `u_l458` varchar(11) DEFAULT NULL,
  `u_n460` varchar(11) DEFAULT NULL,
  `u_n461` varchar(11) DEFAULT NULL,
  `u_n462` varchar(11) DEFAULT NULL,
  `u_n463` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `u_localtaxcommon`
--

INSERT INTO `u_localtaxcommon` (`company_id`, `user_id`, `year`, `u_l455`, `u_l456`, `u_l457`, `u_l458`, `u_n460`, `u_n461`, `u_n462`, `u_n463`) VALUES
(1, '1', '2019', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

--
-- 转储表的索引
--

--
-- 表的索引 `authority`
--
ALTER TABLE `authority`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- 表的索引 `a_taxlist`
--
ALTER TABLE `a_taxlist`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`) USING BTREE;

--
-- 表的索引 `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`) USING BTREE;

--
-- 表的索引 `c_establishmentinfo`
--
ALTER TABLE `c_establishmentinfo`
  ADD PRIMARY KEY (`company_id`,`user_id`,`year`) USING BTREE;

--
-- 表的索引 `d_table52`
--
ALTER TABLE `d_table52`
  ADD PRIMARY KEY (`company_id`,`user_id`,`year`) USING BTREE;

--
-- 表的索引 `e_table51`
--
ALTER TABLE `e_table51`
  ADD PRIMARY KEY (`company_id`,`user_id`,`year`) USING BTREE;

--
-- 表的索引 `f_carry_over_loss`
--
ALTER TABLE `f_carry_over_loss`
  ADD PRIMARY KEY (`company_id`,`user_id`,`year`) USING BTREE;

--
-- 表的索引 `g_temporarytaxcancellation`
--
ALTER TABLE `g_temporarytaxcancellation`
  ADD PRIMARY KEY (`company_id`,`user_id`,`year`) USING BTREE;

--
-- 表的索引 `h_taxpayments`
--
ALTER TABLE `h_taxpayments`
  ADD PRIMARY KEY (`company_id`,`user_id`,`year`) USING BTREE;

--
-- 表的索引 `i_taxpayback`
--
ALTER TABLE `i_taxpayback`
  ADD PRIMARY KEY (`company_id`,`user_id`,`year`) USING BTREE;

--
-- 表的索引 `j_intermediatepayments`
--
ALTER TABLE `j_intermediatepayments`
  ADD PRIMARY KEY (`company_id`,`user_id`,`year`) USING BTREE;

--
-- 表的索引 `k_taxcourses`
--
ALTER TABLE `k_taxcourses`
  ADD PRIMARY KEY (`company_id`,`user_id`,`year`) USING BTREE;

--
-- 表的索引 `local_tax_rate`
--
ALTER TABLE `local_tax_rate`
  ADD PRIMARY KEY (`city_area`) USING BTREE;

--
-- 表的索引 `l_interestanddividends`
--
ALTER TABLE `l_interestanddividends`
  ADD PRIMARY KEY (`company_id`,`user_id`,`year`) USING BTREE;

--
-- 表的索引 `m_expenses`
--
ALTER TABLE `m_expenses`
  ADD PRIMARY KEY (`company_id`,`user_id`,`year`) USING BTREE;

--
-- 表的索引 `n_donation`
--
ALTER TABLE `n_donation`
  ADD PRIMARY KEY (`company_id`,`user_id`,`year`) USING BTREE;

--
-- 表的索引 `o_loanallowance`
--
ALTER TABLE `o_loanallowance`
  ADD PRIMARY KEY (`company_id`,`user_id`,`year`) USING BTREE;

--
-- 表的索引 `p_dividendsreceivable`
--
ALTER TABLE `p_dividendsreceivable`
  ADD PRIMARY KEY (`company_id`,`user_id`,`year`) USING BTREE;

--
-- 表的索引 `q_excessdepreciation`
--
ALTER TABLE `q_excessdepreciation`
  ADD PRIMARY KEY (`company_id`,`user_id`,`year`) USING BTREE;

--
-- 表的索引 `r_unpaidcorporationtax`
--
ALTER TABLE `r_unpaidcorporationtax`
  ADD PRIMARY KEY (`company_id`,`user_id`,`year`) USING BTREE;

--
-- 表的索引 `s_transferloss`
--
ALTER TABLE `s_transferloss`
  ADD PRIMARY KEY (`company_id`,`user_id`,`year`) USING BTREE;

--
-- 表的索引 `t_01`
--
ALTER TABLE `t_01`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`) USING BTREE;

--
-- 表的索引 `t_01_01`
--
ALTER TABLE `t_01_01`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`) USING BTREE;

--
-- 表的索引 `t_02`
--
ALTER TABLE `t_02`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`) USING BTREE;

--
-- 表的索引 `t_03`
--
ALTER TABLE `t_03`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`) USING BTREE;

--
-- 表的索引 `t_03_tsuki`
--
ALTER TABLE `t_03_tsuki`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`) USING BTREE;

--
-- 表的索引 `t_04`
--
ALTER TABLE `t_04`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`) USING BTREE;

--
-- 表的索引 `t_0501`
--
ALTER TABLE `t_0501`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`) USING BTREE;

--
-- 表的索引 `t_0502`
--
ALTER TABLE `t_0502`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`) USING BTREE;

--
-- 表的索引 `t_06`
--
ALTER TABLE `t_06`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`) USING BTREE;

--
-- 表的索引 `t_07`
--
ALTER TABLE `t_07`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`) USING BTREE;

--
-- 表的索引 `t_08`
--
ALTER TABLE `t_08`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`) USING BTREE;

--
-- 表的索引 `t_6a_d`
--
ALTER TABLE `t_6a_d`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`) USING BTREE;

--
-- 表的索引 `t_11`
--
ALTER TABLE `t_11`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`) USING BTREE;

--
-- 表的索引 `t_15`
--
ALTER TABLE `t_15`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`) USING BTREE;

--
-- 表的索引 `t_21_a_d`
--
ALTER TABLE `t_21_a_d`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`) USING BTREE;

--
-- 表的索引 `t_1102`
--
ALTER TABLE `t_1102`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`) USING BTREE;

--
-- 表的索引 `t_1402`
--
ALTER TABLE `t_1402`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`) USING BTREE;

--
-- 表的索引 `t_companyidentification`
--
ALTER TABLE `t_companyidentification`
  ADD PRIMARY KEY (`company_id`,`user_id`,`year`) USING BTREE;

--
-- 表的索引 `t_r1_no6_yosiki`
--
ALTER TABLE `t_r1_no6_yosiki`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`) USING BTREE;

--
-- 表的索引 `t_r1_no6_yosiki_beppyo9`
--
ALTER TABLE `t_r1_no6_yosiki_beppyo9`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`) USING BTREE;

--
-- 表的索引 `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`) USING BTREE,
  ADD UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`) USING BTREE;

--
-- 表的索引 `user_authority`
--
ALTER TABLE `user_authority`
  ADD KEY `FKgvxjs381k6f48d5d2yi11uh89` (`authority_id`) USING BTREE,
  ADD KEY `FKpqlsjpkybgos9w2svcri7j8xy` (`user_id`) USING BTREE;

--
-- 表的索引 `u_localtaxcommon`
--
ALTER TABLE `u_localtaxcommon`
  ADD PRIMARY KEY (`company_id`,`user_id`,`year`) USING BTREE;

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `authority`
--
ALTER TABLE `authority`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- 限制导出的表
--

--
-- 限制表 `user_authority`
--
ALTER TABLE `user_authority`
  ADD CONSTRAINT `FKgvxjs381k6f48d5d2yi11uh89` FOREIGN KEY (`authority_id`) REFERENCES `authority` (`id`),
  ADD CONSTRAINT `FKpqlsjpkybgos9w2svcri7j8xy` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
