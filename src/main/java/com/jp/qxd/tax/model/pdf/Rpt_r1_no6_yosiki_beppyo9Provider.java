package com.jp.qxd.tax.model.pdf;

import java.util.Collection;

import org.springframework.stereotype.Component;

@Component
public class Rpt_r1_no6_yosiki_beppyo9Provider extends RptBaseProvider {

	private static Position legalPersonName = new Position(437, 807, 547, 780);
	private static Position ymdFrom = new Position(295, 797, DATE, 11, 5, 0, 40);
	private static Position ymdTo = new Position(295, 779, DATE, 11, 5, 0, 40);

	private static Position f_1 = new Position(240, 763, 305, 753, 11);
	private static Position f_2 = new Position(465, 763, 530, 753, 11);
	private static Position f_3_1 = new Position(300, 697, 365, 687, 11);
	private static Position f_4_1 = new Position(387, 697, 452, 687, 11);
	private static Position f_fiscalYearFrom_1 = new Position(102, 697, STRINGDATE, 11, 5, 0, 25);
	private static Position f_fiscalYearTo_1 = new Position(102, 681, STRINGDATE, 11, 5, 0, 25);
//	private static Position f_division_1 = new Position(569, 619, NUMBER, 8, 9, 0);
	private static Position f_3_2 = new Position(300, 665, 365, 655, 11);
	private static Position f_4_2 = new Position(387, 665, 452, 655, 11);
	private static Position f_5_2 = new Position(474, 665, 539, 655, 11);
	private static Position f_fiscalYearFrom_2 = new Position(102, 664, STRINGDATE, 11, 5, 0, 25);
	private static Position f_fiscalYearTo_2 = new Position(102, 648, STRINGDATE, 11, 5, 0, 25);
//	private static Position f_division_2 = new Position(569, 619, NUMBER, 8, 9, 0);
	private static Position f_3_3 = new Position(300, 633, 365, 623, 11);
	private static Position f_4_3 = new Position(387, 633, 452, 623, 11);
	private static Position f_5_3 = new Position(474, 633, 539, 623, 11);
	private static Position f_fiscalYearFrom_3 = new Position(102, 631, STRINGDATE, 11, 5, 0, 25);
	private static Position f_fiscalYearTo_3 = new Position(102, 615, STRINGDATE, 11, 5, 0, 25);
//	private static Position f_division_3 = new Position(569, 619, NUMBER, 8, 9, 0);
	private static Position f_3_4 = new Position(300, 601, 365, 591, 11);
	private static Position f_4_4 = new Position(387, 601, 452, 591, 11);
	private static Position f_5_4 = new Position(474, 601, 539, 591, 11);
	private static Position f_fiscalYearFrom_4 = new Position(102, 599, STRINGDATE, 11, 5, 0, 25);
	private static Position f_fiscalYearTo_4 = new Position(102, 583, STRINGDATE, 11, 5, 0, 25);
//	private static Position f_division_4 = new Position(569, 619, NUMBER, 8, 9, 0);
	private static Position f_3_5 = new Position(300, 568, 365, 558, 11);
	private static Position f_4_5 = new Position(387, 568, 452, 558, 11);
	private static Position f_5_5 = new Position(474, 568, 539, 558, 11);
	private static Position f_fiscalYearFrom_5 = new Position(102, 567, STRINGDATE, 11, 5, 0, 25);
	private static Position f_fiscalYearTo_5 = new Position(102, 550, STRINGDATE, 11, 5, 0, 25);
//	private static Position f_division_5 = new Position(569, 619, NUMBER, 8, 9, 0);
	private static Position f_3_6 = new Position(300, 535, 365, 525, 11);
	private static Position f_4_6 = new Position(387, 535, 452, 525, 11);
	private static Position f_5_6 = new Position(474, 535, 539, 525, 11);
	private static Position f_fiscalYearFrom_6 = new Position(102, 535, STRINGDATE, 11, 5, 0, 25);
	private static Position f_fiscalYearTo_6 = new Position(102, 518, STRINGDATE, 11, 5, 0, 25);
//	private static Position f_division_6 = new Position(569, 619, NUMBER, 8, 9, 0);
	private static Position f_3_7 = new Position(300, 503, 365, 493, 11);
	private static Position f_4_7 = new Position(387, 503, 452, 493, 11);
	private static Position f_5_7 = new Position(474, 503, 539, 493, 11);
	private static Position f_fiscalYearFrom_7 = new Position(102, 502, STRINGDATE, 11, 5, 0, 25);
	private static Position f_fiscalYearTo_7 = new Position(102, 485, STRINGDATE, 11, 5, 0, 25);
//	private static Position f_division_7 = new Position(569, 619, NUMBER, 8, 9, 0);
	private static Position f_3_8 = new Position(300, 470, 365, 460, 11);
	private static Position f_4_8 = new Position(387, 470, 452, 460, 11);
	private static Position f_5_8 = new Position(474, 470, 539, 460, 11);
	private static Position f_fiscalYearFrom_8 = new Position(102, 469, STRINGDATE, 11, 5, 0, 25);
	private static Position f_fiscalYearTo_8 = new Position(102, 453, STRINGDATE, 11, 5, 0, 25);
//	private static Position f_division_8 = new Position(569, 619, NUMBER, 8, 9, 0);
	private static Position f_3_9 = new Position(300, 438, 365, 428, 11);
	private static Position f_4_9 = new Position(387, 438, 452, 428, 11);
	private static Position f_5_9 = new Position(474, 438, 539, 428, 11);
	private static Position f_fiscalYearFrom_9 = new Position(102, 437, STRINGDATE, 11, 5, 0, 25);
	private static Position f_fiscalYearTo_9 = new Position(102, 420, STRINGDATE, 11, 5, 0, 25);
//	private static Position f_division_9 = new Position(569, 619, NUMBER, 8, 9, 0);
	private static Position f_3_10 = new Position(300, 405, 365, 395, 11);
	private static Position f_4_10 = new Position(387, 405, 452, 395, 11);
	private static Position f_5_10 = new Position(474, 405, 539, 395, 11);
	private static Position f_fiscalYearFrom_10 = new Position(102, 404, STRINGDATE, 11, 5, 0, 25);
	private static Position f_fiscalYearTo_10 = new Position(102, 388, STRINGDATE, 11, 5, 0, 25);
//	private static Position f_division_9 = new Position(569, 619, NUMBER, 8, 9, 0);
	private static Position f_3_total = new Position(300, 373, 365, 363, 11);
	private static Position f_4_total = new Position(387, 373, 452, 363, 11);
	private static Position f_5_total = new Position(474, 373, 539, 363, 11);
//	private static Position f_division = new Position(569, 619, NUMBER, 8, 9, 0);
	private static Position f_3_11 = new Position(300, 340, 365, 330, 11);
	private static Position f_3_12 = new Position(300, 308, 365, 298, 11);
	private static Position f_5_12 = new Position(474, 308, 539, 298, 11);
	private static Position f_3_13 = new Position(300, 275, 365, 265, 11);
	private static Position f_5_13 = new Position(474, 275, 539, 265, 11);
	private static Position f_5_14 = new Position(474, 241, 539, 231, 11);
	private static Position f_6 = new Position(220, 160, 285, 150, 11);
	private static Position f_7 = new Position(220, 128, 285, 118, 11);
	private static Position f_8 = new Position(220, 96, 285, 86, 11);
	private static Position f_9 = new Position(470, 160, 535, 150, 11);
	private static Position f_10 = new Position(470, 128, 535, 118, 11);
	private static Position f_11 = new Position(200, 193, 290, 183, 10);
	private static Position f_12 = new Position(470, 183, DATE, 11, 5, 0, 28);

	@Override
	public Collection<?> getReprotData() {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}
}
