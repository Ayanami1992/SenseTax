package com.jp.qxd.tax.model.pdf;

import java.util.Collection;

import org.springframework.stereotype.Component;

@Component
public class Rpt00501Provider extends RptBaseProvider {

	private static Position legalPersonName = new Position(440, 790, 565, 770);
	private static Position ymdFrom = new Position(356, 782, DATE, 10, 4, 0, 16);
	private static Position ymdTo = new Position(356, 771, DATE, 10, 4, 0, 16);
	private static Position f_1_1 = new Position(235, 706, 290, 696, 10);
	private static Position f_1_2 = new Position(320, 706, 375, 696, 10);
	private static Position f_1_3 = new Position(405, 706, 460, 696, 10);
	private static Position f_1_4 = new Position(490, 706, 545, 696, 10);
	private static Position f_2_name = new Position(110, 691, 150, 681, 9);
	private static Position f_2_1 = new Position(235, 691, 290, 681, 10);
	private static Position f_2_2 = new Position(320, 691, 375, 681, 10);
	private static Position f_2_3 = new Position(405, 691, 460, 681, 10);
	private static Position f_2_4 = new Position(490, 691, 545, 681, 10);
	private static Position f_3_name = new Position(110, 675, 200, 665, 9);
	private static Position f_3_1 = new Position(235, 675, 290, 665, 10);
	private static Position f_3_2 = new Position(320, 675, 375, 665, 10);
	private static Position f_3_3 = new Position(405, 675, 460, 665, 10);
	private static Position f_3_4 = new Position(490, 675, 545, 665, 10);
	private static Position f_4_name = new Position(110, 659, 200, 649, 9);
	private static Position f_4_1 = new Position(235, 659, 290, 649, 10);
	private static Position f_4_2 = new Position(320, 659, 375, 649, 10);
	private static Position f_4_3 = new Position(405, 659, 460, 649, 10);
	private static Position f_4_4 = new Position(490, 659, 545, 649, 10);
	private static Position f_5_name = new Position(110, 644, 200, 634, 9);
	private static Position f_5_1 = new Position(235, 644, 290, 634, 10);
	private static Position f_5_2 = new Position(320, 644, 375, 634, 10);
	private static Position f_5_3 = new Position(405, 644, 460, 634, 10);
	private static Position f_5_4 = new Position(490, 644, 545, 634, 10);
	private static Position f_6_name = new Position(110, 629, 200, 619, 9);
	private static Position f_6_1 = new Position(235, 629, 290, 619, 10);
	private static Position f_6_2 = new Position(320, 629, 375, 619, 10);
	private static Position f_6_3 = new Position(405, 629, 460, 619, 10);
	private static Position f_6_4 = new Position(490, 629, 545, 619, 10);
	private static Position f_7_name = new Position(110, 613, 200, 603, 9);
	private static Position f_7_1 = new Position(235, 613, 290, 603, 10);
	private static Position f_7_2 = new Position(320, 613, 375, 603, 10);
	private static Position f_7_3 = new Position(405, 613, 460, 603, 10);
	private static Position f_7_4 = new Position(490, 613, 545, 603, 10);
	private static Position f_8_name = new Position(110, 598, 200, 588, 9);
	private static Position f_8_1 = new Position(235, 598, 290, 588, 10);
	private static Position f_8_2 = new Position(320, 598, 375, 588, 10);
	private static Position f_8_3 = new Position(405, 598, 460, 588, 10);
	private static Position f_8_4 = new Position(490, 598, 545, 588, 10);
	private static Position f_9_name = new Position(110, 582, 200, 572, 9);
	private static Position f_9_1 = new Position(235, 582, 290, 572, 10);
	private static Position f_9_2 = new Position(320, 582, 375, 572, 10);
	private static Position f_9_3 = new Position(405, 582, 460, 572, 10);
	private static Position f_9_4 = new Position(490, 582, 545, 572, 10);
	private static Position f_10_name = new Position(110, 566, 200, 556, 9);
	private static Position f_10_1 = new Position(235, 566, 290, 556, 10);
	private static Position f_10_2 = new Position(320, 566, 375, 556, 10);
	private static Position f_10_3 = new Position(405, 566, 460, 556, 10);
	private static Position f_10_4 = new Position(490, 566, 545, 556, 10);
	private static Position f_11_name = new Position(110, 551, 200, 541, 9);
	private static Position f_11_1 = new Position(235, 551, 290, 541, 10);
	private static Position f_11_2 = new Position(320, 551, 375, 541, 10);
	private static Position f_11_3 = new Position(405, 551, 460, 541, 10);
	private static Position f_11_4 = new Position(490, 551, 545, 541, 10);
	private static Position f_12_name = new Position(110, 535, 200, 525, 9);
	private static Position f_12_1 = new Position(235, 535, 290, 525, 10);
	private static Position f_12_2 = new Position(320, 535, 375, 525, 10);
	private static Position f_12_3 = new Position(405, 535, 460, 525, 10);
	private static Position f_12_4 = new Position(490, 535, 545, 525, 10);
	private static Position f_13_name = new Position(110, 519, 200, 509, 9);
	private static Position f_13_1 = new Position(235, 519, 290, 509, 10);
	private static Position f_13_2 = new Position(320, 519, 375, 509, 10);
	private static Position f_13_3 = new Position(405, 519, 460, 509, 10);
	private static Position f_13_4 = new Position(490, 519, 545, 509, 10);
	private static Position f_14_1 = new Position(235, 503, 290, 493, 10);
	private static Position f_14_2 = new Position(320, 503, 375, 493, 10);
	private static Position f_14_3 = new Position(405, 503, 460, 493, 10);
	private static Position f_14_4 = new Position(490, 503, 545, 493, 10);
	private static Position f_15_1 = new Position(235, 488, 290, 478, 10);
	private static Position f_15_2 = new Position(320, 488, 375, 478, 10);
	private static Position f_15_3 = new Position(405, 488, 460, 478, 10);
	private static Position f_15_4 = new Position(490, 488, 545, 478, 10);
	private static Position f_16_1 = new Position(235, 472, 290, 462, 10);
	private static Position f_16_2 = new Position(320, 472, 375, 462, 10);
	private static Position f_16_3 = new Position(405, 472, 460, 462, 10);
	private static Position f_16_4 = new Position(490, 472, 545, 462, 10);
	private static Position f_17_1 = new Position(235, 456, 290, 446, 10);
	private static Position f_17_2 = new Position(320, 456, 375, 446, 10);
	private static Position f_17_3 = new Position(405, 456, 460, 446, 10);
	private static Position f_17_4 = new Position(490, 456, 545, 446, 10);
	private static Position f_18_1 = new Position(235, 441, 290, 431, 10);
	private static Position f_18_2 = new Position(320, 441, 375, 431, 10);
	private static Position f_18_3 = new Position(405, 441, 460, 431, 10);
	private static Position f_18_4 = new Position(490, 441, 545, 431, 10);
	private static Position f_19_1 = new Position(235, 425, 290, 415, 10);
	private static Position f_19_2 = new Position(320, 425, 375, 415, 10);
	private static Position f_19_3 = new Position(405, 425, 460, 415, 10);
	private static Position f_19_4 = new Position(490, 425, 545, 415, 10);
	private static Position f_20_1 = new Position(235, 410, 290, 400, 10);
	private static Position f_20_2 = new Position(320, 410, 375, 400, 10);
	private static Position f_20_3 = new Position(405, 410, 460, 400, 10);
	private static Position f_20_4 = new Position(490, 410, 545, 400, 10);
	private static Position f_21_1 = new Position(235, 394, 290, 384, 10);
	private static Position f_21_2 = new Position(320, 394, 375, 384, 10);
	private static Position f_21_3 = new Position(405, 394, 460, 384, 10);
	private static Position f_21_4 = new Position(490, 394, 545, 384, 10);
	private static Position f_22_1 = new Position(235, 378, 290, 368, 10);
	private static Position f_22_2 = new Position(320, 378, 375, 368, 10);
	private static Position f_22_3 = new Position(405, 378, 460, 368, 10);
	private static Position f_22_4 = new Position(490, 378, 545, 368, 10);
	private static Position f_23_name = new Position(110, 363, 200, 353, 9);
	private static Position f_23_1 = new Position(235, 363, 290, 353, 10);
	private static Position f_23_2 = new Position(320, 363, 375, 353, 10);
	private static Position f_23_3 = new Position(405, 363, 460, 353, 10);
	private static Position f_23_4 = new Position(490, 363, 545, 353, 10);
	private static Position f_24_name = new Position(110, 348, 200, 338, 9);
	private static Position f_24_1 = new Position(235, 348, 290, 338, 10);
	private static Position f_24_2 = new Position(320, 348, 375, 338, 10);
	private static Position f_24_3 = new Position(405, 348, 460, 338, 10);
	private static Position f_24_4 = new Position(490, 348, 545, 338, 10);
	private static Position f_25_name = new Position(110, 332, 200, 322, 9);
	private static Position f_25_1 = new Position(235, 332, 290, 322, 10);
	private static Position f_25_2 = new Position(320, 332, 375, 322, 10);
	private static Position f_25_3 = new Position(405, 332, 460, 322, 10);
	private static Position f_25_4 = new Position(490, 332, 545, 322, 10);
	private static Position f_26_1 = new Position(235, 316, 290, 306, 10);
	private static Position f_26_2 = new Position(320, 316, 375, 306, 10);
	private static Position f_26_3 = new Position(405, 316, 460, 306, 10);
	private static Position f_26_4 = new Position(490, 316, 545, 306, 10);
	private static Position f_27_1 = new Position(235, 301, 290, 291, 10);
	private static Position f_27_2 = new Position(320, 301, 375, 291, 10);
	private static Position f_27_3 = new Position(405, 301, 460, 291, 10);
	private static Position f_27_4 = new Position(490, 301, 545, 291, 10);
	private static Position f_28_1 = new Position(240, 277, 295, 267, 10);
	private static Position f_28_2 = new Position(325, 277, 380, 267, 10);
	private static Position f_28_3_1 = new Position(425, 285, 480, 275, 10);
	private static Position f_28_3_2 = new Position(425, 269, 480, 259, 10);
	private static Position f_28_4 = new Position(495, 277, 550, 267, 10);
	private static Position f_29_1 = new Position(240, 246, 295, 236, 10);
	private static Position f_29_2 = new Position(325, 246, 380, 236, 10);
	private static Position f_29_3_1 = new Position(425, 254, 480, 244, 10);
	private static Position f_29_3_2 = new Position(425, 238, 480, 228, 10);
	private static Position f_29_4 = new Position(495, 246, 550, 236, 10);
	private static Position f_30_1 = new Position(240, 215, 295, 205, 10);
	private static Position f_30_2 = new Position(325, 215, 380, 205, 10);
	private static Position f_30_3_1 = new Position(425, 221, 480, 211, 10);
	private static Position f_30_3_2 = new Position(425, 207, 480, 197, 10);
	private static Position f_30_4 = new Position(495, 215, 550, 205, 10);
	private static Position f_31_1 = new Position(235, 191, 290, 181, 10);
	private static Position f_31_2 = new Position(320, 191, 375, 181, 10);
	private static Position f_31_3 = new Position(405, 191, 460, 181, 10);
	private static Position f_31_4 = new Position(490, 191, 545, 181, 10);
	private static Position f_32_1 = new Position(235, 117, 290, 107, 10);
	private static Position f_32_2 = new Position(320, 117, 375, 107, 10);
	private static Position f_32_3 = new Position(405, 117, 460, 107, 10);
	private static Position f_32_4 = new Position(490, 117, 545, 107, 10);
	private static Position f_33_1 = new Position(235, 101, 290, 91, 10);
	private static Position f_33_2 = new Position(320, 101, 375, 91, 10);
	private static Position f_33_3 = new Position(405, 101, 460, 91, 10);
	private static Position f_33_4 = new Position(490, 101, 545, 91, 10);
	private static Position f_34_1 = new Position(235, 86, 290, 76, 10);
	private static Position f_34_2 = new Position(320, 86, 375, 76, 10);
	private static Position f_34_3 = new Position(405, 86, 460, 76, 10);
	private static Position f_34_4 = new Position(490, 86, 545, 76, 10);
	private static Position f_35_1 = new Position(235, 71, 290, 61, 10);
	private static Position f_35_2 = new Position(320, 71, 375, 61, 10);
	private static Position f_35_3 = new Position(405, 71, 460, 61, 10);
	private static Position f_35_4 = new Position(490, 71, 545, 61, 10);
	private static Position f_36_1 = new Position(235, 55, 290, 45, 10);
	private static Position f_36_2 = new Position(320, 55, 375, 45, 10);
	private static Position f_36_3 = new Position(405, 55, 460, 45, 10);
	private static Position f_36_4 = new Position(490, 55, 545, 45, 10);
	@Override
	public Collection<?> getReprotData() {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}
}
