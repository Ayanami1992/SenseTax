package com.jp.qxd.tax.controller;

import java.util.Calendar;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jp.qxd.tax.model.JsonResult;

@Controller
@RequestMapping("/input")
public class InputController {
	private static Logger logger = LoggerFactory.getLogger(InputController.class);

	@RequestMapping(path = "/getNextYear", method = RequestMethod.POST)
	public @ResponseBody JsonResult getNextYear(@RequestBody String date) {
		JsonResult result = new JsonResult();

		String resultDate;
		String[] dates = date.split("-");
		Calendar nextdate = Calendar.getInstance();
		nextdate.set(Integer.valueOf(dates[0]), Integer.valueOf(dates[1]) - 1, Integer.valueOf(dates[2]));
		nextdate.add(Calendar.YEAR, 1);
		nextdate.add(Calendar.DATE, -1);

		resultDate = nextdate.get(Calendar.YEAR) + "-";

		int month = nextdate.get(Calendar.MONTH) + 1;
		if (month < 10) {
			resultDate += "0";
		}
		resultDate += month + "-";

		int day = nextdate.get(Calendar.DATE);
		if (day < 10) {
			resultDate += "0";
		}
		resultDate += day;

		result.setResultObject(resultDate);
		return result;
	}

}