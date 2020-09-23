package com.jp.qxd.tax.model.pdf;

import java.util.Collection;

import org.springframework.stereotype.Component;

@Component
public class Rpt001_b_Provider extends RptBaseProvider {

	private static Position ymdFrom = new Position(105, 622, MAINDATE, 13, 13, 0, 49);
	private static Position ymdTo = new Position(105, 587, MAINDATE, 13, 13, 0, 49);
	//納税地
	private static Position b_04 = new Position(72, 767, 260, 747);
	//電話番号
	private static Position b_05 = new Position(170, 738, TEL, 8, 6, 0);

	//法人名フリガナ
	private static Position legalPersonName_k = new Position(80, 737, 260, 727);
	//法人名
	private static Position legalPersonName = new Position(80, 727, 260, 717);
	//法人番号
//	private static Position b_71 = new Position(251, 686, NUMBER, 11, 14, 0);
	//代表者フリガナ
	private static Position representativeName_k = new Position(80, 702, 240, 692);
	//代表者
	private static Position representativeName = new Position(80, 692, 240, 682);
	//代表者住所
	private static Position b_10 = new Position(75, 663, 255, 643);
	//事業種目
	private static Position b_12 = new Position(310, 767);
	//整理番号
	private static Position b_13 = new Position(546, 762, NUMBER, 11, 14, 0);
	//期末資本金
	private static Position b_20 = new Position(310, 755);
	//売上金額
	private static Position billing_amount = new Position(546, 723, NUMBER, 11, 14, 0);
	//銀行名
	private static Position b_35 = new Position(330, 126);
	//金庫･組合
	private static Position b_35_1 = new Position(330, 117);
	//農協･漁協
	private static Position b_35_2 = new Position(330, 108);
	//本店 支店
	private static Position b_36 = new Position(400, 126);
	//出張所
	private static Position b_36_1 = new Position(400, 117);
	//本所･支所
	private static Position b_36_2 = new Position(400, 108);
	//口座種類
//	private static Position b_37 = new Position(405, 107);
	//口座番号
	private static Position b_38 = new Position(400, 88, NUMBER, 11, 10, 0);
	//郵便局名
	private static Position b_39 = new Position(500, 132, 550, 102);
	//貯金記号
	private static Position b_40 = new Position(445, 90, 11);
	//貯金番号
	private static Position b_41 = new Position(490, 90, 11);
	//旧納税地及び旧法人名等
	private static Position a1 = new Position(308, 690, 395, 670);
	//一連番号
	private static Position a2 = new Position(490, 790, 560, 780, 11);

	private static Position f_1 = new Position(281, 552, NUMBER, 11, 14, 0);
	private static Position f_2 = new Position(281, 535, NUMBER, 11, 14, 0);
	private static Position f_3 = new Position(281, 517, NUMBER, 11, 14, 0);
	private static Position f_4 = new Position(281, 500, NUMBER, 11, 14, 0);
	private static Position f_5 = new Position(281, 482, NUMBER, 11, 14, 0);
	private static Position f_6 = new Position(239, 465, NUMBER, 11, 14, 3);
	private static Position f_7 = new Position(281, 447, NUMBER, 11, 14, 0);
	private static Position f_8 = new Position(239, 430, NUMBER, 11, 14, 3);
	private static Position f_9 = new Position(281, 412, NUMBER, 11, 14, 0);
	private static Position f_10 = new Position(253, 396, 281, 377, NUMBER, 11, 14, 2, 9);
	private static Position f_11 = new Position(281, 360, NUMBER, 11, 14, 0);
	private static Position f_12 = new Position(281, 342, NUMBER, 11, 14, 0);
	private static Position f_13 = new Position(253, 325, NUMBER, 11, 14, 2);
	private static Position f_14 = new Position(253, 308, NUMBER, 11, 14, 2);
	private static Position f_15 = new Position(253, 291, NUMBER, 11, 14, 2);

	private static Position f_16 = new Position(539, 552, NUMBER, 11, 14, 0);
	private static Position f_17 = new Position(539, 535, NUMBER, 11, 14, 0);
	private static Position f_18 = new Position(539, 508, NUMBER, 11, 14, 0);
	private static Position f_19 = new Position(539, 482, NUMBER, 11, 14, 0);
	private static Position f_20 = new Position(539, 465, NUMBER, 11, 14, 0);
	private static Position f_21 = new Position(539, 447, NUMBER, 11, 14, 0);
	private static Position f_22 = new Position(539, 430, NUMBER, 11, 14, 0);
	private static Position f_23 = new Position(539, 413, NUMBER, 11, 14, 0);
	private static Position f_24 = new Position(539, 386, NUMBER, 11, 14, 0);
	private static Position f_25 = new Position(511, 360, NUMBER, 11, 14, 2);
	private static Position f_26 = new Position(539, 343, NUMBER, 11, 14, 0);
	private static Position f_27 = new Position(539, 326, NUMBER, 11, 14, 0);
	private static Position f_28 = new Position(539, 308, NUMBER, 11, 14, 0);
	private static Position f_29 = new Position(539, 291, NUMBER, 11, 14, 0);

	private static Position f_30 = new Position(239, 273, NUMBER, 11, 14, 3);
	private static Position f_31 = new Position(239, 256, NUMBER, 11, 14, 3);
	private static Position f_32 = new Position(239, 239, NUMBER, 11, 14, 3);
	private static Position f_33 = new Position(239, 221, NUMBER, 11, 14, 3);

	private static Position f_34 = new Position(539, 273, NUMBER, 11, 14, 0);
	private static Position f_35 = new Position(539, 255, NUMBER, 11, 14, 0);
	private static Position f_36 = new Position(539, 238, NUMBER, 11, 14, 0);
	private static Position f_37 = new Position(539, 221, NUMBER, 11, 14, 0);

	private static Position f_38 = new Position(267, 204, NUMBER, 11, 14, 1);
	private static Position f_39 = new Position(267, 186, NUMBER, 11, 14, 1);

	private static Position f_40 = new Position(511, 204, NUMBER, 11, 14, 2);
	private static Position f_41 = new Position(539, 186, NUMBER, 11, 14, 0);

	private static Position f_42 = new Position(281, 168, NUMBER, 11, 14, 0);
	private static Position f_43 = new Position(281, 151, NUMBER, 11, 14, 0);
	private static Position f_44 = new Position(281, 133, NUMBER, 11, 14, 0);
	private static Position f_45 = new Position(281, 116, NUMBER, 11, 14, 0);
	private static Position f_46 = new Position(281, 99,  NUMBER, 11, 14, 0);

	private static Position f_47 = new Position(539, 142, NUMBER, 11, 14, 0);
	@Override
	public Collection<?> getReprotData() {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}
}
