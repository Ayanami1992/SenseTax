package com.jp.qxd.tax.model.pdf;

import java.util.Collection;

import org.springframework.stereotype.Component;

@Component
public class Rpt001_01Provider extends RptBaseProvider {
	private static Position legalPersonName = new Position(465, 840, 580, 810);
	private static Position ymdFrom = new Position(370, 830, DATE, 10, 5, 0, 20);
	private static Position ymdTo = new Position(370, 814, DATE, 10, 5, 0, 20);
	private static Position f_50 = new Position(313, 742, NUMBER, 11, 5, 0);
	private static Position f_51 = new Position(313, 694, NUMBER, 11, 5, 0);
	private static Position f_52 = new Position(313, 646, NUMBER, 11, 5, 0);
	private static Position f_53 = new Position(573, 742, NUMBER, 11, 5, 0);
	private static Position f_54 = new Position(573, 694, NUMBER, 11, 5, 0);
	private static Position f_55 = new Position(573, 646, NUMBER, 11, 5, 0);
	private static Position f_56 = new Position(313, 561, NUMBER, 11, 5, 0);
	private static Position f_57 = new Position(313, 513, NUMBER, 11, 5, 0);
	private static Position f_58 = new Position(573, 561, NUMBER, 11, 5, 0);
	private static Position f_59 = new Position(573, 512, NUMBER, 11, 5, 0);
	private static Position f_60 = new Position(325, 427, NUMBER, 11, 5, 0);
	private static Position f_61 = new Position(325, 379, NUMBER, 11, 5, 0);
	private static Position f_62 = new Position(325, 331, NUMBER, 11, 5, 0);
	private static Position f_63 = new Position(325, 283, NUMBER, 11, 5, 0);
	private static Position f_64 = new Position(325, 235, NUMBER, 11, 5, 0);
	private static Position f_65 = new Position(318, 187, NUMBER, 11, 5, 0);
	private static Position f_66 = new Position(325, 138, NUMBER, 11, 5, 0);
	private static Position f_67 = new Position(325, 89, NUMBER, 11, 5, 0);
	private static Position f_68 = new Position(573, 427, NUMBER, 11, 5, 0);
	private static Position f_69 = new Position(573, 379, NUMBER, 11, 5, 0);
	private static Position f_70 = new Position(560, 331, NUMBER, 11, 5, 0);
	private static Position f_71 = new Position(573, 283, NUMBER, 11, 5, 0);
	private static Position f_72 = new Position(573, 235, NUMBER, 11, 5, 0);
	private static Position f_73 = new Position(573, 187, NUMBER, 11, 5, 0);
	private static Position f_74 = new Position(564, 139, NUMBER, 11, 5, 0);
//	private static Position f_75 = new Position(573, 186, NUMBER, 11, 5, 0);
//	private static Position f_76 = new Position(573, 186, NUMBER, 11, 5, 0);
	@Override
	public Collection<?> getReprotData() {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}
}
