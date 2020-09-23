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
import com.jp.qxd.tax.model.input.NModel;
import com.jp.qxd.tax.service.input.NService;
import com.jp.qxd.tax.utils.Contents;
import com.jp.qxd.tax.utils.Utils;

@Controller
@RequestMapping("/input")
public class NController {
	private static Logger logger = LoggerFactory.getLogger(NController.class);

	@Autowired
	private NService service;

	@RequestMapping("n_donation")
	public String n_donation() {

		return "input/n_donation";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(path = "/n_init", method = RequestMethod.POST)
	public @ResponseBody JsonResult n_init(HttpSession session) {
		NModel model = new NModel();
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		String company_id = "1";
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id(company_id);
		JsonResult result = new JsonResult();

		List<NModel> models = (List<NModel>) service.getModels(model);
		if (models.size() > 0) {
			result.setResultObject(models.get(0));
		}
		return result;
	}

	@RequestMapping(path = "/n_insert", method = RequestMethod.POST)
	public @ResponseBody JsonResult n_insert(@RequestBody NModel model, HttpSession session) {
		JsonResult result = new JsonResult();
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id("1");
		service.insertModel(model);
		return result;
	}

}