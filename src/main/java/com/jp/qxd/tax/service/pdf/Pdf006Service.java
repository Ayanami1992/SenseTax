package com.jp.qxd.tax.service.pdf;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jp.qxd.tax.mapper.LMapper;
import com.jp.qxd.tax.mapper.Pdf006Mapper;
import com.jp.qxd.tax.model.BaseModel;
import com.jp.qxd.tax.model.input.LModel;
import com.jp.qxd.tax.model.pdf.Rpt006Model;
import com.jp.qxd.tax.utils.CNumber;

@Service
public class Pdf006Service extends PdfBaseService {

	@Autowired
	private LMapper lmapper;

	@Autowired
	private Pdf006Mapper mapper006;

	@Transactional
	public Rpt006Model initDB(BaseModel model) throws Exception {

		if (mapper006.getModels(model).size() > 0) {
			mapper006.deleteModel(model);
		}

		Rpt006Model model006 = new Rpt006Model();
		model006.setUserId(model.getUserId());
		model006.setCompany_id(model.getCompany_id());
		model006.setYear(model.getYear());
		model006.setLegalPersonName(model.getLegalPersonName());
		model006.setYmdFrom(model.getYmdFrom());
		model006.setYmdTo(model.getYmdTo());

		Integer g6 = 0, g7 = 0, g8 = 0;
		Integer h6 = 0, h7 = 0, h8 = 0;
		Integer i6 = 0, i7 = 0, i8 = 0;

		String j15 = "", j16 = "", j17 = "", j18 = "", j19 = "";
		String k22 = "", k23 = "", k24 = "", k25 = "", k26 = "";
		String c15 = "";
		String c16 = "";
		String c17 = "";
		String c18 = "";
		String c19 = "";
		BigDecimal d15 = BigDecimal.ZERO, e15 = BigDecimal.ZERO, f15 = BigDecimal.ZERO, g15 = BigDecimal.ZERO, h15 = BigDecimal.ZERO;
		BigDecimal d16 = BigDecimal.ZERO, e16 = BigDecimal.ZERO, f16 = BigDecimal.ZERO, g16 = BigDecimal.ZERO, h16 = BigDecimal.ZERO;
		BigDecimal d17 = BigDecimal.ZERO, e17 = BigDecimal.ZERO, f17 = BigDecimal.ZERO, g17 = BigDecimal.ZERO, h17 = BigDecimal.ZERO;
		BigDecimal d18 = BigDecimal.ZERO, e18 = BigDecimal.ZERO, f18 = BigDecimal.ZERO, g18 = BigDecimal.ZERO, h18 = BigDecimal.ZERO;
		BigDecimal d19 = BigDecimal.ZERO, e19 = BigDecimal.ZERO, f19 = BigDecimal.ZERO, g19 = BigDecimal.ZERO, h19 = BigDecimal.ZERO;

		String c22 = "";
		String c23 = "";
		String c24 = "";
		String c25 = "";
		String c26 = "";
		BigDecimal d22 = BigDecimal.ZERO, e22 = BigDecimal.ZERO, f22 = BigDecimal.ZERO, g22 = BigDecimal.ZERO, h22 = BigDecimal.ZERO, i22 = BigDecimal.ZERO;
		BigDecimal d23 = BigDecimal.ZERO, e23 = BigDecimal.ZERO, f23 = BigDecimal.ZERO, g23 = BigDecimal.ZERO, h23 = BigDecimal.ZERO, i23 = BigDecimal.ZERO;
		BigDecimal d24 = BigDecimal.ZERO, e24 = BigDecimal.ZERO, f24 = BigDecimal.ZERO, g24 = BigDecimal.ZERO, h24 = BigDecimal.ZERO, i24 = BigDecimal.ZERO;
		BigDecimal d25 = BigDecimal.ZERO, e25 = BigDecimal.ZERO, f25 = BigDecimal.ZERO, g25 = BigDecimal.ZERO, h25 = BigDecimal.ZERO, i25 = BigDecimal.ZERO;
		BigDecimal d26 = BigDecimal.ZERO, e26 = BigDecimal.ZERO, f26 = BigDecimal.ZERO, g26 = BigDecimal.ZERO, h26 = BigDecimal.ZERO, i26 = BigDecimal.ZERO;

		List<? extends BaseModel> lmodels = lmapper.getModels(model);
		if (lmodels.size() > 0) {
			LModel lmodel = (LModel) lmodels.get(0);
			g6 += nullChangeInteger(lmodel.getL_f252());
			h6 += nullChangeInteger(lmodel.getL_h252());
			i6 += nullChangeInteger(lmodel.getL_j252());
			j15 = lmodel.getL_f257();
			j16 = lmodel.getL_h257();
			j17 = lmodel.getL_j257();
			j18 = lmodel.getL_l257();
			j19 = lmodel.getL_n257();
			k22 = lmodel.getL_f265();
			k23 = lmodel.getL_h265();
			k24 = lmodel.getL_j265();
			k25 = lmodel.getL_l265();
			k26 = lmodel.getL_n265();
			c15 = lmodel.getL_f256();
			model006.setF_brand_1(c15);
			d15 = new BigDecimal(nullChangeInteger(lmodel.getL_f258()));
			model006.setF_7_1(CNumber.toString(d15));
			e15 = new BigDecimal(nullChangeInteger(lmodel.getL_f259()));
			model006.setF_8_1(CNumber.toString(e15));
			f15 = new BigDecimal(nullChangeInteger(lmodel.getL_f261()));
			model006.setF_9_1(CNumber.toString(f15));
			g15 = new BigDecimal(nullChangeInteger(lmodel.getL_f262()));
			model006.setF_10_1(CNumber.toString(g15));
			c16 = lmodel.getL_h256();
			model006.setF_brand_2(c16);
			d16 = new BigDecimal(nullChangeInteger(lmodel.getL_h258()));
			model006.setF_7_2(CNumber.toString(d16));
			e16 = new BigDecimal(nullChangeInteger(lmodel.getL_h259()));
			model006.setF_8_2(CNumber.toString(e16));
			f16 = new BigDecimal(nullChangeInteger(lmodel.getL_h261()));
			model006.setF_9_2(CNumber.toString(f16));
			g16 = new BigDecimal(nullChangeInteger(lmodel.getL_h262()));
			model006.setF_10_2(CNumber.toString(g16));
			c17 = lmodel.getL_j256();
			model006.setF_brand_3(c17);
			d17 = new BigDecimal(nullChangeInteger(lmodel.getL_j258()));
			model006.setF_7_3(CNumber.toString(d17));
			e17 = new BigDecimal(nullChangeInteger(lmodel.getL_j259()));
			model006.setF_8_3(CNumber.toString(e17));
			f17 = new BigDecimal(nullChangeInteger(lmodel.getL_j261()));
			model006.setF_9_3(CNumber.toString(f17));
			g17 = new BigDecimal(nullChangeInteger(lmodel.getL_j262()));
			model006.setF_10_3(CNumber.toString(g17));
			c18 = lmodel.getL_l256();
			model006.setF_brand_4(c18);
			d18 = new BigDecimal(nullChangeInteger(lmodel.getL_l258()));
			model006.setF_7_4(CNumber.toString(d18));
			e18 = new BigDecimal(nullChangeInteger(lmodel.getL_l259()));
			model006.setF_8_4(CNumber.toString(e18));
			f18 = new BigDecimal(nullChangeInteger(lmodel.getL_l261()));
			model006.setF_9_4(CNumber.toString(f18));
			g18 = new BigDecimal(nullChangeInteger(lmodel.getL_l262()));
			model006.setF_10_4(CNumber.toString(g18));
			c19 = lmodel.getL_n256();
			model006.setF_brand_5(c19);
			d19 = new BigDecimal(nullChangeInteger(lmodel.getL_n258()));
			model006.setF_7_5(CNumber.toString(d19));
			e19 = new BigDecimal(nullChangeInteger(lmodel.getL_n259()));
			model006.setF_8_5(CNumber.toString(e19));
			f19 = new BigDecimal(nullChangeInteger(lmodel.getL_n261()));
			model006.setF_9_5(CNumber.toString(f19));
			g19 = new BigDecimal(nullChangeInteger(lmodel.getL_n262()));
			model006.setF_10_5(CNumber.toString(g19));

			c22 = lmodel.getL_f264();
			model006.setF_brand_6(c22);
			d22 = new BigDecimal(nullChangeInteger(lmodel.getL_f266()));
			model006.setF_13_1(CNumber.toString(d22));
			e22 = new BigDecimal(nullChangeInteger(lmodel.getL_f267()));
			model006.setF_14_1(CNumber.toString(e22));
			f22 = new BigDecimal(nullChangeInteger(lmodel.getL_f269()));
			model006.setF_15_1(CNumber.toString(f22));
			g22 = new BigDecimal(nullChangeInteger(lmodel.getL_f270()));
			model006.setF_16_1(CNumber.toString(g22));
			c23 = lmodel.getL_h264();
			model006.setF_brand_7(c23);
			d23 = new BigDecimal(nullChangeInteger(lmodel.getL_h266()));
			model006.setF_13_2(CNumber.toString(d23));
			e23 = new BigDecimal(nullChangeInteger(lmodel.getL_h267()));
			model006.setF_14_2(CNumber.toString(e23));
			f23 = new BigDecimal(nullChangeInteger(lmodel.getL_h269()));
			model006.setF_15_2(CNumber.toString(f23));
			g23 = new BigDecimal(nullChangeInteger(lmodel.getL_h270()));
			model006.setF_16_2(CNumber.toString(g23));
			c24 = lmodel.getL_j264();
			model006.setF_brand_8(c24);
			d24 = new BigDecimal(nullChangeInteger(lmodel.getL_j266()));
			model006.setF_13_3(CNumber.toString(d24));
			e24 = new BigDecimal(nullChangeInteger(lmodel.getL_j267()));
			model006.setF_14_3(CNumber.toString(e24));
			f24 = new BigDecimal(nullChangeInteger(lmodel.getL_j269()));
			model006.setF_15_3(CNumber.toString(f24));
			g24 = new BigDecimal(nullChangeInteger(lmodel.getL_j270()));
			model006.setF_16_3(CNumber.toString(g24));
			c25 = lmodel.getL_l264();
			model006.setF_brand_9(c25);
			d25 = new BigDecimal(nullChangeInteger(lmodel.getL_l266()));
			model006.setF_13_4(CNumber.toString(d25));
			e25 = new BigDecimal(nullChangeInteger(lmodel.getL_l267()));
			model006.setF_14_4(CNumber.toString(e25));
			f25 = new BigDecimal(nullChangeInteger(lmodel.getL_l269()));
			model006.setF_15_4(CNumber.toString(f25));
			g25 = new BigDecimal(nullChangeInteger(lmodel.getL_l270()));
			model006.setF_16_4(CNumber.toString(g25));
			c26 = lmodel.getL_n264();
			model006.setF_brand_10(c26);
			d26 = new BigDecimal(nullChangeInteger(lmodel.getL_n266()));
			model006.setF_13_5(CNumber.toString(d26));
			e26 = new BigDecimal(nullChangeInteger(lmodel.getL_n267()));
			model006.setF_14_5(CNumber.toString(e26));
			f26 = new BigDecimal(nullChangeInteger(lmodel.getL_n269()));
			model006.setF_15_5(CNumber.toString(f26));
			g26 = new BigDecimal(nullChangeInteger(lmodel.getL_n270()));
			model006.setF_16_5(CNumber.toString(g26));
		}

		BigDecimal i15 = BigDecimal.ZERO, i16 = BigDecimal.ZERO, i17 = BigDecimal.ZERO, i18 = BigDecimal.ZERO, i19 = BigDecimal.ZERO;

		i15 = this.getColi15_19(e15, g15, f15, h15);
		model006.setF_11_1(CNumber.toString(h15));
		model006.setF_12_1(CNumber.toString(i15));
		i16 = this.getColi15_19(e16, g16, f16, h16);
		model006.setF_11_2(CNumber.toString(h16));
		model006.setF_12_2(CNumber.toString(i16));
		i17 = this.getColi15_19(e17, g17, f17, h17);
		model006.setF_11_3(CNumber.toString(h17));
		model006.setF_12_3(CNumber.toString(i17));
		i18 = this.getColi15_19(e18, g18, f18, h18);
		model006.setF_11_4(CNumber.toString(h18));
		model006.setF_12_4(CNumber.toString(i18));
		i19 = this.getColi15_19(e19, g19, f19, h19);
		model006.setF_11_5(CNumber.toString(h19));
		model006.setF_12_5(CNumber.toString(i19));

		h22 = f22.subtract(g22).compareTo(BigDecimal.ZERO) > 0 ? f22.subtract(g22).divide(new BigDecimal(2)):BigDecimal.ZERO;
		model006.setF_17_1(CNumber.toString(h22));
		h23 = f23.subtract(g23).compareTo(BigDecimal.ZERO) > 0 ? f23.subtract(g23).divide(new BigDecimal(2)):BigDecimal.ZERO;
		model006.setF_17_2(CNumber.toString(h23));
		h24 = f24.subtract(g24).compareTo(BigDecimal.ZERO) > 0 ? f24.subtract(g24).divide(new BigDecimal(2)):BigDecimal.ZERO;
		model006.setF_17_3(CNumber.toString(h24));
		h25 = f25.subtract(g25).compareTo(BigDecimal.ZERO) > 0 ? f25.subtract(g25).divide(new BigDecimal(2)):BigDecimal.ZERO;
		model006.setF_17_4(CNumber.toString(h25));
		h26 = f26.subtract(g26).compareTo(BigDecimal.ZERO) > 0 ? f26.subtract(g26).divide(new BigDecimal(2)):BigDecimal.ZERO;
		model006.setF_17_5(CNumber.toString(h26));

		BigDecimal j22 = BigDecimal.ZERO, j23 = BigDecimal.ZERO, j24 = BigDecimal.ZERO, j25 = BigDecimal.ZERO, j26 = BigDecimal.ZERO;

		j22 = this.getColj22_26(e22, g22, f22, h22, i22);
		model006.setF_18_1(CNumber.toString(i22));
		model006.setF_19_1(CNumber.toString(j22));
		j23 = this.getColj22_26(e23, g23, f23, h23, i23);
		model006.setF_18_2(CNumber.toString(i23));
		model006.setF_19_2(CNumber.toString(j23));
		j24 = this.getColj22_26(e24, g24, f24, h24, i24);
		model006.setF_18_3(CNumber.toString(i24));
		model006.setF_19_3(CNumber.toString(j24));
		j25 = this.getColj22_26(e25, g25, f25, h25, i25);
		model006.setF_18_4(CNumber.toString(i25));
		model006.setF_19_4(CNumber.toString(j25));
		j26 = this.getColj22_26(e26, g26, f26, h26, i26);
		model006.setF_18_5(CNumber.toString(i26));
		model006.setF_19_5(CNumber.toString(j26));

		// 1-1
		g6 += this.getSumi(j15, j16, j17, j18, j19,
				d15, d16, d17, d18, d19, "社債").intValue() +
			this.getSumi(k22, k23, k24, k25, k26,
						d22, d23, d24, d25, d26, "社債").intValue();

		h6 += this.getSumi(j15, j16, j17, j18, j19,
				e15, e16, e17, e18, e19, "社債").intValue() +
			this.getSumi(k22, k23, k24, k25, k26,
						e22, e23, e24, e25, e26, "社債").intValue();

		i6 += this.getSumi(j15, j16, j17, j18, j19,
				i15, i16, i17, i18, i19, "社債").intValue() +
			this.getSumi(k22, k23, k24, k25, k26,
						j22, j23, j24, j25, j26, "社債").intValue();
		model006.setF_1_1(CNumber.toString(g6));
		model006.setF_1_2(CNumber.toString(h6));
		model006.setF_1_3(CNumber.toString(i6));

		// 2-1
		g7 = this.getSumi(j15, j16, j17, j18, j19,
				d15, d16, d17, d18, d19, "配当").intValue() +
			this.getSumi(k22, k23, k24, k25, k26,
						d22, d23, d24, d25, d26, "配当").intValue();
		h7 = this.getSumi(j15, j16, j17, j18, j19,
				e15, e16, e17, e18, e19, "配当").intValue() +
			this.getSumi(k22, k23, k24, k25, k26,
						e22, e23, e24, e25, e26, "配当").intValue();
		i7 = this.getSumi(j15, j16, j17, j18, j19,
				i15, i16, i17, i18, i19, "配当").intValue() +
			this.getSumi(k22, k23, k24, k25, k26,
						j22, j23, j24, j25, j26, "配当").intValue();
		model006.setF_2_1(CNumber.toString(g7));
		model006.setF_2_2(CNumber.toString(h7));
		model006.setF_2_3(CNumber.toString(i7));

		// 3-1
		g8 = this.getSumi(j15, j16, j17, j18, j19,
				d15, d16, d17, d18, d19, "投資").intValue() +
			this.getSumi(k22, k23, k24, k25, k26,
						d22, d23, d24, d25, d26, "投資").intValue();
		h8 = this.getSumi(j15, j16, j17, j18, j19,
				e15, e16, e17, e18, e19, "投資").intValue() +
			this.getSumi(k22, k23, k24, k25, k26,
						e22, e23, e24, e25, e26, "投資").intValue();
		i8 = this.getSumi(j15, j16, j17, j18, j19,
				i15, i16, i17, i18, i19, "投資").intValue() +
			this.getSumi(k22, k23, k24, k25, k26,
						j22, j23, j24, j25, j26, "投資").intValue();
		model006.setF_3_1(CNumber.toString(g8));
		model006.setF_3_2(CNumber.toString(h8));
		model006.setF_3_3(CNumber.toString(i8));

		Integer g11 = g6 + g7 + g8;
		Integer h11 = h6 + h7 + h8;
		Integer i11 = i6 + i7 + i8;
		model006.setF_6_1(CNumber.toString(g11));
		model006.setF_6_2(CNumber.toString(h11));
		model006.setF_6_3(CNumber.toString(i11));

		mapper006.insertModel(model006);

		return model006;

	}

	private BigDecimal getColi15_19(BigDecimal e, BigDecimal g, BigDecimal f, BigDecimal h) {

		BigDecimal i = BigDecimal.ZERO;
		if (g.compareTo(BigDecimal.ZERO) != 0) {
			BigDecimal a = g.divide(f, BigDecimal.ROUND_UP);
			if (a.compareTo(BigDecimal.ONE) < 0) {
				h = a;
			} else {
				h = BigDecimal.ONE;
			}
			i = e.multiply(h).setScale(0, BigDecimal.ROUND_DOWN);
		}
		return i;
	}

	private BigDecimal getColj22_26(BigDecimal E, BigDecimal g, BigDecimal f, BigDecimal h, BigDecimal i) {

		BigDecimal j = BigDecimal.ZERO;
		if (f.compareTo(BigDecimal.ZERO) != 0) {
			BigDecimal a = g.add(h).divide(f, 3, BigDecimal.ROUND_UP);
			if (a.compareTo(BigDecimal.ONE) < 0) {
				i = a;
			} else {
				i = BigDecimal.ONE;
			}
			j = E.multiply(i).setScale(0, BigDecimal.ROUND_DOWN);
		}
		return j;
	}

	private BigDecimal getSumi(String j15, String j16, String j17, String j18, String j19,
			BigDecimal i15, BigDecimal i16, BigDecimal i17, BigDecimal i18, BigDecimal i19, String item) {
		BigDecimal i = BigDecimal.ZERO;
		if (j15.equals(item)) {
			i.add(i15);
		}
		if (j16.equals(item)) {
			i.add(i16);
		}
		if (j17.equals(item)) {
			i.add(i17);
		}
		if (j18.equals(item)) {
			i.add(i18);
		}
		if (j19.equals(item)) {
			i.add(i19);
		}
		return i;
	}


}
