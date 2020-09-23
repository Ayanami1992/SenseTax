package com.jp.qxd.tax.model.pdf;

import java.util.Collection;

import org.springframework.stereotype.Component;

@Component
public class Rpt020_1Provider extends RptBaseProvider {
	private static Position ymdFrom = new Position(67, 622, MAINDATE, 10, 7, 0, 37);
	private static Position ymdTo = new Position(213, 622, MAINDATE, 10, 7, 0, 37);
	private static Position fixedYearFrom = new Position(35, 622, 10);
	private static Position fixedYearTo = new Position(181, 622, 10);
	//納税地
	private static Position b_04 = new Position(90, 753, 320, 723, 11);
	//電話番号
	private static Position b_05 = new Position(260, 709, TEL, 10, 8, 0);
	//法人名フリガナ
	private static Position legalPersonName_k = new Position(90, 694, 9);
	//法人名
	private static Position legalPersonName = new Position(90, 688, 340, 678, 10);
	//法人番号
	private static Position b_71 = new Position(493, 765, NUMBER, 10, 8, 0);
	//代表者フリガナ
	private static Position representativeName_k = new Position(90, 666, 170, 656, 8);
	//代表者
	private static Position representativeName = new Position(90, 654, 170, 644, 9);
	//経理責任者ふりがな
	private static Position accountingName_h = new Position(268, 666, 335, 656, 8);
	//経理責任者氏名
	private static Position accountingName = new Position(268, 654, 335, 644, 9);
	//代表者住所
//	private static Position b_10 = new Position(80, 651, 260, 632);
	//事業種目
	private static Position b_12 = new Position(450, 701, 12);
	//整理番号
	private static Position b_13 = new Position(426, 807, NUMBER, 9, 7, 0);
	//期末資本金
//	private static Position b_20 = new Position(315, 730);
	//売上金額
//	private static Position billing_amount = new Position(551, 713, NUMBER, 11, 14, 0);
	//銀行名
//	private static Position b_35 = new Position(340, 127);
//	//金庫･組合
//	private static Position b_35_1 = new Position(340, 117);
//	//農協･漁協
//	private static Position b_35_2 = new Position(340, 107);
//	//本店 支店s
//	private static Position b_36 = new Position(405, 127);
//	//出張所
//	private static Position b_36_1 = new Position(405, 117);
//	//本所･支所
//	private static Position b_36_2 = new Position(405, 107);
//	//口座種類
////	private static Position b_37 = new Position(405, 107);
//	//口座番号
//	private static Position b_38 = new Position(405, 83, NUMBER, 11, 10, 0);
//	//郵便局名
//	private static Position b_39 = new Position(505, 130, 555, 100);
//	//貯金記号
//	private static Position b_40 = new Position(450, 84, 11);
//	//貯金番号
//	private static Position b_41 = new Position(495, 84, 11);
//	//旧納税地及び旧法人名等
//	private static Position a1 = new Position(315, 695, 400, 664);
//	//一連番号
//	private static Position a2 = new Position(495, 780, 565, 770, 11);

	private static Position f_1 = new Position(413, 579, NUMBER, 10, 8, 0);
	private static Position f_2 = new Position(413, 560, NUMBER, 10, 8, 0);
	private static Position f_3 = new Position(413, 540, NUMBER, 10, 8, 0);
	private static Position f_4 = new Position(413, 522, NUMBER, 10, 8, 0);
	private static Position f_5_1 = new Position(388, 501, NUMBER, 10, 8, 3);
	private static Position f_5_2 = new Position(427, 510, 452, 500, 10);
	private static Position f_5_3 = new Position(546, 501, NUMBER, 10, 8, 0);
	private static Position f_6_1 = new Position(388, 481, NUMBER, 10, 8, 3);
	private static Position f_6_2 = new Position(427, 490, 452, 480, 10);
	private static Position f_6_3 = new Position(546, 481, NUMBER, 10, 8, 0);
	private static Position f_7 = new Position(546, 462, NUMBER, 10, 8, 0);
	private static Position f_8 = new Position(546, 442, NUMBER, 10, 8, 0);
	private static Position f_9 = new Position(546, 422, NUMBER, 10, 8, 0);
	private static Position f_10 = new Position(546, 403, NUMBER, 10, 8, 0);
	private static Position f_11 = new Position(530, 384, NUMBER, 10, 8, 2);
	private static Position f_12 = new Position(530, 365, NUMBER, 10, 8, 2);
	private static Position f_13 = new Position(546, 345, NUMBER, 10, 8, 0);
	private static Position f_34 = new Position(530, 325, NUMBER, 10, 8, 2);
	private static Position f_14_1 = new Position(325, 315, 345, 305, 11);
	private static Position f_14_2 = new Position(370, 315, 413, 305, 11);
//	private static Position f_14_3 = new Position(441, 344, 445, 334, 9);
	private static Position f_15 = new Position(530, 305, NUMBER, 10, 8, 2);
	private static Position f_16 = new Position(530, 286, NUMBER, 10, 8, 2);
	private static Position f_17 = new Position(530, 266, NUMBER, 10, 8, 2);
	private static Position f_18 = new Position(530, 246, NUMBER, 10, 8, 2);
	private static Position f_19 = new Position(546, 228, NUMBER, 10, 8, 0);
	private static Position f_20 = new Position(546, 208, NUMBER, 10, 8, 0);
	private static Position f_21 = new Position(416, 139, NUMBER, 10, 8, 0);
	private static Position f_22 = new Position(481, 139, NUMBER, 10, 8, 0);
	private static Position f_23 = new Position(546, 139, NUMBER, 10, 8, 0);
	private static Position f_24_1 = new Position(33, 176, 145, 166, 9);
//	private static Position f_24_2 = new Position(200, 162, 410, 190, 9);
	private static Position f_24_2 = new Position(157, 166, 242, 156, PREFECTURES, 10, 1, 13);
	private static Position f_24_3 = new Position(481, 165, NUMBER, 10, 8, 0);
	private static Position f_24_4 = new Position(546, 165, NUMBER, 10, 8, 0);
	private static Position f_25_1 = new Position(33, 164, 145, 154, 9);
//	private static Position f_25_2 = new Position(200, 149, 410, 178, 9);
	private static Position f_25_2 = new Position(157, 154, 242, 144, PREFECTURES, 10, 1, 13);
	private static Position f_25_3 = new Position(481, 152, NUMBER, 10, 8, 0);
	private static Position f_25_4 = new Position(546, 152, NUMBER, 10, 8, 0);
//	private static Position f_26_1 = new Position(85, 152, 180, 142, 9);
//	private static Position f_26_2 = new Position(196, 142, NUMBER, 8, 7, 0);
//	private static Position f_26_3 = new Position(211, 142, NUMBER, 8, 7, 0);
//	private static Position f_26_4 = new Position(253, 142, NUMBER, 8, 7, 0);
//	private static Position f_26_5 = new Position(304, 142, NUMBER, 8, 7, 2);
//	private static Position f_27_1 = new Position(85, 140, 180, 130, 9);
//	private static Position f_27_2 = new Position(196, 130, NUMBER, 8, 7, 0);
//	private static Position f_27_3 = new Position(211, 130, NUMBER, 8, 7, 0);
//	private static Position f_27_4 = new Position(253, 130, NUMBER, 8, 7, 0);
//	private static Position f_27_5 = new Position(304, 130, NUMBER, 8, 7, 2);
//	private static Position f_28_1 = new Position(85, 128, 180, 118, 9);
//	private static Position f_28_2 = new Position(196, 118, NUMBER, 8, 7, 0);
//	private static Position f_28_3 = new Position(211, 118, NUMBER, 8, 7, 0);
//	private static Position f_28_4 = new Position(253, 118, NUMBER, 8, 7, 0);
//	private static Position f_28_5 = new Position(304, 118, NUMBER, 8, 7, 2);
//	private static Position f_29_1 = new Position(85, 116, 180, 106, 9);
//	private static Position f_29_2 = new Position(196, 106, NUMBER, 8, 7, 0);
//	private static Position f_29_3 = new Position(211, 106, NUMBER, 8, 7, 0);
//	private static Position f_29_4 = new Position(253, 106, NUMBER, 8, 7, 0);
//	private static Position f_29_5 = new Position(304, 106, NUMBER, 8, 7, 2);
//	private static Position f_30_1 = new Position(85, 104, 180, 94, 9);
//	private static Position f_30_2 = new Position(196, 94, NUMBER, 8, 7, 0);
//	private static Position f_30_3 = new Position(211, 94, NUMBER, 8, 7, 0);
//	private static Position f_30_4 = new Position(253, 94, NUMBER, 8, 7, 0);
//	private static Position f_30_5 = new Position(304, 94, NUMBER, 8, 7, 2);
//	private static Position f_31_1 = new Position(85, 91, 180, 81, 9);
//	private static Position f_31_2 = new Position(196, 82, NUMBER, 8, 7, 0);
//	private static Position f_31_3 = new Position(211, 82, NUMBER, 8, 7, 0);
//	private static Position f_31_4 = new Position(253, 82, NUMBER, 8, 7, 0);
//	private static Position f_31_5 = new Position(304, 82, NUMBER, 8, 7, 2);
//	private static Position f_32_1 = new Position(85, 79, 180, 69, 9);
//	private static Position f_32_2 = new Position(196, 70, NUMBER, 8, 7, 0);
//	private static Position f_32_3 = new Position(211, 70, NUMBER, 8, 7, 0);
//	private static Position f_32_4 = new Position(253, 70, NUMBER, 8, 7, 0);
//	private static Position f_32_5 = new Position(304, 70, NUMBER, 8, 7, 2);
//	private static Position f_33_1 = new Position(85, 67, 180, 57, 9);
//	private static Position f_33_2 = new Position(196, 58, NUMBER, 8, 7, 0);
//	private static Position f_33_3 = new Position(211, 58, NUMBER, 8, 7, 0);
//	private static Position f_33_4 = new Position(253, 58, NUMBER, 8, 7, 0);
//	private static Position f_33_5 = new Position(304, 58, NUMBER, 8, 7, 2);


//	private static Position f_35 = new Position(304, 58, NUMBER, 8, 7, 2);
//	private static Position f_36 = new Position(200, 790, 250, 700);


	private static Position prefectures1 = new Position(175, 766, 390, 754, PREFECTURES, 12, 1, 13);
	private static Position prefectures2 = new Position(85, 192, 135, 182, PREFECTURES, 10, 0, 8);
	private static Position prefectures3 = new Position(488, 194, 521, 187, PREFECTURES, 7, 0, 4);

	@Override
	public Collection<?> getReprotData() {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}
}
