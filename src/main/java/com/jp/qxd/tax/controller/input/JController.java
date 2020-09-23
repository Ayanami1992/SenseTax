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
import com.jp.qxd.tax.model.input.JModel;
import com.jp.qxd.tax.service.input.JService;
import com.jp.qxd.tax.utils.Contents;
import com.jp.qxd.tax.utils.Utils;

@Controller
@RequestMapping("/input")
public class JController {
	private static Logger logger = LoggerFactory.getLogger(JController.class);

	@Autowired
	private JService jService;

	@RequestMapping("j_intermediatepayments")
	public String j_intermediatepayments() {

		return "input/j_intermediatepayments";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(path = "/j_init", method = RequestMethod.POST)
	public @ResponseBody JsonResult j_init(HttpSession session) {
		JModel model = new JModel();
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		String company_id = "1";
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id(company_id);
		JsonResult result = new JsonResult();

		List<JModel> models = (List<JModel>) jService.getModels(model);
		if (models.size() > 0) {
			result.setResultObject(models.get(0));
		}
		return result;
	}

	@RequestMapping(path = "/j_insert", method = RequestMethod.POST)
	public @ResponseBody JsonResult j_insert(@RequestBody JModel model, HttpSession session) {
		JsonResult result = new JsonResult();
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id("1");
		jService.insertModel(model);
		return result;
	}

}