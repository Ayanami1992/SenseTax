package com.jp.qxd.tax.service.pdf;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jp.qxd.tax.mapper.DMapper;
import com.jp.qxd.tax.mapper.EMapper;
import com.jp.qxd.tax.mapper.GMapper;
import com.jp.qxd.tax.mapper.HMapper;
import com.jp.qxd.tax.mapper.IMapper;
import com.jp.qxd.tax.mapper.JMapper;
import com.jp.qxd.tax.mapper.KMapper;
import com.jp.qxd.tax.mapper.Pdf00501Mapper;
import com.jp.qxd.tax.mapper.RMapper;
import com.jp.qxd.tax.mapper.SMapper;
import com.jp.qxd.tax.model.BaseModel;
import com.jp.qxd.tax.model.input.DModel;
import com.jp.qxd.tax.model.input.EModel;
import com.jp.qxd.tax.model.input.GModel;
import com.jp.qxd.tax.model.input.HModel;
import com.jp.qxd.tax.model.input.IModel;
import com.jp.qxd.tax.model.input.JModel;
import com.jp.qxd.tax.model.input.KModel;
import com.jp.qxd.tax.model.input.RModel;
import com.jp.qxd.tax.model.input.SModel;
import com.jp.qxd.tax.model.pdf.Rpt00501Model;
import com.jp.qxd.tax.utils.CNumber;

@Service
public class Pdf00501Service extends PdfBaseService {

	@Autowired
	private IMapper imapper;

	@Autowired
	private SMapper smapper;

	@Autowired
	private EMapper emapper;

	@Autowired
	private GMapper gmapper;

	@Autowired
	private DMapper dmapper;

	@Autowired
	private HMapper hmapper;

	@Autowired
	private RMapper rmapper;

	@Autowired
	private JMapper jmapper;

	@Autowired
	private KMapper kmapper;

	@Autowired
	private Pdf00501Mapper mapper00501;

	@Transactional
	public void initDB(BaseModel model) throws Exception {

		if (mapper00501.getModels(model).size() > 0) {
			mapper00501.deleteModel(model);
		}

		Rpt00501Model model00501 = new Rpt00501Model();
		model00501.setUserId(model.getUserId());
		model00501.setCompany_id(model.getCompany_id());
		model00501.setYear(model.getYear());
		model00501.setLegalPersonName(model.getLegalPersonName());
		model00501.setYmdFrom(model.getYmdFrom());
		model00501.setYmdTo(model.getYmdTo());

		// 1-1  入力画面!H108
		// 2-1  入力画面!H109
		// 3-1  入力画面!H110
		// 4-1  入力画面!H111
		// 5-1  入力画面!H112
		// 6-1  入力画面!H113
		// 7-1  入力画面!H114
		// 8-1  入力画面!H115
		// 9-1  入力画面!H116
		// 10-1  入力画面!H117
		// 11-1  入力画面!H118
		// 12-1  入力画面!H119
		// 13-1  入力画面!H120
		// 23-1  入力画面!H121
		// 24-1  入力画面!H122
		// 25-1  入力画面!H123
		// 26-1  入力画面!H125
		Integer g6 = 0, g7 = 0, g8 = 0, g9 = 0, g10 = 0, g11 = 0, g12 = 0, g13 = 0, g14 = 0, g15 = 0, g16 = 0, g17 = 0,
				g18 = 0, g28 = 0, g29 = 0, g30 = 0, g31 = 0, h31 = 0;
		List<? extends BaseModel> emodels = emapper.getModels(model);
		if (emodels.size() > 0) {
			EModel emodel = (EModel) emodels.get(0);
			g6 = nullChangeInteger(emodel.getE_h108());
			g7 = nullChangeInteger(emodel.getE_h109());
			g8 = nullChangeInteger(emodel.getE_h110());
			g9 = nullChangeInteger(emodel.getE_h111());
			g10 = nullChangeInteger(emodel.getE_h112());
			g11 = nullChangeInteger(emodel.getE_h113());
			g12 = nullChangeInteger(emodel.getE_h114());
			g13 = nullChangeInteger(emodel.getE_h115());
			g14 = nullChangeInteger(emodel.getE_h116());
			g15 = nullChangeInteger(emodel.getE_h117());
			g16 = nullChangeInteger(emodel.getE_h118());
			g17 = nullChangeInteger(emodel.getE_h119());
			g18 = nullChangeInteger(emodel.getE_h120());
			g28 = nullChangeInteger(emodel.getE_h121());
			g29 = nullChangeInteger(emodel.getE_h122());
			g30 = nullChangeInteger(emodel.getE_h123());
			g31 = nullChangeInteger(emodel.getE_h125());
			h31 = nullChangeInteger(emodel.getE_h125());
		}

		// 1-1 ~ 13-1
		model00501.setF_1_1(CNumber.toString(g6));
		model00501.setF_2_1(CNumber.toString(g7));
		model00501.setF_3_1(CNumber.toString(g8));
		model00501.setF_4_1(CNumber.toString(g9));
		model00501.setF_5_1(CNumber.toString(g10));
		model00501.setF_6_1(CNumber.toString(g11));
		model00501.setF_7_1(CNumber.toString(g12));
		model00501.setF_8_1(CNumber.toString(g13));
		model00501.setF_9_1(CNumber.toString(g14));
		model00501.setF_10_1(CNumber.toString(g15));
		model00501.setF_11_1(CNumber.toString(g16));
		model00501.setF_12_1(CNumber.toString(g17));
		model00501.setF_13_1(CNumber.toString(g18));

		// 23-1 ~ 26-1
		model00501.setF_23_1(CNumber.toString(g28));
		model00501.setF_24_1(CNumber.toString(g29));
		model00501.setF_25_1(CNumber.toString(g30));
		model00501.setF_26_1(CNumber.toString(g31));

		// 1-2  入力画面!E413
		// 1-3  入力画面!G413
		// 2-2  入力画面!E414
		// 2-3  入力画面!G414
		Integer h6 = 0, i6 = 0, h7 = 0, i7 = 0, h12 = 0, i12 = 0, h13 = 0, i13 = 0, h14 = 0, i14 = 0, h15 = 0, i15 = 0,
				h16 = 0, i16 = 0, h17 = 0, i17 = 0, i31 = 0;
		String h18 = "認容", i18 = "超過";
		List<? extends BaseModel> smodels = smapper.getModels(model);
		if (smodels.size() > 0) {
			SModel smodel = (SModel) smodels.get(0);
			h6 = nullChangeInteger(smodel.getS_e413());
			i6 = nullChangeInteger(smodel.getS_g413());
			h7 = nullChangeInteger(smodel.getS_e414());
			i7 = nullChangeInteger(smodel.getS_g414());
			h12 = nullChangeInteger(smodel.getS_e415());
			i12 = nullChangeInteger(smodel.getS_g415());
			h13 = nullChangeInteger(smodel.getS_e416());
			i13 = nullChangeInteger(smodel.getS_g416());
			h14 = nullChangeInteger(smodel.getS_e417());
			i14 = nullChangeInteger(smodel.getS_g417());
			h15 = nullChangeInteger(smodel.getS_e418());
			i15 = nullChangeInteger(smodel.getS_g418());
			h16 = nullChangeInteger(smodel.getS_e419());
			i16 = nullChangeInteger(smodel.getS_g419());
			h17 = nullChangeInteger(smodel.getS_e420());
			i17 = nullChangeInteger(smodel.getS_g420());
			i31 = nullChangeInteger(smodel.getS_e405());
		}
		// 1-2
		model00501.setF_1_2(CNumber.toString(h6));
		// 2-2
		model00501.setF_2_2(CNumber.toString(h7));
		// 7-2
		model00501.setF_7_2(CNumber.toString(h12));
		// 8-2
		model00501.setF_8_2(CNumber.toString(h13));
		// 9-2
		model00501.setF_9_2(CNumber.toString(h14));
		// 10-2
		model00501.setF_10_2(CNumber.toString(h15));
		// 11-2
		model00501.setF_11_2(CNumber.toString(h16));
		// 12-2
		model00501.setF_12_2(CNumber.toString(h16));
		// 13-2
		model00501.setF_13_2(h18);

		// 1-3
		model00501.setF_1_3(CNumber.toString(i6));
		// 2-3
		model00501.setF_2_3(CNumber.toString(i7));
		// 7-3
		model00501.setF_7_3(CNumber.toString(i12));
		// 8-3
		model00501.setF_8_3(CNumber.toString(i13));
		// 9-3
		model00501.setF_9_3(CNumber.toString(i14));
		// 10-3
		model00501.setF_10_3(CNumber.toString(i15));
		// 11-3
		model00501.setF_11_3(CNumber.toString(i16));
		// 12-3
		model00501.setF_12_3(CNumber.toString(i16));
		// 13-3
		model00501.setF_13_3(i18);

		// 1-4  G6-H6+I6
		model00501.setF_1_4(CNumber.toString(g6 - h6 + i6));
		// 2-4  G7-H7+I7
		model00501.setF_2_4(CNumber.toString(g7 - h7 + i7));
		// 7-4  G12-H12+I12
		model00501.setF_7_4(CNumber.toString(g12 - h12 + i12));
		// 8-4  G13-H13+I13
		model00501.setF_8_4(CNumber.toString(g13 - h13 + i13));
		// 9-4  G14-H14+I14
		model00501.setF_9_4(CNumber.toString(g14 - h14 + i14));
		// 10-4  G15-H15+I15
		model00501.setF_10_4(CNumber.toString(g15 - h15 + i15));
		// 11-4  G16-H16+I16
		model00501.setF_11_4(CNumber.toString(g16 - h16 + i16));
		// 12-4  G17-H17+I17
		model00501.setF_12_4(CNumber.toString(g17 - h17 + i17));
		// 13-4  G18-H18+I18
		//TODO
		//model00501.setF_12_4(CNumber.toString(g18 - h18 + i18));

		// 3-2 IF(G8=0,0,-(入力画面!I162+入力画面!I165+SUM(入力画面!K207:L211)))
		Integer h8 = 0, i8 = 0, h28 = 0, h29 = 0, h30 = 0;
		Integer i162 = 0, i165 = 0, k207 = 0, k208 = 0, k209 = 0, k210 = 0, k211 = 0, k197 = 0, k199 = 0, k200 = 0;
		List<? extends BaseModel> gmodels = gmapper.getModels(model);
		List<? extends BaseModel> imodels = imapper.getModels(model);
		if (gmodels.size() > 0) {
			GModel gmodel = (GModel) gmodels.get(0);
			i162 = nullChangeInteger(gmodel.getG_i162());
			i165 = nullChangeInteger(gmodel.getG_i165());
		}
		if (imodels.size() > 0) {
			IModel imodel = (IModel) imodels.get(0);
			k207 = nullChangeInteger(imodel.getI_k207());
			k208 = nullChangeInteger(imodel.getI_k208());
			k209 = nullChangeInteger(imodel.getI_k209());
			k210 = nullChangeInteger(imodel.getI_k210());
			k211 = nullChangeInteger(imodel.getI_k211());
			k197 = nullChangeInteger(imodel.getI_k197());
			k199 = nullChangeInteger(imodel.getI_k199());
			k200 = nullChangeInteger(imodel.getI_k200());
		}
		h28 = k197 + k207;
		h29 = k199 + k209;
		h30 = k200 + k210;
		if (g8 == 0) {
			h8 = 0;
		} else {
			h8 = -(i162 + i165 + k207 + k208 + k209 + k210 + k211);
		}
		// 3-2
		model00501.setF_3_2(CNumber.toString(h8));
		// 3-3
		model00501.setF_3_3(CNumber.toString(i8));
		// 3-4  G8-H8+I8
		model00501.setF_3_4(CNumber.toString(g8 - h8 + i8));
		//23-2 入力画面!K197+入力画面!K207
		model00501.setF_23_2(CNumber.toString(h28));
		//24-2 入力画面!K199+入力画面!K209
		model00501.setF_24_2(CNumber.toString(h29));
		//25-2 入力画面!K200+入力画面!K210
		model00501.setF_25_2(CNumber.toString(h30));
		//26-2 入力画面!H125
		model00501.setF_26_2(CNumber.toString(h31));
		//26-3 入力画面!E405
		model00501.setF_26_3(CNumber.toString(i31));
		//26-4 G31-H31+I31
		model00501.setF_26_4(CNumber.toString(g31 - h31 + i31));

		//4-2 IF(G9=0,0,-(入力画面!K207+入力画面!K208))
		Integer h9 = 0, i9 = 0;
		if (g9 == 0) {
			h9 = 0;
		} else {
			h9 = -(k207 + k208);
		}
		// 4-2
		model00501.setF_4_2(CNumber.toString(h9));
		// 4-3
		model00501.setF_4_3(CNumber.toString(i9));
		// 4-4  G9-H9+I9
		model00501.setF_4_4(CNumber.toString(g9 - h9 + i9));

		//5-2 IF(G10=0,0,-(入力画面!K209+入力画面!K211))
		Integer h10 = 0, i10 = 0;
		if (g10 == 0) {
			h10 = 0;
		} else {
			h10 = -(k209 + k211);
		}
		// 5-2
		model00501.setF_5_2(CNumber.toString(h10));
		// 5-3
		model00501.setF_5_3(CNumber.toString(i10));
		// 5-4  G10-H10+I10
		model00501.setF_5_4(CNumber.toString(g10 - h10 + i10));

		//6-2 IF(G11=0,0,-入力画面!K210)
		Integer h11 = 0, i11 = 0;
		if (g11 == 0) {
			h11 = 0;
		} else {
			h11 = -(k210);
		}
		// 6-2
		model00501.setF_6_2(CNumber.toString(h11));
		// 6-3
		model00501.setF_6_3(CNumber.toString(i11));
		// 6-4  G11-H11+I11
		model00501.setF_6_4(CNumber.toString(g11 - h11 + i11));

		Integer g21 = 0, h21 = 0, i21 = 0;
		Integer g22 = 0, h22 = 0, i22 = 0;
		Integer g23 = 0, h23 = 0, i23 = 0;
		Integer g24 = 0, h24 = 0, i24 = 0;
		Integer g25 = 0, h25 = 0, i25 = 0;
		Integer g26 = 0, h26 = 0, i26 = 0;
		Integer g27 = 0, h27 = 0, i27 = 0;
		// 16-4
		model00501.setF_16_4(CNumber.toString(g21 - h21 + i21));
		// 17-4
		model00501.setF_17_4(CNumber.toString(g22 - h22 + i22));
		// 18-4
		model00501.setF_18_4(CNumber.toString(g23 - h23 + i23));
		// 19-4
		model00501.setF_19_4(CNumber.toString(g24 - h24 + i24));
		// 20-4
		model00501.setF_20_4(CNumber.toString(g25 - h25 + i25));
		// 21-4
		model00501.setF_21_4(CNumber.toString(g26 - h26 + i26));
		// 22-4
		model00501.setF_22_4(CNumber.toString(g27 - h27 + i27));

		//23-3 '一(一)'!M12+'一(一)'!M20
		//TODO
		//23-4 G28-H28+I28
		//TODO
		//24-3 IF(入力画面!G66="東京都",IF('地6号(東京)'!E84<0,-'地6号(東京)'!E84,0),IF(地6号!H85<0,-地6号!H85,0))
		//TODO
		//24-4 G29-H29+I29
		//TODO
		//25-3 IF(AND(入力画面!G66="東京都",入力画面!G67<>"政令指定都市以外"),0,IF(地20号!H17<0,-地20号!H17,0))
		//TODO
		//25-4 G30-H30+I30
		//TODO

		//27-1 入力画面!H102
		Integer g32 = 0;
		Integer h97 = 0, h98 = 0, h99 = 0;
		List<? extends BaseModel> dmodels = dmapper.getModels(model);
		if (dmodels.size() > 0) {
			DModel dmodel = (DModel) dmodels.get(0);
			g32 = nullChangeInteger(dmodel.getD_h102());
			h97 = nullChangeInteger(dmodel.getD_h97());
			h98 = nullChangeInteger(dmodel.getD_h98());
			h99 = nullChangeInteger(dmodel.getD_h99());
		}
		// 27-1
		model00501.setF_27_1(CNumber.toString(g32));

		//27-2 入力画面!I162+入力画面!K177+入力画面!K178+入力画面!K179+入力画面!K180
		Integer h32 = 0;
		Integer k177 = 0, k178 = 0, k179 = 0, k180 = 0, k186 = 0, k187 = 0, k188 = 0;
		List<? extends BaseModel> hmodels = hmapper.getModels(model);
		if (hmodels.size() > 0) {
			HModel hmodel = (HModel) hmodels.get(0);
			k177 = nullChangeInteger(hmodel.getH_k177());
			k178 = nullChangeInteger(hmodel.getH_k178());
			k179 = nullChangeInteger(hmodel.getH_k179());
			k180 = nullChangeInteger(hmodel.getH_k180());
			k186 = nullChangeInteger(hmodel.getH_k186());
			k187 = nullChangeInteger(hmodel.getH_k187());
			k188 = nullChangeInteger(hmodel.getH_k188());
			h32 = i162 + k177 + k178 + k179 + k180;
		}
		// 27-2
		model00501.setF_27_2(CNumber.toString(h32));

		//27-3 入力画面!I398+入力画面!I399
		Integer i32 = 0;
		Integer i398 = 0, i399 = 0;
		List<? extends BaseModel> rmodels = rmapper.getModels(model);
		if (rmodels.size() > 0) {
			RModel rmodel = (RModel) rmodels.get(0);
			i398 = nullChangeInteger(rmodel.getR_i398());
			i399 = nullChangeInteger(rmodel.getR_i399());
			i32 = i398 + i399;
		}
		// 27-3
		model00501.setF_27_3(CNumber.toString(i32));
		// 27-4 G32-H32+I32
		model00501.setF_27_4(CNumber.toString(g32 + h32 + i32));

		//28-1
		Integer g34 = 0;
		g34 = -(h97 + g28);
		model00501.setF_28_1(CNumber.toString(g34));

		//28-2 -(入力画面!K177+入力画面!K186+入力画面!M224+入力画面!G225+入力画面!L239)
		Integer h34 = 0, i34 = 0;
		Integer m224 = 0, g225 = 0, l239 = 0, m226 = 0, m227 = 0, l240 = 0, m228 = 0, m229 = 0, l241 = 0;
		List<? extends BaseModel> jmodels = jmapper.getModels(model);
		if (jmodels.size() > 0) {
			JModel jmodel = (JModel) jmodels.get(0);
			m224 = nullChangeInteger(jmodel.getJ_g224());
			g225 = nullChangeInteger(jmodel.getJ_g225());
			m226 = nullChangeInteger(jmodel.getJ_g226());
			m227 = nullChangeInteger(jmodel.getJ_g227());
			m228 = nullChangeInteger(jmodel.getJ_g228());
			m229 = nullChangeInteger(jmodel.getJ_g229());
		}

		List<? extends BaseModel> kmodels = kmapper.getModels(model);
		if (jmodels.size() > 0) {
			KModel kmodel = (KModel) kmodels.get(0);
			l239 = nullChangeInteger(kmodel.getK_l239());
			l240 = nullChangeInteger(kmodel.getK_l240());
			l241 = nullChangeInteger(kmodel.getK_l241());
		}
		h34 = -(k177 + k186 + m224 + g225 + l239);
		//28-2
		model00501.setF_28_2(CNumber.toString(h34));

		//28-3-1 -(入力画面!M224+入力画面!G225)
		i34 = -(m224 + g225);
		model00501.setF_28_3_1(CNumber.toString(i34));

		//28-3-2 -'一(一)'!G18-'一(一)'!G30
		//TODO
		//28-4 G34-H34+I34+I35
		//TODO

		//29-1 -(入力画面!H98+入力画面!H122)
		Integer g36 = 0;
		g36 = -(h98 + g29);
		model00501.setF_29_1(CNumber.toString(g36));

		//29-2 -(入力画面!K178+入力画面!K187+入力画面!M226+入力画面!M227+入力画面!L240)
		Integer h36 = 0;
		h36 = -(k178 + k187 + m226 + m227 + l240);
		model00501.setF_29_2(CNumber.toString(h36));

		//29-3-1 -(入力画面!M226+入力画面!M227)
		Integer i36 = 0;
		i36 = -(m226 + m227);
		model00501.setF_29_3_1(CNumber.toString(i36));

		//29-3-2 IF(入力画面!G66="東京都",-'地6号(東京)'!E89,-地6号!H90)
		//TODO
		//29-4 G36-H36+I36+I37
		//TODO

		//30-1 -(入力画面!H99+入力画面!H123)
		Integer g38 = 0;
		g36 = -(h99 + g30);
		model00501.setF_30_1(CNumber.toString(g38));

		//30-2 -(入力画面!K179+入力画面!K188+入力画面!M228+入力画面!M229++入力画面!L241)
		Integer h38 = 0;
		h38 = -(k179 + k188 + m228 + m229 + l241);
		model00501.setF_30_2(CNumber.toString(h38));

		//30-3-1 -(入力画面!M228+入力画面!M229)
		Integer i38 = 0;
		i38 = -(m228 + m229);
		model00501.setF_30_3_1(CNumber.toString(i38));

		//30-3-2 IF(AND(入力画面!G66="東京都",入力画面!G67<>"政令指定都市以外"),0,-地20号!H23)
		//TODO
		//30-4 G38-H38+I38+I39
		//TODO

		//31-1 SUM(G6:G38)
		Integer g40 = 0;
		g40 = g6 + g7 + g8 + g9 + g10 + g11 + g12 + g13 + g14 + g15 + g16 + g17 + g18 + g21 + g22 + g23 + g24 + g25
				+ g26 + g27 + g28 + g29 + g30 + g31 + g32 + g34 + g36 + g38;
		model00501.setF_31_1(CNumber.toString(g40));

		//31-2 SUM(H6:H38)
		Integer h40 = 0;
		h40 = h6 + h7 + h8 + h9 + h10 + h11 + h12 + h13 + h14 + h15 + h16 + h17 + h21 + h22 + h23 + h24 + h25
						+ h26 + h27 + h28 + h29 + h30 + h31 + h32 + h34 + h36 + h38;
		model00501.setF_31_2(CNumber.toString(h40));

		//31-3 SUM(I6:I39)
		//TODO
		//31-4 =G40-H40+I40
		//model00501.setF_31_4(g40 - h40 + i40);
		//TODO

		Integer g47 = 0, h47 = 0, i47 = 0;
		Integer g48 = 0, h48 = 0, i48 = 0;
		Integer g49 = 0, h49 = 0, i49 = 0;
		Integer g50 = 0, h50 = 0, i50 = 0;

		//32-4 G47-H47+I47
		model00501.setF_32_4(CNumber.toString(g47 - h47 + i47));
		//33-4 G48-H48+I48
		model00501.setF_33_4(CNumber.toString(g48 - h48 + i48));
		//34-4 G49-H49+I49
		model00501.setF_34_4(CNumber.toString(g49 - h49 + i49));
		//35-4 G50-H50+I50
		model00501.setF_35_4(CNumber.toString(g50 - h50 + i50));
		//36-1 SUM(G47:G50)
		Integer g51 = 0, h51 = 0, i51 = 0;
		g51 = g47 + g48 + g49 + g50;
		model00501.setF_36_1(CNumber.toString(g51));
		//36-2 SUM(H47:H50)
		h51 = h47 + h48 + h49 + h50;
		model00501.setF_36_2(CNumber.toString(h51));
		//36-3 SUM(I47:I50)
		i51 = i47 + i48 + i49 + i50;
		model00501.setF_36_3(CNumber.toString(i51));
		//35-4 G51-H51+I51
		model00501.setF_36_4(CNumber.toString(g51 - h51 + i51));

		mapper00501.insertModel(model00501);
	}
}
