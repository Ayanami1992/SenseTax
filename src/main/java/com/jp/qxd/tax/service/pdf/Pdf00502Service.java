package com.jp.qxd.tax.service.pdf;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jp.qxd.tax.mapper.DMapper;
import com.jp.qxd.tax.mapper.EMapper;
import com.jp.qxd.tax.mapper.FMapper;
import com.jp.qxd.tax.mapper.GMapper;
import com.jp.qxd.tax.mapper.HMapper;
import com.jp.qxd.tax.mapper.IMapper;
import com.jp.qxd.tax.mapper.JMapper;
import com.jp.qxd.tax.mapper.KMapper;
import com.jp.qxd.tax.mapper.Pdf00502Mapper;
import com.jp.qxd.tax.mapper.RMapper;
import com.jp.qxd.tax.model.BaseModel;
import com.jp.qxd.tax.model.input.DModel;
import com.jp.qxd.tax.model.input.EModel;
import com.jp.qxd.tax.model.input.FModel;
import com.jp.qxd.tax.model.input.GModel;
import com.jp.qxd.tax.model.input.HModel;
import com.jp.qxd.tax.model.input.IModel;
import com.jp.qxd.tax.model.input.JModel;
import com.jp.qxd.tax.model.input.KModel;
import com.jp.qxd.tax.model.input.RModel;
import com.jp.qxd.tax.model.pdf.Rpt00502Model;
import com.jp.qxd.tax.utils.CNumber;

@Service
public class Pdf00502Service extends PdfBaseService {

	@Autowired
	private IMapper imapper;

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
	private FMapper fmapper;

	@Autowired
	private Pdf00502Mapper mapper00502;

	@Transactional
	public void initDB(BaseModel model) throws Exception {

		if (mapper00502.getModels(model).size() > 0) {
			mapper00502.deleteModel(model);
		}

		Rpt00502Model model00502 = new Rpt00502Model();
		model00502.setUserId(model.getUserId());
		model00502.setCompany_id(model.getCompany_id());
		model00502.setYear(model.getYear());
		model00502.setLegalPersonName(model.getLegalPersonName());
		model00502.setYmdFrom(model.getYmdFrom());
		model00502.setYmdTo(model.getYmdTo());

		//1-6 G5-I5-J5-K5
		Integer g5 = 0, i5 = 0, j5 = 0, k5 = 0, l5 = 0;
		l5 = g5 - i5 - j5 - k5;
		model00502.setF_1_6(CNumber.toString(l5));

		// 2-1 入力画面!H97
		Integer g6 = 0;
		Integer h100 = 0, h102 = 0, h98 = 0, h99 = 0;
		List<? extends BaseModel> dmodels = dmapper.getModels(model);
		if (dmodels.size() > 0) {
			DModel dmodel = (DModel) dmodels.get(0);
			g6 = nullChangeInteger(dmodel.getD_h97());
			h98 = nullChangeInteger(dmodel.getD_h98());
			h99 = nullChangeInteger(dmodel.getD_h99());
			h100 = nullChangeInteger(dmodel.getD_h100());
			h102 = nullChangeInteger(dmodel.getD_h102());
		}
		model00502.setF_2_1(CNumber.toString(g6));

		// 2-3 入力画面!K177
		Integer i6 = 0;
		Integer k186 = 0, k173 = 0, k180 = 0, k189 = 0, k178 = 0, k179 = 0, k187 = 0, k188 = 0;
		List<? extends BaseModel> hmodels = hmapper.getModels(model);
		if (hmodels.size() > 0) {
			HModel hmodel = (HModel) hmodels.get(0);
			k186 = nullChangeInteger(hmodel.getH_k186());
			k173 = nullChangeInteger(hmodel.getH_k173());
			k180 = nullChangeInteger(hmodel.getH_k180());
			k189 = nullChangeInteger(hmodel.getH_k189());
			k178 = nullChangeInteger(hmodel.getH_k178());
			k179 = nullChangeInteger(hmodel.getH_k179());
			k187 = nullChangeInteger(hmodel.getH_k187());
			k188 = nullChangeInteger(hmodel.getH_k188());
			i6 = nullChangeInteger(hmodel.getH_k177());
		}
		model00502.setF_2_3(CNumber.toString(i6));

		//2-4  -入力画面!K207
		Integer j6 = 0;
		Integer k197 = 0, k209 = 0, k199 = 0, k210 = 0, k200 = 0, k211 = 0, k201 = 0, k202 = 0;
		List<? extends BaseModel> imodels = imapper.getModels(model);
		if (imodels.size() > 0) {
			IModel imodel = (IModel) imodels.get(0);
			k197 = nullChangeInteger(imodel.getI_k197());
			k199 = nullChangeInteger(imodel.getI_k199());
			k200 = nullChangeInteger(imodel.getI_k200());
			k209 = nullChangeInteger(imodel.getI_k209());
			k211 = nullChangeInteger(imodel.getI_k211());
			k201 = nullChangeInteger(imodel.getI_k201());
			k202 = nullChangeInteger(imodel.getI_k202());
			j6 = nullChangeInteger(imodel.getI_k207());
		}
		model00502.setF_2_4(CNumber.toString(j6));

		//2-5 入力画面!K186-入力画面!K197
		Integer k6 = 0;
		k6 = k186 - k197;
		model00502.setF_2_5(CNumber.toString(k6));

		//2-6 G6-I6-J6-K6
		Integer l6 = 0;
		l6 = g6 - i6 - j6 - k6;
		model00502.setF_2_6(CNumber.toString(l6));

		//3-2  入力画面!G224+入力画面!G225
		Integer h7 = 0;
		Integer g224 = 0, g225 = 0, g226 = 0, g227 = 0, g228 = 0, g229 = 0, g230 = 0, g231 = 0;
		List<? extends BaseModel> jmodels = jmapper.getModels(model);
		if (jmodels.size() > 0) {
			JModel jmodel = (JModel) jmodels.get(0);
			g224 = nullChangeInteger(jmodel.getJ_g224());
			g225 = nullChangeInteger(jmodel.getJ_g225());
			g226 = nullChangeInteger(jmodel.getJ_g226());
			g227 = nullChangeInteger(jmodel.getJ_g227());
			g228 = nullChangeInteger(jmodel.getJ_g228());
			g229 = nullChangeInteger(jmodel.getJ_g229());
			g230 = nullChangeInteger(jmodel.getJ_g230());
			g231 = nullChangeInteger(jmodel.getJ_g231());
			h7 = g224 + g225;
		}
		model00502.setF_3_2(CNumber.toString(h7));

		//3-5 入力画面!M224+入力画面!G225
		Integer k7 = 0;
		k7 = g224 + g225;
		model00502.setF_3_5(CNumber.toString(k7));

		//3-6 H7-I7-J7-K7
		Integer i7 = 0, j7 = 0, l7 = 0;
		l7 = h7 - i7 - j7 - k7;
		model00502.setF_3_6(CNumber.toString(l7));

		//4-2  '一(一)'!G18+'一(一)'!G30-'一(一)'!M12-'一(一)'!M20
		//TODO
		//4-6 = 4-2
		//TODO

		//5-1 SUM(G5:G8)
		Integer g9 = 0;
		g9 = g5 + g6;
		model00502.setF_5_1(CNumber.toString(g9));

		//5-2 SUM(H5:H8)
		//TODO

		//5-3 SUM(I5:I8)
		Integer i9 = 0;
		i9 = i5 + i6 + i7;
		model00502.setF_5_3(CNumber.toString(i9));

		//5-4 SUM(J5:J8)
		Integer j9 = 0;
		j9 = j5 + j6 + j7;
		model00502.setF_5_4(CNumber.toString(j9));

		//5-5 SUM(K5:K8)
		Integer k9 = 0;
		k9 = k5 + k6 + k7;
		model00502.setF_5_5(CNumber.toString(k9));

		//5-6 SUM(L5:L8)
		//TODO

		//6-1 ~ 6-6
		Integer g10 = 0, i10 = 0, j10 = 0, k10 = 0, l10 = 0;

		//7-1-u  -入力画面!H122
		Integer g11 = 0, i11 = 0;
		Integer h122 = 0, h123 = 0;
		List<? extends BaseModel> emodels = emapper.getModels(model);
		if (emodels.size() > 0) {
			EModel emodel = (EModel) emodels.get(0);
			h122 = nullChangeInteger(emodel.getE_h122());
			h123 = nullChangeInteger(emodel.getE_h123());
			g11 = -h122;
		}
		model00502.setF_7_1_u(CNumber.toString(g11));

		//7-4-u  -入力画面!K209
		Integer j11 = 0;
		j11 = -k209;
		model00502.setF_7_4_u(CNumber.toString(j11));

		//7-5-u  -入力画面!K199
		Integer k11 = 0;
		k11 = -k199;
		model00502.setF_7_5_u(CNumber.toString(k11));

		//7-6-u G11-I11-J11-K11
		Integer l11 = 0;
		l11 = g11 - i11 - j11 - k11;
		model00502.setF_7_6_u(CNumber.toString(l11));

		//7-1-d  入力画面!H98+入力画面!H122
		Integer g12 = 0;
		g12 = h98 + h122;
		model00502.setF_7_1_d(CNumber.toString(g12));

		//7-3-d  入力画面!K178
		Integer i12 = 0;
		i12 = k178;
		model00502.setF_7_3_d(CNumber.toString(i12));

		//7-5-d  入力画面!K187
		Integer k12 = 0;
		k12 = k187;
		model00502.setF_7_5_d(CNumber.toString(k11));

		//7-6-d G12-I12-J12-K12
		Integer l12 = 0, j12 = 0;
		l12 = g12 - i12 - j12 - k12;
		model00502.setF_7_6_d(CNumber.toString(l12));

		//8-2  入力画面!G226+入力画面!G227
		Integer h13 = 0;
		h13 = g226 + g227;
		model00502.setF_8_2(CNumber.toString(h13));

		//8-5  入力画面!M226+入力画面!M227  M226 = G226 M227 = G227
		Integer k13 = 0;
		k13 = g226 + g227;
		model00502.setF_8_5(CNumber.toString(k13));

		//8-6 H13-I13-J13-K13
		Integer l13 = 0, i13 = 0, j13 = 0;
		l13 = h13 - i13 - j13 - l13;
		model00502.setF_8_6(CNumber.toString(l13));

		//9-1 IF(入力画面!G66="東京都",IF('地6号(東京)'!E84<0,'地6号(東京)'!E84,0),IF(地6号!H85<0,地6号!H85,0))
		//9-2 IF(入力画面!G66="東京都",IF('地6号(東京)'!E89>0,'地6号(東京)'!E89,0),IF(地6号!H90>0,地6号!H90,0))
		//9-3 9-1
		//9-4 9-2
		//TODO

		//10-1 SUM(G10:G15)
		Integer g16 = 0;
		g16 = g10 + g11 + g12;
		model00502.setF_10_1(CNumber.toString(g16));

		//10-2 SUM(H10:H15) TODO

		//10-3 SUM(I10:I15)
		Integer i16 = 0;
		i16 = i10 + i11 + i12 + i13;
		model00502.setF_10_3(CNumber.toString(i16));

		//10-4 SUM(J10:J15)
		Integer j16 = 0;
		j16 = j10 + j11 + j12 + j13;
		model00502.setF_10_4(CNumber.toString(j16));

		//10-5 SUM(K10:K15)
		Integer k16 = 0;
		k16 = k10 + k11 + k12 + k13;
		model00502.setF_10_5(CNumber.toString(k16));

		//10-6 SUM(L10:L15)

		//11-6 G17-I17-J17-K17
		Integer g17 = 0, i17 = 0, j17 = 0, k17 = 0, l17 = 0;
		l17 = g17 - i17 - j17 - k17;
		model00502.setF_11_6(CNumber.toString(l17));

		//12-1-u  -入力画面!H123
		Integer g18 = 0;
		g18 = -h123;
		model00502.setF_12_1_u(CNumber.toString(g18));

		//12-4-u  -入力画面!K210
		Integer j18 = 0;
		j18 = -k210;
		model00502.setF_12_4_u(CNumber.toString(j18));

		//12-5-u  -入力画面!K200
		Integer k18 = 0;
		k18 = -k200;
		model00502.setF_12_5_u(CNumber.toString(k18));

		//12-1-6 G18-I18-J18-K18
		Integer l18 = 0, i18 = 0;
		l18 = g18 - i18 - j18 - k18;
		model00502.setF_12_6_u(CNumber.toString(l18));

		//12-1-d 入力画面!H99+入力画面!H123
		Integer g19 = 0;
		g19 = h99 + h123;
		model00502.setF_12_1_d(CNumber.toString(g19));

		//12-3-d  入力画面!K179
		Integer i19 = 0;
		i19 = k179;
		model00502.setF_12_3_d(CNumber.toString(i19));

		//12-5-d  入力画面!K188
		Integer k19 = 0;
		k19 = k188;
		model00502.setF_12_5_d(CNumber.toString(k19));

		//12-6-d G19-I19-J19-K19
		Integer l19 = 0, j19 = 0;
		l19 = g19 - i19 - j19 - k19;
		model00502.setF_12_6_d(CNumber.toString(l19));

		//13-2 入力画面!G228+入力画面!G229
		Integer h20 = 0;
		h20 = g228 + g229;
		model00502.setF_13_2(CNumber.toString(h20));

		//13-5 入力画面!M228+入力画面!M229 M228 = G228 M229 = G229
		Integer k20 = 0;
		k20 = g228 + g229;
		model00502.setF_13_5(CNumber.toString(k20));

		//13-6 H20-I20-J20-K20
		Integer l20 = 0, i20 = 0, j20 = 0;
		l20 = h20 - i20 - j20 - k20;
		model00502.setF_13_6(CNumber.toString(l20));

		//14-2-u IF(AND(入力画面!G66="東京都",入力画面!G67<>"政令指定都市以外"),0,IF(地20号!H17<0,地20号!H17,0))
		//14-2-d IF(AND(入力画面!G66="東京都",入力画面!G67<>"政令指定都市以外"),0,地20号!H22+IF(地20号!H17>0,地20号!H17,0))
		//TODO

		//15-1 SUM(G17:G22)
		Integer g23 = 0;
		g23 = g17 + g18 + g19;
		model00502.setF_15_1(CNumber.toString(g23));

		//15-2 TODO

		//15-3 SUM(I17:I22)
		Integer i23 = 0;
		i23 = i17 + i18 + i19 + i20;
		model00502.setF_15_3(CNumber.toString(i23));

		//15-4 SUM(J17:J22)
		Integer j23 = 0;
		j23 = j17 + j18 + j19 + j20;
		model00502.setF_15_4(CNumber.toString(j23));

		//15-5 SUM(K17:K22)
		Integer k23 = 0;
		k23 = k17 + k18 + k19 + k20;
		model00502.setF_15_5(CNumber.toString(k23));

		//16-6 G24+H24-I24-J24-K24
		Integer g24 = 0, h24 = 0, i24 = 0, j24 = 0, k24 = 0, l24 = 0;
		l24 = g24 + h24 - i24 - j24 - k24;
		model00502.setF_16_6(CNumber.toString(l24));

		//17-1 入力画面!H100
		Integer g25 = 0;
		g25 = h100;
		model00502.setF_17_1(CNumber.toString(g25));

		//17-2  入力画面!K173-入力画面!K201-入力画面!K211
		Integer h25 = 0;
		h25 = k173 - k201 - k211;
		model00502.setF_17_2(CNumber.toString(h25));

		//17-3 入力画面!K180
		Integer i25 = 0;
		i25 = k180;
		model00502.setF_17_3(CNumber.toString(i25));

		//17-4 -入力画面!K211
		Integer j25 = 0;
		j25 = -k211;
		model00502.setF_17_4(CNumber.toString(j25));

		//17-5 入力画面!K189-入力画面!K201
		Integer k25 = 0;
		k25 = k189 - k201;
		model00502.setF_17_5(CNumber.toString(k25));

		//17-6 G25+H25-I25-J25-K25
		Integer l25 = 0;
		l25 = g25 + h25 - i25 - j25 - k25;
		model00502.setF_17_6(CNumber.toString(l25));

		//18-2  入力画面!G230+入力画面!G231
		Integer h26 = 0;
		h26 = g230 + g231;
		model00502.setF_18_2(CNumber.toString(h26));

		//18-5  入力画面!M230+入力画面!M231  G230 = M230 G231 = M231
		Integer k26 = 0;
		k26 = g230 + g231;
		model00502.setF_18_5(CNumber.toString(k26));

		//18-6 G26+H26-I26-J26-K26
		Integer l26 = 0;
		l26 = g25 + h25 - i25 - j25 - k25;
		model00502.setF_17_6(CNumber.toString(l26));

		//19-1 SUM(G24:G26)
		Integer g27 = 0;
		g27 = g24 + g25;
		model00502.setF_19_1(CNumber.toString(g27));

		//19-2 SUM(H24:H26)
		Integer h27 = 0;
		h27 = h24 + h25 + h26;
		model00502.setF_19_2(CNumber.toString(h27));

		//19-3 SUM(I24:I26)
		Integer i27 = 0, i26 = 0;
		i27 = i24 + i25 + i26;
		model00502.setF_19_3(CNumber.toString(i27));

		//19-4 SUM(J24:J26)
		Integer j27 = 0, j26 = 0;
		j27 = j24 + j25 + j26;
		model00502.setF_19_4(CNumber.toString(j27));

		//19-5 SUM(K24:K26)
		Integer k27 = 0;
		k27 = k24 + k25 + k26;
		model00502.setF_19_5(CNumber.toString(k27));

		//19-6 SUM(L24:L26)
		Integer l27 = 0;
		l27 = l24 + l25 + l26;
		model00502.setF_19_6(CNumber.toString(l27));

		//20-6 G28+H28-I28-J28-K28
		Integer g28 = 0, h28 = 0, i28 = 0, j28 = 0, k28 = 0, l28 = 0;
		l28 = g28 + h28 - i28 - j28 - k28;
		model00502.setF_20_6(CNumber.toString(l28));

		//21-6 G29+H29-I29-J29-K29
		Integer g29 = 0, h29 = 0, i29 = 0, j29 = 0, k29 = 0, l29 = 0;
		l29 = g29 + h29 - i29 - j29 - k29;
		model00502.setF_21_6(CNumber.toString(l29));

		//22-2 -入力画面!K202
		Integer h30 = 0, k30 = 0;
		h30 = -k202;
		k30 = -k202;
		model00502.setF_22_2(CNumber.toString(h30));
		//22-5 -入力画面!K202
		model00502.setF_22_5(CNumber.toString(k30));

		//22-6 G30+H30-I30-J30-K30
		Integer g30 = 0, i30 = 0, j30 = 0, l30 = 0;
		l30 = g30 + h30 - i30 - j30 - k30;
		model00502.setF_22_6(CNumber.toString(l30));

		//23-2 '六(一)'!H11-'六(一)'!I11
		//23-5 '六(一)'!H11-'六(一)'!I11
		//TODO

		Integer h32 = 0, k32 = 0, h33 = 0, k33 = 0, h35 = 0, k35 = 0, h37 = 0, k37 = 0;
		List<? extends BaseModel> kmodels = kmapper.getModels(model);
		if (kmodels.size() > 0) {
			KModel kmodel = (KModel) kmodels.get(0);
			h32 = nullChangeInteger(kmodel.getK_l243());
			k32 = nullChangeInteger(kmodel.getK_l243());
			h33 = nullChangeInteger(kmodel.getK_l244());
			k33 = nullChangeInteger(kmodel.getK_l244());
			h35 = nullChangeInteger(kmodel.getK_l245());
			k35 = nullChangeInteger(kmodel.getK_l245());
			h37 = nullChangeInteger(kmodel.getK_e237());
			k37 = nullChangeInteger(kmodel.getK_e237());
		}
		//24-2  入力画面!L243
		model00502.setF_24_2(CNumber.toString(h32));
		//24-5 入力画面!L243
		model00502.setF_24_5(CNumber.toString(k32));

		//24-6 G32+H32-I32-J32-K32
		Integer g32 = 0, i32 = 0, j32 = 0, l32 = 0;
		l32 = g32 + h32 - i32 - j32 - k32;
		model00502.setF_24_6(CNumber.toString(l32));

		//25-2  入力画面!L244
		model00502.setF_25_2(CNumber.toString(h33));
		//25-5 入力画面!L244
		model00502.setF_25_5(CNumber.toString(k33));

		//25-6 G33+H33-I33-J33-K33
		Integer g33 = 0, i33 = 0, j33 = 0, l33 = 0;
		l33 = g33 + h33 - i33 - j33 - k33;
		model00502.setF_25_6(CNumber.toString(l33));

		//26-6 G34+H34-I34-J34-K34
		Integer g34 = 0, h34 = 0, i34 = 0, j34 = 0, k34 = 0, l34 = 0;
		l34 = g34 + h34 - i34 - j34 - k34;
		model00502.setF_26_6(CNumber.toString(l34));

		//27-2  入力画面!L245
		model00502.setF_27_2(CNumber.toString(h35));
		//27-5 入力画面!L245
		model00502.setF_27_5(CNumber.toString(k35));

		//28-2  '六(一)'!I11
		//28-5 '六(一)'!I11
		//TODO

		//29-2  入力画面!E237
		model00502.setF_29_2(CNumber.toString(h37));
		//29-5 入力画面!E237
		model00502.setF_29_5(CNumber.toString(k37));

		//29-6 G37+H37-I37-J37-K37
		Integer g37 = 0, i37 = 0, j37 = 0, l37 = 0;
		l37 = g37 + h37 - i37 - j37 - k37;
		model00502.setF_29_6(CNumber.toString(l37));

		//30 入力画面!H102
		Integer g42 = 0;
		g42 = h102;
		model00502.setF_30_1(CNumber.toString(g42));

		//31 入力画面!I398+入力画面!I399
		Integer g43 = 0;
		Integer i398 = 0, i399 = 0;
		List<? extends BaseModel> rmodels = rmapper.getModels(model);
		if (rmodels.size() > 0) {
			RModel rmodel = (RModel) rmodels.get(0);
			i398 = nullChangeInteger(rmodel.getR_i398());
			i399 = nullChangeInteger(rmodel.getR_i399());
			g43 = i398 + i399;
		}
		model00502.setF_31(CNumber.toString(g43));

		//33 G43+G44
		Integer g44 = 0, g45 = 0;
		g45 = g43 + g44;
		model00502.setF_33(CNumber.toString(g45));

		//34 I9+I16+I23
		Integer g46 = 0;
		g46 = i9 + i16 + i23;
		model00502.setF_34(CNumber.toString(g46));

		//35 I27
		Integer g47 = 0;
		g47 = i27;
		model00502.setF_35(CNumber.toString(g47));

		//39 入力画面!I162
		Integer g51 = 0;
		List<? extends BaseModel> gmodels = gmapper.getModels(model);
		if (gmodels.size() > 0) {
			GModel gmodel = (GModel) gmodels.get(0);
			g51 = nullChangeInteger(gmodel.getG_i162());
		}
		model00502.setF_39(CNumber.toString(g51));

		//40 G46+G47+G48+G49+G50+G51
		Integer g52 = 0, g48 = 0, g49 = 0, g50 = 0;
		g52 = g46 + g47 + g48 + g49 + g50 + g51;
		model00502.setF_40(CNumber.toString(g52));

		//41 G42+G45-G52
		Integer g53 = 0;
		g53 = g42 + g45 - g52;
		model00502.setF_41(CNumber.toString(g53));

		//f_1_date_from IF(G5=0,"",入力画面!D144)
		String c5 = "", c6 = "", c10 = "", c12 = "", c17 = "", c19 = "", c24 = "", c25 = "", d144 = "", f144 = "",
				d145 = "", f145 = "";
		List<? extends BaseModel> fmodels = fmapper.getModels(model);
		if (fmodels.size() > 0) {
			FModel fmodel = (FModel) fmodels.get(0);
			d144 = fmodel.getF_d144();
			d145 = fmodel.getF_d145();
			f144 = fmodel.getF_f144();
			f145 = fmodel.getF_f145();
		}
		if (g5 == 0) {
			c5 = "";
		} else {
			c5 = d144;
		}
		model00502.setF_1_date_from(c5);

		//f_1_date_to IF(C5="","",入力画面!F144)
		String d5 = "";
		if (c5 == "") {
			d5 = "";
		} else {
			d5 = f144;
		}
		model00502.setF_1_date_to(d5);

		//f_2_date_from IF(G6=0,"",入力画面!D145)
		if (g6 == 0) {
			c6 = "";
		} else {
			c6 = d145;
		}
		model00502.setF_2_date_from(c6);

		//f_2_date_to IF(C6="","",入力画面!F145)
		String d6 = "";
		if (c6 == "") {
			d6 = "";
		} else {
			d6 = f145;
		}
		model00502.setF_2_date_to(d6);

		//f_6_date_from IF(G10=0,"",入力画面!D144)
		if (g10 == 0) {
			c10 = "";
		} else {
			c10 = d144;
		}
		model00502.setF_6_date_from(c10);

		//f_6_date_to IF(C10="","",入力画面!F145)
		String d10 = "";
		if (c10 == "") {
			d10 = "";
		} else {
			d10 = f145;
		}
		model00502.setF_6_date_to(d10);

		//f_7_date_from IF(AND(G12=0,G11=0),"",入力画面!D145)
		if (g12 == 0 && g11 == 0) {
			c12 = "";
		} else {
			c12 = d145;
		}
		model00502.setF_7_date_from(c12);

		//f_7_date_to IF(C12="","",入力画面!F145)
		String d12 = "";
		if (c12 == "") {
			d12 = "";
		} else {
			d12 = f145;
		}
		model00502.setF_7_date_to(d12);

		//f_11_date_from IF(G17=0,"",入力画面!D144)
		if (g17 == 0) {
			c17 = "";
		} else {
			c17 = d144;
		}
		model00502.setF_11_date_from(c17);

		//f_11_date_to IF(C17="","",入力画面!F145)
		String d17 = "";
		if (c17 == "") {
			d17 = "";
		} else {
			d17 = f145;
		}
		model00502.setF_11_date_to(d17);

		//f_12_date_from IF(AND(G18=0,G19=0),"",入力画面!D145)
		if (g18 == 0 && g19 == 0) {
			c19 = "";
		} else {
			c19 = d145;
		}
		model00502.setF_12_date_from(c19);

		//f_12_date_to IF(C19="","",入力画面!F145)
		String d19 = "";
		if (c19 == "") {
			d19 = "";
		} else {
			d19 = f145;
		}
		model00502.setF_12_date_to(d19);

		//f_16_date_from IF(G24=0,"",入力画面!D144)
		if (g24 == 0) {
			c24 = "";
		} else {
			c24 = d144;
		}
		model00502.setF_16_date_from(c24);

		//f_16_date_to IF(C24="","",入力画面!F145)
		String d24 = "";
		if (c24 == "") {
			d24 = "";
		} else {
			d24 = f145;
		}
		model00502.setF_16_date_to(d24);

		//f_17_date_from IF(AND(G25=0,H25=0),"",入力画面!D145)
		if (g25 == 0 && h25 == 0) {
			c25 = "";
		} else {
			c25 = d145;
		}
		model00502.setF_17_date_from(c25);

		//f_17_date_to IF(C25="","",入力画面!F145)
		String d25 = "";
		if (c25 == "") {
			d25 = "";
		} else {
			d25 = f145;
		}
		model00502.setF_17_date_to(d25);

		mapper00502.insertModel(model00502);
	}
}
