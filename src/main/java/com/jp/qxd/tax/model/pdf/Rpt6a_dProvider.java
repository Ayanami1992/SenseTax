package com.jp.qxd.tax.model.pdf;

import java.util.Collection;

import org.springframework.stereotype.Component;

@Component
public class Rpt6a_dProvider extends RptBaseProvider {

	private static Position ymdFrom = new Position(58, 652, MAINDATE, 12, 14, 0, 43);
	private static Position ymdTo = new Position(209, 652, MAINDATE, 12, 14, 0, 43);
	//納税地
	private static Position b_04 = new Position(80, 760, 260, 740);
	//電話番号
	private static Position b_05 = new Position(220, 726, TEL, 8, 5, 0);
	//法人名フリガナ
	private static Position legalPersonName_k = new Position(80, 726, 260, 716);
	//法人名
	private static Position legalPersonName = new Position(80, 715, 260, 705);
	//法人番号
	private static Position b_71 = new Position(317, 774, NUMBER, 12, 9, 0);
	//代表者フリガナ
	private static Position representativeName_k = new Position(70, 699, 170, 689);
	//代表者
	private static Position representativeName = new Position(70, 689, 170, 679);
	//代表者フリガナ
	private static Position accountingName_h = new Position(230, 699, 300, 689);
	//代表者
	private static Position accountingName = new Position(230, 689, 300, 679);
	//代表者住所
//	private static Position b_10 = new Position(80, 651, 260, 632);
	//事業種目
	private static Position b_12 = new Position(410, 762);
	//整理番号
//	private static Position b_13 = new Position(551, 752, NUMBER, 11, 14, 0);
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
//	//本店 支店
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

	private static Position f_1 = new Position(569, 619, NUMBER, 8, 9, 0);
	private static Position f_2 = new Position(569, 604, NUMBER, 8, 9, 0);
	private static Position f_3 = new Position(569, 588, NUMBER, 8, 9, 0);
	private static Position f_4 = new Position(569, 572, NUMBER, 8, 9, 0);
	private static Position f_5 = new Position(542, 556, NUMBER, 8, 9, 3);
	private static Position f_6 = new Position(542, 540, NUMBER, 8, 9, 3);
	private static Position f_7 = new Position(569, 525, NUMBER, 8, 9, 0);
	private static Position f_8 = new Position(569, 509, NUMBER, 8, 9, 0);
	private static Position f_9 = new Position(569, 493, NUMBER, 8, 9, 0);
	private static Position f_10 = new Position(569, 478, NUMBER, 8, 9, 0);
	private static Position f_11 = new Position(569, 462, NUMBER, 8, 9, 0);
	private static Position f_12 = new Position(551, 446, NUMBER, 8, 9, 2);
	private static Position f_13 = new Position(551, 430, NUMBER, 8, 9, 2);
	private static Position f_14 = new Position(569, 414, NUMBER, 8, 9, 0);
	private static Position f_15 = new Position(551, 399, NUMBER, 8, 9, 2);
	private static Position f_16 = new Position(551, 383, NUMBER, 8, 9, 0);
	private static Position f_17 = new Position(551, 366, NUMBER, 8, 9, 2);
	private static Position f_18 = new Position(551, 352, NUMBER, 8, 9, 2);
	private static Position f_19 = new Position(551, 336, NUMBER, 8, 9, 2);
	private static Position f_20 = new Position(551, 320, NUMBER, 8, 9, 2);
	private static Position f_21 = new Position(569, 305, NUMBER, 8, 9, 0);
	private static Position f_22 = new Position(569, 289, NUMBER, 8, 9, 0);
	private static Position f_23 = new Position(542, 270, NUMBER, 8, 9, 3);
	private static Position f_24 = new Position(569, 254, NUMBER, 8, 9, 0);
	private static Position f_25 = new Position(542, 239, NUMBER, 8, 9, 3);
	private static Position f_26 = new Position(569, 223, NUMBER, 8, 9, 0);
	private static Position f_27 = new Position(209, 618, NUMBER, 8, 9, 0);
	private static Position f_28_1 = new Position(182, 603, NUMBER, 8, 9, 3);
	private static Position f_29_1 = new Position(182, 588, NUMBER, 8, 9, 3);
	private static Position f_30_1 = new Position(182, 572, NUMBER, 8, 9, 3);
	private static Position f_31_1 = new Position(182, 556, NUMBER, 8, 9, 3);
	private static Position f_32_1 = new Position(182, 540, NUMBER, 8, 9, 3);
	private static Position f_28_2 = new Position(332, 602, NUMBER, 8, 9, 2);
	private static Position f_29_2 = new Position(332, 588, NUMBER, 8, 9, 2);
	private static Position f_30_2 = new Position(332, 572, NUMBER, 8, 9, 2);
	private static Position f_31_2 = new Position(332, 556, NUMBER, 8, 9, 2);
	private static Position f_32_2 = new Position(332, 540, NUMBER, 8, 9, 2);
	private static Position f_28_3 = new Position(217, 603, 7);
	private static Position f_29_3 = new Position(217, 588, 7);
	private static Position f_30_3 = new Position(217, 572, 7);
	private static Position f_33 = new Position(209, 525, NUMBER, 8, 9, 0);
	private static Position f_34_1 = new Position(182, 509, NUMBER, 8, 9, 3);
	private static Position f_34_2 = new Position(332, 507, NUMBER, 8, 9, 2);
	private static Position f_35 = new Position(209, 493, NUMBER, 8, 9, 0);
	private static Position f_36_1 = new Position(182, 478, NUMBER, 8, 9, 3);
	private static Position f_36_2 = new Position(332, 476, NUMBER, 8, 9, 2);
	private static Position f_37 = new Position(209, 462, NUMBER, 8, 9, 0);
	private static Position f_38_1 = new Position(182, 446, NUMBER, 8, 9, 3);
	private static Position f_38_2 = new Position(332, 444, NUMBER, 8, 9, 2);
	private static Position f_39 = new Position(332, 430, NUMBER, 8, 9, 2);
	private static Position f_40 = new Position(332, 414, NUMBER, 8, 9, 2);
	private static Position f_41 = new Position(185, 398, NUMBER, 8, 9, 0);
	private static Position f_42 = new Position(350, 399, NUMBER, 8, 9, 0);
	private static Position f_43 = new Position(167, 383, NUMBER, 8, 9, 2);
	private static Position f_44 = new Position(332, 383, NUMBER, 8, 9, 2);
	private static Position f_45 = new Position(185, 367, NUMBER, 8, 9, 0);
	private static Position f_46 = new Position(332, 367, NUMBER, 8, 9, 2);
	private static Position f_47 = new Position(167, 351, NUMBER, 8, 9, 2);
	private static Position f_48 = new Position(332, 351, NUMBER, 8, 9, 2);
	private static Position f_49 = new Position(167, 336, NUMBER, 8, 9, 2);
	private static Position f_50 = new Position(332, 336, NUMBER, 8, 9, 2);
	private static Position f_51 = new Position(185, 320, NUMBER, 8, 9, 0);
	private static Position f_52 = new Position(350, 320, NUMBER, 8, 9, 0);
	private static Position f_53_1 = new Position(191, 288, NUMBER, 8, 9, 2);
	private static Position f_53_2 = new Position(332, 288, NUMBER, 8, 9, 2);
	private static Position f_53_3 = new Position(217, 288, 7);
	private static Position f_54_1 = new Position(191, 274, NUMBER, 8, 9, 2);
	private static Position f_54_2 = new Position(332, 274, NUMBER, 8, 9, 2);
	private static Position f_55 = new Position(332, 259, NUMBER, 8, 9, 2);
	private static Position f_56 = new Position(185, 242, NUMBER, 8, 9, 0);
	private static Position f_57 = new Position(332, 242, NUMBER, 8, 9, 2);
	private static Position f_58 = new Position(167, 227, NUMBER, 8, 9, 2);
	private static Position f_59 = new Position(350, 227, NUMBER, 8, 9, 0);
	private static Position f_60 = new Position(167, 211, NUMBER, 8, 9, 2);
	private static Position f_61 = new Position(350, 211, NUMBER, 8, 9, 0);
	private static Position f_62 = new Position(185, 196, NUMBER, 8, 9, 0);
	private static Position f_63 = new Position(350, 179, NUMBER, 8, 9, 0);
	private static Position f_64 = new Position(350, 164, NUMBER, 8, 9, 0);
	private static Position f_65 = new Position(350, 148, NUMBER, 8, 9, 0);
	private static Position f_66 = new Position(350, 132, NUMBER, 8, 9, 0);
	private static Position f_67 = new Position(350, 117, NUMBER, 8, 9, 0);
	private static Position f_68 = new Position(350, 101, NUMBER, 8, 9, 0);
	private static Position f_69 = new Position(350, 85, NUMBER, 8, 9, 0);
	private static Position f_70 = new Position(350, 67, NUMBER, 8, 9, 0);
	private static Position f_71 = new Position(350, 48, NUMBER, 8, 9, 0);
	private static Position f_72 = new Position(569, 204, NUMBER, 8, 9, 0);

	@Override
	public Collection<?> getReprotData() {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}
}
