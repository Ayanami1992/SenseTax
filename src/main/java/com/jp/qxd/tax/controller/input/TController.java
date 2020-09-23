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
import com.jp.qxd.tax.model.input.RModel;
import com.jp.qxd.tax.model.input.TModel;
import com.jp.qxd.tax.service.input.TService;
import com.jp.qxd.tax.utils.Contents;
import com.jp.qxd.tax.utils.Utils;

@Controller
@RequestMapping("/input")
public class TController {
	private static Logger logger = LoggerFactory.getLogger(TController.class);

	@Autowired
	private TService service;

	@RequestMapping("t_companyIdentification")
	public String t_companyIdentification() {

		return "input/t_companyIdentification";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(path = "/t_init", method = RequestMethod.POST)
	public @ResponseBody JsonResult t_init(HttpSession session) {
		TModel model = new TModel();
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		String company_id = "1";
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id(company_id);
		JsonResult result = new JsonResult();

		List<RModel> models = (List<RModel>) service.getModels(model);
		if (models.size() > 0) {
			result.setResultObject(models.get(0));
		}
		return result;
	}

	@RequestMapping(path = "/t_insert", method = RequestMethod.POST)
	public @ResponseBody JsonResult t_insert(@RequestBody TModel model, HttpSession session) throws NoSuchFieldException, SecurityException, IllegalArgumentException, IllegalAccessException {
		JsonResult result = new JsonResult();
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id("1");
		service.insertModel(model);
		return result;
	}

	@RequestMapping(path = "/t_copy", method = RequestMethod.POST)
	public @ResponseBody JsonResult t_copy(@RequestBody TModel model, HttpSession session) {
		JsonResult result = new JsonResult();

		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		model.setUserId(userId);
		model.setYear(String.valueOf(Integer.valueOf(year) - 1));
		model.setCompany_id("1");
		List<TModel> models = (List<TModel>) service.getModels(model);
		if (models.size() > 0) {
			model.setPreYear(String.valueOf(Integer.valueOf(year) - 1));
			if (service.copy(model, year) > 0) {
				return result;
			}
		}

		result.setErrors(new String[] {"前月のデータがなし。"});
		return result;
	}


}