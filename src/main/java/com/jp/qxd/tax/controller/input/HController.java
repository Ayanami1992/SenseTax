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
import com.jp.qxd.tax.model.input.DModel;
import com.jp.qxd.tax.model.input.EModel;
import com.jp.qxd.tax.model.input.GModel;
import com.jp.qxd.tax.model.input.HModel;
import com.jp.qxd.tax.service.input.DService;
import com.jp.qxd.tax.service.input.EService;
import com.jp.qxd.tax.service.input.GService;
import com.jp.qxd.tax.service.input.HService;
import com.jp.qxd.tax.utils.Contents;
import com.jp.qxd.tax.utils.Utils;

@Controller
@RequestMapping("/input")
public class HController {
	private static Logger logger = LoggerFactory.getLogger(HController.class);

	@Autowired
	private HService hService;

	@Autowired
	private DService dService;

	@Autowired
	private EService eService;

	@Autowired
	private GService gService;

	@RequestMapping("/h_taxPayments")
	public String h_taxPayments() {

		return "input/h_taxPayments";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(path = "/h_init", method = RequestMethod.POST)
	public @ResponseBody JsonResult h_init(HttpSession session) {
		HModel model = new HModel();
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		String company_id = "1";
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id(company_id);
		JsonResult result = new JsonResult();

		Map<String, BaseModel> map = new HashMap<String, BaseModel>();

		List<DModel> dModels = (List<DModel>) dService.getModels(model);
		if (dModels.size() > 0) {
			map.put("DModel", dModels.get(0));
		}

		List<EModel> eModels = (List<EModel>) eService.getModels(model);
		if (eModels.size() > 0) {
			map.put("EModel", eModels.get(0));
		}

		List<GModel> gModels = (List<GModel>) gService.getModels(model);
		if (gModels.size() > 0) {
			map.put("GModel", gModels.get(0));
		}

		List<HModel> hModels = (List<HModel>) hService.getModels(model);
		if (hModels.size() > 0) {
			map.put("HModel", hModels.get(0));
		}

		result.setResultMap(map);
		return result;
	}

	@RequestMapping(path = "/h_insert", method = RequestMethod.POST)
	public @ResponseBody JsonResult h_insert(@RequestBody HModel model, HttpSession session) {
		JsonResult result = new JsonResult();
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id("1");
		hService.insertModel(model);
		return result;
	}

}