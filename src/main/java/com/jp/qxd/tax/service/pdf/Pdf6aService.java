package com.jp.qxd.tax.service.pdf;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jp.qxd.tax.mapper.BMapper;
import com.jp.qxd.tax.mapper.CMapper;
import com.jp.qxd.tax.mapper.JMapper;
import com.jp.qxd.tax.mapper.OptionsMapper;
import com.jp.qxd.tax.mapper.Pdf_r1_no6_yosikiMapper;
import com.jp.qxd.tax.mapper.UMapper;
import com.jp.qxd.tax.model.BaseModel;
import com.jp.qxd.tax.model.input.CModel;
import com.jp.qxd.tax.model.input.JModel;
import com.jp.qxd.tax.model.input.LocalTaxRate;
import com.jp.qxd.tax.model.input.UModel;
import com.jp.qxd.tax.model.pdf.Rpt001Model;
import com.jp.qxd.tax.model.pdf.Rpt004Model;
import com.jp.qxd.tax.model.pdf.Rpt006Model;
import com.jp.qxd.tax.model.pdf.Rpt6aModel;
import com.jp.qxd.tax.model.pdf.Rpt_r1_no6_yosiki_beppyo9Model;
import com.jp.qxd.tax.utils.CNumber;

@Service
public class Pdf6aService {

	@Autowired
	private BMapper bmapper;

	@Autowired
	private UMapper umapper;

	@Autowired
	private JMapper jmapper;

	@Autowired
	private CMapper cmapper;

	@Autowired
	private Pdf_r1_no6_yosikiMapper mapper6a;

	@Autowired
	private OptionsMapper optionsMapper;

	@Autowired
	private Pdf001Service pdf001Service;

	@Autowired
	private Pdf004Service pdf004Service;

	@Autowired
	private Pdf006Service pdf006Service;

	@Autowired
	private Pdfd69Service pdfd69Service;


	@Transactional
	public Rpt6aModel initDB(BaseModel model) throws Exception {

		if (mapper6a.getModels(model).size() > 0) {
			mapper6a.deleteModel(model);
		}

		Rpt6aModel model6a = new Rpt6aModel();

		List<? extends BaseModel> list = bmapper.getModelsForPdf6a(model);
		if (list.size() > 0) {
			model6a = (Rpt6aModel) list.get(0);
		}
		model6a.setUserId(model.getUserId());
		model6a.setCompany_id(model.getCompany_id());
		model6a.setYear(model.getYear());
		model6a.setLegalPersonName(model.getLegalPersonName());

		//f_1 '一(一)'!G13+'一(一)'!G12
		Integer h72 = 0;
		Rpt001Model rpt001Model = pdf001Service.initDB(model6a);
		h72 = CNumber.parseInteger(rpt001Model.getF_10());
		model6a.setF_1(rpt001Model.getF_10());

		//f_2  入力画面!L455
		Integer h73 = 0, h74 = 0, h75 = 0, h4 = 0, h6 = 0, h7 = 0;
		List<? extends BaseModel> umodels = umapper.getModels(model);
		if (umodels.size() > 0) {
			UModel umodel = (UModel) umodels.get(0);
			h73 = CNumber.parseInteger(umodel.getU_l455());
			h74 = CNumber.parseInteger(umodel.getU_l457());
			h75 = CNumber.parseInteger(umodel.getU_l458());
			h4 = CNumber.parseInteger(umodel.getU_n460());
			h6 = CNumber.parseInteger(umodel.getU_n462());
			h7 = CNumber.parseInteger(umodel.getU_n463());
		}
		model6a.setF_2(CNumber.toString(h73));

		//f_3 入力画面!L457
		model6a.setF_3(CNumber.toString(h74));

		//f_4 入力画面!L458
		model6a.setF_4(CNumber.toString(h75));

		//f_5 ROUNDDOWN(H72+H73-H74+H75,-3)
		BigDecimal h76 = BigDecimal.ZERO;
		h76 = new BigDecimal(h75 + h73 - h74 + h75).setScale(-3, BigDecimal.ROUND_DOWN);
		model6a.setF_5(CNumber.toString(h76));

		BigDecimal i20 = BigDecimal.ZERO;
		BigDecimal i21 = BigDecimal.ZERO;
		BigDecimal i22 = BigDecimal.ZERO;
		BigDecimal i50 = BigDecimal.ZERO;
		//f_7 IF(H76=0,H77,H76)*I78
		//I78  入力画面!G83=IF(B_16<DATEVALUE("H26.10.1"),5%,3.2%)
		List<? extends BaseModel> cmodels = cmapper.getModels(model);
		CModel cmodel = null;
		BigDecimal i78 = BigDecimal.ZERO;
		if (cmodels != null && cmodels.size() > 0 ) {
			cmodel = (CModel) cmodels.get(0);
			i20 = CNumber.parseBigDecimal(cmodel.getC_12()).divide(new BigDecimal(100));
			i21 = CNumber.parseBigDecimal(cmodel.getC_13()).divide(new BigDecimal(100));
			i22 = CNumber.parseBigDecimal(cmodel.getC_14()).divide(new BigDecimal(100));
			i50 = CNumber.parseBigDecimal(cmodel.getC_g84()).divide(new BigDecimal(100));
			i78 = CNumber.parseBigDecimal(cmodel.getC_15()).divide(new BigDecimal(100));
			model6a.setPrefectures(cmodel.getC_02());
			model6a.setF_28_3(cmodel.getC_12());
			model6a.setF_29_3(cmodel.getC_13());
			model6a.setF_30_3(cmodel.getC_14());
			model6a.setF_53_3(cmodel.getC_g84());
		}
		BigDecimal h78 = BigDecimal.ZERO;
		Integer h77 = 0;
		if (h76.compareTo(BigDecimal.ZERO) == 0) {
			h78 = new BigDecimal(h77).multiply(i78);
		} else {
			h78 = h76.multiply(i78);
		}
		model6a.setF_6(CNumber.toString(h77));
		model6a.setF_7(CNumber.toString(h78));

		//f_11 ROUNDDOWN(H78-H79-H80-H81,-2)
		BigDecimal h79 = BigDecimal.ZERO;
		BigDecimal h80 = BigDecimal.ZERO;
		BigDecimal h81 = BigDecimal.ZERO;
		BigDecimal h82 = BigDecimal.ZERO;
		h82 = h78.subtract(h79).subtract(h80).subtract(h81).setScale(-2, BigDecimal.ROUND_DOWN);
		model6a.setF_12(CNumber.toString(h82));

		//f_12  入力画面!M227
		BigDecimal h39 = BigDecimal.ZERO;
		BigDecimal h83 = BigDecimal.ZERO;
		BigDecimal h88 = BigDecimal.ZERO;
		BigDecimal h56 = BigDecimal.ZERO;
		List<? extends BaseModel> jmodels = jmapper.getModels(model);
		if (jmodels.size() > 0) {
			JModel jmodel = (JModel) jmodels.get(0);
			h83 = CNumber.parseBigDecimal(jmodel.getJ_m227());
			h88 = CNumber.parseBigDecimal(jmodel.getJ_m226());
			h39 = CNumber.parseBigDecimal(jmodel.getJ_m230());
			h56 = CNumber.parseBigDecimal(jmodel.getJ_g231());

		}
		model6a.setF_13(CNumber.toString(h83));

		//f_14 IF(H82-H83-H84<0,H82-H83-H84,ROUNDDOWN(H82-H83-H84,-2))
		BigDecimal h84 = BigDecimal.ZERO;
		BigDecimal h85 = BigDecimal.ZERO;
		if (h82.subtract(h83).subtract(h84).compareTo(BigDecimal.ZERO) < 0) {
			h85 = h82.subtract(h83).subtract(h84);
		} else {
			h85 = h82.subtract(h83).subtract(h84).setScale(-2, BigDecimal.ROUND_DOWN);
		}
		model6a.setF_14(CNumber.toString(h84));
		model6a.setF_15(CNumber.toString(h85));

		//f_15 入力画面!G70
		BigDecimal h86 = BigDecimal.ZERO;
		if (cmodel != null) {
			h86 = CNumber.parseBigDecimal(cmodel.getC_06());
		}
		model6a.setF_16(CNumber.toString(h86));

		//f_16 IF(入力画面!G66="東京都",0,ROUNDDOWN(入力画面!G73*H86/12,-2))    入力画面!G73 = G71+G72
		//g71 = VLOOKUP($G$65,地方税税率・均等割!A3:L247,IF(F52>10000000,12,11),0)
		//g72 = VLOOKUP($G$65,地方税税率・均等割!A3:N247,IF(F52>10000000,14,13),0)

		BigDecimal g71 = BigDecimal.ZERO;
		BigDecimal g72 = BigDecimal.ZERO;
		BigDecimal g73 = BigDecimal.ZERO;
		LocalTaxRate localTaxRate = optionsMapper.getLocalTaxRateByArea(cmodel.getC_01());
		if (localTaxRate != null) {
			if (CNumber.parseInteger(model6a.getB_21()) <= 10000000) {
				g71 = CNumber.parseBigDecimal(localTaxRate.getPrefecture_equalization_1000());
				g72 = CNumber.parseBigDecimal(localTaxRate.getForest_environment_tax1000_());
			} else {
				g71 = CNumber.parseBigDecimal(localTaxRate.getPrefecture_equalization1000_());
				g72 = CNumber.parseBigDecimal(localTaxRate.getForest_environment_tax_1001());
			}
		}
		g73 = g71.add(g72);
		BigDecimal h87 = g73.multiply(h86).divide(new BigDecimal(12));
		if (!"東京都".equals(cmodel.getC_02())) {
			model6a.setF_17(CNumber.toString(h87));
		}

		//f_17 入力画面!M226
		model6a.setF_18(CNumber.toString(h88));

		//f_18 H87-H88
		BigDecimal h89 = h87.subtract(h88);
		model6a.setF_19(CNumber.toString(h89));

		//f_19 IF(H85<0,0,H85)+H89
		BigDecimal h90 = (h85.compareTo(BigDecimal.ZERO) < 0 ? BigDecimal.ZERO : h85).add(h89);
		model6a.setF_20(CNumber.toString(h90));

		//f_21 H90-H91
		BigDecimal h92 = h90;

		model6a.setF_22(CNumber.toString(h92));

		//f_63 四!G46
		Rpt004Model model004 = pdf004Service.initDB(model);
		BigDecimal h2 = CNumber.parseBigDecimal(model004.getF_34_1());

		model6a.setF_63(CNumber.toString(h2));
		//f_64 '六(一)'!H11-'六(一)'!I11
		Rpt006Model model006 = pdf006Service.initDB(model);
		BigDecimal h3 = CNumber.parseBigDecimal(model006.getF_6_2()).subtract(CNumber.parseBigDecimal(model006.getF_6_3()));
		model6a.setF_64(CNumber.toString(h3));

		//f_65 入力画面!N460
		model6a.setF_65(CNumber.toString(h4));
		//f_66 入力画面!N462
		model6a.setF_66(CNumber.toString(h6));
		//f_67 入力画面!N463
		model6a.setF_67(CNumber.toString(h7));

		//f_68 H2+H3+H4-H6-H7
		Integer h8 = 0;
		h8 = CNumber.parseInteger(h2) + CNumber.parseInteger(h3) + h4 - h6 - h7;
		model6a.setF_68(CNumber.toString(h8));
		//f_69 '地6号-9'!E21
		Rpt_r1_no6_yosiki_beppyo9Model model96 = pdfd69Service.initDB(model);

		Integer h9 = CNumber.parseInteger(model96.getF_4_10());
		model6a.setF_69(CNumber.toString(h9));
		//f_70 四!G58
		Integer h10 = CNumber.parseInteger(model004.getF_49_1());
		model6a.setF_70(CNumber.toString(h10));

		//f_27 H8-H9
		Integer h13 = h8 - h9;
		model6a.setF_27(CNumber.toString(h13));

		Integer h14 = 0;
		Integer h15 = 0;
		Integer h16 = 0;
		//f_28 IF(H13<0,0,IF(H13<=REF!R6,ROUNDDOWN(H13,-3),ROUNDDOWN(REF!R6,-3)))
		//f_29 IF(H13-REF!R6<0,0,IF((H13-REF!R6)>=(REF!R7-REF!R6),ROUNDDOWN((REF!R7-REF!R6),-3),ROUNDDOWN(H13-REF!R6,-3)))
		//f_30 IF(H13-REF!R7<0,0,ROUNDDOWN(H13-REF!R7,-3))

		if (h13 > 0 && h13<=4000000) {
			h14 = h13;
		} else if (h13 > 0 && h13 <= 8000000) {
			h14 = 4000000;
			h15 = h13 - 4000000;
		} else if (h13 > 0) {
			h14 = 4000000;
			h15 = 4000000;
			h16 = h13 - 8000000;
		}
		model6a.setF_28_1(CNumber.toString(h14));
		model6a.setF_29_1(CNumber.toString(h15));
		model6a.setF_30_1(CNumber.toString(h16));

		//f_31 H14+H15+H16
		Integer h17 = h14 + h15 + h16;
		model6a.setF_31_1(CNumber.toString(h17));

		//f_28_2 ROUNDDOWN(H14*I20,-2)
		BigDecimal h20 = new BigDecimal(h14).multiply(i20);
		model6a.setF_28_2(CNumber.toString(h20));

		//f_29_2 ROUNDDOWN(H15*I21,-2)
		BigDecimal h21 = new BigDecimal(h15).multiply(i21);
		model6a.setF_29_2(CNumber.toString(h21));

		//f_30_2 ROUNDDOWN(H16*I22,-2)
		BigDecimal h22 = new BigDecimal(h16).multiply(i22);
		model6a.setF_30_2(CNumber.toString(h22));

		//f_31_2 H20+H21+H22
		BigDecimal h23 = h20.add(h21).add(h22);
		model6a.setF_31_2(CNumber.toString(h23));

		//f_39 ROUNDDOWN(H23,-2)
		BigDecimal h34 = h23.setScale(-2, BigDecimal.ROUND_DOWN);
		model6a.setF_39(CNumber.toString(h34));

		//f_43 H34-H35-H36-H37
		BigDecimal h35 = BigDecimal.ZERO;
		BigDecimal h36 = BigDecimal.ZERO;
		BigDecimal h37 = BigDecimal.ZERO;
		BigDecimal h38 = h34.subtract(h35).subtract(h36).subtract(h37);
		model6a.setF_43(CNumber.toString(h38));
		model6a.setF_44(CNumber.toString(h39));

		BigDecimal h40 = BigDecimal.ZERO;
		BigDecimal h41 = h34.subtract(h35).subtract(h37).subtract(h39).subtract(h40).setScale(-2, BigDecimal.ROUND_DOWN);
		model6a.setF_46(CNumber.toString(h41));

		//f_52 H41-H46
		BigDecimal h47 = h41;
		model6a.setF_52(CNumber.toString(h47));

		//f_53_1 H23
		BigDecimal h49 = h23;
		model6a.setF_53_1(CNumber.toString(h49));

		//f53_2 ROUNDDOWN(H49*I50,-2)
		BigDecimal h50 = h49.multiply(i50);
		model6a.setF_53_2(CNumber.toString(h50));

		//f_55 H50+H52
		BigDecimal h53 = h50;
		model6a.setF_55(CNumber.toString(h53));

		BigDecimal h55 = h53;
		model6a.setF_57(CNumber.toString(h55));

		//f_58 入力画面!G231
		model6a.setF_58(CNumber.toString(h56));

		//f_60 H55-H56-H57
		BigDecimal h58 = BigDecimal.ZERO.subtract(h56);
		model6a.setF_60(CNumber.toString(h58));

		//f_62 H58-H59
		BigDecimal h60 = h58;
		model6a.setF_62(CNumber.toString(h60));

		//f_72 IF(H41<0,-H41,0)+IF(H85<0,-H85,0)+IF(H89<0,-H89,0)+IF(H58<0,-H58,0)
		Integer h63 = Math.abs(CNumber.parseInteger(h41)) + Math.abs(CNumber.parseInteger(h85)) + Math.abs(CNumber.parseInteger(h89)) + Math.abs(CNumber.parseInteger(h58));
		model6a.setF_72(CNumber.toString(h63));

		mapper6a.insertModel(model6a);

		return model6a;
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
