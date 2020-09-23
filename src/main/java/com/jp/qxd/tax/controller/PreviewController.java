package com.jp.qxd.tax.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/preview")
public class PreviewController {
	private static Logger logger = LoggerFactory.getLogger(PreviewController.class);

	@RequestMapping("/")
	public String a_taxList() {

		return "preview/index";
	}

}