package com.jp.qxd.tax.service.pdf;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jp.qxd.tax.mapper.AMapper;
import com.jp.qxd.tax.mapper.BMapper;
import com.jp.qxd.tax.mapper.CMapper;
import com.jp.qxd.tax.mapper.FMapper;
import com.jp.qxd.tax.mapper.GMapper;
import com.jp.qxd.tax.mapper.HMapper;
import com.jp.qxd.tax.mapper.IMapper;
import com.jp.qxd.tax.mapper.JMapper;
import com.jp.qxd.tax.mapper.KMapper;
import com.jp.qxd.tax.mapper.LMapper;
import com.jp.qxd.tax.mapper.MMapper;
import com.jp.qxd.tax.mapper.NMapper;
import com.jp.qxd.tax.mapper.PMapper;
import com.jp.qxd.tax.mapper.Pdf004Mapper;
import com.jp.qxd.tax.mapper.QMapper;
import com.jp.qxd.tax.mapper.RMapper;
import com.jp.qxd.tax.mapper.SMapper;
import com.jp.qxd.tax.model.BaseModel;
import com.jp.qxd.tax.model.input.AModel;
import com.jp.qxd.tax.model.input.BModel;
import com.jp.qxd.tax.model.input.CModel;
import com.jp.qxd.tax.model.input.FModel;
import com.jp.qxd.tax.model.input.GModel;
import com.jp.qxd.tax.model.input.HModel;
import com.jp.qxd.tax.model.input.IModel;
import com.jp.qxd.tax.model.input.JModel;
import com.jp.qxd.tax.model.input.KModel;
import com.jp.qxd.tax.model.input.LModel;
import com.jp.qxd.tax.model.input.MModel;
import com.jp.qxd.tax.model.input.NModel;
import com.jp.qxd.tax.model.input.PModel;
import com.jp.qxd.tax.model.input.QModel;
import com.jp.qxd.tax.model.input.RModel;
import com.jp.qxd.tax.model.input.SModel;
import com.jp.qxd.tax.model.pdf.Rpt004Model;
import com.jp.qxd.tax.utils.CNumber;

@Service
public class Pdf004Service extends PdfBaseService {

	@Autowired
	private AMapper amapper;

	@Autowired
	private BMapper bmapper;

	@Autowired
	private CMapper cmapper;

	@Autowired
	private FMapper fmapper;

	@Autowired
	private GMapper gmapper;

	@Autowired
	private HMapper hmapper;

	@Autowired
	private IMapper imapper;

	@Autowired
	private JMapper jmapper;

	@Autowired
	private KMapper kmapper;

	@Autowired
	private LMapper lmapper;

	@Autowired
	private MMapper mmapper;

	@Autowired
	private NMapper nmapper;

	@Autowired
	private PMapper pmapper;

	@Autowired
	private QMapper qmapper;

	@Autowired
	private RMapper rmapper;

	@Autowired
	private SMapper smapper;

	@Autowired
	private Pdf004Mapper mapper004;

	@Transactional
	public Rpt004Model initDB(BaseModel model) throws Exception {

		if (mapper004.getModels(model).size() > 0) {
			mapper004.deleteModel(model);
		}

		Rpt004Model model004 = new Rpt004Model();
		model004.setUserId(model.getUserId());
		model004.setCompany_id(model.getCompany_id());
		model004.setYear(model.getYear());
		model004.setLegalPersonName(model.getLegalPersonName());
		model004.setYmdFrom(model.getYmdFrom());
		model004.setYmdTo(model.getYmdTo());

		// 1-1 入力画面!K9-(入力画面!I398+入力画面!I399)
		Integer k9 = 0;
		List<? extends BaseModel>  amodels = amapper.getModels(model);
		if (amodels.size() > 0) {
			AModel amodel = (AModel) amodels.get(0);
			k9 = CNumber.parseInteger(amodel.getTax());
		}

		Integer g5 = 0;
		Integer i398 = 0;
		Integer i399 = 0;
		List<? extends BaseModel>  rmodels = rmapper.getModels(model);
		if (rmodels.size() > 0) {
			RModel rmodel = (RModel) rmodels.get(0);
			i398 = nullChangeInteger(rmodel.getR_i398());
			i399 = nullChangeInteger(rmodel.getR_i399());
		}
		g5 = k9 - i398 + i399;
		model004.setF_1_1(CNumber.toString(g5));

		// 1-4
		Integer j5 = 0;
		List<? extends BaseModel> smodels = smapper.getModels(model);
		if (smodels.size() > 0) {
			SModel smodel = (SModel) smodels.get(0);
			j5 = nullChangeInteger(smodel.getS_e409());
		}
		model004.setF_1_3(CNumber.toString(j5));

		// 1-2
		Integer h5  = g5 - j5;
		model004.setF_1_2(CNumber.toString(h5));

		// 2-1 =入力画面!K186+入力画面!M224+入力画面!M225+入力画面!L239
		Integer g7 = 0;
		Integer K180 = 0, K186 = 0, K187 = 0, K188 = 0;

		List<? extends BaseModel> hmodels = hmapper.getModels(model);
		if (hmodels.size() > 0) {
			HModel hmodel = (HModel) hmodels.get(0);
			K180 = nullChangeInteger(hmodel.getH_k180());
			K186 = nullChangeInteger(hmodel.getH_k186());
			K187 = nullChangeInteger(hmodel.getH_k187());
			K188 = nullChangeInteger(hmodel.getH_k188());
		}

		Integer M224 = 0, M225 = 0, M226 = 0, M227 = 0, M228 = 0, M229 = 0;
		List<? extends BaseModel> jmodels = jmapper.getModels(model);
		if (jmodels.size() > 0) {
			JModel jmodel = (JModel) jmodels.get(0);
			M224 = nullChangeInteger(jmodel.getJ_m224());
			M225 = nullChangeInteger(jmodel.getJ_m225());
			M226 = nullChangeInteger(jmodel.getJ_m226());
			M227 = nullChangeInteger(jmodel.getJ_m227());
			M228 = nullChangeInteger(jmodel.getJ_m228());
			M229 = nullChangeInteger(jmodel.getJ_m229());
		}

		Integer L239 = 0, L240 = 0, L241 = 0, L243 = 0, L244 = 0, L245 = 0, E237 = 0;
		String C237 = "", H237 = "";
		List<? extends BaseModel> kmodels = kmapper.getModels(model);
		if (kmodels.size() > 0) {
			KModel kmodel = (KModel) kmodels.get(0);
			L239 = nullChangeInteger(kmodel.getK_l239());
			L240 = nullChangeInteger(kmodel.getK_l240());
			L241 = nullChangeInteger(kmodel.getK_l241());
			L243 = nullChangeInteger(kmodel.getK_l243());
			L244 = nullChangeInteger(kmodel.getK_l244());
			L245 = nullChangeInteger(kmodel.getK_l245());
			E237 = nullChangeInteger(kmodel.getK_e237());
			C237 = kmodel.getK_c237();
			H237 = kmodel.getK_h237();
		}
		g7 = K186 + M224 + M225 + L239;
		model004.setF_2_1(CNumber.toString(g7));
		model004.setF_2_2(CNumber.toString(g7));

		// 3-1 =入力画面!K187+入力画面!K188+入力画面!M226+入力画面!M227+入力画面!M228+入力画面!M229+入力画面!L240+入力画面!L241
		Integer g8 = K187 + K188 + M226 + M227 + M228 + M229 + L240 + L241;
		model004.setF_3_1(CNumber.toString(g8));
		model004.setF_3_2(CNumber.toString(g8));

		// 4-1
		Integer g9 = (i398 + i399);
		model004.setF_4_1(CNumber.toString(g9));
		model004.setF_4_2(CNumber.toString(g9));

		// 5-1
		Integer g10 = (L243 + L244 + L245);
		model004.setF_5_1(CNumber.toString(g10));
		model004.setF_5_4(CNumber.toString(g10));

		// 6-1
		Integer g11 = 0;
		Integer g20 = 0;
		List<? extends BaseModel> qmodels = qmapper.getModels(model);
		if (qmodels.size() > 0) {
			QModel qmodel = (QModel) qmodels.get(0);
			g11 = nullChangeInteger(qmodel.getQ_h390());
			g20 = nullChangeInteger(qmodel.getQ_h392());
		}
		model004.setF_6_1(CNumber.toString(g11));
		model004.setF_6_2(CNumber.toString(g11));

		BModel bmodel = null;
		List<? extends BaseModel> bmodels = bmapper.getModels(model);
		if (bmodels.size() > 0) {
			bmodel = (BModel) bmodels.get(0);
		}
		CModel cmodel = null;
		List<? extends BaseModel> cmodels = cmapper.getModels(model);
		if (cmodels.size() > 0) {
			cmodel = (CModel) cmodels.get(0);
		}
		// 8-1 =十五!G3
		Integer g13 = this.getG3_15(model, bmodel, cmodel);
		model004.setF_8_1(CNumber.toString(g13));
		model004.setF_8_4(CNumber.toString(g13));

		// 10-1 =入力画面!I165+入力画面!K207+入力画面!K209+入力画面!K210+入力画面!K211
		Integer g15 = 0;
		List<? extends BaseModel> gmodels = gmapper.getModels(model);
		if (gmodels.size() > 0) {
			GModel gmodel = (GModel) gmodels.get(0);
			g15 += nullChangeInteger(gmodel.getG_i165());
		}
		Integer K197 = 0, K198 = 0, K199 = 0, K200 = 0, K207 = 0, K208 = 0, K209 = 0, K210 = 0, K211 = 0;
		List<? extends BaseModel> imodels = imapper.getModels(model);
		if (imodels.size() > 0) {
			IModel imodel = (IModel) imodels.get(0);
			K197 = nullChangeInteger(imodel.getI_k197());
			K198 = nullChangeInteger(imodel.getI_k198());
			K199 = nullChangeInteger(imodel.getI_k199());
			K200 = nullChangeInteger(imodel.getI_k200());
			K207 = nullChangeInteger(imodel.getI_k207());
			K208 = nullChangeInteger(imodel.getI_k208());
			K209 = nullChangeInteger(imodel.getI_k209());
			K210 = nullChangeInteger(imodel.getI_k210());
			K211 = nullChangeInteger(imodel.getI_k211());
			g15 += K207 + K209 + K210 + K211;
		}
		model004.setF_10_1(CNumber.toString(g15));
		model004.setF_9_2(CNumber.toString(g15));

		model004.setF_10_name(g15 != 0 ? "仮払税金消却" : "");

		Integer g16 = K208;
		model004.setF_50_name(g16 != 0 ? "未収還付所得税消却" : "");
		model004.setF_50_1(CNumber.toString(g16));
		model004.setF_50_2(CNumber.toString(g16));

		Integer g17 = E237;
		model004.setF_51_name(g17 != 0 ? C237 : "");
		model004.setF_51_1(CNumber.toString(g17));
		model004.setF_51_3(H237);
		model004.setF_51_4(CNumber.toString(g16));

		// 11-1
		Integer g19 = g7 + g8 + g9 + g10 + g11 + g13 + g15 + g16 + g17;
		model004.setF_11_1(CNumber.toString(g19));
		Integer h19 = g7 + g8 + g9 + g11 + g15 + g16;
		model004.setF_11_2(CNumber.toString(h19));
		Integer j19 = g10 + g13 + g17;
		model004.setF_11_4(CNumber.toString(j19));

		// 12-1
		model004.setF_12_1(CNumber.toString(g20));
		model004.setF_12_2(CNumber.toString(g20));

		// 13-1
		Integer g21 = K180;
		model004.setF_13_1(CNumber.toString(g21));
		model004.setF_13_2(CNumber.toString(g21));

		// 14-1
		Integer g22 = this.getE14_I14_8_1(model);
		model004.setF_14_1(CNumber.toString(g22));
		model004.setF_14_4(CNumber.toString(g22));

		// 18-1 =入力画面!K197+入力画面!K199+入力画面!K200+入力画面!K207+入力画面!K209+入力画面!K210
		Integer g26 = K197 + K199 + K200 + K207 + K209 + K210;
		model004.setF_18_1(CNumber.toString(g26));
		model004.setF_18_2(CNumber.toString(g26));

		// 19-1
		Integer g27 = K198 + K208;
		model004.setF_19_1(CNumber.toString(g27));
		model004.setF_19_4(CNumber.toString(g27));

		// 21-1
		Integer g33 = g20 + g21 + g22 + g26 + g27;
		model004.setF_21_1(CNumber.toString(g33));
		Integer h33 = g20 + g21 + g26;
		model004.setF_21_2(CNumber.toString(h33));

		Integer j32 = g22 + g27;
		Integer j33 = 0;
		model004.setF_21_4_u(CNumber.toString(j32));
		model004.setF_21_4_d(CNumber.toString(j33));

		// 22-1
		Integer g35 = g5 + g19 -g33;
		model004.setF_22_1(CNumber.toString(g35));
		Integer h35 = h5 + h19 - h33;
		model004.setF_22_2(CNumber.toString(h35));

		Integer j34 = - j32;
		Integer j35 = j5 + j19 - j33;
		model004.setF_22_4_u(CNumber.toString(j34));
		model004.setF_22_4_d(CNumber.toString(j35));

		// 25-1
		Integer g40 = g35;
		model004.setF_25_1(CNumber.toString(g40));
		Integer h40 = h35;
		model004.setF_25_2(CNumber.toString(h40));

		Integer j39 = j34;
		Integer j40 = j35;
		model004.setF_25_4_u(CNumber.toString(j39));
		model004.setF_25_4_d(CNumber.toString(j40));

		// 26-1
		Integer g41 = this.getG26_4_1(model, bmodel, cmodel, g40);
		model004.setF_26_1(CNumber.toString(g41));
		model004.setF_26_4(CNumber.toString(g41));

		// 29-1
		Integer g42 = this.getI11_6_1(model);
		model004.setF_29_1(CNumber.toString(g42));
		model004.setF_29_4(CNumber.toString(g42));

		// 34-1
		Integer g46 = g40 + g41 + g42;
		model004.setF_34_1(CNumber.toString(g46));
		Integer h46 = h40;
		model004.setF_34_2(CNumber.toString(h46));

		Integer j45 = j39;
		Integer j46 = j40 + g41;
		model004.setF_34_4_u(CNumber.toString(j45));
		model004.setF_34_4_d(CNumber.toString(j46));

		// 39-1
		Integer g51 = g46;
		model004.setF_39_1(CNumber.toString(g51));
		Integer h51 = h46;
		model004.setF_39_2(CNumber.toString(h51));

		Integer j50 = j45;
		Integer j51 = j46;
		model004.setF_39_4_u(CNumber.toString(j50));
		model004.setF_39_4_d(CNumber.toString(j46));

		// 40-1
		Integer g52 = this.getF27_7_1(model, g51);
		model004.setF_40_1(CNumber.toString(g52));
		model004.setF_40_4(CNumber.toString(g52));

		// 41-1
		Integer g54 = g51 - g52;
		model004.setF_41_1(CNumber.toString(g54));
		model004.setF_41_2(CNumber.toString(h51));

		Integer j53 = j50 - g52;
		Integer j54 = j51;
		model004.setF_41_4_u(CNumber.toString(j53));
		model004.setF_41_4_d(CNumber.toString(j54));

		// 49-1
		model004.setF_49_1(CNumber.toString(g54));
		model004.setF_49_2(CNumber.toString(h51));

		Integer j57 = j53;
		Integer j58 = j54;
		model004.setF_49_4_u(CNumber.toString(j57));
		model004.setF_49_4_u(CNumber.toString(j58));

		mapper004.insertModel(model004);
		return model004;

	}

	private Integer getG3_15(BaseModel model, BModel bmodel, CModel cmodel) {

		Integer g3 = 0;
		Integer c8 = 0;
		Integer e8 = 0;
		Integer g8 = 0;
		Integer i8 = 0;
		Integer d3 = 0;
		Integer d4 = 0;
		Integer g2 = 0;
		List<? extends BaseModel> mmodels = mmapper.getModels(model);
		if (mmodels.size() > 0) {
			MModel mmodel = (MModel) mmodels.get(0);
			c8 = nullChangeInteger(mmodel.getM_g276());
			e8 = nullChangeInteger(mmodel.getM_m276());
			g8 = c8 - e8;
			if (g8 != 0) {
				i8 = mmodel.getM_s276();
				d3 = i8 / 2;
			}
		}

		// d4 =MIN(D2,IF(入力画面!F52<=100000000,ROUNDDOWN(8000000*入力画面!G79/12,0),0))
		if (bmodel != null && cmodel != null) {
			if (nullChangeInteger(bmodel.getB_21()) <= 100000000) {
				d4 = Math.min(i8, new BigDecimal(8000000).multiply(BigDecimal.valueOf(cmodel.getC_11()).divide(BigDecimal.valueOf(12), BigDecimal.ROUND_DOWN)).intValue());
			}
		}
		g2 = Math.max(d3, d4);

		g3 = g8 < g2 ? 0 : g8 - g2;
		return g3;
	}

	private Integer getE14_I14_8_1(BaseModel model) {
		// =E2+IF((E3-E11)<0,0,E3-E11)+IF((E12)<0,0,ROUNDDOWN((E12)*0.5,0))+E13*0.2
		BigDecimal E14 = BigDecimal.ZERO;
		// =I2+IF((I3-I11)<0,0,I3-I11)+IF((I12)<0,0,ROUNDDOWN((I12)*0.5,0))+I13*0.2
		BigDecimal I14 = BigDecimal.ZERO;

		BigDecimal E2 = BigDecimal.ZERO;
		BigDecimal G28 = BigDecimal.ZERO;

		BigDecimal E3 = BigDecimal.ZERO;
		BigDecimal I35 = BigDecimal.ZERO;

		BigDecimal E11 = BigDecimal.ZERO;
		BigDecimal E12 = BigDecimal.ZERO;
		BigDecimal E13 = BigDecimal.ZERO;

		PModel pmodel = null;
		List<? extends BaseModel> pmodels = pmapper.getModels(model);
		if (pmodels.size() > 0) {
			pmodel = (PModel) pmodels.get(0);
			// G28=SUM(G26:G27)
			BigDecimal G26 = new BigDecimal(nullChangeInteger(pmodel.getP_o368()));
			BigDecimal G27 = new BigDecimal(nullChangeInteger(pmodel.getP_o369()));

			G28 = G26.add(G27);
			E2 = G28;

			BigDecimal G33 = new BigDecimal(nullChangeInteger(pmodel.getP_q373()));
			BigDecimal G34 = new BigDecimal(nullChangeInteger(pmodel.getP_q374()));
			BigDecimal H33 = new BigDecimal(nullChangeInteger(pmodel.getP_t373()));
			BigDecimal H34 = new BigDecimal(nullChangeInteger(pmodel.getP_t374()));

			// =SUMIF(G33,"<>""",G33)-SUMIF(H33,"<>""",H33)
			BigDecimal I33 = G33.subtract(H33);
			// =SUMIF(G34,"<>""",G34)-SUMIF(H34,"<>""",H34)
			BigDecimal I34 = G34.subtract(H34);
			I35 = I33.add(I34);
			E3 = I35;

			BigDecimal E4 = new BigDecimal(nullChangeInteger(pmodel.getP_g357()));
			BigDecimal E5 = new BigDecimal(nullChangeInteger(pmodel.getP_g358()));
			BigDecimal E8 = E4.subtract(E5);

			BigDecimal C19 = new BigDecimal(nullChangeInteger(pmodel.getP_d363()));
			BigDecimal D19 = new BigDecimal(nullChangeInteger(pmodel.getP_g363()));
			BigDecimal E19 = C19.subtract(D19);
			BigDecimal C20 = new BigDecimal(nullChangeInteger(pmodel.getP_d364()));
			BigDecimal D20 = new BigDecimal(nullChangeInteger(pmodel.getP_g364()));
			BigDecimal E20 = C20.subtract(D20);
			BigDecimal E21 = E19.add(E20);
			BigDecimal E9 = E21;

			BigDecimal F19 = new BigDecimal(nullChangeInteger(pmodel.getP_k363()));
			BigDecimal F20 = new BigDecimal(nullChangeInteger(pmodel.getP_k364()));
			BigDecimal F21 = F19.add(F20);
			BigDecimal E10 = F21;

			// =IF(E9=0,0,ROUNDDOWN(E8*E10/E9,0))
			if (E9.compareTo(BigDecimal.ZERO) != 0) {
				E11 = E8.multiply(E10).divide(E9, BigDecimal.ROUND_DOWN);
			}

			BigDecimal D40 = new BigDecimal(nullChangeInteger(pmodel.getP_k378()));
			BigDecimal E40 = new BigDecimal(nullChangeInteger(pmodel.getP_n378()));
			BigDecimal F40 = D40.subtract(E40);
			BigDecimal D41 = new BigDecimal(nullChangeInteger(pmodel.getP_k379()));
			BigDecimal E41 = new BigDecimal(nullChangeInteger(pmodel.getP_n379()));
			BigDecimal F41 = D41.subtract(E41);
			BigDecimal F42 = F40.add(F41);
			E12 = F42;

			BigDecimal F47 = new BigDecimal(nullChangeInteger(pmodel.getP_o383()));
			BigDecimal G47 = new BigDecimal(nullChangeInteger(pmodel.getP_r383()));
			BigDecimal H47 = F47.subtract(G47);
			BigDecimal F48 = new BigDecimal(nullChangeInteger(pmodel.getP_o384()));
			BigDecimal G48 = new BigDecimal(nullChangeInteger(pmodel.getP_r384()));
			BigDecimal H48 = F48.subtract(G48);
			BigDecimal H49 = H47.add(H48);
			E13 = H49;

			// =E2+IF((E3-E11)<0,0,E3-E11)+IF((E12)<0,0,ROUNDDOWN((E12)*0.5,0))+E13*0.2
			BigDecimal z1 = E3.subtract(E11);
			if (z1.compareTo(BigDecimal.ZERO) < 0) {
				z1 = BigDecimal.ZERO;
			}

			BigDecimal z2 = E12.multiply(new BigDecimal(0.5)).setScale(0, BigDecimal.ROUND_DOWN);
			if (E12.compareTo(BigDecimal.ZERO) < 0) {
				z2 = BigDecimal.ZERO;
			}
			E14 = E2.add(z1).add(z2).add(E13.multiply(new BigDecimal(0.2)));

			if (pmodel.getP_g359() == "使う") {

				// =I2+IF((I3-I11)<0,0,I3-I11)+IF((I12)<0,0,ROUNDDOWN((I12)*0.5,0))+I13*0.2
				BigDecimal G35 = G33.add(G34);
				BigDecimal I2 = G35;
				BigDecimal I3 = I35;
				BigDecimal I4 = new BigDecimal(pmodel.getP_g357());
				BigDecimal I7 = I4;
				BigDecimal I8 = new BigDecimal(pmodel.getP_o357());
				BigDecimal I9 = new BigDecimal(pmodel.getP_o358());
				BigDecimal I10 = BigDecimal.ZERO;
				if (I8.compareTo(BigDecimal.ZERO) != 0) {
					I10 = I9.divide(I8, 3, BigDecimal.ROUND_DOWN);
				}
				BigDecimal I11 = I7.multiply(I10).setScale(0, BigDecimal.ROUND_DOWN);

				BigDecimal I12 = F42;
				BigDecimal I13 = H49;
				BigDecimal z3 = I3.subtract(I11);
				if (z3.compareTo(BigDecimal.ZERO) < 0) {
					z3 = BigDecimal.ZERO;
				}
				BigDecimal z4 = I12.multiply(new BigDecimal(0.5)).setScale(0, BigDecimal.ROUND_DOWN);
				I14 = I2.add(z3).add(z4).add(I13.multiply(new BigDecimal(0.2)));
			}
		}

		return Math.max(E14.intValue(), I14.intValue());
	}

	private Integer getG26_4_1(BaseModel model, BModel bmodel, CModel cmodel, Integer g40) {


		Integer G21 = 0, G32 = 0, G36 = 0, G37 = 0, G38 = 0, G39 = 0;
		Integer G5 = 0, G6 = 0, G7 = 0;

		List<? extends BaseModel> nmodels = nmapper.getModels(model);
		if (nmodels.size() > 0) {
			NModel nmodel = (NModel) nmodels.get(0);
			G5 = nullChangeInteger(nmodel.getN_h301());
			G7 = nullChangeInteger(nmodel.getN_h302());
			G21 = nullChangeInteger(nmodel.getN_h303());
			G32 = nullChangeInteger(nmodel.getN_p284());
			G36 = nullChangeInteger(nmodel.getN_p289());
			G37 = nullChangeInteger(nmodel.getN_p290());
			G38 = nullChangeInteger(nmodel.getN_p291());
		}
		G39 = G36 + G37 + G38;
		Integer G4 = G39;
		Integer G3 = G32;
		G6 = G3 + G4 + G5;

		Integer G8 = 0, G9 = 0;
		G8 = G6 + G7;
		G9 = g40;

		Integer G10 = 0, G12 = 0, G13 = 0;
		G10 = G8 + G9;
		if (bmodel != null && bmodel.getB_21() != null) {
			G12 = nullChangeInteger(bmodel.getB_21());
		}
		if (cmodel != null) {
			// =G12*入力画面!G70/12
			G13 = new BigDecimal(G12).multiply(new BigDecimal(cmodel.getC_06())).divide(new BigDecimal(12)).intValue();
		}

		Integer G16 = 0, G17 = 0, G18 = 0, G19 = 0;
		// G10*6.25/100
		G16 = new BigDecimal(G10).multiply(new BigDecimal(6.25)).divide(new BigDecimal(100)).intValue();
		G17 = new BigDecimal(G13).multiply(new BigDecimal(3.75)).divide(new BigDecimal(1000)).intValue();
		G18 = new BigDecimal(G16 + G17).divide(new BigDecimal(2), BigDecimal.ROUND_DOWN).intValue();
		G19 = Math.min(G4, G18);

		BigDecimal G11 = BigDecimal.ZERO, G14 = BigDecimal.ZERO;
		G11 = new BigDecimal(G10).multiply(new BigDecimal(2.5)).divide(new BigDecimal(100), BigDecimal.ROUND_DOWN);
		G14 = new BigDecimal(G13).multiply(new BigDecimal(2.5)).divide(new BigDecimal(1000), BigDecimal.ROUND_DOWN);

		Integer G15 = 0, G20 = 0, G22 = 0;
		Integer G23 = 0, G24 = 0, G25 = 0;
		G15 = G11.add(G14).divide(new BigDecimal(4), BigDecimal.ROUND_DOWN).intValue();
		G20 = G3;
		G22 = G6 - G21;

		//=IF(G22-G15-G19-G20<0,0,G22-G15-G19-G20)
		G23 = G22 - G15 - G19 - G20;
		if (G23 < 0) {
			G23 = 0;
		}
		G24 = G21;
		G25 = G7;
		Integer G26 = G23 + G24 + G25;

		return G26;
	}

	private Integer getI11_6_1(BaseModel model) {

		Integer I6 = 0, I7 = 0, I8 = 0;

		String J15 = "", J16 = "", J17 = "", J18 = "", J19 = "";
		String K22 = "", K23 = "", K24 = "", K25 = "", K26 = "";
		BigDecimal E15 = BigDecimal.ZERO, F15 = BigDecimal.ZERO, G15 = BigDecimal.ZERO, H15 = BigDecimal.ZERO;
		BigDecimal E16 = BigDecimal.ZERO, F16 = BigDecimal.ZERO, G16 = BigDecimal.ZERO, H16 = BigDecimal.ZERO;
		BigDecimal E17 = BigDecimal.ZERO, F17 = BigDecimal.ZERO, G17 = BigDecimal.ZERO, H17 = BigDecimal.ZERO;
		BigDecimal E18 = BigDecimal.ZERO, F18 = BigDecimal.ZERO, G18 = BigDecimal.ZERO, H18 = BigDecimal.ZERO;
		BigDecimal E19 = BigDecimal.ZERO, F19 = BigDecimal.ZERO, G19 = BigDecimal.ZERO, H19 = BigDecimal.ZERO;

		BigDecimal E22 = BigDecimal.ZERO, F22 = BigDecimal.ZERO, G22 = BigDecimal.ZERO, H22 = BigDecimal.ZERO, I22 = BigDecimal.ZERO;
		BigDecimal E23 = BigDecimal.ZERO, F23 = BigDecimal.ZERO, G23 = BigDecimal.ZERO, H23 = BigDecimal.ZERO, I23 = BigDecimal.ZERO;
		BigDecimal E24 = BigDecimal.ZERO, F24 = BigDecimal.ZERO, G24 = BigDecimal.ZERO, H24 = BigDecimal.ZERO, I24 = BigDecimal.ZERO;
		BigDecimal E25 = BigDecimal.ZERO, F25 = BigDecimal.ZERO, G25 = BigDecimal.ZERO, H25 = BigDecimal.ZERO, I25 = BigDecimal.ZERO;
		BigDecimal E26 = BigDecimal.ZERO, F26 = BigDecimal.ZERO, G26 = BigDecimal.ZERO, H26 = BigDecimal.ZERO, I26 = BigDecimal.ZERO;

		List<? extends BaseModel> lmodels = lmapper.getModels(model);
		if (lmodels.size() > 0) {
			LModel lmodel = (LModel) lmodels.get(0);
			I6 += nullChangeInteger(lmodel.getL_j252());
			J15 = lmodel.getL_f257();
			J16 = lmodel.getL_h257();
			J17 = lmodel.getL_j257();
			J18 = lmodel.getL_l257();
			J19 = lmodel.getL_n257();
			K22 = lmodel.getL_f265();
			K23 = lmodel.getL_h265();
			K24 = lmodel.getL_j265();
			K25 = lmodel.getL_l265();
			K26 = lmodel.getL_n265();
			E15 = new BigDecimal(nullChangeInteger(lmodel.getL_f259()));
			F15 = new BigDecimal(nullChangeInteger(lmodel.getL_f261()));
			G15 = new BigDecimal(nullChangeInteger(lmodel.getL_f262()));
			E16 = new BigDecimal(nullChangeInteger(lmodel.getL_h259()));
			F16 = new BigDecimal(nullChangeInteger(lmodel.getL_h261()));
			G16 = new BigDecimal(nullChangeInteger(lmodel.getL_h262()));
			E17 = new BigDecimal(nullChangeInteger(lmodel.getL_j259()));
			F17 = new BigDecimal(nullChangeInteger(lmodel.getL_j261()));
			G17 = new BigDecimal(nullChangeInteger(lmodel.getL_j262()));
			E18 = new BigDecimal(nullChangeInteger(lmodel.getL_l259()));
			F18 = new BigDecimal(nullChangeInteger(lmodel.getL_l261()));
			G18 = new BigDecimal(nullChangeInteger(lmodel.getL_l262()));
			E19 = new BigDecimal(nullChangeInteger(lmodel.getL_n259()));
			F19 = new BigDecimal(nullChangeInteger(lmodel.getL_n261()));
			G19 = new BigDecimal(nullChangeInteger(lmodel.getL_n262()));

			E22 = new BigDecimal(nullChangeInteger(lmodel.getL_f267()));
			F22 = new BigDecimal(nullChangeInteger(lmodel.getL_f269()));
			G22 = new BigDecimal(nullChangeInteger(lmodel.getL_f270()));
			E23 = new BigDecimal(nullChangeInteger(lmodel.getL_h267()));
			F23 = new BigDecimal(nullChangeInteger(lmodel.getL_h269()));
			G23 = new BigDecimal(nullChangeInteger(lmodel.getL_h270()));
			E24 = new BigDecimal(nullChangeInteger(lmodel.getL_j267()));
			F24 = new BigDecimal(nullChangeInteger(lmodel.getL_j269()));
			G24 = new BigDecimal(nullChangeInteger(lmodel.getL_j270()));
			E25 = new BigDecimal(nullChangeInteger(lmodel.getL_l267()));
			F25 = new BigDecimal(nullChangeInteger(lmodel.getL_l269()));
			G25 = new BigDecimal(nullChangeInteger(lmodel.getL_l270()));
			E26 = new BigDecimal(nullChangeInteger(lmodel.getL_n267()));
			F26 = new BigDecimal(nullChangeInteger(lmodel.getL_n269()));
			G26 = new BigDecimal(nullChangeInteger(lmodel.getL_n270()));
		}

		Integer I15 = 0, I16 = 0, I17 = 0, I18 = 0, I19 = 0;
		I15 = this.getColI15_19(E15, G15, F15, H15);
		I16 = this.getColI15_19(E16, G16, F16, H16);
		I17 = this.getColI15_19(E17, G17, F17, H17);
		I18 = this.getColI15_19(E18, G18, F18, H18);
		I19 = this.getColI15_19(E19, G19, F19, H19);

		H22 = F22.subtract(G22).compareTo(BigDecimal.ZERO) > 0 ? F22.subtract(G22).divide(new BigDecimal(2)):BigDecimal.ZERO;
		H23 = F23.subtract(G23).compareTo(BigDecimal.ZERO) > 0 ? F23.subtract(G23).divide(new BigDecimal(2)):BigDecimal.ZERO;
		H24 = F24.subtract(G24).compareTo(BigDecimal.ZERO) > 0 ? F24.subtract(G24).divide(new BigDecimal(2)):BigDecimal.ZERO;
		H25 = F25.subtract(G25).compareTo(BigDecimal.ZERO) > 0 ? F25.subtract(G25).divide(new BigDecimal(2)):BigDecimal.ZERO;
		H26 = F26.subtract(G26).compareTo(BigDecimal.ZERO) > 0 ? F26.subtract(G26).divide(new BigDecimal(2)):BigDecimal.ZERO;


		Integer J22 = 0, J23 = 0, J24 = 0, J25 = 0, J26 = 0;

		J22 = this.getColJ22_26(E22, G22, F22, H22, I22);
		J23 = this.getColJ22_26(E23, G23, F23, H23, I23);
		J24 = this.getColJ22_26(E24, G24, F24, H24, I24);
		J25 = this.getColJ22_26(E25, G25, F25, H25, I25);
		J26 = this.getColJ22_26(E26, G26, F26, H26, I26);

		I6 += this.getSumI(J15, J16, J17, J18, J19,
				I15, I16, I17, I18, I19, "社債") +
			this.getSumI(K22, K23, K24, K25, K26,
						J22, J23, J24, J25, J26, "社債");
		I7 = this.getSumI(J15, J16, J17, J18, J19,
				I15, I16, I17, I18, I19, "配当") +
			this.getSumI(K22, K23, K24, K25, K26,
						J22, J23, J24, J25, J26, "配当");
		I8 = this.getSumI(J15, J16, J17, J18, J19,
				I15, I16, I17, I18, I19, "投資") +
			this.getSumI(K22, K23, K24, K25, K26,
						J22, J23, J24, J25, J26, "投資");

		Integer I11 = I6 + I7 + I8;
		return I11;
	}

	private Integer getColI15_19(BigDecimal E, BigDecimal G, BigDecimal F, BigDecimal H) {

		Integer I = 0;
		if (G.compareTo(BigDecimal.ZERO) != 0) {
			BigDecimal a = G.divide(F, BigDecimal.ROUND_UP);
			if (a.compareTo(BigDecimal.ONE) < 0) {
				H = a;
			} else {
				H = BigDecimal.ONE;
			}
			I = E.multiply(H).setScale(0, BigDecimal.ROUND_DOWN).intValue();
		}
		return I;
	}

	private Integer getColJ22_26(BigDecimal E, BigDecimal G, BigDecimal F, BigDecimal H, BigDecimal I) {

		Integer J = 0;
		if (F.compareTo(BigDecimal.ZERO) != 0) {
			BigDecimal a = G.add(H).divide(F, 3, BigDecimal.ROUND_UP);
			if (a.compareTo(BigDecimal.ONE) < 0) {
				I = a;
			} else {
				I = BigDecimal.ONE;
			}
			J = E.multiply(I).setScale(0, BigDecimal.ROUND_DOWN).intValue();
		}
		return J;
	}

	private Integer getSumI(String J15, String J16, String J17, String J18, String J19,
			Integer I15, Integer I16, Integer I17, Integer I18, Integer I19, String item) {
		Integer I = 0;
		if (J15.equals(item)) {
			I += I15;
		}
		if (J16.equals(item)) {
			I += I16;
		}
		if (J17.equals(item)) {
			I += I17;
		}
		if (J18.equals(item)) {
			I += I18;
		}
		if (J19.equals(item)) {
			I += I19;
		}
		return I;
	}

	private Integer getF27_7_1(BaseModel model, Integer g51) {
		Integer F7 = 0, F9 = 0, F11 = 0, F13 = 0, F15 = 0, F17 = 0, F19 = 0, F21 = 0, F23 = 0, F25 = 0;
		Integer E7 = 0, E9 = 0, E11 = 0, E13 = 0, E15 = 0, E17 = 0, E19 = 0, E21 = 0, E23 = 0, E25 = 0;

		List<? extends BaseModel> fmodels = fmapper.getModels(model);
		if (fmodels.size() > 0) {
			FModel fmodel = (FModel) fmodels.get(0);
			E7 = nullChangeInteger(fmodel.getF_h136());
			E9 = nullChangeInteger(fmodel.getF_h137());
			E11 = nullChangeInteger(fmodel.getF_h138());
			E13 = nullChangeInteger(fmodel.getF_h139());
			E15 = nullChangeInteger(fmodel.getF_h140());
			E17 = nullChangeInteger(fmodel.getF_h141());
			E19 = nullChangeInteger(fmodel.getF_h142());
			E21 = nullChangeInteger(fmodel.getF_h143());
			E23 = nullChangeInteger(fmodel.getF_h144());
			E25 = nullChangeInteger(fmodel.getF_h145());
		}
		Integer G51 = g51;
		if (G51 > 0) {
			F7 = Math.min(G51, E7);
		}
		if ((G51 = G51 - F7) > 0) {
			F9 = Math.min(G51, E9);
		}
		if ((G51 = G51 - F9) > 0) {
			F11 = Math.min(G51, E11);
		}
		if ((G51 = G51 - F11) > 0) {
			F13 = Math.min(G51, E13);
		}
		if ((G51 = G51 - F13) > 0) {
			F15 = Math.min(G51, E15);
		}
		if ((G51 = G51 - F15) > 0) {
			F17 = Math.min(G51, E17);
		}
		if ((G51 = G51 - F17) > 0) {
			F19 = Math.min(G51, E19);
		}
		if ((G51 = G51 - F19) > 0) {
			F21 = Math.min(G51, E21);
		}
		if ((G51 = G51 - F21) > 0) {
			F23 = Math.min(G51, E23);
		}
		if ((G51 = G51 - F23) > 0) {
			F25 = Math.min(G51, E25);
		}

		Integer F27 = F7 + F9 + F11 + F13 + F15 + F17 + F19 + F21 + F23 + F25;

		return F27;
	}
}
