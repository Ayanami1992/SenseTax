package com.jp.qxd.tax.model.pdf;

import java.util.Collection;

import org.springframework.stereotype.Component;

@Component
public class Rpt003Provider extends RptBaseProvider {

	private static Position legalPersonName = new Position(444, 805, 550, 775);
	private static Position ymdFrom = new Position(346, 792, DATE, 10, 5, 0, 20);
	private static Position ymdTo = new Position(346, 780, DATE, 10, 5, 0, 20);
	private static Position f_1 = new Position(248, 722, 283, 712, 10);
	private static Position f_2 = new Position(248, 672, 283, 662, 10);
	private static Position f_3 = new Position(248, 622, 283, 612, 10);
	private static Position f_4 = new Position(248, 572, 283, 562, 10);;
	private static Position f_5 = new Position(493, 722, 550, 712, 10);
	private static Position f_6 = new Position(493, 672, 550, 662, 10);
	private static Position f_7 = new Position(493, 622, 550, 612, 10);
	private static Position f_8 = new Position(493, 572, 550, 562, 10);
	private static Position f_9 = new Position(245, 508, 300, 498, 10);
	private static Position f_10 = new Position(245, 458, 300, 448, 10);
	private static Position f_11 = new Position(245, 408, 300, 398, 10);
	private static Position f_12 = new Position(245, 358, 300, 348, 10);
	private static Position f_13 = new Position(245, 308, 300, 298, 10);
	private static Position f_14 = new Position(245, 258, 300, 248, 10);
	private static Position f_15 = new Position(245, 209, 300, 199, 10);
	private static Position f_16 = new Position(245, 159, 300, 149, 10);
	private static Position f_17 = new Position(245, 109, 300, 99, 10);
	private static Position f_18 = new Position(245, 59, 285, 49, 10);
	private static Position f_19 = new Position(493, 483, 550, 473, 10);
	private static Position f_20 = new Position(493, 358, 550, 348, 10);
	private static Position f_21 = new Position(493, 258, 550, 248, 10);
	private static Position f_22 = new Position(493, 209, 550, 199, 10);
	private static Position f_23 = new Position(493, 159, 550, 149, 10);
	private static Position f_24 = new Position(493, 109, 550, 99, 10);
	private static Position f_25 = new Position(493, 59, 550, 49, 10);
	@Override
	public Collection<?> getReprotData() {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}
}
