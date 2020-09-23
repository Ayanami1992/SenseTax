-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- 主机： 127.0.0.1
-- 生成日期： 2019-11-11 13:54:55
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
  `b_20` int(11) DEFAULT NULL COMMENT '期末資本金',
  `b_21` int(11) DEFAULT NULL COMMENT '〃＋資本準備金',
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
  `b_43` int(11) DEFAULT NULL COMMENT '税理士電話',
  `billing_amount` int(11) DEFAULT NULL COMMENT '売上金額',
  `a2` varchar(55) COLLATE utf8_unicode_ci NOT NULL COMMENT '一連番号',
  `f_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得金額又は欠損金額',
  `f_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法人税額  (56)又は(57)',
  `f_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法人税額の特別控除額',
  `f_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引法人税額  (2)-(3)',
  `f_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '連結納税を取り消された場合等における既に控除された法人税額の特別控除額の加算額',
  `f_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '課税土地譲渡利益金額',
  `f_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '同上に対する税額  (22)+(23)+(24)',
  `f_8` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '課税留保金額  (別表三(一)「4」)',
  `f_9` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '同上に対する税額  (別表三(一)「8」)',
  `f_10` decimal(20,0) DEFAULT NULL COMMENT '法人税額計  (4)+(5)+(7)+(9)',
  `f_11` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外国関係会社等に係る控除対象所得税額等相当額の控除額（別表十七（三の十二）「3」）',
  `f_12` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮装経理に基づく過大申告の更正に伴う控除法人税額',
  `f_13` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除税額  (((10)-(11)-(12))と(19)のうち少ない金額)',
  `f_14` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引所得に対する法人税額  (10)-(11)-(12)-(13)',
  `f_15` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中間申告分の法人税',
  `f_16` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引確定法人税額  (14)-(15)',
  `f_17` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得税の額等',
  `f_18` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外国税額',
  `f_19` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計  (17)+(18)',
  `f_20` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除した金額  (13)',
  `f_21` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除しきれなかった金額  (19)-(20)',
  `f_22` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '土地譲渡税額',
  `f_23` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '土地譲渡税額',
  `f_24` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '土地譲渡税額',
  `f_25` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得税額等の還付金額  (21)',
  `f_26` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中間納付額  (15)-(14)',
  `f_27` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '欠損金の繰戻しによる還付請求税額',
  `f_28` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計  (25)+(26)+(27)',
  `f_29` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'この申告前の所得金額又は欠損金額',
  `f_30` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'この申告により納付すべき法人税額又は減少する還付請求税額 ',
  `f_31` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '欠損金又は災害損失金等の当期控除額',
  `f_32` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期へ繰り越す欠損金又は災害損失金',
  `f_33` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得の金額に対する法人税額(4)＋(5)＋(7)＋(10の外書)',
  `f_34` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '課税留保金額に対する法人税額(9)',
  `f_35` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '課税標準法人税額(33)＋(34)',
  `f_36` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '地方法人税額(60)',
  `f_37` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '課税留保金額に係る地方法人税額(61)',
  `f_38` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得地方法人税額(36)＋(37)',
  `f_39` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外国関係会社等に係る控除対象所得税額等相当額等の控除額（別表十七（三の十二）「4」と（38）のうち少ない金額）',
  `f_40` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外国税額の控除額',
  `f_41` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮装経理に基づく過大申告の更正に伴う地方法人税額',
  `f_42` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引地方法人税額(38)－(39)－(40)－(41)',
  `f_43` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中間申告分の地方法人税額',
  `f_44` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引確定地方法人税額(42)－(43)',
  `f_45` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'この申告による還付金額(43)－(42)',
  `f_46` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得の金額に対する法人税額(70)',
  `f_47` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '課税留保金額に対する法人税額(71)',
  `f_48` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '課税標準法人税額(72)',
  `f_49` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'この申告により納付すべき地方法人税額(76)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `t_01`
--

INSERT INTO `t_01` (`user_id`, `year`, `company_id`, `legalPersonName_k`, `legalPersonName_h`, `legalPersonName`, `b_03`, `b_04`, `b_05`, `representativeName_k`, `representativeName_h`, `representativeName`, `b_10`, `a1`, `accountingName_h`, `accountingName`, `b_12`, `b_13`, `b_14`, `b_68`, `b_15`, `b_16`, `b_17`, `b_18`, `b_19`, `b_20`, `b_21`, `b_22`, `b_23`, `b_24`, `b_25`, `b_26`, `b_27`, `b_28`, `b_29`, `b_30`, `b_71`, `b_67`, `b_31`, `b_32`, `b_33`, `b_34`, `q46`, `b_35`, `b_35_1`, `b_35_2`, `b_69`, `b_36`, `b_36_1`, `b_36_2`, `b_70`, `b_37`, `b_38`, `b_39`, `b_40`, `b_41`, `b_42`, `b_43`, `billing_amount`, `a2`, `f_1`, `f_2`, `f_3`, `f_4`, `f_5`, `f_6`, `f_7`, `f_8`, `f_9`, `f_10`, `f_11`, `f_12`, `f_13`, `f_14`, `f_15`, `f_16`, `f_17`, `f_18`, `f_19`, `f_20`, `f_21`, `f_22`, `f_23`, `f_24`, `f_25`, `f_26`, `f_27`, `f_28`, `f_29`, `f_30`, `f_31`, `f_32`, `f_33`, `f_34`, `f_35`, `f_36`, `f_37`, `f_38`, `f_39`, `f_40`, `f_41`, `f_42`, `f_43`, `f_44`, `f_45`, `f_46`, `f_47`, `f_48`, `f_49`) VALUES
('1', '2019', 1, 'タロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウ', '1', '1', '1', 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '0312345678', '田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中', '1', '1', '〒604-8262 京都府京都市中京区油小路通り三条上ル宗林町92', '〒604-8262 京都府京都市中京区油小路通り三条上ル宗林町92', '1', '1', 'インターネット', '12345678', '1', '1', '1', '1', '1', '1', '1', 123456789, 1, '1', '1', 'green', '1', '1', '1', '1', '1', '1', '1234567890321', '1', '1', '1', '1', '1', '1', 'bank', 'ああああ', 'ああああ', '金庫', 'shop', 'ああああ', 'ああああ', '支店', '1234567', '1234567', 'ああああああああああああああああああああ', '1234567', '1234567', '1', 1, 12345678, '1234567890123456123456789012345', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678901234567890', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902', '12345678902');

--
-- 转储表的索引
--

--
-- 表的索引 `t_01`
--
ALTER TABLE `t_01`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`);
COMMIT;

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
  `f_50` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_51` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_52` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_53` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_54` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_55` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_56` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_57` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_58` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_59` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_60` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_61` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_62` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_63` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_64` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_65` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_66` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_67` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_68` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_69` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_70` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_71` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_72` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_73` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_74` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_75` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_76` varchar(11) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `t_01_01`
--

INSERT INTO `t_01_01` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_50`, `f_51`, `f_52`, `f_53`, `f_54`, `f_55`, `f_56`, `f_57`, `f_58`, `f_59`, `f_60`, `f_61`, `f_62`, `f_63`, `f_64`, `f_65`, `f_66`, `f_67`, `f_68`, `f_69`, `f_70`, `f_71`, `f_72`, `f_73`, `f_74`, `f_75`, `f_76`) VALUES
('1', '2019', 1, 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '20191117', '20191117', '1234567890', '1234567890', '1234567890', '1234567890', '1234567890', '1234567890', '1234567890', '1234567890', '1234567890', '1234567890', '1234567890', '1234567890', '1234567890', '1234567890', '1234567890', '1234567890', '1234567890', '1234567890', '1234567890', '1234567890', '1234567890', '1234567890', '1234567890', '1234567890', '1234567890', '0', '0');

--
-- 转储表的索引
--

--
-- 表的索引 `t_01_01`
--
ALTER TABLE `t_01_01`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`);
COMMIT;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `t_02`
--

INSERT INTO `t_02` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1`, `f_2`, `f_3`, `f_4`, `f_5`, `f_6`, `f_7`, `f_8`, `f_9`, `f_10`, `f_11`, `f_12`, `f_13`, `f_14`, `f_15`, `f_16`, `f_17`, `f_18`, `b_17`, `c_17`, `d_17`, `e_17`, `h_17`, `i_17`, `j_17`, `k_17`, `b_18`, `c_18`, `d_18`, `e_18`, `g_18`, `h_18`, `i_18`, `j_18`, `k_18`, `b_19`, `c_19`, `d_19`, `e_19`, `g_19`, `h_19`, `i_19`, `j_19`, `k_19`, `b_20`, `c_20`, `d_20`, `e_20`, `g_20`, `h_20`, `i_20`, `j_20`, `k_20`, `b_21`, `c_21`, `d_21`, `e_21`, `g_21`, `h_21`, `i_21`, `j_21`, `k_21`, `b_22`, `c_22`, `d_22`, `e_22`, `g_22`, `h_22`, `i_22`, `j_22`, `k_22`, `b_23`, `c_23`, `d_23`, `e_23`, `g_23`, `h_23`, `i_23`, `j_23`, `k_23`, `b_24`, `c_24`, `d_24`, `e_24`, `g_24`, `h_24`, `i_24`, `j_24`, `k_24`, `b_25`, `c_25`, `d_25`, `e_25`, `g_25`, `h_25`, `i_25`, `j_25`, `k_25`, `b_26`, `c_26`, `d_26`, `e_26`, `g_26`, `h_26`, `i_26`, `j_26`, `k_26`, `b_27`, `c_27`, `d_27`, `e_27`, `g_27`, `h_27`, `i_27`, `j_27`, `k_27`, `b_28`, `c_28`, `d_28`, `e_28`, `g_28`, `h_28`, `i_28`, `j_28`, `k_28`, `b_29`, `c_29`, `d_29`, `e_29`, `g_29`, `h_29`, `i_29`, `j_29`, `k_29`) VALUES
('1', '2019', 1, 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '20191117', '20191117', '123457890asdfqwer123457890asdfqwer23457890asdfqwer', '123457890asdfqwer', '123457890asdfqwer', '123457890asdfqwer', '123457890asdfqwer', '123457890asdfqwer', '123457890asdfqwer', '123457890asdfqwer', '123457890asdfqwer', '123457890asdfqwer', '123457890asdfqwer', '123457890asdfqwer', '123457890asdfqwer', '123457890asdfqwer', '123457890asdfqwer', '123457890asdfqwer', '123457890asdfqwer', '123457890asdfqwer', '1', 'あ', 'ああああああああああ', 'ああああああああああ', '1234567', '1234567', '1234567', '1234567', '2', 'あ', 'ああああああああああ', 'ああああああああああ', '1234567', '1234567', '1234567', '1234567', '1234567', '3', 'あ', 'ああああああああああ', 'ああああああああああ', '1234567', '1234567', '1234567', '1234567', '1234567', '4', 'あ', 'ああああああああああ', 'ああああああああああ', '1234567', '1234567', '1234567', '1234567', '1234567', '5', 'あ', 'ああああああああああ', 'ああああああああああ', '1234567', '1234567', '1234567', '1234567', '1234567', '6', 'あ', 'ああああああああああ', 'ああああああああああ', '1234567', '1234567', '1234567', '1234567', '1234567', '7', 'あ', 'ああああああああああ', 'ああああああああああ', '1234567', '1234567', '1234567', '1234567', '1234567', '8', 'あ', 'ああああああああああ', 'ああああああああああ', '1234567', '1234567', '1234567', '1234567', '1234567', '9', 'あ', 'ああああああああああ', 'ああああああああああ', '1234567', '1234567', '1234567', '1234567', '1234567', '10', 'あ', 'ああああああああああ', 'ああああああああああ', '1234567', '1234567', '1234567', '1234567', '1234567', '11', 'あ', 'ああああああああああ', 'ああああああああああ', '1234567', '1234567', '1234567', '1234567', '1234567', '12', 'あ', 'ああああああああああ', 'ああああああああああ', '1234567', '1234567', '1234567', '1234567', '1234567', '13', 'あ', 'ああああああああああ', 'ああああああああああ', '1234567', '1234567', '1234567', '1234567', '1234567');

--
-- 转储表的索引
--

--
-- 表的索引 `t_02`
--
ALTER TABLE `t_02`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`);
COMMIT;

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
  `f_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '年3,000万円相当額以下',
  `f_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '年3,000万円超1億円以下',
  `f_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '年1億円超',
  `f_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計',
  `f_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '10％相当額',
  `f_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '15％相当額',
  `f_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '20％相当額',
  `f_8` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計',
  `f_9` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '留保所得金額',
  `f_10` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '前期末配当等の額',
  `f_11` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期末配当等の額',
  `f_12` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法人税額',
  `f_13` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '住民税額',
  `f_14` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外国関係会社等に係る控除対象所得税額等相当額',
  `f_15` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法人税額等の合計額',
  `f_16` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期留保金額',
  `f_17` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '留保控除額',
  `f_18` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '課税留保金額',
  `f_19` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中小企業以外(大法人)',
  `f_20` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '大法人による完全支配関係がある中小企業者',
  `f_21` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '住民税額',
  `f_22` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '特定寄附金の合計額に係る控除額',
  `f_23` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '調整地方税額に係る控除額',
  `f_24` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '住民税から控除される金額',
  `f_25` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '住民税額'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `t_03`
--

INSERT INTO `t_03` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1`, `f_2`, `f_3`, `f_4`, `f_5`, `f_6`, `f_7`, `f_8`, `f_9`, `f_10`, `f_11`, `f_12`, `f_13`, `f_14`, `f_15`, `f_16`, `f_17`, `f_18`, `f_19`, `f_20`, `f_21`, `f_22`, `f_23`, `f_24`, `f_25`) VALUES
('1', '2019', 1, 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '20191117', '20191117', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901');

--
-- 转储表的索引
--

--
-- 表的索引 `t_03`
--
ALTER TABLE `t_03`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`);
COMMIT;

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
  `f_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末資本額・出資額',
  `f_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '同上の25％',
  `f_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首利益積立金額',
  `f_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '適格合併等により増加した利益積立金額',
  `f_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '減少した利益積立金額',
  `f_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末利益積立金額',
  `f_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '積立金基準額',
  `f_8` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '定額基準額',
  `f_9` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得金額総計',
  `f_10` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '非適格合併による移転資産',
  `f_11` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受取配当等益金不算入',
  `f_12` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '外国子会社から受ける剰余金の配当等の益金不算入額',
  `f_13` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '受贈益の益金不算入額',
  `f_14` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法人税額の還付金等',
  `f_15` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_16` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中間申告における繰戻しによる還付に係る災害損失欠損金額の益金算入額',
  `f_17` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '新鉱床探鉱費',
  `f_18` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '対外船舶運航業者：損金算入額',
  `f_19` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '対外船舶運航業者：益金算入額',
  `f_20` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '沖縄の認定法人の特別控除額',
  `f_21` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '特別区域での損金益金算入額',
  `f_22` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収用等特別控除額',
  `f_23` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '肉用牛の特別控除額',
  `f_24` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '超過利子額の損金算入',
  `f_25` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '課税対象金額益金算入',
  `f_26` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得等の金額',
  `f_27` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得基準額',
  `f_28` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '留保控除額'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `t_03_tsuki`
--

INSERT INTO `t_03_tsuki` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1`, `f_2`, `f_3`, `f_4`, `f_5`, `f_6`, `f_7`, `f_8`, `f_9`, `f_10`, `f_11`, `f_12`, `f_13`, `f_14`, `f_15`, `f_16`, `f_17`, `f_18`, `f_19`, `f_20`, `f_21`, `f_22`, `f_23`, `f_24`, `f_25`, `f_26`, `f_27`, `f_28`) VALUES
('1', '2019', 1, 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '20191117', '20191117', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901');

--
-- 转储表的索引
--

--
-- 表的索引 `t_03_tsuki`
--
ALTER TABLE `t_03_tsuki`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`);
COMMIT;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `t_04`
--

INSERT INTO `t_04` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1_1`, `f_1_2`, `f_1_3`, `f_1_4`, `f_2_1`, `f_2_2`, `f_3_1`, `f_3_2`, `f_4_1`, `f_4_2`, `f_5_1`, `f_5_4`, `f_6_1`, `f_6_2`, `f_7_1`, `f_7_4`, `f_8_1`, `f_8_4`, `f_9_1`, `f_9_2`, `f_9_3`, `f_9_4`, `f_10_name`, `f_10_1`, `f_10_2`, `f_10_3`, `f_10_4`, `f_11_1`, `f_11_2`, `f_11_4`, `f_12_1`, `f_12_2`, `f_13_1`, `f_13_2`, `f_14_1`, `f_14_4`, `f_15_1`, `f_15_4`, `f_16_1`, `f_16_4`, `f_17_1`, `f_17_4`, `f_18_1`, `f_18_2`, `f_19_1`, `f_19_4`, `f_20_1`, `f_20_2`, `f_20_3`, `f_20_4`, `f_21_1`, `f_21_2`, `f_21_3`, `f_21_4_u`, `f_21_4_d`, `f_22_1`, `f_22_2`, `f_22_3`, `f_22_4_u`, `f_22_4_d`, `f_23_1`, `f_23_3`, `f_23_4`, `f_24_1`, `f_24_3`, `f_24_4`, `f_25_1`, `f_25_2`, `f_25_3`, `f_25_4_u`, `f_25_4_d`, `f_26_1`, `f_26_4`, `f_29_1`, `f_29_4`, `f_30_1`, `f_30_4`, `f_31_1`, `f_31_4`, `f_34_1`, `f_34_2`, `f_34_3`, `f_34_4_u`, `f_34_4_d`, `f_35_1`, `f_35_2`, `f_37_1`, `f_37_2`, `f_37_3`, `f_37_4`, `f_38_1`, `f_38_4`, `f_39_1`, `f_39_2`, `f_39_3`, `f_39_4_u`, `f_39_4_d`, `f_40_1`, `f_40_4`, `f_41_1`, `f_41_2`, `f_41_3`, `f_41_4_u`, `f_41_4_d`, `f_42_1`, `f_42_4`, `f_48_1`, `f_48_2`, `f_49_1`, `f_49_2`, `f_49_3`, `f_49_4_u`, `f_49_4_d`, `f_50_name`, `f_50_1`, `f_50_2`, `f_51_name`, `f_51_1`, `f_51_3`, `f_51_4`) VALUES
('1', '2019', 1, 'さくら', '平成301001', '平成301001', '800', '788', '12', NULL, '67', '67', '152', '152', '200', '200', '78', '78', '12', '12', NULL, NULL, '0', '0', NULL, '116', NULL, NULL, '仮払税金消却', '116', NULL, NULL, NULL, '659', '569', '90', '13', '13', '16', '16', '95', '95', NULL, NULL, NULL, NULL, NULL, NULL, '106', '106', '34', '34', NULL, NULL, NULL, NULL, '264', '135', NULL, '0', NULL, '1195', '1222', NULL, '102', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1195', '1222', NULL, '-129', NULL, '205', '205', '731', '731', NULL, NULL, NULL, NULL, '731', '1222', NULL, '307', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2131', '1222', NULL, NULL, NULL, '145', '145', '1986', '1222', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1986', '1222', NULL, NULL, NULL, '未収還付所得税消却', '22', '22', 'a11', '12', '賞与', '22');

--
-- 转储表的索引
--

--
-- 表的索引 `t_04`
--
ALTER TABLE `t_04`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`);
COMMIT;

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
  `f_1_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_1_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_1_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_1_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_2_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_2_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_2_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_2_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_3_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_3_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_3_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_3_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_4_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_4_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_4_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_4_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_5_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_5_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_5_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_5_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_6_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_6_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_6_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_6_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_7_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_7_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_7_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_7_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_8_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_8_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_8_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_8_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_9_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_9_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_9_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_9_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_10_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_10_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_10_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_10_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_11_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_11_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_11_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_11_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_12_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_12_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_12_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_12_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_13_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_13_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_13_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_13_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_14_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_14_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_14_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_14_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_15_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_15_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_15_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_15_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_16_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_16_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_16_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_16_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_17_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_17_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_17_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_17_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_18_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_18_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_18_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_18_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_19_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_19_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_19_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_19_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_20_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_20_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_20_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_20_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_21_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_21_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_21_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_21_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_22_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_22_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_22_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_22_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_23_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_23_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_23_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_23_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_24_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_24_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_24_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_24_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_25_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_25_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_25_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_25_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_26_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_26_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_26_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_26_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_27_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_27_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_27_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_27_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_28_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_28_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_28_3_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増の中間',
  `f_28_3_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増の確定',
  `f_28_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_29_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_29_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_29_3_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増の中間',
  `f_29_3_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増の確定',
  `f_29_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_30_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_30_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_30_3_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増の中間',
  `f_30_3_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増の確定',
  `f_30_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_31_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_31_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_31_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_31_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_32_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_32_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_32_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_32_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_33_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_33_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_33_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_33_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_34_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_34_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_34_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_34_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_35_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_35_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_35_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_35_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_36_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在利益積立金額',
  `f_36_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の減',
  `f_36_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期中の増',
  `f_36_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '差引翌期首現在利益積立金額',
  `f_2_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_3_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_4_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_5_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_6_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_7_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_8_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_9_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_10_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_11_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_12_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_13_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_23_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_24_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_25_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `t_0501`
--

INSERT INTO `t_0501` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1_1`, `f_1_2`, `f_1_3`, `f_1_4`, `f_2_1`, `f_2_2`, `f_2_3`, `f_2_4`, `f_3_1`, `f_3_2`, `f_3_3`, `f_3_4`, `f_4_1`, `f_4_2`, `f_4_3`, `f_4_4`, `f_5_1`, `f_5_2`, `f_5_3`, `f_5_4`, `f_6_1`, `f_6_2`, `f_6_3`, `f_6_4`, `f_7_1`, `f_7_2`, `f_7_3`, `f_7_4`, `f_8_1`, `f_8_2`, `f_8_3`, `f_8_4`, `f_9_1`, `f_9_2`, `f_9_3`, `f_9_4`, `f_10_1`, `f_10_2`, `f_10_3`, `f_10_4`, `f_11_1`, `f_11_2`, `f_11_3`, `f_11_4`, `f_12_1`, `f_12_2`, `f_12_3`, `f_12_4`, `f_13_1`, `f_13_2`, `f_13_3`, `f_13_4`, `f_14_1`, `f_14_2`, `f_14_3`, `f_14_4`, `f_15_1`, `f_15_2`, `f_15_3`, `f_15_4`, `f_16_1`, `f_16_2`, `f_16_3`, `f_16_4`, `f_17_1`, `f_17_2`, `f_17_3`, `f_17_4`, `f_18_1`, `f_18_2`, `f_18_3`, `f_18_4`, `f_19_1`, `f_19_2`, `f_19_3`, `f_19_4`, `f_20_1`, `f_20_2`, `f_20_3`, `f_20_4`, `f_21_1`, `f_21_2`, `f_21_3`, `f_21_4`, `f_22_1`, `f_22_2`, `f_22_3`, `f_22_4`, `f_23_1`, `f_23_2`, `f_23_3`, `f_23_4`, `f_24_1`, `f_24_2`, `f_24_3`, `f_24_4`, `f_25_1`, `f_25_2`, `f_25_3`, `f_25_4`, `f_26_1`, `f_26_2`, `f_26_3`, `f_26_4`, `f_27_1`, `f_27_2`, `f_27_3`, `f_27_4`, `f_28_1`, `f_28_2`, `f_28_3_1`, `f_28_3_2`, `f_28_4`, `f_29_1`, `f_29_2`, `f_29_3_1`, `f_29_3_2`, `f_29_4`, `f_30_1`, `f_30_2`, `f_30_3_1`, `f_30_3_2`, `f_30_4`, `f_31_1`, `f_31_2`, `f_31_3`, `f_31_4`, `f_32_1`, `f_32_2`, `f_32_3`, `f_32_4`, `f_33_1`, `f_33_2`, `f_33_3`, `f_33_4`, `f_34_1`, `f_34_2`, `f_34_3`, `f_34_4`, `f_35_1`, `f_35_2`, `f_35_3`, `f_35_4`, `f_36_1`, `f_36_2`, `f_36_3`, `f_36_4`, `f_2_name`, `f_3_name`, `f_4_name`, `f_5_name`, `f_6_name`, `f_7_name`, `f_8_name`, `f_9_name`, `f_10_name`, `f_11_name`, `f_12_name`, `f_13_name`, `f_23_name`, `f_24_name`, `f_25_name`) VALUES
('1', '2019', 1, 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '20191117', '20191117', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '0', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '未収還付道府県民税', '未収還付道府県民税未収還付道府県民税', '未収還付道府県民税', '未収還付道府県民税', '未収還付道府県民税', '未収還付道府県民税', '未収還付道府県民税', '未収還付道府県民税', '未収還付道府県民税', '未収還付道府県民税', '未収還付道府県民税', '未収還付道府県民税', '未収還付道府県民税', '未収還付道府県民税', '未収還付道府県民税');

--
-- 转储表的索引
--

--
-- 表的索引 `t_0501`
--
ALTER TABLE `t_0501`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`);
COMMIT;

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
  `f_1_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在未納税額',
  `f_1_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_1_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_1_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_1_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_2_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在未納税額',
  `f_2_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_2_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_2_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_2_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_3_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期発生税額',
  `f_3_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_3_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_3_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_3_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_4_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期発生税額',
  `f_4_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_5_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在未納税額',
  `f_5_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期発生税額',
  `f_5_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_5_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_5_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_5_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_6_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在未納税額',
  `f_6_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_6_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_6_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_6_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_7_1_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在未納税額',
  `f_7_3_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_7_4_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_7_5_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_7_6_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_7_1_d` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_7_3_d` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_7_4_d` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_7_5_d` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_7_6_d` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_8_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期発生税額',
  `f_8_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_8_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_8_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_8_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_9_2_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期発生税額',
  `f_9_6_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_9_2_d` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_9_6_d` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_10_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在未納税額',
  `f_10_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期発生税額',
  `f_10_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_10_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_10_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_10_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_11_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在未納税額',
  `f_11_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_11_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_11_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_11_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_12_1_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在未納税額',
  `f_12_3_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_12_4_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_12_5_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_12_6_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_12_1_d` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_12_3_d` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_12_4_d` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_12_5_d` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_12_6_d` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_13_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期発生税額',
  `f_13_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_13_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_13_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_13_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_14_2_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期発生税額',
  `f_14_6_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_14_2_d` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_14_6_d` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_15_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在未納税額',
  `f_15_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期発生税額',
  `f_15_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_15_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_15_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_15_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_16_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在未納税額',
  `f_16_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期発生税額',
  `f_16_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_16_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_16_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_16_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_17_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在未納税額',
  `f_17_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期発生税額',
  `f_17_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_17_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_17_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_17_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_18_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期発生税額',
  `f_18_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_18_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_18_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_18_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_19_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在未納税額',
  `f_19_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期発生税額',
  `f_19_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_19_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_19_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_19_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_20_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在未納税額',
  `f_20_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期発生税額',
  `f_20_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_20_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_20_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_20_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_21_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在未納税額',
  `f_21_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期発生税額',
  `f_21_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_21_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_21_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_21_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_22_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_22_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在未納税額',
  `f_22_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期発生税額',
  `f_22_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_22_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_22_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_22_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_23_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_23_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在未納税額',
  `f_23_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期発生税額',
  `f_23_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_23_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_23_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_23_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_24_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在未納税額',
  `f_24_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期発生税額',
  `f_24_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_24_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_24_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_24_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_25_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在未納税額',
  `f_25_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期発生税額',
  `f_25_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_25_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_25_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_25_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_26_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在未納税額',
  `f_26_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期発生税額',
  `f_26_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_26_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_26_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_26_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_27_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在未納税額',
  `f_27_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期発生税額',
  `f_27_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_27_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_27_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_27_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_28_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_28_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在未納税額',
  `f_28_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期発生税額',
  `f_28_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_28_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_28_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_28_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_29_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_29_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首現在未納税額',
  `f_29_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期発生税額',
  `f_29_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '充当金取崩しによる納付',
  `f_29_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払経理による納付',
  `f_29_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理による納付',
  `f_29_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末現在未納税額',
  `f_30` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期首納税充当金',
  `f_31` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金経理をした納税充当金',
  `f_32` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_33` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計(31)+(32)',
  `f_34` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '法人税額等（5の③）+（10の③）+（15の③）',
  `f_35` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業税(19の③)',
  `f_36` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金算入のもの',
  `f_37` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '損金不算入のもの',
  `f_38` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `f_39` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '仮払税金消却',
  `f_40` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計（34）+（35）+（36）+（37）+（38）+（39）',
  `f_41` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '期末納税充当金(30)+(33)-(40)',
  `f_1_date_from` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_2_date_from` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_6_date_from` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_7_date_from` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_11_date_from` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_12_date_from` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_16_date_from` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_17_date_from` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `f_1_date_to` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_2_date_to` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_6_date_to` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_7_date_to` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_11_date_to` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_12_date_to` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_16_date_to` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `f_17_date_to` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `t_0502`
--

INSERT INTO `t_0502` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1_1`, `f_1_3`, `f_1_4`, `f_1_5`, `f_1_6`, `f_2_1`, `f_2_3`, `f_2_4`, `f_2_5`, `f_2_6`, `f_3_2`, `f_3_3`, `f_3_4`, `f_3_5`, `f_3_6`, `f_4_2`, `f_4_6`, `f_5_1`, `f_5_2`, `f_5_3`, `f_5_4`, `f_5_5`, `f_5_6`, `f_6_1`, `f_6_3`, `f_6_4`, `f_6_5`, `f_6_6`, `f_7_1_u`, `f_7_3_u`, `f_7_4_u`, `f_7_5_u`, `f_7_6_u`, `f_7_1_d`, `f_7_3_d`, `f_7_4_d`, `f_7_5_d`, `f_7_6_d`, `f_8_2`, `f_8_3`, `f_8_4`, `f_8_5`, `f_8_6`, `f_9_2_u`, `f_9_6_u`, `f_9_2_d`, `f_9_6_d`, `f_10_1`, `f_10_2`, `f_10_3`, `f_10_4`, `f_10_5`, `f_10_6`, `f_11_1`, `f_11_3`, `f_11_4`, `f_11_5`, `f_11_6`, `f_12_1_u`, `f_12_3_u`, `f_12_4_u`, `f_12_5_u`, `f_12_6_u`, `f_12_1_d`, `f_12_3_d`, `f_12_4_d`, `f_12_5_d`, `f_12_6_d`, `f_13_2`, `f_13_3`, `f_13_4`, `f_13_5`, `f_13_6`, `f_14_2_u`, `f_14_6_u`, `f_14_2_d`, `f_14_6_d`, `f_15_1`, `f_15_2`, `f_15_3`, `f_15_4`, `f_15_5`, `f_15_6`, `f_16_1`, `f_16_2`, `f_16_3`, `f_16_4`, `f_16_5`, `f_16_6`, `f_17_1`, `f_17_2`, `f_17_3`, `f_17_4`, `f_17_5`, `f_17_6`, `f_18_2`, `f_18_3`, `f_18_4`, `f_18_5`, `f_18_6`, `f_19_1`, `f_19_2`, `f_19_3`, `f_19_4`, `f_19_5`, `f_19_6`, `f_20_1`, `f_20_2`, `f_20_3`, `f_20_4`, `f_20_5`, `f_20_6`, `f_21_1`, `f_21_2`, `f_21_3`, `f_21_4`, `f_21_5`, `f_21_6`, `f_22_name`, `f_22_1`, `f_22_2`, `f_22_3`, `f_22_4`, `f_22_5`, `f_22_6`, `f_23_name`, `f_23_1`, `f_23_2`, `f_23_3`, `f_23_4`, `f_23_5`, `f_23_6`, `f_24_1`, `f_24_2`, `f_24_3`, `f_24_4`, `f_24_5`, `f_24_6`, `f_25_1`, `f_25_2`, `f_25_3`, `f_25_4`, `f_25_5`, `f_25_6`, `f_26_1`, `f_26_2`, `f_26_3`, `f_26_4`, `f_26_5`, `f_26_6`, `f_27_1`, `f_27_2`, `f_27_3`, `f_27_4`, `f_27_5`, `f_27_6`, `f_28_name`, `f_28_1`, `f_28_2`, `f_28_3`, `f_28_4`, `f_28_5`, `f_28_6`, `f_29_name`, `f_29_1`, `f_29_2`, `f_29_3`, `f_29_4`, `f_29_5`, `f_29_6`, `f_30`, `f_31`, `f_32`, `f_33`, `f_34`, `f_35`, `f_36`, `f_37`, `f_38`, `f_39`, `f_40`, `f_41`, `f_1_date_from`, `f_2_date_from`, `f_6_date_from`, `f_7_date_from`, `f_11_date_from`, `f_12_date_from`, `f_16_date_from`, `f_17_date_from`, `f_1_date_to`, `f_2_date_to`, `f_6_date_to`, `f_7_date_to`, `f_11_date_to`, `f_12_date_to`, `f_16_date_to`, `f_17_date_to`) VALUES
('1', '2019', 1, 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '20191117', '20191117', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', 'v', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '加算税及び加算金', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '加算税及び加算金', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '加算税及び加算金', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '加算税及び加算金', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '20191117', '20191117', '20191117', '20191117', '20191117', '20191117', '20191117', '20191117', '20191117', '20191117', '20191117', '20191117', '20191117', '20191117', '20191117', '20191117');

--
-- 转储表的索引
--

--
-- 表的索引 `t_0502`
--
ALTER TABLE `t_0502`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`);
COMMIT;

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
  `f_1_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額',
  `f_1_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '①について課される所得税額',
  `f_1_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '②のうち控除を受ける所得税額',
  `f_2_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額',
  `f_2_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '①について課される所得税額',
  `f_2_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '②のうち控除を受ける所得税額',
  `f_3_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額',
  `f_3_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '①について課される所得税額',
  `f_3_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '②のうち控除を受ける所得税額',
  `f_4_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額',
  `f_4_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '①について課される所得税額',
  `f_4_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '②のうち控除を受ける所得税額',
  `f_5_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額',
  `f_5_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '①について課される所得税額',
  `f_5_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '②のうち控除を受ける所得税額',
  `f_6_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額',
  `f_6_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '①について課される所得税額',
  `f_6_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '②のうち控除を受ける所得税額',
  `f_brand_1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '銘柄',
  `f_7_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額',
  `f_8_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得税額',
  `f_9_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '利子配当等の計算期間',
  `f_10_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '（18）のうち元本所有期間',
  `f_11_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所有期間割合',
  `f_12_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_brand_2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '銘柄',
  `f_7_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額',
  `f_8_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得税額',
  `f_9_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '利子配当等の計算期間',
  `f_10_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '（18）のうち元本所有期間',
  `f_11_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所有期間割合',
  `f_12_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_brand_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '銘柄',
  `f_7_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額',
  `f_8_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得税額',
  `f_9_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '利子配当等の計算期間',
  `f_10_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '（18）のうち元本所有期間',
  `f_11_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所有期間割合',
  `f_12_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_brand_4` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '銘柄',
  `f_7_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額',
  `f_8_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得税額',
  `f_9_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '利子配当等の計算期間',
  `f_10_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '（18）のうち元本所有期間',
  `f_11_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所有期間割合',
  `f_12_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_brand_5` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '銘柄',
  `f_7_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額',
  `f_8_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得税額',
  `f_9_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '利子配当等の計算期間',
  `f_10_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '（18）のうち元本所有期間',
  `f_11_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所有期間割合',
  `f_12_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_brand_6` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '銘柄',
  `f_13_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額',
  `f_14_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得税額',
  `f_15_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '利子配当等の計算期間',
  `f_16_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '利子配当等の計算期首の所有元本数等',
  `f_17_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '（24）-（25）/2又は12',
  `f_18_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所有元本割合',
  `f_19_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_brand_7` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '銘柄',
  `f_13_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額',
  `f_14_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得税額',
  `f_15_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '利子配当等の計算期間',
  `f_16_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '利子配当等の計算期首の所有元本数等',
  `f_17_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '（24）-（25）/2又は12',
  `f_18_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所有元本割合',
  `f_19_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_brand_8` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '銘柄',
  `f_13_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額',
  `f_14_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得税額',
  `f_15_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '利子配当等の計算期間',
  `f_16_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '利子配当等の計算期首の所有元本数等',
  `f_17_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '（24）-（25）/2又は12',
  `f_18_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所有元本割合',
  `f_19_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_brand_9` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '銘柄',
  `f_13_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額',
  `f_14_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得税額',
  `f_15_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '利子配当等の計算期間',
  `f_16_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '利子配当等の計算期首の所有元本数等',
  `f_17_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '（24）-（25）/2又は12',
  `f_18_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所有元本割合',
  `f_19_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_brand_10` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '銘柄',
  `f_13_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額',
  `f_14_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所得税額',
  `f_15_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '利子配当等の計算期間',
  `f_16_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '利子配当等の計算期首の所有元本数等',
  `f_17_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '（24）-（25）/2又は12',
  `f_18_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所有元本割合',
  `f_19_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_name_1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払者の氏名又は法人名',
  `f_address_1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払者の住所又は所在地',
  `f_date_1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払を受けた年月日',
  `f_20_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額',
  `f_21_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_reference_1` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '参考',
  `f_name_2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払者の氏名又は法人名',
  `f_address_2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払者の住所又は所在地',
  `f_date_2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払を受けた年月日',
  `f_20_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額',
  `f_21_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_reference_2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '参考',
  `f_name_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払者の氏名又は法人名',
  `f_address_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払者の住所又は所在地',
  `f_date_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払を受けた年月日',
  `f_20_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額',
  `f_21_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_reference_3` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '参考',
  `f_name_4` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払者の氏名又は法人名',
  `f_address_4` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払者の住所又は所在地',
  `f_date_4` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払を受けた年月日',
  `f_20_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額',
  `f_21_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_reference_4` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '参考',
  `f_name_5` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払者の氏名又は法人名',
  `f_address_5` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払者の住所又は所在地',
  `f_date_5` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '支払を受けた年月日',
  `f_20_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '収入金額',
  `f_21_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除を受ける所得税額',
  `f_reference_5` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '参考',
  `f_total_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計',
  `f_total_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '計'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `t_06`
--

INSERT INTO `t_06` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1_1`, `f_1_2`, `f_1_3`, `f_2_1`, `f_2_2`, `f_2_3`, `f_3_1`, `f_3_2`, `f_3_3`, `f_4_1`, `f_4_2`, `f_4_3`, `f_5_1`, `f_5_2`, `f_5_3`, `f_6_1`, `f_6_2`, `f_6_3`, `f_brand_1`, `f_7_1`, `f_8_1`, `f_9_1`, `f_10_1`, `f_11_1`, `f_12_1`, `f_brand_2`, `f_7_2`, `f_8_2`, `f_9_2`, `f_10_2`, `f_11_2`, `f_12_2`, `f_brand_3`, `f_7_3`, `f_8_3`, `f_9_3`, `f_10_3`, `f_11_3`, `f_12_3`, `f_brand_4`, `f_7_4`, `f_8_4`, `f_9_4`, `f_10_4`, `f_11_4`, `f_12_4`, `f_brand_5`, `f_7_5`, `f_8_5`, `f_9_5`, `f_10_5`, `f_11_5`, `f_12_5`, `f_brand_6`, `f_13_1`, `f_14_1`, `f_15_1`, `f_16_1`, `f_17_1`, `f_18_1`, `f_19_1`, `f_brand_7`, `f_13_2`, `f_14_2`, `f_15_2`, `f_16_2`, `f_17_2`, `f_18_2`, `f_19_2`, `f_brand_8`, `f_13_3`, `f_14_3`, `f_15_3`, `f_16_3`, `f_17_3`, `f_18_3`, `f_19_3`, `f_brand_9`, `f_13_4`, `f_14_4`, `f_15_4`, `f_16_4`, `f_17_4`, `f_18_4`, `f_19_4`, `f_brand_10`, `f_13_5`, `f_14_5`, `f_15_5`, `f_16_5`, `f_17_5`, `f_18_5`, `f_19_5`, `f_name_1`, `f_address_1`, `f_date_1`, `f_20_1`, `f_21_1`, `f_reference_1`, `f_name_2`, `f_address_2`, `f_date_2`, `f_20_2`, `f_21_2`, `f_reference_2`, `f_name_3`, `f_address_3`, `f_date_3`, `f_20_3`, `f_21_3`, `f_reference_3`, `f_name_4`, `f_address_4`, `f_date_4`, `f_20_4`, `f_21_4`, `f_reference_4`, `f_name_5`, `f_address_5`, `f_date_5`, `f_20_5`, `f_21_5`, `f_reference_5`, `f_total_1`, `f_total_2`) VALUES
('1', '2019', 1, 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '20191117', '20191117', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', '20191117', '12345678901', '12345678901', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', '20191117', '12345678901', '12345678901', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', '20191117', '12345678901', '12345678901', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', '20191117', '12345678901', '12345678901', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', '20191117', '12345678901', '12345678901', 'ああああああああああああああああああああああああああああああああああああああああああああああああああ', '12345678901', '12345678901');

--
-- 转储表的索引
--

--
-- 表的索引 `t_06`
--
ALTER TABLE `t_06`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`);
COMMIT;

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
  `f_date_1_to` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_3_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_1` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_date_2_from` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_date_2_to` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_3_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_2` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_date_3_from` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_date_3_to` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_3_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_3` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_date_4_from` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_date_4_to` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_3_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_4` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_date_5_from` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_date_5_to` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_3_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_5` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_date_6_from` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_date_6_to` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_3_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_6` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_date_7_from` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_date_7_to` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_3_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_7` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_date_8_from` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_date_8_to` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_3_8` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_8` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_8` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_date_9_from` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_date_9_to` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_3_9` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '控除未決済額',
  `f_4_9` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '当期控除額',
  `f_5_9` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '翌期繰越額',
  `f_date_10_from` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '事業年度',
  `f_date_10_to` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
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
  `f_20` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `f_21_date` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `t_07`
--

INSERT INTO `t_07` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1`, `f_2`, `f_date_1_from`, `f_date_1_to`, `f_3_1`, `f_4_1`, `f_date_2_from`, `f_date_2_to`, `f_3_2`, `f_4_2`, `f_5_2`, `f_date_3_from`, `f_date_3_to`, `f_3_3`, `f_4_3`, `f_5_3`, `f_date_4_from`, `f_date_4_to`, `f_3_4`, `f_4_4`, `f_5_4`, `f_date_5_from`, `f_date_5_to`, `f_3_5`, `f_4_5`, `f_5_5`, `f_date_6_from`, `f_date_6_to`, `f_3_6`, `f_4_6`, `f_5_6`, `f_date_7_from`, `f_date_7_to`, `f_3_7`, `f_4_7`, `f_5_7`, `f_date_8_from`, `f_date_8_to`, `f_3_8`, `f_4_8`, `f_5_8`, `f_date_9_from`, `f_date_9_to`, `f_3_9`, `f_4_9`, `f_5_9`, `f_date_10_from`, `f_date_10_to`, `f_3_10`, `f_4_10`, `f_5_10`, `f_6_3`, `f_7_1`, `f_7_2`, `f_7_3`, `f_8_1`, `f_8_2`, `f_8_3`, `f_9_1`, `f_9_2`, `f_9_3`, `f_10_1`, `f_10_2`, `f_10_3`, `f_11_1`, `f_11_2`, `f_11_3`, `f_12_1`, `f_12_2`, `f_12_3`, `f_13_1`, `f_13_2`, `f_13_3`, `f_14_3`, `f_15_3`, `f_16_3`, `f_total_1`, `f_total_2`, `f_total_3`, `f_17`, `f_18_1`, `f_18_2`, `f_18_3`, `f_19_1`, `f_19_2`, `f_19_3`, `f_total`, `f_20`, `f_21_date`) VALUES
('1', '2019', 1, 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '20191117', '20191117', '12345678901', '12345678901', '20191117', '20191117', '12345678901', '12345678901', '20191117', '20191117', '12345678901', '12345678901', '12345678901', '20191117', '20191117', '12345678901', '12345678901', '12345678901', '20191117', '20191117', '12345678901', '12345678901', '12345678901', '20191117', '20191117', '12345678901', '12345678901', '12345678901', '20191117', '20191117', '12345678901', '12345678901', '12345678901', '20191117', '20191117', '12345678901', '12345678901', '12345678901', '20191117', '20191117', '12345678901', '12345678901', '12345678901', '20191117', '20191117', '12345678901', '12345678901', '12345678901', '20191117', '20191117', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '20191119');

--
-- 转储表的索引
--

--
-- 表的索引 `t_07`
--
ALTER TABLE `t_07`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`);
COMMIT;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `t_08`
--

INSERT INTO `t_08` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1`, `f_2`, `f_3`, `f_4`, `f_5`, `f_6`, `f_7`, `f_8`, `f_9`, `f_10`, `f_11`, `f_12`, `f_13`, `f_14`, `f_15`, `f_16`, `f_17`, `f_18`, `f_19`, `f_20`, `f_21`, `f_22`, `f_23`, `f_24`, `f_25`, `f_26`, `f_27_1`, `f_28_1`, `f_29_1`, `f_30_1`, `f_27_2`, `f_28_2`, `f_29_2`, `f_30_2`, `f_27_total`, `f_28_total`, `f_29_total`, `f_30_total`, `f_brand_1`, `f_HeadOfficeLocation_1`, `f_dataFrom_1`, `f_dataTo_1`, `f_31_1`, `f_brand_2`, `f_HeadOfficeLocation_2`, `f_dataFrom_2`, `f_dataTo_2`, `f_31_2`, `f_31_total`, `f_brand_3`, `f_HeadOfficeLocation_3`, `f_dataFrom_3`, `f_dataTo_3`, `f_holdingRatio_1`, `f_32_1`, `f_33_1`, `f_34_1`, `f_brand_4`, `f_HeadOfficeLocation_4`, `f_dataFrom_4`, `f_dataTo_4`, `f_holdingRatio_2`, `f_32_2`, `f_33_2`, `f_34_2`, `f_32_total`, `f_33_total`, `f_34_total`, `f_brand_5`, `f_HeadOfficeLocation_5`, `f_35_1`, `f_36_1`, `f_37_1`, `f_brand_6`, `f_HeadOfficeLocation_6`, `f_35_2`, `f_36_2`, `f_37_2`, `f_35_total`, `f_36_total`, `f_37_total`, `f_brand_7`, `f_38_1`, `f_39_1`, `f_40_1`, `f_41_1`, `f_42_1`, `f_43_1`, `f_brand_8`, `f_38_2`, `f_39_2`, `f_40_2`, `f_41_2`, `f_42_2`, `f_43_2`, `f_41_total`, `f_42_total`, `f_43_total`) VALUES
('1', '2019', 1, 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '20191124', '20191124', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', 'あああああああああああああああああああ', 'あああああああああああああああああああ', '20191111', '20191124', '12345678901', 'あああああああああああああああああああ', 'あああああああああああああああああああ', '20191111', '20191124', '12345678901', '12345678901', '12345678901', '12345678901', '20191111', '20191124', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '20191111', '20191124', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', 'あああああああああああああああああああ', 'あああああああああああああああああああ', '12345678901', '12345678901', '12345678901', 'あああああああああああああああああああ', 'あああああああああああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '20191115', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '20191115', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901');

--
-- 转储表的索引
--

--
-- 表的索引 `t_08`
--
ALTER TABLE `t_08`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`);
COMMIT;

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
  `f_1_1_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '住所又は所在地',
  `f_1_1_d` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '住所又は所在地',
  `f_1_2_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '住所又は所在地',
  `f_1_2_d` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '住所又は所在地',
  `f_1_3_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '住所又は所在地',
  `f_1_3_d` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '住所又は所在地',
  `f_1_4_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '住所又は所在地',
  `f_1_4_d` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '住所又は所在地',
  `f_2_1_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '氏名又は名称',
  `f_2_1_m` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '氏名又は名称',
  `f_2_1_d` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '氏名又は名称',
  `f_2_2_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '氏名又は名称',
  `f_2_2_m` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '氏名又は名称',
  `f_2_2_d` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '氏名又は名称',
  `f_2_3_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '氏名又は名称',
  `f_2_3_m` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '氏名又は名称',
  `f_2_3_d` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '氏名又は名称',
  `f_2_4_u` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '氏名又は名称',
  `f_2_4_m` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '氏名又は名称',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `t_11`
--

INSERT INTO `t_11` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1_1_u`, `f_1_1_d`, `f_1_2_u`, `f_1_2_d`, `f_1_3_u`, `f_1_3_d`, `f_1_4_u`, `f_1_4_d`, `f_2_1_u`, `f_2_1_m`, `f_2_1_d`, `f_2_2_u`, `f_2_2_m`, `f_2_2_d`, `f_2_3_u`, `f_2_3_m`, `f_2_3_d`, `f_2_4_u`, `f_2_4_m`, `f_2_4_d`, `f_3_1_applicable`, `f_3_1_number`, `f_3_2_applicable`, `f_3_2_number`, `f_3_3_applicable`, `f_3_3_number`, `f_3_4_number`, `f_3_4_applicable`, `f_4_1`, `f_4_2`, `f_4_3`, `f_4_4`, `f_5_1`, `f_5_2`, `f_5_3`, `f_5_4`, `f_5_5`, `f_6_1`, `f_6_2`, `f_6_3`, `f_6_4`, `f_6_5`, `f_7_1`, `f_7_2`, `f_7_3`, `f_7_4`, `f_8_1`, `f_8_2`, `f_8_3`, `f_8_4`, `f_9_1`, `f_9_2`, `f_9_3`, `f_9_4`, `f_10_1`, `f_10_2`, `f_10_3`, `f_10_4`, `f_11_1`, `f_11_2`, `f_11_3`, `f_11_4`, `f_12_1`, `f_12_2`, `f_12_3`, `f_12_4`, `f_13_1`, `f_13_2`, `f_13_3`, `f_13_4`, `f_14_1`, `f_14_2`, `f_14_3`, `f_14_4`, `f_14_5`, `f_15_1`, `f_15_2`, `f_15_3`, `f_15_4`, `f_15_5`, `f_16_1`, `f_16_2`, `f_16_3`, `f_16_4`, `f_16_5`, `f_17_1`, `f_17_2`, `f_17_3`, `f_17_4`, `f_17_5`, `f_18_1`, `f_18_2`, `f_18_3`, `f_18_4`, `f_18_5`, `f_19_1`, `f_19_2`, `f_19_3`, `f_19_4`, `f_19_5`, `f_20_1`, `f_20_2`, `f_20_3`, `f_20_4`, `f_20_5`, `f_21_1`, `f_21_2`, `f_21_3`, `f_21_4`, `f_21_5`, `f_22_1`, `f_22_2`, `f_22_3`, `f_22_4`, `f_22_5`, `f_23_1`, `f_23_2`, `f_23_3`, `f_23_4`, `f_23_5`, `f_24_1`, `f_24_2`, `f_24_3`, `f_24_4`, `f_24_5`) VALUES
('1', '2019', 1, 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '20191115', '20191118', 'あああああああああああ', 'あああああああああああ', 'あああああああああああ', 'あああああああああああ', 'あああああああああああ', 'あああああああああああ', 'あああああああああああ', 'あああああああああああ', 'あああああああああああ', 'あああああああああああ', 'あああああああああああ', 'あああああああああああ', 'あああああああああああ', 'あああああああああああ', 'あああああああああああ', 'あああああああああああ', 'あああああああああああ', 'あああああああああああ', 'あああああああああああ', 'あああああああああああ', '123', '123', '123', '123', '123', '123', '123', '123', '20191115', '20191115', '20191115', '20191115', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901');

--
-- 转储表的索引
--

--
-- 表的索引 `t_11`
--
ALTER TABLE `t_11`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`);
COMMIT;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `t_1102`
--

INSERT INTO `t_1102` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1`, `f_2`, `f_3`, `f_4`, `f_5`, `f_6`, `f_7`, `f_8`, `f_9`, `f_10`, `f_11`, `f_12`, `f_13`, `f_14`, `f_15`, `f_16`, `f_17`, `f_account_1`, `f_18_1`, `f_19_1`, `f_20_1`, `f_21_1`, `f_22_1`, `f_23_1`, `f_24_1`, `f_25_1`, `f_26_1`, `f_account_2`, `f_18_2`, `f_19_2`, `f_20_2`, `f_21_2`, `f_22_2`, `f_23_2`, `f_24_2`, `f_25_2`, `f_26_2`, `f_account_3`, `f_18_3`, `f_19_3`, `f_20_3`, `f_21_3`, `f_22_3`, `f_23_3`, `f_24_3`, `f_25_3`, `f_26_3`, `f_account_4`, `f_18_4`, `f_19_4`, `f_20_4`, `f_21_4`, `f_22_4`, `f_23_4`, `f_24_4`, `f_25_4`, `f_26_4`, `f_account_5`, `f_18_5`, `f_19_5`, `f_20_5`, `f_21_5`, `f_22_5`, `f_23_5`, `f_24_5`, `f_25_5`, `f_26_5`, `f_account_6`, `f_18_6`, `f_19_6`, `f_20_6`, `f_21_6`, `f_22_6`, `f_23_6`, `f_24_6`, `f_25_6`, `f_26_6`, `f_account_7`, `f_18_7`, `f_19_7`, `f_20_7`, `f_21_7`, `f_22_7`, `f_23_7`, `f_24_7`, `f_25_7`, `f_26_7`, `f_18_8`, `f_19_8`, `f_20_8`, `f_21_8`, `f_22_8`, `f_23_8`, `f_24_8`, `f_25_8_u`, `f_25_8_d`, `f_26_8`, `f_27`, `f_28`, `f_29`, `f_30`) VALUES
('1', '2019', 1, 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '20191114', '20191115', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', 'あああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', 'あああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', 'あああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', 'あああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', 'あああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', 'あああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', 'あああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901');

--
-- 转储表的索引
--

--
-- 表的索引 `t_1102`
--
ALTER TABLE `t_1102`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`);
COMMIT;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `t_1402`
--

INSERT INTO `t_1402` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1`, `f_2`, `f_3`, `f_4`, `f_5`, `f_6`, `f_7`, `f_8`, `f_9`, `f_10`, `f_11`, `f_12`, `f_13`, `f_14`, `f_15`, `f_16`, `f_17`, `f_18`, `f_19`, `f_20`, `f_21`, `f_22`, `f_23`, `f_24`, `f_25`, `f_26`, `f_27`, `f_28`, `f_29`, `f_30`, `f_31`, `f_32`, `f_33`, `f_34`, `f_35`, `f_36`, `f_37`, `f_38`, `f_39`, `f_40`, `f_41_1`, `f_42_1`, `f_43_1`, `f_44_1`, `f_45_1`, `f_46_1`, `f_47_1`, `f_48_1`, `f_49_1`, `f_50_1`, `f_51_1`, `f_52_1`, `f_53_1`, `f_54_1`, `f_55_1`, `f_41_2`, `f_42_2`, `f_43_2`, `f_44_2`, `f_45_2`, `f_46_2`, `f_47_2`, `f_48_2`, `f_49_2`, `f_50_2`, `f_51_2`, `f_52_2`, `f_53_2`, `f_54_2`, `f_55_2`, `f_41_3`, `f_41_total`, `f_42_3`, `f_42_total`, `f_43_3`, `f_44_3`, `f_45_3`, `f_46_3`, `f_47_3`, `f_48_3`, `f_49_3`, `f_50_3`, `f_51_3`, `f_52_3`, `f_53_3`, `f_54_3`, `f_55_3`) VALUES
('1', '2019', 1, 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '20181111', '20191212', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '20191201', 'ああああああああああ', '12345678901', 'ああああああああああ', '20191201', 'ああああああああああ', 'ああああああああああ', 'ああああああああああ', '20191201', 'ああああああああああ', 'ああああああああああ', 'ああああああああああ', '12345678901', '12345678901', '12345678901', '20191201', 'ああああああああああ', '12345678901', 'ああああああああああ', '20191201', 'ああああああああああ', 'ああああああああああ', 'ああああああああああ', '20191201', 'ああああああああああ', 'ああああああああああ', 'ああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '20191201', 'ああああああああああ', '12345678901', 'ああああああああああ', '20191201', 'ああああああああああ', 'ああああああああああ', 'ああああああああああ', '20191201', 'ああああああああああ', 'ああああああああああ', 'ああああああああああ', '12345678901');

--
-- 转储表的索引
--

--
-- 表的索引 `t_1402`
--
ALTER TABLE `t_1402`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`);
COMMIT;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `t_15`
--

INSERT INTO `t_15` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1`, `f_2`, `f_3`, `f_4`, `f_5`, `f_6_1`, `f_7_1`, `f_8_1`, `f_9_1`, `f_6_2`, `f_7_2`, `f_8_2`, `f_9_2`, `f_subject_2`, `f_6_3`, `f_7_3`, `f_8_3`, `f_9_3`, `f_subject_3`, `f_6_4`, `f_7_4`, `f_8_4`, `f_9_4`, `f_subject_4`, `f_6_5`, `f_7_5`, `f_8_5`, `f_9_5`, `f_subject_5`, `f_6_6`, `f_7_6`, `f_8_6`, `f_9_6`, `f_subject_6`, `f_6_7`, `f_7_7`, `f_8_7`, `f_9_7`, `f_subject_7`, `f_6_8`, `f_7_8`, `f_8_8`, `f_9_8`, `f_subject_8`, `f_6_9`, `f_7_9`, `f_8_9`, `f_9_9`, `f_subject_9`, `f_6_10`, `f_7_10`, `f_8_10`, `f_9_10`, `f_subject_10`, `f_6_11`, `f_7_11`, `f_8_11`, `f_9_11`, `f_subject_11`, `f_6_total`, `f_7_total`, `f_8_total`, `f_9_total`) VALUES
('1', '2019', 1, 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '20191114', '20191115', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', 'ああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', 'ああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', 'ああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', 'ああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', 'ああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', 'ああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', 'ああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', 'ああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', 'ああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901', 'ああああああああああ', '12345678901', '12345678901', '12345678901', '12345678901');

--
-- 转储表的索引
--

--
-- 表的索引 `t_15`
--
ALTER TABLE `t_15`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`);
COMMIT;

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
  `b_20` int(11) DEFAULT NULL COMMENT '期末資本金',
  `b_21` int(11) DEFAULT NULL COMMENT '〃＋資本準備金',
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
  `b_43` int(11) DEFAULT NULL COMMENT '税理士電話',
  `billing_amount` int(11) DEFAULT NULL COMMENT '売上金額',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `t_6a_d`
--

INSERT INTO `t_6a_d` (`user_id`, `year`, `company_id`, `legalPersonName_k`, `legalPersonName_h`, `legalPersonName`, `b_03`, `b_04`, `b_05`, `representativeName_k`, `representativeName_h`, `representativeName`, `b_10`, `a1`, `accountingName_h`, `accountingName`, `b_12`, `b_13`, `b_14`, `b_68`, `b_15`, `b_16`, `b_17`, `b_18`, `b_19`, `b_20`, `b_21`, `b_22`, `b_23`, `b_24`, `b_25`, `b_26`, `b_27`, `b_28`, `b_29`, `b_30`, `b_71`, `b_67`, `b_31`, `b_32`, `b_33`, `b_34`, `q46`, `b_35`, `b_35_1`, `b_35_2`, `b_69`, `b_36`, `b_36_1`, `b_36_2`, `b_70`, `b_37`, `b_38`, `b_39`, `b_40`, `b_41`, `b_42`, `b_43`, `billing_amount`, `a2`, `f_1`, `f_2`, `f_3`, `f_4`, `f_5`, `f_6`, `f_7`, `f_8`, `f_9`, `f_10`, `f_11`, `f_12`, `f_13`, `f_14`, `f_15`, `f_16`, `f_17`, `f_18`, `f_19`, `f_20`, `f_21`, `f_22`, `f_23`, `f_24`, `f_25`, `f_26`, `f_27`, `f_28_1`, `f_29_1`, `f_30_1`, `f_31_1`, `f_32_1`, `f_28_2`, `f_29_2`, `f_30_2`, `f_31_2`, `f_32_2`, `f_33`, `f_34_1`, `f_34_2`, `f_35`, `f_36_1`, `f_36_2`, `f_37`, `f_38_1`, `f_38_2`, `f_39`, `f_40`, `f_41`, `f_42`, `f_43`, `f_44`, `f_45`, `f_46`, `f_47`, `f_48`, `f_49`, `f_50`, `f_51`, `f_52`, `f_53_1`, `f_53_2`, `f_54_1`, `f_54_2`, `f_55`, `f_56`, `f_57`, `f_58`, `f_59`, `f_60`, `f_61`, `f_62`, `f_63`, `f_64`, `f_65`, `f_66`, `f_67`, `f_68`, `f_69`, `f_70`, `f_71`, `f_72`) VALUES
('1', '2019', 1, 'タロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウ', '1', '1', '1', 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '0312345678', '田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中', '1', '1', '〒604-8262 京都府京都市中京区油小路通り三条上ル宗林町92', '〒604-8262 京都府京都市中京区油小路通り三条上ル宗林町92', '1', '1', 'インターネット', '12345678', '1', '1', '1', '1', '1', '1', '1', 123456789, 1, '1', '1', 'green', '1', '1', '1', '1', '1', '1', '1234567890321', '1', '1', '1', '1', '1', '1', 'bank', 'ああああ', 'ああああ', '金庫', 'shop', 'ああああ', 'ああああ', '支店', '1234567', '1234567', 'ああああああああああああああああああああ', '1234567', '1234567', '1', 1, 12345678, '1234567890123456123456789012345', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876');

--
-- 转储表的索引
--

--
-- 表的索引 `t_6a_d`
--
ALTER TABLE `t_6a_d`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`);
COMMIT;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `t_21_a_d`
--

INSERT INTO `t_21_a_d` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1_1`, `f_1_2`, `f_1_3`, `f_1_4`, `f_2_1`, `f_2_2`, `f_2_3`, `f_2_4`, `f_3_1`, `f_3_2`, `f_3_3`, `f_3_4`, `f_4_1`, `f_4_2`, `f_4_3`, `f_4_4`, `f_5_1`, `f_5_2`, `f_5_3`, `f_5_4`, `f_6_1`, `f_6_2`, `f_6_3`, `f_6_4`, `f_7_1`, `f_7_2`, `f_7_3`, `f_7_4`, `f_8_1`, `f_8_2`, `f_8_3`, `f_8_4`, `f_9_1`, `f_9_2`, `f_9_3`, `f_9_4`, `f_10_1`, `f_10_2`, `f_10_3`, `f_10_4`, `f_11_1`, `f_11_2`, `f_11_3`, `f_11_4`, `f_12_1`, `f_12_2`, `f_12_3`, `f_12_4`, `f_13_1`, `f_13_2`, `f_13_3`, `f_13_4`, `f_14_1`, `f_14_2`, `f_14_3`, `f_14_4`, `f_15_1`, `f_15_2`, `f_15_3`, `f_15_4`, `f_16_1`, `f_16_2`, `f_16_3`, `f_16_4`, `f_17_1`, `f_17_2`, `f_17_3`, `f_17_4`, `f_18_1`, `f_18_2`, `f_18_3`, `f_18_4`, `f_19_1`, `f_19_2`, `f_19_3`, `f_19_4`, `f_20_1`, `f_20_2`, `f_20_3`, `f_20_4`, `f_21_1`, `f_21_2`, `f_21_3`, `f_21_4`, `f_22_1`, `f_22_2`, `f_22_3`, `f_22_4`, `f_23_1`, `f_23_2`, `f_23_3`, `f_23_4`, `f_total`, `f_24`, `f_25`, `f_26`, `f_27_1`, `f_27_2`, `f_27_3`, `f_28_1`, `f_28_2`, `f_28_3`, `f_29_1`, `f_29_2`, `f_29_3`, `f_30`, `f_31_1`, `f_31_2`, `f_31_3`, `f_32_1`, `f_32_2`, `f_32_3`, `f_33_1`, `f_33_2`, `f_33_3`, `f_33_4`, `f_34_1`, `f_34_2`, `f_34_3`, `f_34_4`, `f_35_1`, `f_35_2`, `f_35_3`, `f_36_1`, `f_36_2`, `f_36_3`, `f_36_4`, `f_37_1`, `f_37_2`, `f_37_3`, `f_37_4`, `f_38`, `f_39`, `f_40`, `f_41`) VALUES
('1', '2019', 1, 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '20191201', '20191220', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', 'あああああああああ', 'あああああああああ', '12', '123456', '123456', 'あああああああああ', 'あああああああああ', 'あああああああああ', '20181212', 'あああああああああ', 'あああああああああ', '20181212', 'あああああああああ', 'あああああああああ', '20181212', 'あああああああああ', 'あああああああああ', '12', '1234567', '12', '12345678', '1234567', '12', '12345678', '1234567', '12', '12', '12345678', '1234567', '12', '12', '12345678', '1234567', '12', '12345678', '1234567', '12', '12', '12345678', '1234567', '12', '12', '12345678', '12345678', 'あああああああああ', '12', '12345678901');

--
-- 转储表的索引
--

--
-- 表的索引 `t_21_a_d`
--
ALTER TABLE `t_21_a_d`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`);
COMMIT;

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
  `b_20` int(11) DEFAULT NULL COMMENT '期末資本金',
  `b_21` int(11) DEFAULT NULL COMMENT '〃＋資本準備金',
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
  `b_43` int(11) DEFAULT NULL COMMENT '税理士電話',
  `billing_amount` int(11) DEFAULT NULL COMMENT '売上金額',
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `t_r1_no6_yosiki`
--

INSERT INTO `t_r1_no6_yosiki` (`user_id`, `year`, `company_id`, `legalPersonName_k`, `legalPersonName_h`, `legalPersonName`, `b_03`, `b_04`, `b_05`, `representativeName_k`, `representativeName_h`, `representativeName`, `b_10`, `a1`, `accountingName_h`, `accountingName`, `b_12`, `b_13`, `b_14`, `b_68`, `b_15`, `b_16`, `b_17`, `b_18`, `b_19`, `b_20`, `b_21`, `b_22`, `b_23`, `b_24`, `b_25`, `b_26`, `b_27`, `b_28`, `b_29`, `b_30`, `b_71`, `b_67`, `b_31`, `b_32`, `b_33`, `b_34`, `q46`, `b_35`, `b_35_1`, `b_35_2`, `b_69`, `b_36`, `b_36_1`, `b_36_2`, `b_70`, `b_37`, `b_38`, `b_39`, `b_40`, `b_41`, `b_42`, `b_43`, `billing_amount`, `a2`, `f_1`, `f_2`, `f_3`, `f_4`, `f_5`, `f_6`, `f_7`, `f_8`, `f_9`, `f_10`, `f_11`, `f_12`, `f_13`, `f_14`, `f_15`, `f_16`, `f_17`, `f_18`, `f_19`, `f_20`, `f_21`, `f_22`, `f_23`, `f_24`, `f_25`, `f_26`, `f_27`, `f_28_1`, `f_29_1`, `f_30_1`, `f_31_1`, `f_32_1`, `f_28_2`, `f_29_2`, `f_30_2`, `f_31_2`, `f_32_2`, `f_33`, `f_34_1`, `f_34_2`, `f_35`, `f_36_1`, `f_36_2`, `f_37`, `f_38_1`, `f_38_2`, `f_39`, `f_40`, `f_41`, `f_42`, `f_43`, `f_44`, `f_45`, `f_46`, `f_47`, `f_48`, `f_49`, `f_50`, `f_51`, `f_52`, `f_53_1`, `f_53_2`, `f_54_1`, `f_54_2`, `f_55`, `f_56`, `f_57`, `f_58`, `f_59`, `f_60`, `f_61`, `f_62`, `f_63`, `f_64`, `f_65`, `f_66`, `f_67`, `f_68`, `f_69`, `f_70`, `f_71`, `f_72`) VALUES
('1', '2019', 1, 'タロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウタロウ', '1', '1', '1', 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '0312345678', '田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中田中', '1', '1', '〒604-8262 京都府京都市中京区油小路通り三条上ル宗林町92', '〒604-8262 京都府京都市中京区油小路通り三条上ル宗林町92', '1', '1', 'インターネット', '12345678', '1', '1', '1', '1', '1', '1', '1', 123456789, 1, '1', '1', 'green', '1', '1', '1', '1', '1', '1', '1234567890321', '1', '1', '1', '1', '1', '1', 'bank', 'ああああ', 'ああああ', '金庫', 'shop', 'ああああ', 'ああああ', '支店', '1234567', '1234567', 'ああああああああああああああああああああ', '1234567', '1234567', '1', 1, 12345678, '1234567890123456123456789012345', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '11', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876', '12345678909876');

--
-- 转储表的索引
--

--
-- 表的索引 `t_r1_no6_yosiki`
--
ALTER TABLE `t_r1_no6_yosiki`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`);
COMMIT;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `t_r1_no6_yosiki_beppyo9`
--

INSERT INTO `t_r1_no6_yosiki_beppyo9` (`user_id`, `year`, `company_id`, `legalPersonName`, `ymdFrom`, `ymdTo`, `f_1`, `f_2`, `f_3_1`, `f_4_1`, `f_fiscalYearFrom_1`, `f_fiscalYearTo_1`, `f_division_1`, `f_3_2`, `f_4_2`, `f_5_2`, `f_fiscalYearFrom_2`, `f_fiscalYearTo_2`, `f_division_2`, `f_3_3`, `f_4_3`, `f_5_3`, `f_fiscalYearFrom_3`, `f_fiscalYearTo_3`, `f_division_3`, `f_3_4`, `f_4_4`, `f_5_4`, `f_fiscalYearFrom_4`, `f_fiscalYearTo_4`, `f_division_4`, `f_3_5`, `f_4_5`, `f_5_5`, `f_fiscalYearFrom_5`, `f_fiscalYearTo_5`, `f_division_5`, `f_3_6`, `f_4_6`, `f_5_6`, `f_fiscalYearFrom_6`, `f_fiscalYearTo_6`, `f_division_6`, `f_3_7`, `f_4_7`, `f_5_7`, `f_fiscalYearFrom_7`, `f_fiscalYearTo_7`, `f_division_7`, `f_3_8`, `f_4_8`, `f_5_8`, `f_fiscalYearFrom_8`, `f_fiscalYearTo_8`, `f_division_8`, `f_3_9`, `f_4_9`, `f_5_9`, `f_fiscalYearFrom_9`, `f_fiscalYearTo_9`, `f_division_9`, `f_3_10`, `f_4_10`, `f_5_10`, `f_fiscalYearFrom_10`, `f_fiscalYearTo_10`, `f_division_10`, `f_3_total`, `f_4_total`, `f_5_total`, `f_division`, `f_3_11`, `f_3_12`, `f_5_12`, `f_3_13`, `f_5_13`, `f_5_14`, `f_6`, `f_7`, `f_8`, `f_9`, `f_10`, `f_11`, `f_12`) VALUES
('1', '2019', 1, 'ああああああああああああああああああああああああああああああああああああああああああああああああああああああああああああ', '20191111', '20191212', '12345678901', '12345678901', '12345678901', '12345678901', '20181111', '20191212', 'AAAAAAA', '12345678901', '12345678901', '12345678901', '20191111', '20191112', 'AAAAAAA', '12345678901', '12345678901', '12345678901', '20191111', '20191111', 'AAAAAAA', '12345678901', '12345678901', '12345678901', '20191111', '20191111', 'AAAAAAA', '12345678901', '12345678901', '12345678901', '20191111', '20191111', 'AAAAAAA', '12345678901', '12345678901', '12345678901', '20191111', '20191111', 'AAAAAAA', '12345678901', '12345678901', '12345678901', '20191111', '20191111', 'AAAAAAA', '12345678901', '12345678901', '12345678901', '20191111', '20191111', 'AAAAAAA', '12345678901', '12345678901', '12345678901', '20191111', '20191111', 'AAAAAAA', '12345678901', '12345678901', '12345678901', '20191111', '20191111', 'AAAAAAA', '12345678901', '12345678901', '12345678901', 'AAAAAAA', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', '12345678901', 'あああああああああああ', '20121212');

--
-- 转储表的索引
--

--
-- 表的索引 `t_r1_no6_yosiki_beppyo9`
--
ALTER TABLE `t_r1_no6_yosiki_beppyo9`
  ADD PRIMARY KEY (`user_id`,`year`,`company_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
