package com.jp.qxd.tax.controller;

import java.math.BigDecimal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jp.qxd.tax.model.BaseModel;
import com.jp.qxd.tax.model.JsonResult;
import com.jp.qxd.tax.model.Summary;
import com.jp.qxd.tax.model.input.CModel;
import com.jp.qxd.tax.model.pdf.Rpt001Model;
import com.jp.qxd.tax.model.pdf.Rpt020Model;
import com.jp.qxd.tax.model.pdf.Rpt6aModel;
import com.jp.qxd.tax.model.pdf.Rpt6a_dModel;
import com.jp.qxd.tax.service.input.CService;
import com.jp.qxd.tax.service.pdf.Pdf001Service;
import com.jp.qxd.tax.service.pdf.Pdf020Service;
import com.jp.qxd.tax.service.pdf.Pdf6aService;
import com.jp.qxd.tax.service.pdf.Pdf6a_dService;
import com.jp.qxd.tax.utils.CNumber;
import com.jp.qxd.tax.utils.Contents;
import com.jp.qxd.tax.utils.Utils;

@Controller
@RequestMapping("/summary")
public class SummaryController {
	private static Logger logger = LoggerFactory.getLogger(SummaryController.class);

	@Autowired
	private CService cService;

	@Autowired
	private Pdf001Service pdf001Service;

	@Autowired
	private Pdf6a_dService pdf6a_dService;

	@Autowired
	private Pdf6aService pdf6aService;

	@Autowired
	private Pdf020Service pdf020Service;

	@RequestMapping("/getSummary")
	public @ResponseBody JsonResult getSummary(HttpSession session) throws Exception {
		BaseModel model = new BaseModel();

		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		String legalPersonName = (String) session.getAttribute(Contents.LEGAL_PERSON_NAME);
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id("1");
		model.setLegalPersonName(legalPersonName);
		model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
		model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));

		JsonResult result = new JsonResult();
		Summary obj = new Summary();
		//='一(一)'!G16
		Rpt001Model model001 = pdf001Service.initDB(model);
		BigDecimal g13 = CNumber.parseBigDecimal(model001.getF_14());
		obj.setG13(CNumber.toString(g13));
		BigDecimal i13 = CNumber.parseBigDecimal(model001.getF_15());
		obj.setI13(CNumber.toString(i13));
		BigDecimal k13 = CNumber.parseBigDecimal(model001.getF_16()).subtract(CNumber.parseBigDecimal(model001.getF_26()));
		obj.setK13(CNumber.toString(k13));
		BigDecimal g14 = CNumber.parseBigDecimal(model001.getF_42());
		obj.setG14(CNumber.toString(g14));
		BigDecimal i14 = CNumber.parseBigDecimal(model001.getF_43());
		obj.setI14(CNumber.toString(i14));
		BigDecimal k14 = CNumber.parseBigDecimal(model001.getF_44()).subtract(CNumber.parseBigDecimal(model001.getF_45()));
		obj.setK14(CNumber.toString(k14));
//		BigDecimal g15 = CNumber.parseBigDecimal(model001.getF_20());
		BigDecimal g15 = BigDecimal.ZERO;
		obj.setG15(CNumber.toString(g15));
//		BigDecimal i15 = CNumber.parseBigDecimal(model001.getF_19());
		BigDecimal i15 = BigDecimal.ZERO;
		obj.setI15(CNumber.toString(i15));
//		BigDecimal k15 = CNumber.parseBigDecimal(model001.getF_25());
		BigDecimal k15 = BigDecimal.ZERO;
		obj.setK15(CNumber.toString(k15));

		Rpt6aModel modelno6 = pdf6aService.initDB(model);
		BigDecimal g17 = CNumber.parseBigDecimal(modelno6.getF_43()).add(CNumber.parseBigDecimal(modelno6.getF_45()));
		obj.setG17(CNumber.toString(g17));
		BigDecimal g18 = CNumber.parseBigDecimal(modelno6.getF_57()).add(CNumber.parseBigDecimal(modelno6.getF_59()));
		obj.setG18(CNumber.toString(g18));
		BigDecimal g16 = g17.add(g18);
		obj.setG16(CNumber.toString(g16));

		BigDecimal i17 = CNumber.parseBigDecimal(modelno6.getF_43());
		obj.setI17(CNumber.toString(i17));
		BigDecimal i18 = CNumber.parseBigDecimal(modelno6.getF_57());
		obj.setI18(CNumber.toString(i18));
		BigDecimal i16 = i17.add(i18);
		obj.setI16(CNumber.toString(i16));

		BigDecimal k17 = CNumber.parseBigDecimal(modelno6.getF_45());
		obj.setK17(CNumber.toString(k17));
		BigDecimal k18 = CNumber.parseBigDecimal(modelno6.getF_59());
		obj.setK18(CNumber.toString(k18));
		BigDecimal k16 = k17.add(k18);
		obj.setK16(CNumber.toString(k16));

		BigDecimal g19 = BigDecimal.ZERO;
		BigDecimal g20 = BigDecimal.ZERO;
		BigDecimal g21 = BigDecimal.ZERO;
		BigDecimal g22 = BigDecimal.ZERO;
		BigDecimal g23 = BigDecimal.ZERO;
		BigDecimal g24 = BigDecimal.ZERO;
		BigDecimal i19 = BigDecimal.ZERO;
		BigDecimal i20 = BigDecimal.ZERO;
		BigDecimal i21 = BigDecimal.ZERO;
		BigDecimal i22 = BigDecimal.ZERO;
		BigDecimal i23 = BigDecimal.ZERO;
		BigDecimal i24 = BigDecimal.ZERO;
		BigDecimal k19 = BigDecimal.ZERO;
		BigDecimal k20 = BigDecimal.ZERO;
		BigDecimal k21 = BigDecimal.ZERO;
		BigDecimal k22 = BigDecimal.ZERO;
		BigDecimal k23 = BigDecimal.ZERO;
		BigDecimal k24 = BigDecimal.ZERO;
		List<CModel> cModels = (List<CModel>) cService.getModels(model);
		Rpt6a_dModel model6a = new Rpt6a_dModel();
		if (cModels.size() > 0) {
			CModel cmodel = cModels.get(0);

			if ("東京都".equals(cmodel.getC_02())) {
				model6a = pdf6a_dService.initDB(model);
			} else {
				model6a = pdf6aService.initDB(model);
			}

			g20 = CNumber.parseBigDecimal(model6a.getF_13()).add(CNumber.parseBigDecimal(model6a.getF_15()));
			obj.setG20(CNumber.toString(g20));
			g21 = CNumber.parseBigDecimal(model6a.getF_17());
			obj.setG21(CNumber.toString(g21));
			g19 = g20.add(g21);
			obj.setG19(CNumber.toString(g19));

			i20 = CNumber.parseBigDecimal(model6a.getF_13());
			obj.setI20(CNumber.toString(i20));
			i21 = CNumber.parseBigDecimal(model6a.getF_18());
			obj.setI21(CNumber.toString(i21));
			i19 = i20.add(i21);
			obj.setI19(CNumber.toString(i19));

			k20 = CNumber.parseBigDecimal(model6a.getF_15());
			obj.setK20(CNumber.toString(k20));
			k21 = CNumber.parseBigDecimal(model6a.getF_19());
			obj.setK21(CNumber.toString(k21));
			k19 = k20.add(k21);
			obj.setK19(CNumber.toString(k19));


			//=IF(AND(G66="東京都",G67<>"政令指定都市以外"),0,地20号!H15+地20号!H17)
			if (!"東京都".equals(cmodel.getC_02()) || "政令指定都市以外".equals(cmodel.getC_03())) {
				Rpt020Model rpt020Model = pdf020Service.initDB(model);
				g23 = CNumber.parseBigDecimal(rpt020Model.getF_11()).add(CNumber.parseBigDecimal(rpt020Model.getF_13()));
				i23 = CNumber.parseBigDecimal(rpt020Model.getF_11());
				k23 = CNumber.parseBigDecimal(rpt020Model.getF_13());
				g24 = CNumber.parseBigDecimal(rpt020Model.getF_15());
				i24 = CNumber.parseBigDecimal(rpt020Model.getF_16());
				k24 = CNumber.parseBigDecimal(rpt020Model.getF_17());
				g22 = g23.add(g24);
				i22 = i23.add(i24);
				k22 = k23.add(k24);
			}
		}

		obj.setG22(CNumber.toString(g22));
		obj.setI22(CNumber.toString(i22));
		obj.setK22(CNumber.toString(k22));
		obj.setG23(CNumber.toString(g23));
		obj.setI23(CNumber.toString(i23));
		obj.setK23(CNumber.toString(k23));
		obj.setG24(CNumber.toString(g24));
		obj.setI24(CNumber.toString(i24));
		obj.setK24(CNumber.toString(k24));

		BigDecimal g25 = g13.add(g15.add(g14.add(g16.add(g19.add(g22)))));
		obj.setG25(CNumber.toString(g25));
		BigDecimal i25 = i13.add(i15.add(i14.add(i16.add(i19.add(i22)))));
		obj.setI25(CNumber.toString(i25));
		BigDecimal k25 = k13.add(k15.add(k14.add(k16.add(k19.add(k22)))));
		obj.setK25(CNumber.toString(k25));

		result.setResultObject(obj);
		return result;
	}


}