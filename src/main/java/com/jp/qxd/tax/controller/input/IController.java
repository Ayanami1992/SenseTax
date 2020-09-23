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
import com.jp.qxd.tax.model.input.IModel;
import com.jp.qxd.tax.service.input.IService;
import com.jp.qxd.tax.utils.Contents;
import com.jp.qxd.tax.utils.Utils;

@Controller
@RequestMapping("/input")
public class IController {
	private static Logger logger = LoggerFactory.getLogger(IController.class);

	@Autowired
	private IService iService;

	@RequestMapping("i_taxPayback")
	public String i_taxPayback() {

		return "input/i_taxPayback";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(path = "/i_init", method = RequestMethod.POST)
	public @ResponseBody JsonResult i_init(HttpSession session) {
		IModel model = new IModel();
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		String company_id = "1";
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id(company_id);
		JsonResult result = new JsonResult();

		List<IModel> iModels = (List<IModel>) iService.getModels(model);
		if (iModels.size() > 0) {
			result.setResultObject(iModels.get(0));
		}
		return result;
	}

	@RequestMapping(path = "/i_insert", method = RequestMethod.POST)
	public @ResponseBody JsonResult i_insert(@RequestBody IModel model, HttpSession session) {
		JsonResult result = new JsonResult();
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id("1");
		iService.insertModel(model);
		return result;
	}

}