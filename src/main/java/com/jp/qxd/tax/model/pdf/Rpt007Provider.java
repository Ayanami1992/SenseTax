package com.jp.qxd.tax.model.pdf;

import java.util.Collection;

import org.springframework.stereotype.Component;

@Component
public class Rpt007Provider extends RptBaseProvider {

	private static Position legalPersonName = new Position(435, 782, 550, 752);
	private static Position ymdFrom = new Position(349, 770, DATE, 10, 5, 0, 18);
	private static Position ymdTo = new Position(349, 758, DATE, 10, 5, 0, 18);
	private static Position f_1 = new Position(230, 735, 295, 725, 10);
	private static Position f_2 = new Position(475, 735, 540, 725, 10);
	private static Position f_date_1_from = new Position(87, 665, STRINGDATE, 8, 4, 0, 14);
	private static Position f_date_1_to = new Position(87, 656, STRINGDATE, 8, 4, 0, 14);
	private static Position f_3_1 = new Position(280, 668, 345, 658, 10);
	private static Position f_4_1 = new Position(380, 668, 445, 658, 10);
	private static Position f_date_2_from = new Position(87, 645, STRINGDATE, 8, 4, 0, 14);
	private static Position f_date_2_to = new Position(87, 636, STRINGDATE, 8, 4, 0, 14);
	private static Position f_3_2 = new Position(280, 649, 345, 639, 10);
	private static Position f_4_2 = new Position(380, 649, 445, 639, 10);
	private static Position f_5_2 = new Position(480, 649, 555, 639, 10);
	private static Position f_date_3_from = new Position(87, 625, STRINGDATE, 8, 4, 0, 14);
	private static Position f_date_3_to = new Position(87, 616, STRINGDATE, 8, 4, 0, 14);
	private static Position f_3_3 = new Position(280, 628, 345, 618, 10);
	private static Position f_4_3 = new Position(380, 628, 445, 618, 10);
	private static Position f_5_3 = new Position(480, 628, 555, 618, 10);
	private static Position f_date_4_from = new Position(87, 605, STRINGDATE, 8, 4, 0, 14);
	private static Position f_date_4_to = new Position(87, 596, STRINGDATE, 8, 4, 0, 14);
	private static Position f_3_4 = new Position(280, 608, 345, 598, 10);
	private static Position f_4_4 = new Position(380, 608, 445, 598, 10);
	private static Position f_5_4 = new Position(480, 608, 555, 598, 10);
	private static Position f_date_5_from = new Position(87, 585, STRINGDATE, 8, 4, 0, 14);
	private static Position f_date_5_to = new Position(87, 576, STRINGDATE, 8, 4, 0, 14);
	private static Position f_3_5 = new Position(280, 588, 345, 578, 10);
	private static Position f_4_5 = new Position(380, 588, 445, 578, 10);
	private static Position f_5_5 = new Position(480, 588, 555, 578, 10);
	private static Position f_date_6_from = new Position(87, 565, STRINGDATE, 8, 4, 0, 14);
	private static Position f_date_6_to = new Position(87, 555, STRINGDATE, 8, 4, 0, 14);
	private static Position f_3_6 = new Position(280, 568, 345, 558, 10);
	private static Position f_4_6 = new Position(380, 568, 445, 558, 10);
	private static Position f_5_6 = new Position(480, 568, 555, 558, 10);
	private static Position f_date_7_from = new Position(87, 545, STRINGDATE, 8, 4, 0, 14);
	private static Position f_date_7_to = new Position(87, 535, STRINGDATE, 8, 4, 0, 14);
	private static Position f_3_7 = new Position(280, 548, 345, 538, 10);
	private static Position f_4_7 = new Position(380, 548, 445, 538, 10);
	private static Position f_5_7 = new Position(480, 548, 555, 538, 10);
	private static Position f_date_8_from = new Position(87, 524, STRINGDATE, 8, 4, 0, 14);
	private static Position f_date_8_to = new Position(87, 515, STRINGDATE, 8, 4, 0, 14);
	private static Position f_3_8 = new Position(280, 528, 345, 518, 10);
	private static Position f_4_8 = new Position(380, 528, 445, 518, 10);
	private static Position f_5_8 = new Position(480, 528, 555, 518, 10);
	private static Position f_date_9_from = new Position(87, 504, STRINGDATE, 8, 4, 0, 14);
	private static Position f_date_9_to = new Position(87, 495, STRINGDATE, 8, 4, 0, 14);
	private static Position f_3_9 = new Position(280, 508, 345, 498, 10);
	private static Position f_4_9 = new Position(380, 508, 445, 498, 10);
	private static Position f_5_9 = new Position(480, 508, 555, 498, 10);
	private static Position f_date_10_from = new Position(87, 484, STRINGDATE, 8, 4, 0, 14);
	private static Position f_date_10_to = new Position(87, 475, STRINGDATE, 8, 4, 0, 14);
	private static Position f_3_10 = new Position(280, 488, 345, 478, 10);
	private static Position f_4_10 = new Position(380, 488, 445, 478, 10);
	private static Position f_5_10 = new Position(480, 488, 555, 478, 10);
	private static Position f_total_1 = new Position(280, 467, 345, 457, 10);
	private static Position f_total_2 = new Position(380, 467, 445, 457, 10);
	private static Position f_total_3 = new Position(480, 467, 555, 457, 10);
	private static Position f_17 = new Position(280, 447, 345, 437, 10);
	private static Position f_18_1 = new Position(280, 426, 345, 416, 10);
	private static Position f_18_2 = new Position(380, 426, 445, 416, 10);
	private static Position f_18_3 = new Position(480, 426, 555, 416, 10);
	private static Position f_19_1 = new Position(280, 405, 345, 395, 10);
	private static Position f_19_2 = new Position(380, 405, 445, 395, 10);
	private static Position f_19_3 = new Position(480, 405, 555, 395, 10);
	private static Position f_total = new Position(480, 386, 555, 376, 10);
	private static Position f_20 = new Position(280, 341, 345, 331, 10);
	private static Position f_21_date = new Position(485, 332, DATE, 10, 5, 0, 20);
	private static Position f_6_3 = new Position(480, 288, 555, 278, 10);
	private static Position f_7_1 = new Position(280, 268, 345, 258, 10);
	private static Position f_7_2 = new Position(380, 268, 445, 258, 10);
	private static Position f_7_3 = new Position(480, 268, 555, 258, 10);
	private static Position f_8_1 = new Position(280, 248, 345, 238, 10);
	private static Position f_8_2 = new Position(380, 248, 445, 238, 10);
	private static Position f_8_3 = new Position(480, 248, 555, 238, 10);
	private static Position f_9_1 = new Position(280, 227, 345, 217, 10);
	private static Position f_9_2 = new Position(380, 227, 445, 217, 10);
	private static Position f_9_3 = new Position(480, 227, 555, 217, 10);
	private static Position f_10_1 = new Position(280, 206, 345, 196, 10);
	private static Position f_10_2 = new Position(380, 206, 445, 196, 10);
	private static Position f_10_3 = new Position(480, 206, 555, 196, 10);
	private static Position f_11_1 = new Position(280, 186, 345, 176, 10);
	private static Position f_11_2 = new Position(380, 186, 445, 176, 10);
	private static Position f_11_3 = new Position(480, 186, 555, 176, 10);
	private static Position f_12_1 = new Position(280, 166, 345, 156, 10);
	private static Position f_12_2 = new Position(380, 166, 445, 156, 10);
	private static Position f_12_3 = new Position(480, 166, 555, 156, 10);
	private static Position f_13_1 = new Position(280, 146, 345, 136, 10);
	private static Position f_13_2 = new Position(380, 146, 445, 136, 10);
	private static Position f_13_3 = new Position(480, 146, 555, 136, 10);
	private static Position f_14_3 = new Position(480, 126, 555, 116, 10);
	private static Position f_15_3 = new Position(480, 106, 555, 96, 10);
	private static Position f_16_3 = new Position(480, 85, 555, 75, 10);

	@Override
	public Collection<?> getReprotData() {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}
}
