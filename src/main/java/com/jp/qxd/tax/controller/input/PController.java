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
import com.jp.qxd.tax.model.input.PModel;
import com.jp.qxd.tax.service.input.PService;
import com.jp.qxd.tax.utils.Contents;
import com.jp.qxd.tax.utils.Utils;

@Controller
@RequestMapping("/input")
public class PController {
	private static Logger logger = LoggerFactory.getLogger(PController.class);

	@Autowired
	private PService service;

	@RequestMapping("p_dividendsReceivable")
	public String p_dividendsReceivable() {

		return "input/p_dividendsReceivable";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(path = "/p_init", method = RequestMethod.POST)
	public @ResponseBody JsonResult p_init(HttpSession session) {
		PModel model = new PModel();
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		String company_id = "1";
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id(company_id);
		JsonResult result = new JsonResult();

		List<PModel> models = (List<PModel>) service.getModels(model);
		if (models.size() > 0) {
			result.setResultObject(models.get(0));
		}
		return result;
	}

	@RequestMapping(path = "/p_insert", method = RequestMethod.POST)
	public @ResponseBody JsonResult p_insert(@RequestBody PModel model, HttpSession session) {
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