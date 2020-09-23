package com.jp.qxd.tax.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jp.qxd.tax.model.JsonResult;
import com.jp.qxd.tax.service.OptionsService;

@Controller
@RequestMapping("/options")
public class OptionsController {
	private static Logger logger = LoggerFactory.getLogger(OptionsController.class);

	@Autowired
	private OptionsService optionsService;

	@RequestMapping("/getLocalTaxRate")
	public @ResponseBody JsonResult c_establishmentInfo() {
		JsonResult result = new JsonResult();
		result.setResultList(optionsService.getLocalTaxRate());
		return result;
	}

}