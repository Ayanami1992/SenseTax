package com.jp.qxd.tax.service.pdf;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jp.qxd.tax.mapper.CMapper;
import com.jp.qxd.tax.mapper.Pdf21_a_dMapper;
import com.jp.qxd.tax.mapper.UMapper;
import com.jp.qxd.tax.model.BaseModel;
import com.jp.qxd.tax.model.input.CModel;
import com.jp.qxd.tax.model.input.UModel;
import com.jp.qxd.tax.model.pdf.Rpt004Model;
import com.jp.qxd.tax.model.pdf.Rpt006Model;
import com.jp.qxd.tax.model.pdf.Rpt21_a_dModel;
import com.jp.qxd.tax.utils.CNumber;

@Service
public class Pdf0643Service {

	@Autowired
	private CMapper cmapper;

	@Autowired
	private UMapper umapper;

	@Autowired
	private Pdf21_a_dMapper mapper21a_d;

	@Autowired
	private Pdf004Service pdf004Service;

	@Autowired
	private Pdf006Service pdf006Service;



	@Transactional
	public Rpt21_a_dModel initDB(BaseModel model) throws Exception {

		if (mapper21a_d.getModels(model).size() > 0) {
			mapper21a_d.deleteModel(model);
		}

		Rpt21_a_dModel model021_a = new Rpt21_a_dModel();
		model021_a.setUserId(model.getUserId());
		model021_a.setCompany_id(model.getCompany_id());
		model021_a.setYear(model.getYear());
		model021_a.setLegalPersonName(model.getLegalPersonName());
		model021_a.setYmdFrom(model.getYmdFrom());
		model021_a.setYmdTo(model.getYmdTo());

		CModel cmodel = null;
		List<? extends BaseModel> cmodels = cmapper.getModels(model);
		if (cmodels.size() > 0) {
			cmodel = (CModel) cmodels.get(0);
			if ("東京都".equals(cmodel.getC_02())) {

			}
//			cmodel.getC_05()
		}

		Rpt004Model model004 = pdf004Service.initDB(model);
		String e3 = model004.getF_34_1();

		Rpt006Model model006 = pdf006Service.initDB(model);
		BigDecimal e4 = CNumber.parseBigDecimal(model006.getF_6_2()).subtract(CNumber.parseBigDecimal(model006.getF_6_3()));

		UModel umodel = null;
		List<? extends BaseModel> umodels = umapper.getModels(model);
		if (umodels.size() > 0) {
			umodel = (UModel) umodels.get(0);
			String e5 = umodel.getU_n460();
//			model021_a.setF_
		}


		mapper21a_d.insertModel(model021_a);
		return model021_a;

	}
}
