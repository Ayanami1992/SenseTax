package com.jp.qxd.tax.service.pdf;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jp.qxd.tax.mapper.FMapper;
import com.jp.qxd.tax.mapper.Pdf007Mapper;
import com.jp.qxd.tax.model.BaseModel;
import com.jp.qxd.tax.model.input.FModel;
import com.jp.qxd.tax.model.pdf.Rpt004Model;
import com.jp.qxd.tax.model.pdf.Rpt007Model;
import com.jp.qxd.tax.utils.CNumber;

@Service
public class Pdf007Service extends PdfBaseService {

	@Autowired
	private FMapper fmapper;

	@Autowired
	private Pdf004Service pdf004Service;

	@Autowired
	private Pdf007Mapper mapper007;

	@Transactional
	public Rpt007Model initDB(BaseModel model) throws Exception {

		if (mapper007.getModels(model).size() > 0) {
			mapper007.deleteModel(model);
		}

		Rpt004Model model004 = pdf004Service.initDB(model);

		Rpt007Model model007 = new Rpt007Model();
		model007.setUserId(model.getUserId());
		model007.setCompany_id(model.getCompany_id());
		model007.setYear(model.getYear());
		model007.setLegalPersonName(model.getLegalPersonName());
		model007.setYmdFrom(model.getYmdFrom());
		model007.setYmdTo(model.getYmdTo());

		Integer f7 = 0, f9 = 0, f11 = 0, f13 = 0, f15 = 0, f17 = 0, f19 = 0, f21 = 0, f23 = 0, f25 = 0;
		Integer e7 = 0, e9 = 0, e11 = 0, e13 = 0, e15 = 0, e17 = 0, e19 = 0, e21 = 0, e23 = 0, e25 = 0;
		Integer g9 = 0, g11 = 0, g13 = 0, g15 = 0, g17 = 0, g19 = 0, g21 = 0, g23 = 0, g25 = 0;

		String b7 = "", b8 = "";
		String b9 = "", b10 = "";
		String b11 = "", b12 = "";
		String b13 = "", b14 = "";
		String b15 = "", b16 = "";
		String b17 = "", b18 = "";
		String b19 = "", b20 = "";
		String b21 = "", b22 = "";
		String b23 = "", b24 = "";
		String b25 = "", b26 = "";
		List<? extends BaseModel> fmodels = fmapper.getModels(model);
		if (fmodels.size() > 0) {
			FModel fmodel = (FModel) fmodels.get(0);
			e7 = nullChangeInteger(fmodel.getF_h136());
			b7 = e7 == 0 ? "" : fmodel.getF_d136();
			b8 = e7 == 0 ? "" : fmodel.getF_f136();
			e9 = nullChangeInteger(fmodel.getF_h137());
			b9 = e9 == 0 ? "" : fmodel.getF_d137();
			b10 = e9 == 0 ? "" : fmodel.getF_f137();
			e11 = nullChangeInteger(fmodel.getF_h138());
			b11 = e11 == 0 ? "" : fmodel.getF_d138();
			b12 = e11 == 0 ? "" : fmodel.getF_f138();
			e13 = nullChangeInteger(fmodel.getF_h139());
			b13 = e13 == 0 ? "" : fmodel.getF_d139();
			b14 = e13 == 0 ? "" : fmodel.getF_f139();
			e15 = nullChangeInteger(fmodel.getF_h140());
			b15 = e15 == 0 ? "" : fmodel.getF_d140();
			b16 = e15 == 0 ? "" : fmodel.getF_f140();
			e17 = nullChangeInteger(fmodel.getF_h141());
			b17 = e17 == 0 ? "" : fmodel.getF_d141();
			b18 = e17 == 0 ? "" : fmodel.getF_f141();
			e19 = nullChangeInteger(fmodel.getF_h142());
			b19 = e19 == 0 ? "" : fmodel.getF_d142();
			b20 = e19 == 0 ? "" : fmodel.getF_f142();
			e21 = nullChangeInteger(fmodel.getF_h143());
			b21 = e21 == 0 ? "" : fmodel.getF_d143();
			b22 = e21 == 0 ? "" : fmodel.getF_f143();
			e23 = nullChangeInteger(fmodel.getF_h144());
			b23 = e23 == 0 ? "" : fmodel.getF_d144();
			b24 = e23 == 0 ? "" : fmodel.getF_f144();
			e25 = nullChangeInteger(fmodel.getF_h145());
			b25 = e25 == 0 ? "" : fmodel.getF_d145();
			b26 = e25 == 0 ? "" : fmodel.getF_f145();
		}
		Integer G51 = nullChangeInteger(model004.getF_39_1());
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

		model007.setF_date_1_from(b7);
		model007.setF_date_1_to(b8);
		model007.setF_date_2_from(b9);
		model007.setF_date_2_to(b10);
		model007.setF_date_3_from(b11);
		model007.setF_date_3_to(b12);
		model007.setF_date_4_from(b13);
		model007.setF_date_4_to(b14);
		model007.setF_date_5_from(b15);
		model007.setF_date_5_to(b16);
		model007.setF_date_6_from(b17);
		model007.setF_date_6_to(b18);
		model007.setF_date_7_from(b19);
		model007.setF_date_7_to(b20);
		model007.setF_date_8_from(b21);
		model007.setF_date_8_to(b22);
		model007.setF_date_9_from(b23);
		model007.setF_date_9_to(b24);
		model007.setF_date_10_from(b25);
		model007.setF_date_10_to(b26);

		model007.setF_3_1(CNumber.toString(e7));
		model007.setF_3_2(CNumber.toString(e9));
		model007.setF_3_3(CNumber.toString(e11));
		model007.setF_3_4(CNumber.toString(e13));
		model007.setF_3_5(CNumber.toString(e15));
		model007.setF_3_6(CNumber.toString(e17));
		model007.setF_3_7(CNumber.toString(e19));
		model007.setF_3_8(CNumber.toString(e21));
		model007.setF_3_9(CNumber.toString(e23));
		model007.setF_3_10(CNumber.toString(e25));

		model007.setF_4_1(CNumber.toString(f7));
		model007.setF_4_2(CNumber.toString(f9));
		model007.setF_4_3(CNumber.toString(f11));
		model007.setF_4_4(CNumber.toString(f13));
		model007.setF_4_5(CNumber.toString(f15));
		model007.setF_4_6(CNumber.toString(f17));
		model007.setF_4_7(CNumber.toString(f19));
		model007.setF_4_8(CNumber.toString(f21));
		model007.setF_4_9(CNumber.toString(f23));
		model007.setF_4_10(CNumber.toString(f25));

		model007.setF_5_2(CNumber.toString(g9));
		model007.setF_5_3(CNumber.toString(g11));
		model007.setF_5_4(CNumber.toString(g13));
		model007.setF_5_5(CNumber.toString(g15));
		model007.setF_5_6(CNumber.toString(g17));
		model007.setF_5_7(CNumber.toString(g19));
		model007.setF_5_8(CNumber.toString(g21));
		model007.setF_5_9(CNumber.toString(g23));
		model007.setF_5_10(CNumber.toString(g25));

		Integer e27 = e7 + e9 + e11 + e13 + e15 + e17 + e19 + e21 + e23 + e25;

		Integer f27 = f7 + f9 + f11 + f13 + f15 + f17 + f19 + f21 + f23 + f25;

		Integer g27 = g9 + g11 + g13 + g15 + g17 + g19 + g21 + g23 + g25;

		model007.setF_total_1(CNumber.toString(e27));
		model007.setF_total_2(CNumber.toString(f27));
		model007.setF_total_3(CNumber.toString(g27));

		// TODO
		Integer e28 = 0;;
		if (nullChangeInteger(model004.getF_49_1()) < 0) {
			e28 = -nullChangeInteger(model004.getF_49_1());
		}
		model007.setF_17(CNumber.toString(e28));

		model007.setF_19_1(CNumber.toString(e28));
		model007.setF_total(CNumber.toString(g27));
		mapper007.insertModel(model007);

		return model007;
	}

}
