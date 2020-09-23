package com.jp.qxd.tax.controller.input;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jp.qxd.tax.model.BaseModel;
import com.jp.qxd.tax.model.JsonResult;
import com.jp.qxd.tax.model.input.BModel;
import com.jp.qxd.tax.model.input.CModel;
import com.jp.qxd.tax.service.input.BService;
import com.jp.qxd.tax.service.input.CService;
import com.jp.qxd.tax.utils.Contents;
import com.jp.qxd.tax.utils.Utils;

@Controller
@RequestMapping("/input")
public class CController {
	private static Logger logger = LoggerFactory.getLogger(CController.class);

	@Autowired
	private BService bService;

	@Autowired
	private CService cService;

	@RequestMapping("/c_establishmentInfo")
	public String c_establishmentInfo() {

		return "input/c_establishmentInfo";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(path = "/c_init", method = RequestMethod.POST)
	public @ResponseBody JsonResult c_init(HttpSession session) {
		BModel model = new BModel();
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		String company_id = "1";
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id(company_id);
		JsonResult result = new JsonResult();
		Map<String, BaseModel> map = new HashMap<String, BaseModel>();
		List<BModel> bModels = (List<BModel>) bService.getModels(model);
		if (bModels.size() > 0) {
			map.put("BModel", bModels.get(0));
		}

		List<CModel> cModels = (List<CModel>) cService.getModels(model);
		if (cModels.size() > 0) {
			map.put("CModel", cModels.get(0));
		}
		result.setResultMap(map);
		return result;
	}

	@RequestMapping(path = "/c_insert", method = RequestMethod.POST)
	public @ResponseBody JsonResult c_insert(@RequestBody CModel model, HttpSession session) {
		JsonResult result = new JsonResult();
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id("1");
		cService.insertModel(model);
		return result;
	}

	@RequestMapping(path = "/c_copy", method = RequestMethod.POST)
	public @ResponseBody JsonResult c_copy(@RequestBody CModel model, HttpSession session) {
		JsonResult result = new JsonResult();

		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		model.setUserId(userId);
		model.setYear(String.valueOf(Integer.valueOf(year) - 1));
		model.setCompany_id("1");
		List<CModel> models = (List<CModel>) cService.getModels(model);
		if (models.size() > 0) {
			model.setPreYear(String.valueOf(Integer.valueOf(year) - 1));
			if (cService.copy(model, year) > 0) {
				return result;
			}
		}

		result.setErrors(new String[] {"前月のデータがなし。"});
		return result;
	}

}