package com.jp.qxd.tax.service.pdf;

import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jp.qxd.tax.mapper.OMapper;
import com.jp.qxd.tax.mapper.Pdf01102Mapper;
import com.jp.qxd.tax.model.BaseModel;
import com.jp.qxd.tax.model.input.OModel;
import com.jp.qxd.tax.model.pdf.Rpt01102Model;
import com.jp.qxd.tax.utils.CNumber;

@Service
public class Pdf01102Service extends PdfBaseService {

	@Autowired
	private OMapper omapper;

	@Autowired
	private Pdf01102Mapper mapper01102;

	@Transactional
	public void initDB(BaseModel model) throws Exception {

		if (mapper01102.getModels(model).size() > 0) {
			mapper01102.deleteModel(model);
		}

		Rpt01102Model model01102 = new Rpt01102Model();
		model01102.setUserId(model.getUserId());
		model01102.setCompany_id(model.getCompany_id());
		model01102.setYear(model.getYear());
		model01102.setLegalPersonName(model.getLegalPersonName());
		model01102.setYmdFrom(model.getYmdFrom());
		model01102.setYmdTo(model.getYmdTo());

		//f_1 入力画面!H331
		Integer e2 = 0, i2 = 0, i4 = 0, i5 = 0, i6 = 0, i7 = 0, c17 = 0, c18 = 0, c19 = 0, c20 = 0, c21 = 0, c22 = 0,
				c23 = 0, d17 = 0, d18 = 0, d19 = 0, d20 = 0, d21 = 0, d22 = 0, d23 = 0, e17 = 0, e18 = 0, e19 = 0,
				e20 = 0, e21 = 0, e22 = 0, e23 = 0, f17 = 0, f18 = 0, f19 = 0, f20 = 0, f21 = 0, f22 = 0, f23 = 0,
				h17 = 0, h18 = 0, h19 = 0, h20 = 0, h21 = 0, h22 = 0, h23 = 0, j17 = 0, j18 = 0, j19 = 0, j20 = 0,
				j21 = 0, j22 = 0, j23 = 0, e27 = 0, e28 = 0;
		Integer h331 = 0, i342 = 0, i343 = 0, i344 = 0, i345 = 0, i346 = 0, f334 = 0, f335 = 0, f336 = 0, f337 = 0,
				f338 = 0, f339 = 0, f340 = 0, h334 = 0, h335 = 0, h336 = 0, h337 = 0, h338 = 0, h339 = 0,
				j334 = 0, j335 = 0, j336 = 0, j337 = 0, j338 = 0, j339 = 0, l334 = 0, l335 = 0, l336 = 0,
				l337 = 0, l338 = 0, l339 = 0, n334 = 0, n335 = 0, n336 = 0, n337 = 0, n338 = 0, n339 = 0, p334 = 0,
				p335 = 0, p336 = 0, p337 = 0, p338 = 0, p339 = 0, i353 = 0, i351 = 0, i352 = 0;
		String c334 = "", c335 = "", c336 = "", c337 = "", c338 = "", c339 = "", c340 = "";
		Integer k17 = 0, k18 = 0, k19 = 0, k20 = 0, k21 = 0, k22 = 0, k23 = 0, k24 = 0;
		String b17 = "", b18 = "", b19 = "", b20 = "", b21 = "", b22 = "", b23 = "";
		BigDecimal i28 = BigDecimal.ZERO;
		BigDecimal i10 = BigDecimal.ZERO;
		Integer i17 = 0, i18 = 0, i19 = 0, i20 = 0, i21 = 0, i22 = 0, i23 = 0, i24 = 0;
		List<? extends BaseModel> omodels = omapper.getModels(model);
		if (omodels.size() > 0) {
			OModel omodel = (OModel) omodels.get(0);
			h331 = nullChangeInteger(omodel.getO_h331());
			i342 = nullChangeInteger(omodel.getO_i342());
			i343 = nullChangeInteger(omodel.getO_i343());
			i344 = nullChangeInteger(omodel.getO_i344());
			i345 = nullChangeInteger(omodel.getO_i345());
			i346 = nullChangeInteger(omodel.getO_i346());
			f334 = nullChangeInteger(omodel.getO_f334());
			f335 = nullChangeInteger(omodel.getO_f335());
			f336 = nullChangeInteger(omodel.getO_f336());
			f337 = nullChangeInteger(omodel.getO_f337());
			f338 = nullChangeInteger(omodel.getO_f338());
			f339 = nullChangeInteger(omodel.getO_f339());
			f340 = nullChangeInteger(omodel.getO_f340());
			h334 = nullChangeInteger(omodel.getO_h334());
			h335 = nullChangeInteger(omodel.getO_h335());
			h336 = nullChangeInteger(omodel.getO_h336());
			h337 = nullChangeInteger(omodel.getO_h337());
			h338 = nullChangeInteger(omodel.getO_h338());
			h339 = nullChangeInteger(omodel.getO_h339());
			j334 = nullChangeInteger(omodel.getO_j334());
			j335 = nullChangeInteger(omodel.getO_j335());
			j336 = nullChangeInteger(omodel.getO_j336());
			j337 = nullChangeInteger(omodel.getO_j337());
			j338 = nullChangeInteger(omodel.getO_j338());
			j339 = nullChangeInteger(omodel.getO_j339());
			l334 = nullChangeInteger(omodel.getO_l334());
			l335 = nullChangeInteger(omodel.getO_l335());
			l336 = nullChangeInteger(omodel.getO_l336());
			l337 = nullChangeInteger(omodel.getO_l337());
			l338 = nullChangeInteger(omodel.getO_l338());
			l339 = nullChangeInteger(omodel.getO_l339());
			n334 = nullChangeInteger(omodel.getO_n334());
			n335 = nullChangeInteger(omodel.getO_n335());
			n336 = nullChangeInteger(omodel.getO_n336());
			n337 = nullChangeInteger(omodel.getO_n337());
			n338 = nullChangeInteger(omodel.getO_n338());
			n339 = nullChangeInteger(omodel.getO_n339());
			p334 = nullChangeInteger(omodel.getO_p334());
			p335 = nullChangeInteger(omodel.getO_p335());
			p336 = nullChangeInteger(omodel.getO_p336());
			p337 = nullChangeInteger(omodel.getO_p337());
			p338 = nullChangeInteger(omodel.getO_p338());
			p339 = nullChangeInteger(omodel.getO_p339());
			i351 = nullChangeInteger(omodel.getO_i351());
			i352 = nullChangeInteger(omodel.getO_i352());
			c334 = omodel.getO_c334();
			c335 = omodel.getO_c335();
			c336 = omodel.getO_c336();
			c337 = omodel.getO_c337();
			c338 = omodel.getO_c338();
			c339 = omodel.getO_c339();
			c340 = omodel.getO_c340();
			e2 = h331;
			i2 = i342;
			i4 = i343;
			i5 = i344;
			i6 = i345;
			i7 = i346;
			i353 = p334 + p335 + p336 + p337 + p338 + p339;
		}
		model01102.setF_1(CNumber.toString(e2));

		//f_2 I24
		Integer e3 = 0, e5 = 0;
		e3 = i24;
		model01102.setF_2(CNumber.toString(e3));
		//f_3 I10
		String e4 = "";
		e4 = CNumber.toString(i10);
		model01102.setF_3(e4);
		//f_4 K24
		e5 = k24;
		model01102.setF_4(CNumber.toString(e5));

		//f_5 IF(入力画面!Q331="",0,VLOOKUP(入力画面!Q331,地方税税率・均等割!B252:C256,2)) TODO
		//f_6 IF(ROUNDDOWN(E5*E6/1000,0)<ROUNDDOWN(E3*E4,0),ROUNDDOWN(E3*E4,0),ROUNDDOWN(E5*E6/1000,0)) TODO

		//f_7
		Integer e8 = 0;
		model01102.setF_7(CNumber.toString(e8));

		//f_8 IF(E2-E7<0,0,E2-E7) TODO

		//f_9 入力画面!I342
		model01102.setF_9(CNumber.toString(i2));

		//f_10 ROUNDDOWN(I2/3,0)
		BigDecimal i3 = BigDecimal.ZERO;
		i3 = new BigDecimal(i2 / 3).setScale(0, BigDecimal.ROUND_DOWN);
		model01102.setF_10(CNumber.toString(i3));

		//f_11 入力画面!I343
		model01102.setF_11(CNumber.toString(i4));
		//f_12 入力画面!I344
		model01102.setF_12(CNumber.toString(i5));
		//f_13 入力画面!I345
		model01102.setF_13(CNumber.toString(i6));
		//f_14 入力画面!I346
		model01102.setF_14(CNumber.toString(i7));

		//f_15 I4+I5+I6-I7
		Integer i8 = 0;
		i8 = i4 + i5 + i6 - i7;
		model01102.setF_15(CNumber.toString(i8));

		//f_16 ROUNDUP(I8*12/K10,0)
		BigDecimal i9 = BigDecimal.ZERO;
		i9 = new BigDecimal(i8 * 12 / 36).setScale(0, BigDecimal.ROUND_DOWN);
		model01102.setF_16(CNumber.toString(i9));

		//f_17 IF(I3=0,0,ROUNDUP(I9/I3,4))
		if (i3.compareTo(BigDecimal.ZERO) != 0) {
			i10 = i9.divide(i3, 4, RoundingMode.UP);
		}
		model01102.setF_17(CNumber.toString(i10));

		//f_account_1 IF(入力画面!C334="","",入力画面!C334)
		if (!c334.isEmpty()) {
			b17 = c334;
		}
		model01102.setF_account_1(b17);
		if (!c335.isEmpty()) {
			b18 = c335;
		}
		model01102.setF_account_2(b18);
		if (!c336.isEmpty()) {
			b19 = c336;
		}
		model01102.setF_account_3(b19);
		if (!c337.isEmpty()) {
			b20 = c337;
		}
		model01102.setF_account_4(b20);
		if (!c338.isEmpty()) {
			b21 = c338;
		}
		model01102.setF_account_5(b21);
		if (!c339.isEmpty()) {
			b22 = c339;
		}
		model01102.setF_account_6(b22);
		if (!c340.isEmpty()) {
			b23 = c340;
		}
		model01102.setF_account_7(b23);

		//f_18 IF(入力画面!F334="","",入力画面!F334)
		if (!CNumber.toString(f334).isEmpty()) {
			c17 = f334;
		}
		model01102.setF_18_1(CNumber.toString(c17));
		if (!CNumber.toString(f335).isEmpty()) {
			c18 = f335;
		}
		model01102.setF_18_2(CNumber.toString(c18));
		if (!CNumber.toString(f336).isEmpty()) {
			c19 = f336;
		}
		model01102.setF_18_3(CNumber.toString(c19));
		if (!CNumber.toString(f337).isEmpty()) {
			c20 = f337;
		}
		model01102.setF_18_4(CNumber.toString(c20));
		if (!CNumber.toString(f338).isEmpty()) {
			c21 = f338;
		}
		model01102.setF_18_5(CNumber.toString(c21));
		if (!CNumber.toString(f339).isEmpty()) {
			c22 = f339;
		}
		model01102.setF_18_6(CNumber.toString(c22));
		if (!CNumber.toString(f340).isEmpty()) {
			c23 = f340;
		}
		model01102.setF_18_7(CNumber.toString(c23));

		//f18_8 SUM(C17:C23)
		Integer c24 = 0;
		c24 = c17 + c18 + c19 + c20 + c21 + c22 + c23;
		model01102.setF_18_8(CNumber.toString(c24));

		//f_19 IF(入力画面!H334="","",入力画面!H334)
		if (!CNumber.toString(h334).isEmpty()) {
			d17 = h334;
		}
		model01102.setF_19_1(CNumber.toString(d17));
		if (!CNumber.toString(h335).isEmpty()) {
			d18 = h335;
		}
		model01102.setF_19_2(CNumber.toString(d18));
		if (!CNumber.toString(h336).isEmpty()) {
			d19 = h336;
		}
		model01102.setF_19_3(CNumber.toString(d19));
		if (!CNumber.toString(h337).isEmpty()) {
			d20 = h337;
		}
		model01102.setF_19_4(CNumber.toString(d20));
		if (!CNumber.toString(h338).isEmpty()) {
			d21 = h338;
		}
		model01102.setF_19_5(CNumber.toString(d21));
		if (!CNumber.toString(h339).isEmpty()) {
			d22 = h339;
		}

		//f19_8 SUM(D17:D23)
		Integer d24 = 0;
		d24 = d17 + d18 + d19 + d20 + d21 + d22 + d23;
		model01102.setF_19_8(CNumber.toString(d24));

		//f_20 IF(入力画面!J334="","",入力画面!J334)
		if (!CNumber.toString(j334).isEmpty()) {
			e17 = j334;
		}
		model01102.setF_20_1(CNumber.toString(e17));
		if (!CNumber.toString(j335).isEmpty()) {
			e18 = j335;
		}
		model01102.setF_20_2(CNumber.toString(e18));
		if (!CNumber.toString(j336).isEmpty()) {
			e19 = j336;
		}
		model01102.setF_20_3(CNumber.toString(e19));
		if (!CNumber.toString(j337).isEmpty()) {
			e20 = j337;
		}
		model01102.setF_20_4(CNumber.toString(e20));
		if (!CNumber.toString(j338).isEmpty()) {
			e21 = j338;
		}
		model01102.setF_20_5(CNumber.toString(e21));
		if (!CNumber.toString(j339).isEmpty()) {
			e22 = j339;
		}

		//f20_8 SUM(e17:e23)
		Integer e24 = 0;
		e24 = e17 + e18 + e19 + e20 + e21 + e22 + e23;
		model01102.setF_20_8(CNumber.toString(e24));

		//f_21 IF(入力画面!J334="","",入力画面!J334)
		if (!CNumber.toString(l334).isEmpty()) {
			f17 = l334;
		}
		model01102.setF_21_1(CNumber.toString(f17));
		if (!CNumber.toString(l335).isEmpty()) {
			f18 = l335;
		}
		model01102.setF_21_2(CNumber.toString(f18));
		if (!CNumber.toString(l336).isEmpty()) {
			f19 = l336;
		}
		model01102.setF_21_3(CNumber.toString(f19));
		if (!CNumber.toString(l337).isEmpty()) {
			f20 = l337;
		}
		model01102.setF_21_4(CNumber.toString(f20));
		if (!CNumber.toString(l338).isEmpty()) {
			f21 = l338;
		}
		model01102.setF_21_5(CNumber.toString(f21));
		if (!CNumber.toString(l339).isEmpty()) {
			f22 = l339;
		}

		//f_21_8 SUM(F17:F23)
		Integer f24 = 0;
		f24 = f17 + f18 + f19 + f20 + f21 + f22 + f23;
		model01102.setF_21_8(CNumber.toString(f24));

		//f_22_8 SUM(F17:F23)
		Integer g17 = 0, g18 = 0, g19 = 0, g20 = 0, g21 = 0, g22 = 0, g23 = 0, g24 = 0;
		g24 = g17 + g18 + g19 + g20 + g21 + g22 + g23;
		model01102.setF_22_8(CNumber.toString(g24));

		//f_23 IF(入力画面!H334="","",入力画面!H334)
		if (!CNumber.toString(n334).isEmpty()) {
			h17 = n334;
		}
		model01102.setF_23_1(CNumber.toString(h17));
		if (!CNumber.toString(n335).isEmpty()) {
			h18 = n335;
		}
		model01102.setF_23_2(CNumber.toString(h18));
		if (!CNumber.toString(n336).isEmpty()) {
			h19 = n336;
		}
		model01102.setF_23_3(CNumber.toString(h19));
		if (!CNumber.toString(n337).isEmpty()) {
			h20 = n337;
		}
		model01102.setF_23_4(CNumber.toString(h20));
		if (!CNumber.toString(n338).isEmpty()) {
			h21 = n338;
		}
		model01102.setF_23_5(CNumber.toString(h21));
		if (!CNumber.toString(n339).isEmpty()) {
			h22 = n339;
		}
		model01102.setF_23_7(CNumber.toString(h23));

		//f_23_8 SUM(H17:H23)
		Integer h24 = 0;
		h24 = h17 + h18 + h19 + h20 + h21 + h22 + h23;
		model01102.setF_23_8(CNumber.toString(h24));

		//f_24_1 SUMIF(C17,"<>""",C17)+SUMIF(D17,"<>""",D17)-SUMIF(E17,"<>""",E17)-SUMIF(F17,"<>""",F17)-SUMIF(G17,"<>""",G17)-SUMIF(H17,"<>""",H17)
		i17 = c17 + d17 - e17 - f17 - g17 - h17;
		i18 = c18 + d18 - e18 - f18 - g18 - h18;
		i19 = c19 + d19 - e19 - f19 - g19 - h19;
		i20 = c20 + d20 - e20 - f20 - g20 - h20;
		i21 = c21 + d21 - e21 - f21 - g21 - h21;
		i22 = c22 + d22 - e22 - f22 - g22 - h22;
		model01102.setF_24_1(CNumber.toString(i17));
		model01102.setF_24_2(CNumber.toString(i18));
		model01102.setF_24_3(CNumber.toString(i19));
		model01102.setF_24_4(CNumber.toString(i20));
		model01102.setF_24_5(CNumber.toString(i21));
		model01102.setF_24_6(CNumber.toString(i22));
		model01102.setF_24_7(CNumber.toString(i23));

		//f_24_8 SUM(I17:I23)
		i24 = i17 + i18 + i19 + i20 + i21 + i22 + i23;
		model01102.setF_24_8(CNumber.toString(i24));

		//f_25 IF(入力画面!P334="","",入力画面!P334)
		if (!CNumber.toString(p334).isEmpty()) {
			j17 = p334;
		}
		model01102.setF_25_1(CNumber.toString(j17));
		if (!CNumber.toString(p335).isEmpty()) {
			j18 = p335;
		}
		model01102.setF_25_2(CNumber.toString(j18));
		if (!CNumber.toString(p336).isEmpty()) {
			j19 = p336;
		}
		model01102.setF_25_3(CNumber.toString(j19));
		if (!CNumber.toString(p337).isEmpty()) {
			j20 = p337;
		}
		model01102.setF_25_4(CNumber.toString(j20));
		if (!CNumber.toString(p338).isEmpty()) {
			j21 = p338;
		}
		model01102.setF_25_5(CNumber.toString(j21));
		if (!CNumber.toString(p339).isEmpty()) {
			j22 = p339;
		}
		model01102.setF_25_7(CNumber.toString(j23));

		//f_25_8_1 IF(入力画面!I353="",0,入力画面!I353)
		Integer j24 = 0;
		if (!CNumber.toString(i353).isEmpty()) {
			j24 = i353;
		}
		model01102.setF_25_8_u(CNumber.toString(j24));

		//f_25_8_d IF(I28="",0,I28)
		String j25 = "";
		if (!CNumber.toString(i28).isEmpty()) {
			j25 = CNumber.toString(i28);
		}
		model01102.setF_25_8_d(j25);

		//f_26_1 I17-SUMIF(J17,"<>""",J17)
		k17 = i17 - j17;
		k18 = i18 - j18;
		k19 = i19 - j19;
		k20 = i20 - j20;
		k21 = i21 - j21;
		k22 = i22 - j22;
		k23 = i23 - j23;
		model01102.setF_26_1(CNumber.toString(k17));
		model01102.setF_26_2(CNumber.toString(k18));
		model01102.setF_26_3(CNumber.toString(k19));
		model01102.setF_26_4(CNumber.toString(k20));
		model01102.setF_26_5(CNumber.toString(k21));
		model01102.setF_26_6(CNumber.toString(k22));
		model01102.setF_26_7(CNumber.toString(k23));

		//f_26_8 I24-IF(OR(J25=0,J24<J25),J24,J25)
		if (nullChangeInteger(j25) == 0 || j24 < nullChangeInteger(j25)) {
			k24 = i24 - j24;
		} else {
			k24 = i24 - nullChangeInteger(j25);
		}
		model01102.setF_26_8(CNumber.toString(k24));

		//f_27 IF(入力画面!I351="","",入力画面!I351)
		if (!CNumber.toString(i351).isEmpty()) {
			e27 = i351;
		}
		model01102.setF_27(CNumber.toString(e27));

		//f_28 IF(入力画面!I352="","",入力画面!I352)
		if (!CNumber.toString(i352).isEmpty()) {
			e28 = i352;
		}
		model01102.setF_28(CNumber.toString(e28));

		//f_29 IF(E28="",0,ROUNDDOWN(E28/E27,3))
		BigDecimal i27 = BigDecimal.ZERO;
		if (!CNumber.toString(e28).isEmpty() && e27 != 0) {
			i27 = new BigDecimal(e28 / e27).setScale(3, BigDecimal.ROUND_DOWN);
		}
		model01102.setF_29(CNumber.toString(i27));

		//f_30 ROUNDDOWN(I24*I27,0)
		i28 = new BigDecimal(i24).multiply(i27).setScale(0, BigDecimal.ROUND_DOWN);
		model01102.setF_29(CNumber.toString(i28));

		mapper01102.insertModel(model01102);
	}
}
