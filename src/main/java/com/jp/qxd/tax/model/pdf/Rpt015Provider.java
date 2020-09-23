package com.jp.qxd.tax.model.pdf;

import java.util.Collection;

import org.springframework.stereotype.Component;

@Component
public class Rpt015Provider extends RptBaseProvider {

	private static Position legalPersonName = new Position(440, 799, 560, 769);
	private static Position ymdFrom = new Position(353, 787, DATE, 10, 5, 0, 16);
	private static Position ymdTo = new Position(353, 774, DATE, 10, 5, 0, 16);
	private static Position f_1 = new Position(240, 751, 305, 741, 11);
	private static Position f_2 = new Position(240, 706, 305, 696, 11);
	private static Position f_3 = new Position(240, 662, 305, 652, 11);
	private static Position f_4 = new Position(480, 740, 545, 730, 11);
	private static Position f_5 = new Position(480, 674, 545, 664, 11);
	private static Position f_6_1 = new Position(215, 544, 280, 534, 11);
	private static Position f_7_1 = new Position(307, 544, 372, 534, 11);
	private static Position f_8_1 = new Position(398, 544, 463, 534, 11);
	private static Position f_9_1 = new Position(490, 544, 555, 534, 11);
	private static Position f_subject_2 = new Position(90, 500, 190, 490, 11);
	private static Position f_6_2 = new Position(215, 500, 280, 490, 11);
	private static Position f_7_2 = new Position(307, 500, 372, 490, 11);
	private static Position f_8_2 = new Position(398, 500, 463, 490, 11);
	private static Position f_9_2 = new Position(490, 500, 555, 490, 11);
	private static Position f_subject_3 = new Position(90, 456, 190, 446, 11);
	private static Position f_6_3 = new Position(215, 456, 280, 446, 11);
	private static Position f_7_3 = new Position(307, 456, 372, 446, 11);
	private static Position f_8_3 = new Position(398, 456, 463, 446, 11);
	private static Position f_9_3 = new Position(490, 456, 555, 446, 11);
	private static Position f_subject_4 = new Position(90, 412, 190, 402, 11);
	private static Position f_6_4 = new Position(215, 412, 280, 402, 11);
	private static Position f_7_4 = new Position(307, 412, 372, 402, 11);
	private static Position f_8_4 = new Position(398, 412, 463, 402, 11);
	private static Position f_9_4 = new Position(490, 412, 555, 402, 11);
	private static Position f_subject_5 = new Position(90, 368, 190, 358, 11);
	private static Position f_6_5 = new Position(215, 368, 280, 358, 11);
	private static Position f_7_5 = new Position(307, 368, 372, 358, 11);
	private static Position f_8_5 = new Position(398, 368, 463, 358, 11);
	private static Position f_9_5 = new Position(490, 368, 555, 358, 11);
	private static Position f_subject_6 = new Position(90, 323, 190, 313, 11);
	private static Position f_6_6 = new Position(215, 323, 280, 313, 11);
	private static Position f_7_6 = new Position(307, 323, 372, 313, 11);
	private static Position f_8_6 = new Position(398, 323, 463, 313, 11);
	private static Position f_9_6 = new Position(490, 323, 555, 313, 11);
	private static Position f_subject_7 = new Position(90, 280, 190, 270, 11);
	private static Position f_6_7 = new Position(215, 280, 280, 270, 11);
	private static Position f_7_7 = new Position(307, 280, 372, 270, 11);
	private static Position f_8_7 = new Position(398, 280, 463, 270, 11);
	private static Position f_9_7 = new Position(490, 280, 555, 270, 11);
	private static Position f_subject_8 = new Position(90, 235, 190, 225, 11);
	private static Position f_6_8 = new Position(215, 235, 280, 225, 11);
	private static Position f_7_8 = new Position(307, 235, 372, 225, 11);
	private static Position f_8_8 = new Position(398, 235, 463, 225, 11);
	private static Position f_9_8 = new Position(490, 235, 555, 225, 11);
	private static Position f_subject_9 = new Position(90, 193, 190, 183, 11);
	private static Position f_6_9 = new Position(215, 193, 280, 183, 11);
	private static Position f_7_9 = new Position(307, 193, 372, 183, 11);
	private static Position f_8_9 = new Position(398, 193, 463, 183, 11);
	private static Position f_9_9 = new Position(490, 193, 555, 183, 11);
	private static Position f_subject_10 = new Position(90, 147, 190, 137, 11);
	private static Position f_6_10 = new Position(215, 147, 280, 137, 11);
	private static Position f_7_10 = new Position(307, 147, 372, 137, 11);
	private static Position f_8_10 = new Position(398, 147, 463, 137, 11);
	private static Position f_9_10 = new Position(490, 147, 555, 137, 11);
	private static Position f_subject_11 = new Position(90, 104, 190, 94, 11);
	private static Position f_6_11 = new Position(215, 104, 280, 94, 11);
	private static Position f_7_11 = new Position(307, 104, 372, 94, 11);
	private static Position f_8_11 = new Position(398, 104, 463, 94, 11);
	private static Position f_9_11 = new Position(490, 104, 555, 94, 11);
	private static Position f_6_total = new Position(215, 60, 280, 50, 11);
	private static Position f_7_total = new Position(307, 60, 372, 50, 11);
	private static Position f_8_total = new Position(398, 60, 463, 50, 11);
	private static Position f_9_total = new Position(490, 60, 555, 50, 11);

	@Override
	public Collection<?> getReprotData() {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}
}
