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
import com.jp.qxd.tax.model.input.EModel;
import com.jp.qxd.tax.model.input.SModel;
import com.jp.qxd.tax.service.input.EService;
import com.jp.qxd.tax.service.input.SService;
import com.jp.qxd.tax.utils.Contents;
import com.jp.qxd.tax.utils.Utils;

@Controller
@RequestMapping("/input")
public class SController {
	private static Logger logger = LoggerFactory.getLogger(SController.class);

	@Autowired
	private SService sService;

	@Autowired
	private EService eService;

	@RequestMapping("s_transferLoss")
	public String s_transferLoss() {

		return "input/s_transferLoss";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(path = "/s_init", method = RequestMethod.POST)
	public @ResponseBody JsonResult s_init(HttpSession session) {
		SModel model = new SModel();
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		String company_id = "1";
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id(company_id);
		JsonResult result = new JsonResult();
		Map<String, BaseModel> map = new HashMap<String, BaseModel>();

		List<EModel> eModels = (List<EModel>) eService.getModels(model);
		if (eModels.size() > 0) {
			map.put("EModel", eModels.get(0));
		}

		List<SModel> sModels = (List<SModel>) sService.getModels(model);
		if (sModels.size() > 0) {
			map.put("SModel", sModels.get(0));
		} else {
			map.put("SModel", new SModel());
		}
		result.setResultMap(map);
		return result;
	}

	@RequestMapping(path = "/s_insert", method = RequestMethod.POST)
	public @ResponseBody JsonResult s_insert(@RequestBody SModel model, HttpSession session) {
		JsonResult result = new JsonResult();
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id("1");
		sService.insertModel(model);
		return result;
	}

}