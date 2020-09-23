package com.jp.qxd.tax.controller.input;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jp.qxd.tax.model.JsonResult;
import com.jp.qxd.tax.model.input.EModel;
import com.jp.qxd.tax.model.input.GModel;
import com.jp.qxd.tax.service.input.EService;
import com.jp.qxd.tax.service.input.GService;
import com.jp.qxd.tax.utils.Contents;
import com.jp.qxd.tax.utils.Utils;

@Controller
@RequestMapping("/input")
public class GController {
	private static Logger logger = LoggerFactory.getLogger(GController.class);

	@Autowired
	private GService gService;

	@Autowired
	private EService eService;

	@RequestMapping("/g_temporaryTaxCancellation")
	public String g_temporaryTaxCancellation() {

		return "input/g_temporaryTaxCancellation";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(path = "/g_init", method = RequestMethod.POST)
	public @ResponseBody JsonResult g_init(HttpSession session) {
		GModel model = new GModel();
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		String company_id = "1";
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id(company_id);
		JsonResult result = new JsonResult();

		int amount = 0;

		List<EModel> eModels = (List<EModel>) eService.getModels(model);
		if (eModels.size() > 0) {
			EModel eModel = eModels.get(0);
			amount = Integer.parseInt(StringUtils.isEmpty(eModel.getE_h110()) ? "0" : eModel.getE_h110());
		}

		List<GModel> gModels = (List<GModel>) gService.getModels(model);
		GModel gModel = null;
		if (gModels.size() > 0) {
			gModel = gModels.get(0);
			gModel.setE_h110(amount);
			gModel.setG_i167(amount -
					(gModel.getG_i162() == null ? 0 : gModel.getG_i162()) -
					(gModel.getG_i165() == null ? 0 : gModel.getG_i165()));
		} else if (amount > 0){
			gModel = new GModel();
			gModel.setE_h110(amount);
			gModel.setG_i167(amount);
		}
		result.setResultObject(gModel);

		return result;
	}

	@RequestMapping(path = "/g_insert", method = RequestMethod.POST)
	public @ResponseBody JsonResult g_insert(@RequestBody GModel model, HttpSession session) {
		JsonResult result = new JsonResult();
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id("1");
		gService.insertModel(model);
		return result;
	}

}