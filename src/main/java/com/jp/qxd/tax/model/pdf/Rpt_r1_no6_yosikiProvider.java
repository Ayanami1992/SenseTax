package com.jp.qxd.tax.model.pdf;

import java.util.Collection;

import org.springframework.stereotype.Component;

@Component
public class Rpt_r1_no6_yosikiProvider extends RptBaseProvider {
	private static Position ymdFrom = new Position(159, 1045, MAINDATE, 11, 9, 0, 37);
	private static Position ymdTo = new Position(313, 1045, MAINDATE, 11, 9, 0, 37);
	//納税地
	private static Position b_04 = new Position(159, 1180, 500, 1160, 11);
	//電話番号
	private static Position b_05 = new Position(390, 1135, TEL, 11, 8, 0);
	//法人名フリガナ
	private static Position legalPersonName_k = new Position(159, 1125);
	//法人名
	private static Position legalPersonName = new Position(159, 1123, 340, 1103, 10);
	//法人番号
	private static Position b_71 = new Position(559, 1188, NUMBER, 12, 9, 0);
	//代表者フリガナ
	private static Position representativeName_k = new Position(159, 1101, 310, 1091, 9);
	//代表者
	private static Position representativeName = new Position(159, 1088, 310, 1068, 10);
	//経理責任者フリガナ
	private static Position accountingName_h = new Position(420, 1101, 520, 1091, 9);
	//経理責任者
	private static Position accountingName = new Position(420, 1088, 520, 1068, 10);
	//代表者住所
//	private static Position b_10 = new Position(80, 651, 260, 632);
	//事業種目
	private static Position b_12 = new Position(655, 1176, 9);
	//整理番号
	private static Position b_13 = new Position(668, 1235, NUMBER, 10, 9, 0);
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

	private static Position f_1 = new Position(842, 989, NUMBER, 9, 9, 0);
	private static Position f_2 = new Position(842, 964, NUMBER, 9, 9, 0);
	private static Position f_3 = new Position(842, 940, NUMBER, 9, 9, 0);
	private static Position f_4 = new Position(842, 915, NUMBER, 9, 9, 0);
	private static Position f_5 = new Position(815, 892, NUMBER, 9, 9, 3);
	private static Position f_6 = new Position(815, 867, NUMBER, 9, 9, 3);
	private static Position f_7 = new Position(842, 843, NUMBER, 9, 9, 0);
	private static Position f_8 = new Position(842, 818, NUMBER, 9, 9, 0);
	private static Position f_9 = new Position(842, 794, NUMBER, 9, 9, 0);
	private static Position f_10 = new Position(842, 769, NUMBER, 9, 9, 0);
	private static Position f_11 = new Position(842, 745, NUMBER, 9, 9, 0);
	private static Position f_12 = new Position(824, 721, NUMBER, 9, 9, 2);
	private static Position f_13 = new Position(824, 696, NUMBER, 9, 9, 2);
	private static Position f_14 = new Position(842, 672, NUMBER, 9, 9, 0);
	private static Position f_15 = new Position(824, 648, NUMBER, 9, 9, 2);
	private static Position f_16 = new Position(817, 626, NUMBER, 11, 7, 0);
	private static Position f_17 = new Position(824, 599, NUMBER, 9, 9, 2);
	private static Position f_18 = new Position(824, 575, NUMBER, 9, 9, 2);
	private static Position f_19 = new Position(824, 550, NUMBER, 9, 9, 2);
	private static Position f_20 = new Position(824, 526, NUMBER, 9, 9, 2);
	private static Position f_21 = new Position(842, 501, NUMBER, 9, 9, 0);
	private static Position f_22 = new Position(842, 476, NUMBER, 9, 9, 0);
	private static Position f_23 = new Position(815, 449, NUMBER, 9, 9, 3);
	private static Position f_24 = new Position(842, 423, NUMBER, 9, 9, 0);
	private static Position f_25 = new Position(815, 399, NUMBER, 9, 9, 3);
	private static Position f_26 = new Position(842, 375, NUMBER, 9, 9, 0);
	private static Position f_27 = new Position(368, 989, NUMBER, 9, 9, 0);
	private static Position f_28_1 = new Position(341, 965, NUMBER, 9, 9, 3);
	private static Position f_29_1 = new Position(341, 940, NUMBER, 9, 9, 3);
	private static Position f_30_1 = new Position(341, 917, NUMBER, 9, 9, 3);
	private static Position f_31_1 = new Position(341, 892, NUMBER, 9, 9, 3);
	private static Position f_32_1 = new Position(368, 867, NUMBER, 9, 9, 0);
	private static Position f_28_2 = new Position(541, 965, NUMBER, 9, 9, 2);
	private static Position f_29_2 = new Position(541, 940, NUMBER, 9, 9, 2);
	private static Position f_30_2 = new Position(541, 917, NUMBER, 9, 9, 2);
	private static Position f_31_2 = new Position(541, 892, NUMBER, 9, 9, 2);
	private static Position f_32_2 = new Position(541, 867, NUMBER, 9, 9, 2);
	private static Position f_28_3 = new Position(405, 965, 9);
	private static Position f_29_3 = new Position(405, 940, 9);
	private static Position f_30_3 = new Position(405, 917, 9);
	private static Position f_33 = new Position(368, 843, NUMBER, 9, 9, 0);
	private static Position f_34_1 = new Position(341, 818, NUMBER, 9, 9, 3);
	private static Position f_34_2 = new Position(541, 818, NUMBER, 9, 9, 2);
	private static Position f_35 = new Position(368, 794, NUMBER, 9, 9, 0);
	private static Position f_36_1 = new Position(341, 770, NUMBER, 9, 9, 3);
	private static Position f_36_2 = new Position(541, 770, NUMBER, 9, 9, 2);
	private static Position f_37 = new Position(368, 745, NUMBER, 9, 9, 0);
	private static Position f_38_1 = new Position(341, 721, NUMBER, 9, 9, 3);
	private static Position f_38_2 = new Position(541, 721, NUMBER, 9, 9, 2);
	private static Position f_39 = new Position(541, 696, NUMBER, 9, 9, 2);
	private static Position f_40 = new Position(541, 672, NUMBER, 9, 9, 2);
	private static Position f_41 = new Position(332, 648, NUMBER, 9, 9, 0);
	private static Position f_42 = new Position(559, 648, NUMBER, 9, 9, 0);
	private static Position f_43 = new Position(314, 623, NUMBER, 9, 9, 2);
	private static Position f_44 = new Position(541, 623, NUMBER, 9, 9, 2);
	private static Position f_45 = new Position(332, 599, NUMBER, 9, 9, 0);
	private static Position f_46 = new Position(541, 599, NUMBER, 9, 9, 2);
	private static Position f_47 = new Position(314, 575, NUMBER, 9, 9, 2);
	private static Position f_48 = new Position(541, 575, NUMBER, 9, 9, 2);
	private static Position f_49 = new Position(314, 550, NUMBER, 9, 9, 2);
	private static Position f_50 = new Position(541, 550, NUMBER, 9, 9, 2);
	private static Position f_51 = new Position(332, 526, NUMBER, 9, 9, 0);
	private static Position f_52 = new Position(559, 526, NUMBER, 9, 9, 0);
	private static Position f_53_1 = new Position(350, 477, NUMBER, 9, 9, 2);
	private static Position f_53_2 = new Position(541, 477, NUMBER, 9, 9, 2);
	private static Position f_53_3 = new Position(405, 477, 9);
	private static Position f_54_1 = new Position(350, 452, NUMBER, 9, 9, 2);
	private static Position f_54_2 = new Position(541, 452, NUMBER, 9, 9, 2);
	private static Position f_55 = new Position(541, 428, NUMBER, 9, 9, 2);
	private static Position f_56 = new Position(332, 404, NUMBER, 9, 9, 0);
	private static Position f_57 = new Position(541, 404, NUMBER, 9, 9, 2);
	private static Position f_58 = new Position(314, 379, NUMBER, 9, 9, 2);
	private static Position f_59 = new Position(559, 379, NUMBER, 9, 9, 0);
	private static Position f_60 = new Position(314, 355, NUMBER, 9, 9, 2);
	private static Position f_61 = new Position(559, 355, NUMBER, 9, 9, 0);
	private static Position f_62 = new Position(332, 326, NUMBER, 9, 9, 0);
	private static Position f_63 = new Position(559, 302, NUMBER, 9, 9, 0);
	private static Position f_64 = new Position(559, 278, NUMBER, 9, 9, 0);
	private static Position f_65 = new Position(559, 253, NUMBER, 9, 9, 0);
	private static Position f_66 = new Position(559, 229, NUMBER, 9, 9, 0);
	private static Position f_67 = new Position(559, 204, NUMBER, 9, 9, 0);
	private static Position f_68 = new Position(559, 180, NUMBER, 9, 9, 0);
	private static Position f_69 = new Position(559, 152, NUMBER, 9, 9, 0);
	private static Position f_70 = new Position(559, 124, NUMBER, 9, 9, 0);
	private static Position f_71 = new Position(559, 99, NUMBER, 9, 9, 0);
	private static Position f_72 = new Position(842, 350, NUMBER, 9, 9, 0);
	private static Position prefectures = new Position(201, 1195, 300, 1180, PREFECTURES, 12, 2, 0);

	@Override
	public Collection<?> getReprotData() {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}
}
