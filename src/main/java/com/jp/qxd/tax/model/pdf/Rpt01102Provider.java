package com.jp.qxd.tax.model.pdf;

import java.util.Collection;

import org.springframework.stereotype.Component;

@Component
public class Rpt01102Provider extends RptBaseProvider {

	private static Position legalPersonName = new Position(425, 805, 540, 775);
	private static Position ymdFrom = new Position(340, 793, DATE, 10, 5, 0, 15);
	private static Position ymdTo = new Position(340, 781, DATE, 10, 5, 0, 15);
	private static Position f_1 = new Position(234, 759, 294, 749, 10);
	private static Position f_2 = new Position(234, 718, 294, 708, 10);
	private static Position f_3 = new Position(234, 678, 294, 668, 10);
	private static Position f_4 = new Position(234, 638, 294, 628, 10);
	private static Position f_5 = new Position(252, 602, 278, 592, 10);
	private static Position f_6 = new Position(234, 557, 294, 547, 10);
	private static Position f_7 = new Position(234, 517, 294, 507, 10);
	private static Position f_8 = new Position(234, 477, 294, 467, 10);
	private static Position f_9 = new Position(483, 762, 533, 752, 10);
	private static Position f_10 = new Position(483, 729, 533, 719, 10);
	private static Position f_11 = new Position(483, 695, 533, 685, 10);
	private static Position f_12 = new Position(483, 662, 533, 652, 10);
	private static Position f_13 = new Position(483, 627, 533, 617, 10);
	private static Position f_14 = new Position(483, 594, 533, 584, 10);
	private static Position f_15 = new Position(483, 560, 533, 550, 10);
	private static Position f_16 = new Position(483, 524, 533, 514, 10);
	private static Position f_17 = new Position(483, 480, 533, 470, 10);
	private static Position f_account_1 = new Position(60, 345, 100, 335, 8);
	private static Position f_18_1 = new Position(108, 345, 148, 335, 9);
	private static Position f_19_1 = new Position(157, 345, 197, 335, 9);
	private static Position f_20_1 = new Position(206, 345, 246, 335, 9);
	private static Position f_21_1 = new Position(255, 345, 295, 335, 9);
	private static Position f_22_1 = new Position(304, 345, 344, 335, 9);
	private static Position f_23_1 = new Position(352, 345, 392, 335, 9);
	private static Position f_24_1 = new Position(401, 345, 441, 335, 9);
	private static Position f_25_1 = new Position(450, 345, 490, 335, 9);
	private static Position f_26_1 = new Position(498, 345, 538, 335, 9);
	private static Position f_account_2 = new Position(60, 326, 100, 316, 8);
	private static Position f_18_2 = new Position(108, 326, 148, 316, 9);
	private static Position f_19_2 = new Position(157, 326, 197, 316, 9);
	private static Position f_20_2 = new Position(206, 326, 246, 316, 9);
	private static Position f_21_2 = new Position(255, 326, 295, 316, 9);
	private static Position f_22_2 = new Position(304, 326, 344, 316, 9);
	private static Position f_23_2 = new Position(352, 326, 392, 316, 9);
	private static Position f_24_2 = new Position(401, 326, 441, 316, 9);
	private static Position f_25_2 = new Position(450, 326, 490, 316, 9);
	private static Position f_26_2 = new Position(498, 326, 538, 316, 9);
	private static Position f_account_3 = new Position(60, 305, 100, 295, 8);
	private static Position f_18_3 = new Position(108, 305, 148, 295, 9);
	private static Position f_19_3 = new Position(157, 305, 197, 295, 9);
	private static Position f_20_3 = new Position(206, 305, 246, 295, 9);
	private static Position f_21_3 = new Position(255, 305, 295, 295, 9);
	private static Position f_22_3 = new Position(304, 305, 344, 295, 9);
	private static Position f_23_3 = new Position(352, 305, 392, 295, 9);
	private static Position f_24_3 = new Position(401, 305, 441, 295, 9);
	private static Position f_25_3 = new Position(450, 305, 490, 295, 9);
	private static Position f_26_3 = new Position(498, 305, 538, 295, 9);
	private static Position f_account_4 = new Position(60, 285, 100, 275, 8);
	private static Position f_18_4 = new Position(108, 285, 148, 275, 9);
	private static Position f_19_4 = new Position(157, 285, 197, 275, 9);
	private static Position f_20_4 = new Position(206, 285, 246, 275, 9);
	private static Position f_21_4 = new Position(255, 285, 295, 275, 9);
	private static Position f_22_4 = new Position(304, 285, 344, 275, 9);
	private static Position f_23_4 = new Position(352, 285, 392, 275, 9);
	private static Position f_24_4 = new Position(401, 285, 441, 275, 9);
	private static Position f_25_4 = new Position(450, 285, 490, 275, 9);
	private static Position f_26_4 = new Position(498, 285, 538, 275, 9);
	private static Position f_account_5 = new Position(60, 265, 100, 255, 8);
	private static Position f_18_5 = new Position(108, 265, 148, 255, 9);
	private static Position f_19_5 = new Position(157, 265, 197, 255, 9);
	private static Position f_20_5 = new Position(206, 265, 246, 255, 9);
	private static Position f_21_5 = new Position(255, 265, 295, 255, 9);
	private static Position f_22_5 = new Position(304, 265, 344, 255, 9);
	private static Position f_23_5 = new Position(352, 265, 392, 255, 9);
	private static Position f_24_5 = new Position(401, 265, 441, 255, 9);
	private static Position f_25_5 = new Position(450, 265, 490, 255, 9);
	private static Position f_26_5 = new Position(498, 265, 538, 255, 9);
	private static Position f_account_6 = new Position(60, 245, 100, 235, 8);
	private static Position f_18_6 = new Position(108, 245, 148, 235, 9);
	private static Position f_19_6 = new Position(157, 245, 197, 235, 9);
	private static Position f_20_6 = new Position(206, 245, 246, 235, 9);
	private static Position f_21_6 = new Position(255, 245, 295, 235, 9);
	private static Position f_22_6 = new Position(304, 245, 344, 235, 9);
	private static Position f_23_6 = new Position(352, 245, 392, 235, 9);
	private static Position f_24_6 = new Position(401, 245, 441, 235, 9);
	private static Position f_25_6 = new Position(450, 245, 490, 235, 9);
	private static Position f_26_6 = new Position(498, 245, 538, 235, 9);
	private static Position f_account_7 = new Position(60, 225, 100, 215, 8);
	private static Position f_18_7 = new Position(108, 225, 148, 215, 9);
	private static Position f_19_7 = new Position(157, 225, 197, 215, 9);
	private static Position f_20_7 = new Position(206, 225, 246, 215, 9);
	private static Position f_21_7 = new Position(255, 225, 295, 215, 9);
	private static Position f_22_7 = new Position(304, 225, 344, 215, 9);
	private static Position f_23_7 = new Position(352, 225, 392, 215, 9);
	private static Position f_24_7 = new Position(401, 225, 441, 215, 9);
	private static Position f_25_7 = new Position(450, 225, 490, 215, 9);
	private static Position f_26_7 = new Position(498, 225, 538, 215, 9);
	private static Position f_18_8 = new Position(108, 205, 148, 195, 9);
	private static Position f_19_8 = new Position(157, 205, 197, 195, 9);
	private static Position f_20_8 = new Position(206, 205, 246, 195, 9);
	private static Position f_21_8 = new Position(255, 205, 295, 195, 9);
	private static Position f_22_8 = new Position(304, 205, 344, 195, 9);
	private static Position f_23_8 = new Position(352, 205, 392, 195, 9);
	private static Position f_24_8 = new Position(401, 205, 441, 195, 9);
	private static Position f_25_8_u = new Position(450, 209, 488, 200, 8);
	private static Position f_25_8_d = new Position(450, 200, 488, 191, 8);
	private static Position f_26_8 = new Position(498, 205, 538, 195, 9);
	private static Position f_27 = new Position(230, 137, 285, 127, 10);
	private static Position f_28 = new Position(230, 77, 285, 67, 10);
	private static Position f_29 = new Position(475, 137, 530, 127, 10);
	private static Position f_30 = new Position(475, 77, 530, 67, 10);

	@Override
	public Collection<?> getReprotData() {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}
}
