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
import com.jp.qxd.tax.model.input.DModel;
import com.jp.qxd.tax.service.input.DService;
import com.jp.qxd.tax.utils.Contents;
import com.jp.qxd.tax.utils.Utils;

@Controller
@RequestMapping("/input")
public class DController {
	private static Logger logger = LoggerFactory.getLogger(DController.class);

	@Autowired
	private DService dService;

	@RequestMapping("/d_table52")
	public String c_establishmentInfo() {

		return "input/d_table52";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(path = "/d_init", method = RequestMethod.POST)
	public @ResponseBody JsonResult d_init(HttpSession session) {
		DModel model = new DModel();
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		String company_id = "1";
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id(company_id);
		JsonResult result = new JsonResult();

		List<DModel> dModels = (List<DModel>) dService.getModels(model);
		if (dModels.size() > 0) {
			result.setResultObject(dModels.get(0));
		}

		return result;
	}

	@RequestMapping(path = "/d_insert", method = RequestMethod.POST)
	public @ResponseBody JsonResult d_insert(@RequestBody DModel model, HttpSession session) {
		JsonResult result = new JsonResult();
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id("1");
		dService.insertModel(model);
		return result;
	}

}