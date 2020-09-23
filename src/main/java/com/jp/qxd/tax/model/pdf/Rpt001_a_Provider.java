package com.jp.qxd.tax.model.pdf;

import java.util.Collection;

import org.springframework.stereotype.Component;

@Component
public class Rpt001_a_Provider extends RptBaseProvider {

	private static Position ymdFrom = new Position(110, 613, MAINDATE, 13, 13, 0, 49);
	private static Position ymdTo = new Position(110, 589, MAINDATE, 13, 13, 0, 49);
	//納税地
	private static Position b_04 = new Position(80, 760, 260, 740);
	//電話番号
	private static Position b_05 = new Position(174, 732, TEL, 8, 6, 0);
	//法人名フリガナ
	private static Position legalPersonName_k = new Position(80, 731, 260, 721);
	//法人名
	private static Position legalPersonName = new Position(80, 718, 260, 708);
	//法人番号
	private static Position b_71 = new Position(251, 686, NUMBER, 11, 14, 0);
	//代表者フリガナ
	private static Position representativeName_k = new Position(80, 683, 240, 673);
	//代表者
	private static Position representativeName = new Position(80, 670, 240, 660);
	//代表者住所
	private static Position b_10 = new Position(80, 651, 260, 632);
	//事業種目
	private static Position b_12 = new Position(315, 741);
	//整理番号
	private static Position b_13 = new Position(551, 752, NUMBER, 11, 14, 0);
	//期末資本金
	private static Position b_20 = new Position(315, 730);
	//売上金額
	private static Position billing_amount = new Position(551, 713, NUMBER, 11, 14, 0);
	//銀行名
	private static Position b_35 = new Position(340, 127);
	//金庫･組合
	private static Position b_35_1 = new Position(340, 117);
	//農協･漁協
	private static Position b_35_2 = new Position(340, 107);
	//本店 支店
	private static Position b_36 = new Position(405, 127);
	//出張所
	private static Position b_36_1 = new Position(405, 117);
	//本所･支所
	private static Position b_36_2 = new Position(405, 107);
	//口座種類
//	private static Position b_37 = new Position(405, 107);
	//口座番号
	private static Position b_38 = new Position(405, 83, NUMBER, 11, 10, 0);
	//郵便局名
	private static Position b_39 = new Position(505, 130, 555, 100);
	//貯金記号
	private static Position b_40 = new Position(450, 84, 11);
	//貯金番号
	private static Position b_41 = new Position(495, 84, 11);
	//旧納税地及び旧法人名等
	private static Position a1 = new Position(315, 695, 400, 664);
	//一連番号
	private static Position a2 = new Position(495, 780, 565, 770, 11);


	private static Position f_1 = new Position(285, 564, NUMBER, 11, 14, 0);
	private static Position f_2 = new Position(285, 547, NUMBER, 11, 14, 0);
	private static Position f_3 = new Position(285, 529, NUMBER, 11, 14, 0);
	private static Position f_4 = new Position(285, 511, NUMBER, 11, 14, 0);
	private static Position f_5 = new Position(285, 494, NUMBER, 11, 14, 0);
	private static Position f_6 = new Position(243, 477, NUMBER, 11, 14, 3);
	private static Position f_7 = new Position(285, 460, NUMBER, 11, 14, 0);
	private static Position f_8 = new Position(243, 442, NUMBER, 11, 14, 3);
	private static Position f_9 = new Position(285, 424, NUMBER, 11, 14, 0);
	private static Position f_10 = new Position(285, 389, NUMBER, 11, 14, 0);
	private static Position f_11 = new Position(285, 372, NUMBER, 11, 14, 0);
	private static Position f_12 = new Position(285, 354, NUMBER, 11, 14, 0);
	private static Position f_13 = new Position(285, 337, NUMBER, 11, 14, 0);
	private static Position f_14 = new Position(257, 320, NUMBER, 11, 14, 2);
	private static Position f_15 = new Position(257, 297, NUMBER, 11, 14, 2);
	private static Position f_16 = new Position(257, 280, NUMBER, 11, 14, 2);
	private static Position f_33= new Position(285, 262, NUMBER, 11, 14, 0);
	private static Position f_34 = new Position(285, 245, NUMBER, 11, 14, 0);
	private static Position f_35 = new Position(243, 227, NUMBER, 11, 14, 3);
	private static Position f_36 = new Position(285, 210, NUMBER, 11, 14, 0);
	private static Position f_37 = new Position(285, 192, NUMBER, 11, 14, 0);
	private static Position f_38 = new Position(285, 175, NUMBER, 11, 14, 0);
	private static Position f_39 = new Position(285, 158, NUMBER, 11, 14, 0);
	private static Position f_40 = new Position(285, 141, NUMBER, 11, 14, 0);
	private static Position f_41 = new Position(285, 123, NUMBER, 11, 14, 0);
	private static Position f_42 = new Position(257, 105, NUMBER, 11, 14, 2);
	private static Position f_43 = new Position(257, 87, NUMBER, 11, 14, 2);
	private static Position f_44 = new Position(257, 66, NUMBER, 11, 14, 2);
	private static Position f_17 = new Position(544, 559, NUMBER, 11, 14, 0);
	private static Position f_18 = new Position(544, 542, NUMBER, 11, 14, 0);
	private static Position f_19 = new Position(544, 524, NUMBER, 11, 14, 0);
	private static Position f_20 = new Position(544, 507, NUMBER, 11, 14, 0);
	private static Position f_21 = new Position(544, 489, NUMBER, 11, 14, 0);
	private static Position f_22 = new Position(530, 472, NUMBER, 11, 14, 1);
	private static Position f_23 = new Position(530, 455, NUMBER, 11, 14, 1);
	private static Position f_24 = new Position(516, 437, NUMBER, 11, 14, 2);
	private static Position f_25 = new Position(544, 420, NUMBER, 11, 14, 0);
	private static Position f_26 = new Position(544, 402, NUMBER, 11, 14, 0);
	private static Position f_27 = new Position(544, 380,  NUMBER, 11, 14, 0);
	private static Position f_28 = new Position(544, 359, NUMBER, 11, 14, 0);
	private static Position f_29 = new Position(544, 341,  NUMBER, 11, 14, 0);
	private static Position f_30 = new Position(516, 320, NUMBER, 11, 14, 2);
	private static Position f_31 = new Position(544, 299, NUMBER, 11, 14, 0);
	private static Position f_32 = new Position(544, 280, NUMBER, 11, 14, 0);
	private static Position f_45 = new Position(544, 254, NUMBER, 11, 14, 0);
	private static Position f_46 = new Position(544, 237,  NUMBER, 11, 14, 0);
	private static Position f_47 = new Position(544, 220, NUMBER, 11, 14, 0);
	private static Position f_48 = new Position(502, 203, NUMBER, 11, 14, 3);
	private static Position f_49 = new Position(516, 186, NUMBER, 11, 14, 2);
	@Override
	public Collection<?> getReprotData() {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}
}
