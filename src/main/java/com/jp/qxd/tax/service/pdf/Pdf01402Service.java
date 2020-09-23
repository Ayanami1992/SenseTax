package com.jp.qxd.tax.service.pdf;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jp.qxd.tax.mapper.BMapper;
import com.jp.qxd.tax.mapper.CMapper;
import com.jp.qxd.tax.mapper.NMapper;
import com.jp.qxd.tax.mapper.Pdf01402Mapper;
import com.jp.qxd.tax.model.BaseModel;
import com.jp.qxd.tax.model.input.BModel;
import com.jp.qxd.tax.model.input.CModel;
import com.jp.qxd.tax.model.input.NModel;
import com.jp.qxd.tax.model.pdf.Rpt01402Model;
import com.jp.qxd.tax.utils.CNumber;

@Service
public class Pdf01402Service extends PdfBaseService {

	@Autowired
	private BMapper bmapper;

	@Autowired
	private CMapper cmapper;

	@Autowired
	private NMapper nmapper;

	@Autowired
	private Pdf01402Mapper mapper01402;

	@Transactional
	public void initDB(BaseModel model) throws Exception {

		if (mapper01402.getModels(model).size() > 0) {
			mapper01402.deleteModel(model);
		}

		Rpt01402Model model01402 = new Rpt01402Model();
		model01402.setUserId(model.getUserId());
		model01402.setCompany_id(model.getCompany_id());
		model01402.setYear(model.getYear());
		model01402.setLegalPersonName(model.getLegalPersonName());
		model01402.setYmdFrom(model.getYmdFrom());
		model01402.setYmdTo(model.getYmdTo());

		//f_1 =G32
		Integer g3 = 0;
		model01402.setF_1(CNumber.toString(g3));

		//f_2 =G39
		Integer g4 = 0;
		model01402.setF_2(CNumber.toString(g4));

		//f_3  入力画面!H301
		Integer g5 = 0, g7 = 0, g21 = 0;
		String b29 = "", b30 = "", b31 = "", c29 = "", c30 = "", c31 = "", d29 = "", d30 = "", d31 = "", e29 = "",
				e30 = "", e31 = "", b36 = "", b37 = "", b38 = "", c36 = "", c37 = "", c38 = "", d36 = "", d37 = "",
				d38 = "", e36 = "", e37 = "", e38 = "", b43 = "", b44 = "", b45 = "", c43 = "", c44 = "", c45 = "",
				d43 = "", d44 = "", d45 = "", e43 = "", e44 = "", e45 = "";
		String c282 = "", c283 = "", c284 = "", e282 = "", e283 = "", e284 = "", i282 = "", i283 = "", i284 = "",
				k282 = "", k283 = "", k284 = "", c289 = "", c290 = "", c291 = "", e289 = "", e290 = "", e291 = "",
				g289 = "", g290 = "", g291 = "", k289 = "", k290 = "", k291 = "", c296 = "", c297 = "", c298 = "",
				e296 = "", e297 = "", e298 = "", h296 = "", h297 = "", h298 = "", m296 = "", m297 = "", m298 = "";
		String g29 = "", g30 = "", g31 = "", g36 = "", g37 = "", g38 = "", g43 = "", g44 = "", g45 = "";
		Integer p282 = 0, p283 = 0, p284 = 0, p289 = 0, p290 = 0, p291 = 0, p296 = 0, p297 = 0, p298 = 0;
		List<? extends BaseModel> nmodels = nmapper.getModels(model);
		if (nmodels.size() > 0) {
			NModel nmodel = (NModel) nmodels.get(0);
			g5 = nullChangeInteger(nmodel.getN_h301());
			g7 = nullChangeInteger(nmodel.getN_h302());
			g21 = nullChangeInteger(nmodel.getN_h303());
			c282 = nmodel.getN_c282();
			c283 = nmodel.getN_c283();
			c284 = nmodel.getN_c284();
			p282 = nullChangeInteger(nmodel.getN_p282());
			p283 = nullChangeInteger(nmodel.getN_p283());
			p284 = nullChangeInteger(nmodel.getN_p284());
			p289 = nullChangeInteger(nmodel.getN_p289());
			p290 = nullChangeInteger(nmodel.getN_p290());
			p291 = nullChangeInteger(nmodel.getN_p291());
			p296 = nullChangeInteger(nmodel.getN_p296());
			p297 = nullChangeInteger(nmodel.getN_p297());
			p298 = nullChangeInteger(nmodel.getN_p298());
			e282 = nmodel.getN_e282();
			e283 = nmodel.getN_e283();
			e284 = nmodel.getN_e284();
			i282 = nmodel.getN_i282();
			i283 = nmodel.getN_i283();
			i284 = nmodel.getN_i284();
			k282 = nmodel.getN_k282();
			k283 = nmodel.getN_k283();
			k284 = nmodel.getN_k284();
			c289 = nmodel.getN_c289();
			c290 = nmodel.getN_c290();
			c291 = nmodel.getN_c291();
			e289 = nmodel.getN_e289();
			e290 = nmodel.getN_e290();
			e291 = nmodel.getN_e291();
			g289 = nmodel.getN_g289();
			g290 = nmodel.getN_g290();
			g291 = nmodel.getN_g291();
			k289 = nmodel.getN_k289();
			k290 = nmodel.getN_k290();
			k291 = nmodel.getN_k291();
			c296 = nmodel.getN_c296();
			c297 = nmodel.getN_c297();
			c298 = nmodel.getN_c298();
			e296 = nmodel.getN_e296();
			e297 = nmodel.getN_e297();
			e298 = nmodel.getN_e298();
			h296 = nmodel.getN_h296();
			h297 = nmodel.getN_h297();
			h298 = nmodel.getN_h298();
			m296 = nmodel.getN_m296();
			m297 = nmodel.getN_m297();
			m298 = nmodel.getN_m298();
		}
		model01402.setF_3(CNumber.toString(g5));

		//f_4 SUM(G3:G5)
		Integer g6 = 0;
		g6 = g3 + g4 + g5;
		model01402.setF_4(CNumber.toString(g6));

		//f_5  入力画面!H302
		model01402.setF_5(CNumber.toString(g7));

		//f_6  G6+G7
		Integer g8 = 0;
		g8 = g6 + g7;
		model01402.setF_6(CNumber.toString(g8));

		//f_7  四!G40 TODO
		//f_8 IF(G8+G9<0,0,G8+G9) TODO
		//f_9 ROUNDDOWN(G10*2.5/100,0) TODO

		//f_10 入力画面!F52
		Integer g12 = 0;
		List<? extends BaseModel> bmodels = bmapper.getModels(model);
		if (bmodels.size() > 0) {
			BModel bmodel = (BModel) bmodels.get(0);
			g12 = nullChangeInteger(bmodel.getB_21());
		}
		model01402.setF_10(CNumber.toString(g12));

		//f_11 G12*入力画面!G70/12
		Integer g13 = 0;
		Integer g70 = 0;
		List<? extends BaseModel> cmodels = cmapper.getModels(model);
		if (bmodels.size() > 0) {
			CModel cmodel = (CModel) cmodels.get(0);
			g70 = nullChangeInteger(cmodel.getC_06());
			g13 = g12 * g70 / 12;
		}
		model01402.setF_11(CNumber.toString(g13));

		//f_12 G13*2.5/1000
		BigDecimal g14 = BigDecimal.ZERO;
		g14 = BigDecimal.valueOf(g13 * 2.5 / 1000);
		model01402.setF_12(CNumber.toString(g14));

		//f_13 IF(B_16>=DATEVALUE("H24.4.1"),ROUNDDOWN((G11+G14)/4,0),ROUNDDOWN((G11+G14)/2,0)) TODO
		//f_14 IF(B_16>=DATEVALUE("H24.4.1"),G10*6.25/100,G10*5/100) TODO
		//f_15 IF(B_16>=DATEVALUE("H24.4.1"),G13*3.75/1000,G13*2.5/1000) TODO
		//f_16 ROUNDDOWN((G16+G17)/2,0) TODO
		//f_17 IF(G4<G18,G4,G18) TODO

		//f_18 =G3
		Integer g20 = 0;
		g20 = g3;
		model01402.setF_18(CNumber.toString(g20));

		//f_19 入力画面!H303
		model01402.setF_19(CNumber.toString(g21));

		//f_20 G6-G21
		Integer g22 = 0;
		g22 = g6 - g21;
		model01402.setF_20(CNumber.toString(g22));

		//f_21 IF(G22-G15-G19-G20<0,0,G22-G15-G19-G20) TODO

		//f_22 =G21
		Integer g24 = 0;
		g24 = g21;
		model01402.setF_22(CNumber.toString(g24));

		//f_23 =G7
		Integer g25 = 0;
		g25 = g7;
		model01402.setF_23(CNumber.toString(g25));

		//f_24 G23+G24+G25 TODO

		//f_41_1 IF(入力画面!P282="","",入力画面!P282)
		if (CNumber.toString(p282) == "") {
			g29 = "";
		} else {
			g29 = CNumber.toString(p282);
		}
		model01402.setF_41_1(g29);

		//f_41_2 IF(入力画面!P283="","",入力画面!P283)
		if (CNumber.toString(p283) == "") {
			g30 = "";
		} else {
			g30 = CNumber.toString(p283);
		}
		model01402.setF_41_2(CNumber.toString(g30));

		//f_41_3 IF(入力画面!P284="","",入力画面!P284)
		if (CNumber.toString(p284) == "") {
			g31 = "";
		} else {
			g31 = CNumber.toString(p284);
		}
		model01402.setF_41_3(CNumber.toString(g31));

		//f_42_1 IF(入力画面!P289="","",入力画面!P289)
		if (CNumber.toString(p289) == "") {
			g36 = "";
		} else {
			g36 = CNumber.toString(p289);
		}
		model01402.setF_42_1(CNumber.toString(g36));

		//f_42_2 IF(入力画面!P290="","",入力画面!P290)
		if (CNumber.toString(p290) == "") {
			g37 = "";
		} else {
			g37 = CNumber.toString(p290);
		}
		model01402.setF_42_2(CNumber.toString(g37));

		//f_42_3 IF(入力画面!P291="","",入力画面!P291)
		if (CNumber.toString(p291) == "") {
			g38 = "";
		} else {
			g38 = CNumber.toString(p291);
		}
		model01402.setF_42_3(CNumber.toString(g38));

		//f_43_1 IF(入力画面!C282="","",入力画面!C282)
		if (c282 == "") {
			b29 = "";
		} else {
			b29 = c282;
		}
		model01402.setF_43_1(CNumber.toString(b29));

		//f_43_2 IF(入力画面!C283="","",入力画面!C283)
		if (c283 == "") {
			b30 = "";
		} else {
			b30 = c283;
		}
		model01402.setF_43_2(CNumber.toString(b30));

		//f_43_3 IF(入力画面!C284="","",入力画面!C284)
		if (c284 == "") {
			b31 = "";
		} else {
			b31 = c284;
		}
		model01402.setF_43_3(CNumber.toString(b31));

		//f_44_1 IF(入力画面!E282="","",入力画面!E282)
		if (e282 == "") {
			c29 = "";
		} else {
			c29 = e282;
		}
		model01402.setF_44_1(CNumber.toString(c29));

		//f_44_2 IF(入力画面!E283="","",入力画面!E283)
		if (e283 == "") {
			c30 = "";
		} else {
			c30 = e283;
		}
		model01402.setF_44_2(CNumber.toString(c30));

		//f_44_3 IF(入力画面!E284="","",入力画面!E284)
		if (e284 == "") {
			c31 = "";
		} else {
			c31 = e284;
		}
		model01402.setF_44_3(CNumber.toString(c31));

		//f_45_1 IF(入力画面!I282="","",入力画面!I282)
		if (i282 == "") {
			d29 = "";
		} else {
			d29 = i282;
		}
		model01402.setF_45_1(CNumber.toString(d29));

		//f_45_2 IF(入力画面!I283="","",入力画面!I283)
		if (i283 == "") {
			d30 = "";
		} else {
			d30 = i283;
		}
		model01402.setF_45_2(CNumber.toString(d30));

		//f_45_3 IF(入力画面!I284="","",入力画面!I284)
		if (i284 == "") {
			d31 = "";
		} else {
			d31 = i284;
		}
		model01402.setF_45_3(CNumber.toString(d31));

		//f_46_1 IF(入力画面!K282="","",入力画面!K282)
		if (k282 == "") {
			e29 = "";
		} else {
			e29 = k282;
		}
		model01402.setF_46_1(CNumber.toString(e29));

		//f_46_2 IF(入力画面!K283="","",入力画面!K283)
		if (k283 == "") {
			e30 = "";
		} else {
			e30 = k283;
		}
		model01402.setF_46_2(CNumber.toString(e30));

		//f_46_3 IF(入力画面!K284="","",入力画面!K284)
		if (k284 == "") {
			e31 = "";
		} else {
			e31 = k284;
		}
		model01402.setF_46_3(CNumber.toString(e31));

		//f_41_total SUM(G29:G31)
		Integer g32 = 0;
		g32 = nullChangeInteger(g29) + nullChangeInteger(g30) + nullChangeInteger(g31);
		model01402.setF_41_total(CNumber.toString(g32));

		//f_47_1 IF(入力画面!C289="","",入力画面!C289)
		if (c289 == "") {
			b36 = "";
		} else {
			b36 = c289;
		}
		model01402.setF_47_1(CNumber.toString(b36));

		//f_47_2 IF(入力画面!C290="","",入力画面!C290)
		if (c290 == "") {
			b37 = "";
		} else {
			b37 = c290;
		}
		model01402.setF_47_2(CNumber.toString(b37));

		//f_47_3 IF(入力画面!C291="","",入力画面!C291)
		if (c291 == "") {
			b38 = "";
		} else {
			b38 = c291;
		}
		model01402.setF_47_3(CNumber.toString(b38));

		//f_48_1 IF(入力画面!E289="","",入力画面!E289)
		if (e289 == "") {
			c36 = "";
		} else {
			c36 = e289;
		}
		model01402.setF_48_1(CNumber.toString(c36));

		//f_48_2 IF(入力画面!E290="","",入力画面!E290)
		if (e290 == "") {
			c37 = "";
		} else {
			c37 = e290;
		}
		model01402.setF_48_2(CNumber.toString(c37));

		//f_48_3 IF(入力画面!E291="","",入力画面!E291)
		if (e291 == "") {
			c38 = "";
		} else {
			c38 = e291;
		}
		model01402.setF_48_3(CNumber.toString(c38));

		//f_49_1 IF(入力画面!G289="","",入力画面!G289)
		if (g289 == "") {
			d36 = "";
		} else {
			d36 = g289;
		}
		model01402.setF_49_1(CNumber.toString(d36));

		//f_49_2 IF(入力画面!G290="","",入力画面!G290)
		if (g290 == "") {
			d37 = "";
		} else {
			d37 = g290;
		}
		model01402.setF_49_2(CNumber.toString(d37));

		//f_49_3 IF(入力画面!G291="","",入力画面!G291)
		if (g291 == "") {
			d38 = "";
		} else {
			d38 = g291;
		}
		model01402.setF_49_3(CNumber.toString(d38));

		//f_50_1 IF(入力画面!K289="","",入力画面!K289)
		if (k289 == "") {
			e36 = "";
		} else {
			e36 = k289;
		}
		model01402.setF_50_1(CNumber.toString(e36));

		//f_50_2 IF(入力画面!K290="","",入力画面!K290)
		if (k290 == "") {
			e37 = "";
		} else {
			e37 = k290;
		}
		model01402.setF_50_2(CNumber.toString(e37));

		//f_50_3 IF(入力画面!K291="","",入力画面!K291)
		if (k291 == "") {
			e38 = "";
		} else {
			e38 = k291;
		}
		model01402.setF_50_3(CNumber.toString(e38));

		//f_42_total SUM(G36:G38)
		Integer g39 = 0;
		g39 = nullChangeInteger(g36) + nullChangeInteger(g37) + nullChangeInteger(g38);
		model01402.setF_42_total(CNumber.toString(g39));

		//f_51_1 IF(入力画面!C296="","",入力画面!C296)
		if (c296 == "") {
			b43 = "";
		} else {
			b43 = c296;
		}
		model01402.setF_51_1(CNumber.toString(b43));

		//f_51_2 IF(入力画面!C297="","",入力画面!C297)
		if (c297 == "") {
			b44 = "";
		} else {
			b44 = c297;
		}
		model01402.setF_51_2(CNumber.toString(b44));

		//f_51_3 IF(入力画面!C298="","",入力画面!C298)
		if (c298 == "") {
			b45 = "";
		} else {
			b45 = c298;
		}
		model01402.setF_51_3(CNumber.toString(b45));

		//f_52_1 IF(入力画面!E296="","",入力画面!E296)
		if (e296 == "") {
			c43 = "";
		} else {
			c43 = e296;
		}
		model01402.setF_52_1(CNumber.toString(c43));

		//f_52_2 IF(入力画面!E297="","",入力画面!E297)
		if (e297 == "") {
			c44 = "";
		} else {
			c44 = e297;
		}
		model01402.setF_52_2(CNumber.toString(c44));

		//f_52_3 IF(入力画面!E298="","",入力画面!E298)
		if (e298 == "") {
			c45 = "";
		} else {
			c45 = e298;
		}
		model01402.setF_52_3(CNumber.toString(c45));

		//f_53_1 IF(入力画面!H296="","",入力画面!H296)
		if (h296 == "") {
			d43 = "";
		} else {
			d43 = h296;
		}
		model01402.setF_53_1(CNumber.toString(d43));

		//f_53_2 IF(入力画面!H297="","",入力画面!H297)
		if (h297 == "") {
			d44 = "";
		} else {
			d44 = h297;
		}
		model01402.setF_53_2(CNumber.toString(d44));

		//f_53_3 IF(入力画面!H298="","",入力画面!H298)
		if (h298 == "") {
			d45 = "";
		} else {
			d45 = h298;
		}
		model01402.setF_53_3(CNumber.toString(d45));

		//f_54_1 IF(入力画面!M296="","",入力画面!M296)
		if (m296 == "") {
			e43 = "";
		} else {
			e43 = m296;
		}
		model01402.setF_54_1(CNumber.toString(e43));

		//f_54_2 IF(入力画面!M297="","",入力画面!M297)
		if (m297 == "") {
			e44 = "";
		} else {
			e44 = m297;
		}
		model01402.setF_54_2(CNumber.toString(e44));

		//f_54_3 IF(入力画面!M298="","",入力画面!M298)
		if (m298 == "") {
			e45 = "";
		} else {
			e45 = m298;
		}
		model01402.setF_54_3(CNumber.toString(e45));

		//f_55_1 IF(入力画面!P296="","",入力画面!P296)
		if (CNumber.toString(p296) == "") {
			g43 = "";
		} else {
			g43 = CNumber.toString(p296);
		}
		model01402.setF_55_1(CNumber.toString(g43));

		//f_55_2 IF(入力画面!P297="","",入力画面!P297)
		if (CNumber.toString(p297) == "") {
			g44 = "";
		} else {
			g44 = CNumber.toString(p297);
		}
		model01402.setF_55_2(CNumber.toString(g44));

		//f_55_3 IF(入力画面!P298="","",入力画面!P298)
		if (CNumber.toString(p298) == "") {
			g45 = "";
		} else {
			g45 = CNumber.toString(p298);
		}
		model01402.setF_55_3(CNumber.toString(g45));

		//f_28 M3+M4+M5
		Integer m3 = 0, m4 = 0, m5 = 0, m6 = 0;
		m6 = m3 + m4 + m5;
		model01402.setF_25(CNumber.toString(m3));
		model01402.setF_26(CNumber.toString(m4));
		model01402.setF_27(CNumber.toString(m5));
		model01402.setF_28(CNumber.toString(m6));

		//f_29 四!G40 TODO
		//f_30 IF(M7>M6,0,M6+M7) TODO

		Integer m9 = 0, m10 = 0, m11 = 0, m12 = 0, m13 = 0, m14 = 0, m15 = 0, m16 = 0, m17 = 0, m18 = 0;

		model01402.setF_31(CNumber.toString(m9));
		model01402.setF_32(CNumber.toString(m10));
		model01402.setF_33(CNumber.toString(m11));
		model01402.setF_34(CNumber.toString(m12));
		model01402.setF_34(CNumber.toString(m12));

		//f_35 =G32
		m13 = g32;
		model01402.setF_35(CNumber.toString(m13));
		model01402.setF_36(CNumber.toString(m14));

		//f_37 =M6-M14
		m15 = m6 - m14;
		model01402.setF_37(CNumber.toString(m15));

		//f_38 =M15-M12-M13
		m16 = m15 - m12 - m13;
		model01402.setF_38(CNumber.toString(m16));

		//f_39 =M14
		m17 = m14;
		model01402.setF_39(CNumber.toString(m17));

		//f_40 =M16+M17
		m18 = m16 + m17;
		model01402.setF_40(CNumber.toString(m18));

		mapper01402.insertModel(model01402);
	}
}
