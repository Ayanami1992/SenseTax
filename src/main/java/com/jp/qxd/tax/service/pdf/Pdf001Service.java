package com.jp.qxd.tax.service.pdf;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jp.qxd.tax.mapper.BMapper;
import com.jp.qxd.tax.mapper.CMapper;
import com.jp.qxd.tax.mapper.JMapper;
import com.jp.qxd.tax.mapper.Pdf001Mapper;
import com.jp.qxd.tax.mapper.Pdf001_01Mapper;
import com.jp.qxd.tax.mapper.TMapper;
import com.jp.qxd.tax.model.BaseModel;
import com.jp.qxd.tax.model.input.CModel;
import com.jp.qxd.tax.model.input.JModel;
import com.jp.qxd.tax.model.pdf.Rpt001Model;
import com.jp.qxd.tax.model.pdf.Rpt004Model;
import com.jp.qxd.tax.model.pdf.Rpt006Model;
import com.jp.qxd.tax.model.pdf.Rpt007Model;
import com.jp.qxd.tax.utils.CNumber;

@Service
public class Pdf001Service extends PdfBaseService {

	@Autowired
	private BMapper bmapper;

	@Autowired
	private CMapper cmapper;

	@Autowired
	private TMapper tmapper;

	@Autowired
	private JMapper jmapper;

	@Autowired
	private Pdf001Mapper mapper001;

	@Autowired
	private Pdf001_01Mapper mapper001_01;

	@Autowired
	private Pdf004Service pdf004Service;

	@Autowired
	private Pdf006Service pdf006Service;

	@Autowired
	private Pdf007Service pdf007Service;

	@Transactional
	public Rpt001Model initDB(BaseModel model) throws Exception {

		if (mapper001.getModels(model).size() > 0) {
			mapper001.deleteModel(model);
			mapper001_01.deleteModel(model);
		}

		Rpt004Model model004 = pdf004Service.initDB(model);

		Rpt006Model model006 = pdf006Service.initDB(model);

		Rpt007Model model007 = pdf007Service.initDB(model);

		Rpt001Model model001 = new Rpt001Model();
		List<? extends BaseModel> list = bmapper.getModelsForPdf001(model);
		if (list.size() > 0) {
			model001 = (Rpt001Model) list.get(0);
		}

		model001.setUserId(model.getUserId());
		model001.setCompany_id(model.getCompany_id());
		model001.setYear(model.getYear());
		model001.setLegalPersonName(model.getLegalPersonName());
		model001.setYmdFrom(model.getYmdFrom());
		model001.setYmdTo(model.getYmdTo());

		BigDecimal g3 = new BigDecimal(model004.getF_49_1());
		model001.setF_1(model004.getF_49_1());

		CModel cmodel = null;
		List<? extends BaseModel> cmodels = cmapper.getModels(model);
		if (cmodels.size() > 0) {
			cmodel = (CModel) cmodels.get(0);
		}

		//=IF(G3<0,0,IF(G3<=8000000*入力画面!G79/12,ROUNDDOWN(G3,-3),ROUNDDOWN(8000000*入力画面!G79/12,-3)))
		BigDecimal g37 = BigDecimal.ZERO;
		if (g3.compareTo(BigDecimal.ZERO) > 0) {
			if (g3.compareTo(new BigDecimal(8000000 * cmodel.getC_11() / 12)) <= 0) {
				g37 = g3.setScale(-3, BigDecimal.ROUND_DOWN);
			} else {
				g37 = new BigDecimal(8000000 * cmodel.getC_11() / 12).setScale(-3, BigDecimal.ROUND_DOWN);
			}
		}
		model001.setF_50(CNumber.toString(g37));

		BigDecimal g38 = BigDecimal.ZERO;
		if (g3.compareTo(g37) > 0) {
			g38 = g3.subtract(g37).setScale(-3, BigDecimal.ROUND_DOWN);
		}
		model001.setF_51(CNumber.toString(g38));

		BigDecimal g39 = g37.add(g38);
		model001.setF_52(CNumber.toString(g39));

		BigDecimal m37 = g37.multiply(new BigDecimal(0.15)).setScale(0, BigDecimal.ROUND_UP);
		model001.setF_54(CNumber.toString(m37));
		BigDecimal m38 = g38.multiply(new BigDecimal(0.234));
		model001.setF_55(CNumber.toString(m38));
		BigDecimal m39 = m37.add(m38);
		model001.setF_56(CNumber.toString(m38));
		BigDecimal g4 = m39;
		model001.setF_2(CNumber.toString(g4));

		BigDecimal g6 = g4;
		model001.setF_4(CNumber.toString(g6));

		// TODO g11 =IF(B_16>=39904,'三(一)、付表'!J42,'三(一)、付表'!J42)
		BigDecimal g11 = BigDecimal.ZERO;

		model001.setF_10(CNumber.toString(g6));

		String m3 = model006.getF_6_3();
		model001.setF_17(m3);
		String m5 = m3;
		model001.setF_19(m5);

		BigDecimal g13 = g6;
		BigDecimal g15 = g13;
		BigDecimal m6 = g15;
		model001.setF_13(CNumber.toString(g6));
		model001.setF_20(CNumber.toString(m6));

		BigDecimal m7 = new BigDecimal(m5).subtract(m6);
		model001.setF_21(CNumber.toString(m7));
		BigDecimal m11 = m7;
		model001.setF_25(CNumber.toString(m11));

		if (g15.compareTo(new BigDecimal(m5)) > 0) {
			model001.setF_13(m5);
		}
		BigDecimal g16 = g13.subtract(g15).setScale(-2, BigDecimal.ROUND_DOWN);
		model001.setF_14(CNumber.toString(g16));

		BigDecimal g17 = BigDecimal.ZERO;
		BigDecimal g29 = BigDecimal.ZERO;
		JModel jmodel = null;
		List<? extends BaseModel> jmodels = jmapper.getModels(model);
		if (jmodels.size() > 0) {
			jmodel = (JModel) jmodels.get(0);
			g17 = new BigDecimal(nullChangeInteger(jmodel.getJ_m224())).setScale(-2, BigDecimal.ROUND_DOWN);
			model001.setF_15(CNumber.toString(g17));
			g29 = new BigDecimal(nullChangeInteger(jmodel.getJ_m225()));
			model001.setF_43(CNumber.toString(g29));
		}

		BigDecimal g18 = g16.subtract(g17);
		if (g18.compareTo(BigDecimal.ZERO) < 0) {
			g18 = BigDecimal.ZERO;
		}
		model001.setF_16(CNumber.toString(g18));

		BigDecimal m12 = BigDecimal.ZERO;
		if (g18.compareTo(BigDecimal.ZERO) == 0) {
			m12 = g17.subtract(g16);
		}
		model001.setF_26(CNumber.toString(m12));

		BigDecimal m14 = m11.add(m12);
		model001.setF_28(CNumber.toString(m14));

		BigDecimal m17 = new BigDecimal(model007.getF_total_2());
		model001.setF_31(CNumber.toString(m17));

		BigDecimal m18 = new BigDecimal(model007.getF_total());
		model001.setF_32(CNumber.toString(m18));

		BigDecimal g20 = g6;
		model001.setF_33(CNumber.toString(g20));

		BigDecimal g21 = g11;
		// TODO g22 = g20 + g21
		BigDecimal g22 = g20.setScale(-3, BigDecimal.ROUND_DOWN);
		model001.setF_35(CNumber.toString(g22));

		BigDecimal g42 = g20.setScale(-3, BigDecimal.ROUND_DOWN);
		model001.setF_58(CNumber.toString(g42));
		BigDecimal m42 = g42.multiply(new BigDecimal(0.044));
		model001.setF_60(CNumber.toString(m42));

		BigDecimal g23 = m42;
		model001.setF_36(CNumber.toString(g23));

		BigDecimal g43 = g21.setScale(-3, BigDecimal.ROUND_DOWN);
		model001.setF_59(CNumber.toString(g43));
		BigDecimal m43 = g43.multiply(new BigDecimal(0.044));
		model001.setF_61(CNumber.toString(m43));

		BigDecimal g24 = m43;
		model001.setF_37(CNumber.toString(g24));

		BigDecimal g25 = g23.add(g24);
		model001.setF_38(CNumber.toString(g25));

		BigDecimal g26 = BigDecimal.ZERO;
		BigDecimal g28 = g25.subtract(g26).setScale(-2, BigDecimal.ROUND_DOWN);
		model001.setF_42(CNumber.toString(g28));

		BigDecimal g30 = BigDecimal.ZERO;
		if (g28.subtract(g29).compareTo(BigDecimal.ZERO) > 0) {
			g30 = g28.subtract(g29);
		}
		model001.setF_44(CNumber.toString(g30));

		BigDecimal m20 = BigDecimal.ZERO;
		if (g29.subtract(g28).compareTo(BigDecimal.ZERO) > 0) {
			m20 = g29.subtract(g28);
		}
		model001.setF_45(CNumber.toString(m20));

		mapper001.insertModel(model001);

		mapper001_01.insertModel(model001);

		return model001;

	}
}
