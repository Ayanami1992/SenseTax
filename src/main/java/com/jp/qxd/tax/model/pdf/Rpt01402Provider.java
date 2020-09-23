package com.jp.qxd.tax.model.pdf;

import java.util.Collection;

import org.springframework.stereotype.Component;

@Component
public class Rpt01402Provider extends RptBaseProvider {

	private static Position legalPersonName = new Position(425, 805, 540, 775);
	private static Position ymdFrom = new Position(341, 793, DATE, 10, 5, 0, 15);
	private static Position ymdTo = new Position(341, 780, DATE, 10, 5, 0, 15);
	private static Position f_1 = new Position(237, 756, 282, 746, 9);
	private static Position f_2 = new Position(237, 739, 282, 729, 9);
	private static Position f_3 = new Position(237, 722, 282, 712, 9);
	private static Position f_4 = new Position(237, 704, 282, 694, 9);
	private static Position f_5 = new Position(237, 686, 282, 676, 9);
	private static Position f_6 = new Position(237, 669, 282, 659, 9);
	private static Position f_7 = new Position(237, 651, 282, 641, 9);
	private static Position f_8 = new Position(237, 631, 282, 621, 9);
	private static Position f_9 = new Position(237, 610, 282, 600, 9);
	private static Position f_10 = new Position(237, 589, 282, 579, 9);
	private static Position f_11 = new Position(237, 566, 282, 556, 9);
	private static Position f_12 = new Position(237, 545, 282, 535, 9);
	private static Position f_13 = new Position(237, 524, 282, 514, 9);
	private static Position f_14 = new Position(237, 498, 282, 488, 9);
	private static Position f_15 = new Position(237, 469, 282, 459, 9);
	private static Position f_16 = new Position(237, 440, 282, 430, 9);
	private static Position f_17 = new Position(237, 416, 282, 406, 9);
	private static Position f_18 = new Position(237, 398, 282, 388, 9);
	private static Position f_19 = new Position(237, 380, 282, 370, 9);
	private static Position f_20 = new Position(237, 363, 282, 353, 9);
	private static Position f_21 = new Position(237, 345, 282, 335, 9);
	private static Position f_22 = new Position(237, 325, 282, 315, 9);
	private static Position f_23 = new Position(237, 304, 282, 294, 9);
	private static Position f_24 = new Position(237, 286, 282, 276, 9);
	private static Position f_25 = new Position(488, 751, 533, 741, 9);
	private static Position f_26 = new Position(488, 721, 533, 711, 9);
	private static Position f_27 = new Position(488, 692, 533, 682, 9);
	private static Position f_28 = new Position(488, 662, 533, 652, 9);
	private static Position f_29 = new Position(488, 634, 533, 624, 9);
	private static Position f_30 = new Position(488, 604, 533, 594, 9);
	private static Position f_31 = new Position(488, 569, 533, 559, 9);
	private static Position f_32 = new Position(488, 534, 533, 524, 9);
	private static Position f_33 = new Position(488, 505, 533, 495, 9);
	private static Position f_34 = new Position(488, 475, 533, 465, 9);
	private static Position f_35 = new Position(488, 445, 533, 435, 9);
	private static Position f_36 = new Position(488, 416, 533, 406, 9);
	private static Position f_37 = new Position(488, 387, 533, 377, 9);
	private static Position f_38 = new Position(488, 357, 533, 347, 9);
	private static Position f_39 = new Position(488, 325, 533, 315, 9);
	private static Position f_40 = new Position(488, 292, 533, 282, 9);

	private static Position f_41_1 = new Position(470, 244, 520, 234, 9);
	private static Position f_42_1 = new Position(470, 154, 520, 144, 9);
	private static Position f_43_1 = new Position(80, 244, 120, 234, 9);
	private static Position f_44_1 = new Position(160, 244, 245, 234, 8);
	private static Position f_45_1 = new Position(270, 244, 320, 234, 9);
	private static Position f_46_1 = new Position(355, 244, 435, 234, 8);
	private static Position f_47_1 = new Position(80, 154, 120, 144, 9);
	private static Position f_48_1 = new Position(160, 154, 245, 144, 8);
	private static Position f_49_1 = new Position(255, 154, 340, 144, 8);
	private static Position f_50_1 = new Position(355, 154, 435, 144, 8);
	private static Position f_51_1 = new Position(80, 69, 120, 59, 9);
	private static Position f_52_1 = new Position(160, 69, 245, 59, 8);
	private static Position f_53_1 = new Position(255, 69, 340, 59, 8);
	private static Position f_54_1 = new Position(355, 69, 435, 59, 8);
	private static Position f_55_1 = new Position(470, 69, 520, 59, 9);

	private static Position f_41_2 = new Position(470, 229, 520, 219, 9);
	private static Position f_42_2 = new Position(470, 139, 520, 129, 9);
	private static Position f_43_2 = new Position(80, 229, 120, 219, 9);
	private static Position f_44_2 = new Position(160, 229, 245, 219, 8);
	private static Position f_45_2 = new Position(270, 229, 320, 219, 9);
	private static Position f_46_2 = new Position(355, 229, 435, 219, 8);
	private static Position f_47_2 = new Position(80, 139, 120, 129, 9);
	private static Position f_48_2 = new Position(160, 139, 245, 129, 8);
	private static Position f_49_2 = new Position(255, 139, 340, 129, 8);
	private static Position f_50_2 = new Position(355, 139, 435, 129, 8);
	private static Position f_51_2 = new Position(80, 54, 120, 44, 9);
	private static Position f_52_2 = new Position(160, 54, 245, 44, 8);
	private static Position f_53_2 = new Position(255, 54, 340, 44, 8);
	private static Position f_54_2 = new Position(355, 54, 435, 44, 8);
	private static Position f_55_2 = new Position(470, 54, 520, 44, 9);

	private static Position f_41_3 = new Position(470, 215, 520, 205, 9);
	private static Position f_41_total = new Position(470, 200, 520, 190, 9);
	private static Position f_42_3 = new Position(470, 124, 520, 114, 9);
	private static Position f_42_total = new Position(470, 109, 520, 99, 9);
	private static Position f_43_3 = new Position(80, 215, 120, 205, 9);
	private static Position f_44_3 = new Position(160, 215, 245, 205, 8);
	private static Position f_45_3 = new Position(270, 215, 320, 205, 9);
	private static Position f_46_3 = new Position(355, 215, 435, 205, 8);
	private static Position f_47_3 = new Position(80, 124, 120, 114, 9);
	private static Position f_48_3= new Position(160, 124, 245, 114, 8);
	private static Position f_49_3 = new Position(255, 124, 340, 114, 8);
	private static Position f_50_3 = new Position(355, 124, 435, 114, 8);
	private static Position f_51_3 = new Position(80, 39, 120, 29, 9);
	private static Position f_52_3 = new Position(160, 39, 245, 29, 8);
	private static Position f_53_3 = new Position(255, 39, 340, 29, 8);
	private static Position f_54_3 = new Position(355, 39, 435, 29, 8);
	private static Position f_55_3 = new Position(470, 39, 520, 29, 9);

	@Override
	public Collection<?> getReprotData() {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}
}
