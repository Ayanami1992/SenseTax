package com.jp.qxd.tax.service.pdf;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jp.qxd.tax.mapper.BMapper;
import com.jp.qxd.tax.mapper.CMapper;
import com.jp.qxd.tax.mapper.JMapper;
import com.jp.qxd.tax.mapper.Pdf6a_dMapper;
import com.jp.qxd.tax.mapper.UMapper;
import com.jp.qxd.tax.model.BaseModel;
import com.jp.qxd.tax.model.input.CModel;
import com.jp.qxd.tax.model.input.JModel;
import com.jp.qxd.tax.model.input.UModel;
import com.jp.qxd.tax.model.pdf.Rpt001Model;
import com.jp.qxd.tax.model.pdf.Rpt004Model;
import com.jp.qxd.tax.model.pdf.Rpt006Model;
import com.jp.qxd.tax.model.pdf.Rpt6a_dModel;
import com.jp.qxd.tax.model.pdf.Rpt_r1_no6_yosiki_beppyo9Model;
import com.jp.qxd.tax.utils.CNumber;

@Service
public class Pdf6a_dService {

	@Autowired
	private BMapper bmapper;

	@Autowired
	private UMapper umapper;

	@Autowired
	private JMapper jmapper;

	@Autowired
	private CMapper cmapper;

	@Autowired
	private Pdf6a_dMapper mapper6a_d;

	@Autowired
	private Pdf001Service pdf001Service;

	@Autowired
	private Pdf004Service pdf004Service;

	@Autowired
	private Pdf006Service pdf006Service;

	@Autowired
	private Pdfd69Service pdfd69Service;

	@Transactional
	public Rpt6a_dModel initDB(BaseModel model) throws Exception {

		if (mapper6a_d.getModels(model).size() > 0) {
			mapper6a_d.deleteModel(model);
		}

		Rpt6a_dModel model6a_d = new Rpt6a_dModel();

		List<? extends BaseModel> list = bmapper.getModelsForPdf6a_d(model);
		if (list.size() > 0) {
			model6a_d = (Rpt6a_dModel) list.get(0);
		}
		model6a_d.setUserId(model.getUserId());
		model6a_d.setCompany_id(model.getCompany_id());
		model6a_d.setYear(model.getYear());
		model6a_d.setLegalPersonName(model.getLegalPersonName());

		//f_1 '一(一)'!G13+'一(一)'!G12
		Integer e71 = 0;
		Rpt001Model rpt001Model = pdf001Service.initDB(model6a_d);
		e71 = CNumber.parseInteger(rpt001Model.getF_10());
		model6a_d.setF_1(rpt001Model.getF_10());

		//f_2  入力画面!L455
		Integer e72 = 0, e73 = 0, e74 = 0, e5 = 0, e7 = 0, e8 = 0;
		List<? extends BaseModel> umodels = umapper.getModels(model);
		if (umodels.size() > 0) {
			UModel umodel = (UModel) umodels.get(0);
			e72 = CNumber.parseInteger(umodel.getU_l455());
			e73 = CNumber.parseInteger(umodel.getU_l457());
			e74 = CNumber.parseInteger(umodel.getU_l458());
			e5 = CNumber.parseInteger(umodel.getU_n460());
			e7 = CNumber.parseInteger(umodel.getU_n462());
			e8 = CNumber.parseInteger(umodel.getU_n463());
		}
		model6a_d.setF_2(CNumber.toString(e72));

		//f_3 入力画面!L457
		model6a_d.setF_3(CNumber.toString(e73));

		//f_4 入力画面!L458
		model6a_d.setF_4(CNumber.toString(e74));

		//f_5 ROUNDDOWN(E71+E72-E73+E74,-3)
		BigDecimal e75 = BigDecimal.ZERO;
		e75 = new BigDecimal(e71 + e72 - e73 + e74).setScale(-3, BigDecimal.ROUND_DOWN);
		if (e75.compareTo(BigDecimal.ZERO) < 0) {
			model6a_d.setF_5(CNumber.toString(BigDecimal.ZERO));
		} else {
			model6a_d.setF_5(CNumber.toString(e75));
		}

		//f_7 =E93+E95
		// E93 =IF(入力画面!G67="政令指定都市以外",0,E92*F93)
		int e85 = 0;
		BigDecimal e92 = BigDecimal.ZERO;
		BigDecimal e93 = BigDecimal.ZERO;
		BigDecimal f93 = BigDecimal.ZERO;
		BigDecimal e94 = BigDecimal.ZERO;
		BigDecimal e95 = BigDecimal.ZERO;
		BigDecimal f95 = BigDecimal.ZERO;
		BigDecimal f20 = BigDecimal.ZERO;
		BigDecimal f21 = BigDecimal.ZERO;
		BigDecimal f22 = BigDecimal.ZERO;
		BigDecimal f50 = BigDecimal.ZERO;
		BigDecimal e39 = BigDecimal.ZERO;
		BigDecimal e56 = BigDecimal.ZERO;
		BigDecimal e84 = BigDecimal.ZERO;
		BigDecimal e88 = BigDecimal.ZERO;

		List<? extends BaseModel> cmodels = cmapper.getModels(model);
		CModel cmodel = null;
		if (cmodels != null && cmodels.size() > 0 ) {
			cmodel = (CModel) cmodels.get(0);
			e85 = cmodel.getC_06();
			f20 = CNumber.parseBigDecimal(cmodel.getC_12()).divide(new BigDecimal(100));
			f21 = CNumber.parseBigDecimal(cmodel.getC_13()).divide(new BigDecimal(100));
			f22 = CNumber.parseBigDecimal(cmodel.getC_14()).divide(new BigDecimal(100));
			f50 = CNumber.parseBigDecimal(cmodel.getC_g84()).divide(new BigDecimal(100));

			model6a_d.setF_28_3(cmodel.getC_12());
			model6a_d.setF_29_3(cmodel.getC_13());
			model6a_d.setF_30_3(cmodel.getC_14());
			model6a_d.setF_53_3(cmodel.getC_g84());

			if (!"政令指定都市以外".equals(cmodel.getC_03())){
				//E92 =IF(入力画面!G67="政令指定都市以外","",E75)
				e92 = e75;
				//F93 =IF(入力画面!G85="市法人税割%↓入力↓",0,入力画面!G83+入力画面!G85)
				if (!"市法人税割%↓入力↓".equals(cmodel.getC_16())) {
					f93 = CNumber.parseBigDecimal(cmodel.getC_15()).add(CNumber.parseBigDecimal(cmodel.getC_16())).divide(new BigDecimal(100));
				}
			}
			e93 = e92.multiply(f93);

			if ("政令指定都市以外".equals(cmodel.getC_03())){
				// E94 =IF(入力画面!G67="政令指定都市以外",E75,"")
				e94 = e75;
				// F95 =IF(入力画面!C67="東京23区名",0,入力画面!G83)
				if (!"東京都".equals(cmodel.getC_02())) {
					f95 = CNumber.parseBigDecimal(cmodel.getC_15()).divide(new BigDecimal(100));
				}

				// E95 =IF(E94="",0,E94*F95)
				e95 = e94.multiply(f95);
			}

			BigDecimal e77 = e93.add(e95);
			BigDecimal e81  = e77;
			model6a_d.setF_7(CNumber.toString(e77));
			model6a_d.setF_12(CNumber.toString(e81));

			BigDecimal e82 = BigDecimal.ZERO;
			BigDecimal e87 = BigDecimal.ZERO;

			List<? extends BaseModel> jmodels = jmapper.getModels(model);
			if (jmodels.size() > 0) {
				JModel jmodel = (JModel) jmodels.get(0);

				e39 = CNumber.parseBigDecimal(jmodel.getJ_m230());
				e56 = CNumber.parseBigDecimal(jmodel.getJ_m231());

				// f12 =IF(AND(入力画面!G66="東京都",入力画面!G67="政令指定都市以外"),入力画面!G227,入力画面!G227+入力画面!G229)
				if ("東京都".equals(cmodel.getC_02()) && "政令指定都市以外".equals(cmodel.getC_03())) {
					e82 = CNumber.parseBigDecimal(jmodel.getJ_g227());
				} else {
					e82 = CNumber.parseBigDecimal(jmodel.getJ_g227()).add(CNumber.parseBigDecimal(jmodel.getJ_g229()));
				}

				// f17 ==IF(入力画面!G67="政令指定都市以外",入力画面!G226,入力画面!G226+入力画面!G228)
				if ("政令指定都市以外".equals(cmodel.getC_03())) {
					e87 = CNumber.parseBigDecimal(jmodel.getJ_g226());
				} else {
					e87 = CNumber.parseBigDecimal(jmodel.getJ_g226()).add(CNumber.parseBigDecimal(jmodel.getJ_g228()));
				}
			}
			model6a_d.setF_13(CNumber.toString(e82));

			e84 = e81.subtract(e82);
			model6a_d.setF_15(CNumber.toString(e84));
			model6a_d.setF_16(CNumber.toString(e85));

			// f16 =IF(入力画面!G66="東京都",IF(入力画面!G67="政令指定都市以外",ROUNDDOWN(入力画面!G73*入力画面!G70/12,-2),'地6号4-3(東京)'!N27),0)

			BigDecimal e86 = BigDecimal.ZERO;
			if ("東京都".equals(cmodel.getC_02())) {
				if ("政令指定都市以外".equals(cmodel.getC_03())) {
					e86 = CNumber.parseBigDecimal(cmodel.getC_07()).multiply(CNumber.parseBigDecimal(cmodel.getC_06())).divide(new BigDecimal(12));
				} else {
					e86 = CNumber.parseBigDecimal(cmodel.getC_08()).multiply(CNumber.parseBigDecimal(cmodel.getC_06())).divide(new BigDecimal(12));
				}
			}
			model6a_d.setF_17(CNumber.toString(e86));
			model6a_d.setF_18(CNumber.toString(e87));

			e88 = e86.subtract(e87);
			model6a_d.setF_19(CNumber.toString(e88));
			BigDecimal e89 = e84.add(e88);
			model6a_d.setF_20(CNumber.toString(e89));

			BigDecimal e91 = e89;
			model6a_d.setF_22(CNumber.toString(e91));

			if (!"政令指定都市以外".equals(cmodel.getC_03())) {
				model6a_d.setF_23(CNumber.toString(e75));
			}
			model6a_d.setF_24(CNumber.toString(e93));
			model6a_d.setF_25(CNumber.toString(e94));
			model6a_d.setF_26(CNumber.toString(e95));

		}

		//f_62 四!G46
		Rpt004Model model004 = pdf004Service.initDB(model);
		BigDecimal e3 = CNumber.parseBigDecimal(model004.getF_34_1());
		BigDecimal e11 = CNumber.parseBigDecimal(model004.getF_49_1());

		model6a_d.setF_63(CNumber.toString(e3));
		//f_63 '六(一)'!H11-'六(一)'!I11
		Rpt006Model model006 = pdf006Service.initDB(model);
		BigDecimal e4 = CNumber.parseBigDecimal(model006.getF_6_2()).subtract(CNumber.parseBigDecimal(model006.getF_6_3()));
		model6a_d.setF_64(CNumber.toString(e4));

		//f_64 入力画面!N460
		model6a_d.setF_65(CNumber.toString(e5));
		//f_65 入力画面!N462
		model6a_d.setF_66(CNumber.toString(e7));
		//f_66 入力画面!N463
		model6a_d.setF_67(CNumber.toString(e8));

		//f_67 H2+H3+H4-H6-H7
		Integer e9 = 0;
		e9 = CNumber.parseInteger(e3) + CNumber.parseInteger(e4) + e5 - e7 - e8;
		model6a_d.setF_68(CNumber.toString(e9));
		//f_68 '地6号-9'!E21
		Rpt_r1_no6_yosiki_beppyo9Model model96 = pdfd69Service.initDB(model);

		Integer e10 = CNumber.parseInteger(model96.getF_4_10());
		model6a_d.setF_69(CNumber.toString(e10));
		//f_69 四!G58
		model6a_d.setF_71(CNumber.toString(e11));

		//f_26 =E9-E10
		Integer e13 = e9 - e10;
		model6a_d.setF_28_1(CNumber.toString(e13));

		Integer e14 = 0;
		Integer e15 = 0;
		Integer e16 = 0;

		//f_27 =IF(E13<0,0,IF(E13<=4000000,ROUNDDOWN(E13,-3),ROUNDDOWN(4000000,-3)))
		//f_28 IF(H13-REF!R6<0,0,IF((H13-REF!R6)>=(REF!R7-REF!R6),ROUNDDOWN((REF!R7-REF!R6),-3),ROUNDDOWN(H13-REF!R6,-3)))
		//f_29 IF(H13-REF!R7<0,0,ROUNDDOWN(H13-REF!R7,-3))
		if (e13 > 0 && e13<=4000000) {
			e14 = e13;
		} else if (e13 > 0 && e13 <= 8000000) {
			e14 = 4000000;
			e15 = e13 - 4000000;
		} else if (e13 > 0) {
			e14 = 4000000;
			e15 = 4000000;
			e16 = e13 - 8000000;
		}
		model6a_d.setF_28_1(CNumber.toString(e14));
		model6a_d.setF_29_1(CNumber.toString(e15));
		model6a_d.setF_30_1(CNumber.toString(e16));

		//f_30 H14+H15+H16
		Integer e17 = 0;
		e17 = e14 + e15 + e16;
		model6a_d.setF_31_1(CNumber.toString(e17));

		//f_27 =ROUNDDOWN(E14*F20,-2)
		BigDecimal e20 = new BigDecimal(e14).multiply(f20);
		model6a_d.setF_28_2(CNumber.toString(e20));

		//f_28 =ROUNDDOWN(E15*F21,-2)
		BigDecimal e21 = new BigDecimal(e15).multiply(f21);
		model6a_d.setF_29_2(CNumber.toString(e21));

		//f_29 =ROUNDDOWN(E16*F22,-2)
		BigDecimal e22 = new BigDecimal(e16).multiply(f22);
		model6a_d.setF_30_2(CNumber.toString(e22));


		//f_30 =E20+E21+E22
		BigDecimal e23 = e20.add(e21).add(e22);
		model6a_d.setF_31_1(CNumber.toString(e23));

		//f_38 ROUNDDOWN(E23,-2)
		BigDecimal e34 = e23;
		model6a_d.setF_39(CNumber.toString(e34));

		//f_43 H34-H35-H36-H37
		BigDecimal e38 = e34;
		model6a_d.setF_43(CNumber.toString(e38));
		model6a_d.setF_44(CNumber.toString(e39));

		// f_45 =ROUNDDOWN(E38-E39-E40,-2)
		BigDecimal e41 = e38.subtract(e39);
		model6a_d.setF_46(CNumber.toString(e41));

		model6a_d.setF_52(CNumber.toString(e41));

		//f_52 H41-H46
		BigDecimal e49 = e23;
		model6a_d.setF_53_1(CNumber.toString(e49));

		// =ROUNDDOWN(E49*F50,-2)
		BigDecimal e50 = e49.multiply(f50);
		model6a_d.setF_53_2(CNumber.toString(e50));

		//f_55 H50+H52
		BigDecimal e53 = e50;
		model6a_d.setF_55(CNumber.toString(e53));

		BigDecimal e55 = e53;
		model6a_d.setF_57(CNumber.toString(e55));

		model6a_d.setF_58(CNumber.toString(e56));

		BigDecimal e58 = e55.subtract(e56);
		model6a_d.setF_60(CNumber.toString(e58));

		BigDecimal e60 = e58;
		model6a_d.setF_62(CNumber.toString(e60));

		Integer e62 = Math.abs(CNumber.parseInteger(e41)) + Math.abs(CNumber.parseInteger(e58)) + Math.abs(CNumber.parseInteger(e84)) + Math.abs(CNumber.parseInteger(e88));
		model6a_d.setF_72(CNumber.toString(e62));


		mapper6a_d.insertModel(model6a_d);

		return model6a_d;
	}

	// get 都道府県
	public String getPrefectures(BaseModel model) throws Exception {
		List<? extends BaseModel> cmodels = cmapper.getModels(model);
		String prefectures = "";
		if (cmodels.size() > 0) {
			CModel cmodel = (CModel) cmodels.get(0);
			prefectures = cmodel.getC_02();
		}
		return prefectures;
	}
}
