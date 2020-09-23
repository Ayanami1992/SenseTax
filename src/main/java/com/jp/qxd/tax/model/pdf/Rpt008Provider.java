package com.jp.qxd.tax.model.pdf;

import java.util.Collection;

import org.springframework.stereotype.Component;

@Component
public class Rpt008Provider extends RptBaseProvider {

	private static Position legalPersonName = new Position(425, 805, 540, 775);
	private static Position ymdFrom = new Position(344, 793, DATE, 10, 5, 0, 15);
	private static Position ymdTo = new Position(344, 780, DATE, 10, 5, 0, 15);
	private static Position f_1 = new Position(250, 755, 290, 745, 10);
	private static Position f_2 = new Position(250, 735, 290, 725, 10);
	private static Position f_3 = new Position(250, 715, 290, 705, 10);
	private static Position f_4 = new Position(250, 695, 290, 685, 10);
	private static Position f_5 = new Position(250, 648, 290, 638, 10);
	private static Position f_6 = new Position(250, 601, 290, 591, 10);
	private static Position f_7 = new Position(250, 580, 290, 570, 10);
	private static Position f_8 = new Position(250, 560, 290, 550, 10);
	private static Position f_9 = new Position(250, 540, 290, 530, 10);
	private static Position f_10 = new Position(250, 510, 290, 500, 10);
	private static Position f_11 = new Position(250, 480, 290, 470, 10);
	private static Position f_12 = new Position(250, 460, 290, 450, 10);
	private static Position f_13 = new Position(250, 440, 290, 430, 10);
	private static Position f_14 = new Position(493, 755, 533, 745, 10);
	private static Position f_15 = new Position(493, 735, 533, 725, 10);
	private static Position f_16 = new Position(493, 718, 533, 708, 10);
	private static Position f_17 = new Position(493, 674, 533, 664, 10);
	private static Position f_18 = new Position(493, 628, 533, 618, 10);
	private static Position f_19 = new Position(493, 608, 533, 598, 10);
	private static Position f_20 = new Position(493, 580, 533, 570, 10);
	private static Position f_21 = new Position(493, 554, 533, 544, 10);
	private static Position f_22 = new Position(493, 527, 533, 517, 10);
	private static Position f_23 = new Position(493, 500, 533, 490, 10);
	private static Position f_24 = new Position(493, 480, 533, 470, 10);
	private static Position f_25 = new Position(493, 460, 533, 450, 10);
	private static Position f_26 = new Position(493, 440, 533, 430, 10);
	private static Position f_27_1 = new Position(170, 375, 235, 365, 11);
	private static Position f_28_1 = new Position(268, 375, 333, 365, 11);
	private static Position f_29_1 = new Position(365, 375, 430, 365, 11);
	private static Position f_30_1 = new Position(463, 375, 528, 365, 11);
	private static Position f_27_2 = new Position(170, 361, 235, 351, 11);
	private static Position f_28_2 = new Position(268, 361, 333, 351, 11);
	private static Position f_29_2 = new Position(365, 361, 430, 351, 11);
	private static Position f_30_2 = new Position(463, 361, 528, 351, 11);
	private static Position f_27_total = new Position(170, 348, 235, 338, 11);
	private static Position f_28_total = new Position(268, 348, 333, 338, 11);
	private static Position f_29_total = new Position(365, 348, 430, 338, 11);
	private static Position f_30_total = new Position(463, 348, 528, 338, 11);
	private static Position f_brand_1 = new Position(78, 294, 163, 284, 9);
	private static Position f_HeadOfficeLocation_1 = new Position(168, 294, 253, 284, 9);
	private static Position f_dataFrom_1 = new Position(280, 289, DATE, 8, 4, 0, 35);
	private static Position f_dataTo_1 = new Position(280, 283, DATE, 8, 4, 0, 35);
	private static Position f_31_1 = new Position(463, 294, 528, 284, 11);
	private static Position f_brand_2 = new Position(78, 282, 163, 272, 9);
	private static Position f_HeadOfficeLocation_2 = new Position(168, 282, 253, 272, 9);
	private static Position f_dataFrom_2 = new Position(280, 276, DATE, 8, 4, 0, 35);
	private static Position f_dataTo_2 = new Position(280, 270, DATE, 8, 4, 0, 35);
	private static Position f_31_2 = new Position(463, 281, 528, 271, 11);
	private static Position f_31_total = new Position(463, 268, 528, 258, 11);
	private static Position f_brand_3  = new Position(75, 221, 125, 211, 9);
	private static Position f_HeadOfficeLocation_3 = new Position(132, 221, 177, 211, 9);
	private static Position f_dataFrom_3 = new Position(198, 215, DATE, 8, 4, 0, 8);
	private static Position f_dataTo_3 = new Position(198, 209, DATE, 8, 4, 0, 8);
	private static Position f_holdingRatio_1 = new Position(220, 221, 255, 211, 9);
	private static Position f_32_1 = new Position(275, 221, 340, 211, 11);
	private static Position f_33_1 = new Position(372, 221, 437, 211, 11);
	private static Position f_34_1 = new Position(469, 221, 534, 211, 11);
	private static Position f_brand_4  = new Position(75, 207, 125, 197, 9);
	private static Position f_HeadOfficeLocation_4 = new Position(132, 207, 177, 197, 9);
	private static Position f_dataFrom_4 = new Position(198, 202, DATE, 8, 4, 0, 8);
	private static Position f_dataTo_4 = new Position(198, 196, DATE, 8, 4, 0, 8);
	private static Position f_holdingRatio_2 = new Position(220, 207, 255, 197, 9);
	private static Position f_32_2 = new Position(275, 207, 340, 197, 11);
	private static Position f_33_2 = new Position(372, 207, 437, 197, 11);
	private static Position f_34_2 = new Position(469, 207, 534, 197, 11);
	private static Position f_32_total = new Position(275, 193, 340, 183, 11);
	private static Position f_33_total = new Position(372, 193, 437, 183, 11);
	private static Position f_34_total = new Position(469, 193, 534, 183, 11);
	private static Position f_brand_5 = new Position(78, 147, 163, 137, 9);
	private static Position f_HeadOfficeLocation_5 = new Position(168, 147, 253, 137, 9);
	private static Position f_35_1 = new Position(275, 146, 340, 136, 11);
	private static Position f_36_1 = new Position(372, 146, 437, 136, 11);
	private static Position f_37_1 = new Position(469, 146, 534, 136, 11);
	private static Position f_brand_6 = new Position(78, 133, 163, 123, 9);
	private static Position f_HeadOfficeLocation_6 = new Position(168, 133, 253, 123, 9);
	private static Position f_35_2 = new Position(275, 132, 340, 122, 11);
	private static Position f_36_2 = new Position(372, 132, 437, 122, 11);
	private static Position f_37_2 = new Position(469, 132, 534, 122, 11);
	private static Position f_35_total = new Position(275, 119, 340, 109, 11);
	private static Position f_36_total = new Position(372, 119, 437, 109, 11);
	private static Position f_37_total = new Position(469, 119, 534, 109, 11);
	private static Position f_brand_7  = new Position(75, 73, 125, 63, 9);
	private static Position f_38_1 = new Position(132, 73, 177, 63, 9);
	private static Position f_39_1 = new Position(198, 64, DATE, 8, 4, 0, 8);
	private static Position f_40_1 = new Position(220, 73, 255, 63, 9);
	private static Position f_41_1 = new Position(275, 73, 340, 63, 11);
	private static Position f_42_1 = new Position(372, 73, 437, 63, 11);
	private static Position f_43_1 = new Position(469, 73, 534, 63, 11);
	private static Position f_brand_8  = new Position(75, 59, 125, 49, 9);
	private static Position f_38_2 = new Position(132, 59, 177, 63, 9);
	private static Position f_39_2 = new Position(198, 50, DATE, 8, 4, 0, 8);
	private static Position f_40_2 = new Position(220, 59, 255, 49, 9);
	private static Position f_41_2 = new Position(275, 59, 340, 49, 11);
	private static Position f_42_2 = new Position(372, 59, 437, 49, 11);
	private static Position f_43_2 = new Position(469, 59, 534, 49, 11);
	private static Position f_41_total = new Position(275, 46, 340, 36, 11);
	private static Position f_42_total = new Position(372, 46, 437, 36, 11);
	private static Position f_43_total = new Position(469, 46, 534, 36, 11);
	@Override
	public Collection<?> getReprotData() {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}
}
