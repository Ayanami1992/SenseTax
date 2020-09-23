package com.jp.qxd.tax.controller.input;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jp.qxd.tax.model.JsonResult;
import com.jp.qxd.tax.model.input.BModel;
import com.jp.qxd.tax.service.input.BService;
import com.jp.qxd.tax.utils.Contents;
import com.jp.qxd.tax.utils.Utils;

@Controller
@RequestMapping("/input")
public class BController {
	private static Logger logger = LoggerFactory.getLogger(BController.class);

	@Autowired
	private BService bService;

	@RequestMapping("/b_companyInfo")
	public String b_companyInfo() {

		return "input/b_companyInfo";
	}

	@RequestMapping(path = "/b_insert", method = RequestMethod.POST)
	public @ResponseBody JsonResult b_insert(@RequestBody BModel model, HttpSession session) {
		JsonResult result = new JsonResult();

		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		session.setAttribute(Contents.LEGAL_PERSON_NAME, model.getLegalPersonName());
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id("1");
		bService.insertModel(model);
		return result;
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(path = "/b_init", method = RequestMethod.POST)
	public @ResponseBody JsonResult b_init(@RequestBody BModel model, HttpSession session) {
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id("1");
		JsonResult result = new JsonResult();
		List<BModel> models = (List<BModel>) bService.getModels(model);
		if (models.size() > 0) {
			result.setResultObject(models.get(0));
		}
		return result;
	}

	@RequestMapping(path = "/b_copy", method = RequestMethod.POST)
	public @ResponseBody JsonResult b_copy(@RequestBody BModel model, HttpSession session) {
		JsonResult result = new JsonResult();

		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		model.setUserId(userId);
		model.setYear(String.valueOf(Integer.valueOf(year) - 1));
		model.setCompany_id("1");
		List<BModel> models = (List<BModel>) bService.getModels(model);
		if (models.size() > 0) {
			model.setPreYear(String.valueOf(Integer.valueOf(year) - 1));
			if (bService.copy(model, year) > 0) {
				return result;
			}
		}

		result.setErrors(new String[] {"前月のデータがなし。"});
		return result;
	}

}