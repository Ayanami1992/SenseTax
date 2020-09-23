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
import com.jp.qxd.tax.model.input.AModel;
import com.jp.qxd.tax.service.input.AService;
import com.jp.qxd.tax.utils.Contents;
import com.jp.qxd.tax.utils.Utils;

@Controller
@RequestMapping("/input")
public class AController {
	private static Logger logger = LoggerFactory.getLogger(AController.class);

	@Autowired
	private AService aService;

	@RequestMapping("/a_taxList")
	public String a_taxList() {

		return "input/a_taxList";
	}

	@RequestMapping(path = "/a_insert", method = RequestMethod.POST)
	public @ResponseBody JsonResult b_insert(@RequestBody AModel model, HttpSession session) {
		JsonResult result = new JsonResult();

		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id("1");
		aService.insertModel(model);
		return result;
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(path = "/a_init", method = RequestMethod.POST)
	public @ResponseBody JsonResult a_init(@RequestBody AModel model, HttpSession session) {
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id("1");
		JsonResult result = new JsonResult();
		List<AModel> models = (List<AModel>) aService.getModels(model);
		if (models.size() > 0) {
			result.setResultObject(models.get(0));
		}
		return result;
	}

}