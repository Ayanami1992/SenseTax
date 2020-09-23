package com.jp.qxd.tax.service.pdf;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jp.qxd.tax.mapper.BMapper;
import com.jp.qxd.tax.mapper.FMapper;
import com.jp.qxd.tax.mapper.Pdf_r1_no6_yosiki_beppyo9Mapper;
import com.jp.qxd.tax.model.BaseModel;
import com.jp.qxd.tax.model.input.BModel;
import com.jp.qxd.tax.model.input.FModel;
import com.jp.qxd.tax.model.pdf.Rpt004Model;
import com.jp.qxd.tax.model.pdf.Rpt_r1_no6_yosiki_beppyo9Model;
import com.jp.qxd.tax.service.input.FService;
import com.jp.qxd.tax.utils.CNumber;

@Service
public class Pdfd69Service {
	@Autowired
	private FService fservice;

	@Autowired
	private FMapper fmapper;

	@Autowired
	private BMapper bmapper;

	@Autowired
	private Pdf004Service pdf004Service;

	@Autowired
	private Pdf_r1_no6_yosiki_beppyo9Mapper mapperd69;

	@Transactional
	public Rpt_r1_no6_yosiki_beppyo9Model initDB(BaseModel model) throws Exception {

		if (mapperd69.getModels(model).size() > 0) {
			mapperd69.deleteModel(model);
		}

		Rpt004Model model004 = pdf004Service.initDB(model);

		Rpt_r1_no6_yosiki_beppyo9Model modeld69 = new Rpt_r1_no6_yosiki_beppyo9Model();
		modeld69.setUserId(model.getUserId());
		modeld69.setCompany_id(model.getCompany_id());
		modeld69.setYear(model.getYear());
		modeld69.setLegalPersonName(model.getLegalPersonName());
		modeld69.setYmdFrom(model.getYmdFrom());
		modeld69.setYmdTo(model.getYmdTo());

		Integer f7 = 0, f9 = 0, f11 = 0, f13 = 0, f15 = 0, f17 = 0, f19 = 0, f21 = 0, f23 = 0, f25 = 0;
		Integer e7 = 0, e9 = 0, e11 = 0, e13 = 0, e15 = 0, e17 = 0, e19 = 0, e21 = 0, e23 = 0, e25 = 0;
		Integer g9 = 0, g11 = 0, g13 = 0, g15 = 0, g17 = 0, g19 = 0, g21 = 0, g23 = 0, g25 = 0;

		FModel fdatemodel = new FModel();
		BModel bModel = (BModel) bmapper.getModels(model).get(0);
		fdatemodel = fservice.formatYears(bModel);

		List<? extends BaseModel> fmodels = fmapper.getModels(model);
		if (fmodels.size() > 0) {
			FModel fmodel = (FModel) fmodels.get(0);
			e7 = CNumber.parseInteger(fmodel.getF_h136());
			e9 = CNumber.parseInteger(fmodel.getF_h137());
			e11 = CNumber.parseInteger(fmodel.getF_h138());
			e13 = CNumber.parseInteger(fmodel.getF_h139());
			e15 = CNumber.parseInteger(fmodel.getF_h140());
			e17 = CNumber.parseInteger(fmodel.getF_h141());
			e19 = CNumber.parseInteger(fmodel.getF_h142());
			e21 = CNumber.parseInteger(fmodel.getF_h143());
			e23 = CNumber.parseInteger(fmodel.getF_h144());
			e25 = CNumber.parseInteger(fmodel.getF_h145());
		}
		Integer G51 = CNumber.parseInteger(model004.getF_39_1());
		if (G51 > 0) {
			f7 = Math.min(G51, e7);
		}
		if ((G51 = G51 - f7) > 0) {
			f9 = Math.min(G51, e9);
		}
		if ((G51 = G51 - f9) > 0) {
			f11 = Math.min(G51, e11);
		}
		if ((G51 = G51 - f11) > 0) {
			f13 = Math.min(G51, e13);
		}
		if ((G51 = G51 - f13) > 0) {
			f15 = Math.min(G51, e15);
		}
		if ((G51 = G51 - f15) > 0) {
			f17 = Math.min(G51, e17);
		}
		if ((G51 = G51 - f17) > 0) {
			f19 = Math.min(G51, e19);
		}
		if ((G51 = G51 - f19) > 0) {
			f21 = Math.min(G51, e21);
		}
		if ((G51 = G51 - f21) > 0) {
			f23 = Math.min(G51, e23);
		}
		if ((G51 = G51 - f23) > 0) {
			f25 = Math.min(G51, e25);
		}
		g9 = e9 - f9;
		g11 = e11 - f11;
		g13 = e13 - f13;
		g15 = e15 - f15;
		g17 = e17 - f17;
		g19 = e19 - f19;
		g21 = e21 - f21;
		g23 = e23 - f23;
		g25 = e25 - f25;


		modeld69.setF_3_1(CNumber.toString(e7));
		modeld69.setF_3_2(CNumber.toString(e9));
		modeld69.setF_3_3(CNumber.toString(e11));
		modeld69.setF_3_4(CNumber.toString(e13));
		modeld69.setF_3_5(CNumber.toString(e15));
		modeld69.setF_3_6(CNumber.toString(e17));
		modeld69.setF_3_7(CNumber.toString(e19));
		modeld69.setF_3_8(CNumber.toString(e21));
		modeld69.setF_3_9(CNumber.toString(e23));
		modeld69.setF_3_10(CNumber.toString(e25));

		modeld69.setF_4_1(CNumber.toString(f7));
		modeld69.setF_4_2(CNumber.toString(f9));
		modeld69.setF_4_3(CNumber.toString(f11));
		modeld69.setF_4_4(CNumber.toString(f13));
		modeld69.setF_4_5(CNumber.toString(f15));
		modeld69.setF_4_6(CNumber.toString(f17));
		modeld69.setF_4_7(CNumber.toString(f19));
		modeld69.setF_4_8(CNumber.toString(f21));
		modeld69.setF_4_9(CNumber.toString(f23));
		modeld69.setF_4_10(CNumber.toString(f25));

		modeld69.setF_5_2(CNumber.toString(g9));
		modeld69.setF_5_3(CNumber.toString(g11));
		modeld69.setF_5_4(CNumber.toString(g13));
		modeld69.setF_5_5(CNumber.toString(g15));
		modeld69.setF_5_6(CNumber.toString(g17));
		modeld69.setF_5_7(CNumber.toString(g19));
		modeld69.setF_5_8(CNumber.toString(g21));
		modeld69.setF_5_9(CNumber.toString(g23));
		modeld69.setF_5_10(CNumber.toString(g25));

		modeld69.setF_fiscalYearFrom_1(fdatemodel.getF_d149());
		modeld69.setF_fiscalYearTo_1(fdatemodel.getF_f149());
		modeld69.setF_fiscalYearFrom_2(fdatemodel.getF_d150());
		modeld69.setF_fiscalYearTo_2(fdatemodel.getF_f150());
		modeld69.setF_fiscalYearFrom_3(fdatemodel.getF_d151());
		modeld69.setF_fiscalYearTo_3(fdatemodel.getF_f151());
		modeld69.setF_fiscalYearFrom_4(fdatemodel.getF_d152());
		modeld69.setF_fiscalYearTo_4(fdatemodel.getF_f152());
		modeld69.setF_fiscalYearFrom_5(fdatemodel.getF_d153());
		modeld69.setF_fiscalYearTo_5(fdatemodel.getF_f153());
		modeld69.setF_fiscalYearFrom_6(fdatemodel.getF_d154());
		modeld69.setF_fiscalYearTo_6(fdatemodel.getF_f154());
		modeld69.setF_fiscalYearFrom_7(fdatemodel.getF_d155());
		modeld69.setF_fiscalYearTo_7(fdatemodel.getF_f155());
		modeld69.setF_fiscalYearFrom_8(fdatemodel.getF_d156());
		modeld69.setF_fiscalYearTo_8(fdatemodel.getF_f156());
		modeld69.setF_fiscalYearFrom_9(fdatemodel.getF_d157());
		modeld69.setF_fiscalYearTo_9(fdatemodel.getF_f157());
		modeld69.setF_fiscalYearFrom_10(bModel.getB_16());
		modeld69.setF_fiscalYearTo_10(bModel.getB_17());

		Integer e27 = e7 + e9 + e11 + e13 + e15 + e17 + e19 + e21 + e23 + e25;

		Integer f27 = f7 + f9 + f11 + f13 + f15 + f17 + f19 + f21 + f23 + f25;

		Integer g27 = g9 + g11 + g13 + g15 + g17 + g19 + g21 + g23 + g25;

		mapperd69.insertModel(modeld69);

		return modeld69;
	}

}
