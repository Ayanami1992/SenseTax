package com.jp.qxd.tax.service.pdf;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jp.qxd.tax.mapper.BMapper;
import com.jp.qxd.tax.mapper.CMapper;
import com.jp.qxd.tax.mapper.MMapper;
import com.jp.qxd.tax.mapper.Pdf015Mapper;
import com.jp.qxd.tax.model.BaseModel;
import com.jp.qxd.tax.model.input.BModel;
import com.jp.qxd.tax.model.input.CModel;
import com.jp.qxd.tax.model.input.MModel;
import com.jp.qxd.tax.model.pdf.Rpt015Model;
import com.jp.qxd.tax.utils.CNumber;

@Service
public class Pdf015Service extends PdfBaseService {

	@Autowired
	private BMapper bmapper;

	@Autowired
	private CMapper cmapper;

	@Autowired
	private MMapper mmapper;

	@Autowired
	private Pdf015Mapper mapper015;

	@Transactional
	public void initDB(BaseModel model) throws Exception {

		if (mapper015.getModels(model).size() > 0) {
			mapper015.deleteModel(model);
		}

		Rpt015Model model015 = new Rpt015Model();
		model015.setUserId(model.getUserId());
		model015.setCompany_id(model.getCompany_id());
		model015.setYear(model.getYear());
		model015.setLegalPersonName(model.getLegalPersonName());
		model015.setYmdFrom(model.getYmdFrom());
		model015.setYmdTo(model.getYmdTo());

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

		// d4 =MIN(D2,IF(入力画面!F52<=100000000,ROUNDDOWN(8000000*入力画面!G79/12,0),0))
		if (bmodel != null && cmodel != null) {
			if (nullChangeInteger(bmodel.getB_21()) <= 100000000) {
				d4 = Math.min(i8, new BigDecimal(8000000).multiply(BigDecimal.valueOf(cmodel.getC_11()).divide(BigDecimal.valueOf(12), BigDecimal.ROUND_DOWN)).intValue());
			}
		}
		g2 = Math.max(d3, d4);

		g3 = g8 < g2 ? 0 : g8 - g2;

		model015.setF_1(CNumber.toString(g8));
		model015.setF_2(CNumber.toString(d3));
		model015.setF_3(CNumber.toString(d4));
		model015.setF_4(CNumber.toString(g2));
		model015.setF_5(CNumber.toString(g3));
		model015.setF_6_1(CNumber.toString(c8));
		model015.setF_7_1(CNumber.toString(e8));
		model015.setF_8_1(CNumber.toString(g8));
		model015.setF_9_1(CNumber.toString(i8));
		model015.setF_6_total(CNumber.toString(c8));
		model015.setF_7_total(CNumber.toString(e8));
		model015.setF_8_total(CNumber.toString(g8));
		model015.setF_9_total(CNumber.toString(i8));

		mapper015.insertModel(model015);

	}

}
