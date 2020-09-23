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
import com.jp.qxd.tax.model.input.KModel;
import com.jp.qxd.tax.service.input.KService;
import com.jp.qxd.tax.utils.Contents;
import com.jp.qxd.tax.utils.Utils;

@Controller
@RequestMapping("/input")
public class KController {
	private static Logger logger = LoggerFactory.getLogger(KController.class);

	@Autowired
	private KService kService;

	@RequestMapping("k_taxCourses")
	public String k_taxCourses() {

		return "input/k_taxCourses";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(path = "/k_init", method = RequestMethod.POST)
	public @ResponseBody JsonResult k_init(HttpSession session) {
		KModel model = new KModel();
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		String company_id = "1";
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id(company_id);
		JsonResult result = new JsonResult();

		List<KModel> models = (List<KModel>) kService.getModels(model);
		if (models.size() > 0) {
			result.setResultObject(models.get(0));
		}
		return result;
	}

	@RequestMapping(path = "/k_insert", method = RequestMethod.POST)
	public @ResponseBody JsonResult k_insert(@RequestBody KModel model, HttpSession session) {
		JsonResult result = new JsonResult();
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id("1");
		kService.insertModel(model);
		return result;
	}

}