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
import com.jp.qxd.tax.model.input.FModel;
import com.jp.qxd.tax.service.input.BService;
import com.jp.qxd.tax.service.input.FService;
import com.jp.qxd.tax.utils.Contents;
import com.jp.qxd.tax.utils.Utils;

@Controller
@RequestMapping("/input")
public class FController {
	private static Logger logger = LoggerFactory.getLogger(FController.class);

	@Autowired
	private FService fService;

	@Autowired
	private BService bService;

	@RequestMapping("/f_carryOverLoss")
	public String f_carryOverLoss() {

		return "input/f_carryOverLoss";
	}

	@SuppressWarnings("unchecked")
	@RequestMapping(path = "/f_init", method = RequestMethod.POST)
	public @ResponseBody JsonResult f_init(HttpSession session) {
		FModel model = new FModel();
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		String company_id = "1";
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id(company_id);
		JsonResult result = new JsonResult();
		Map<String, BaseModel> map = new HashMap<String, BaseModel>();

		List<FModel> fModels = (List<FModel>) fService.getModels(model);
		if (fModels.size() > 0) {
			result.setResultObject(fModels.get(0));
		} else {

			List<BModel> bModels = (List<BModel>) bService.getModels(model);
			if (bModels.size() > 0) {
				model = fService.formatYears(bModels.get(0));
				result.setResultObject(model);
			}
		}

		return result;
	}

	@RequestMapping(path = "/f_insert", method = RequestMethod.POST)
	public @ResponseBody JsonResult f_insert(@RequestBody FModel model, HttpSession session) {
		JsonResult result = new JsonResult();
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id("1");
		fService.insertModel(model);
		return result;
	}

}