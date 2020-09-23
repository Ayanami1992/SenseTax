package com.jp.qxd.tax.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jp.qxd.tax.model.BaseModel;
import com.jp.qxd.tax.model.JsonResult;
import com.jp.qxd.tax.model.User;
import com.jp.qxd.tax.model.YearModel;
import com.jp.qxd.tax.model.input.BModel;
import com.jp.qxd.tax.service.LoginService;
import com.jp.qxd.tax.service.input.BService;
import com.jp.qxd.tax.utils.Contents;
import com.jp.qxd.tax.utils.Utils;

@Controller
public class LoginController {
	private static Logger logger = LoggerFactory.getLogger(LoginController.class);

	@Autowired
	private LoginService loginService;

	@Autowired
	private BService bService;

	@RequestMapping("/")
	public String index() {
		return "index";
	}

	@RequestMapping("/summary")
	public String summary() {
		return "summary";
	}
	@RequestMapping("/getYear")
	public @ResponseBody JsonResult getYear() {
		JsonResult result = new JsonResult();
		List<?> years = loginService.getYear();
		result.setResultList(years);
		return result;
	}

	@RequestMapping(path = "/setYear", method = RequestMethod.POST)
	public String setYear(HttpSession session, @RequestBody YearModel yearModel) {
		session.setAttribute(Contents.YEAR, yearModel.getYear());

		BaseModel model = new BaseModel();

		String userId = Utils.getUserId(session);
		String year = yearModel.getYear();
		model.setUserId(userId);
		model.setYear(year);
		model.setCompany_id("1");

		List<BModel> models = (List<BModel>) bService.getModels(model);
		if (models.size() > 0) {
			session.setAttribute(Contents.LEGAL_PERSON_NAME, models.get(0).getLegalPersonName());
			session.setAttribute(Contents.YMD_FROM, models.get(0).getB_16().replaceAll("\\-", StringUtils.EMPTY));
			session.setAttribute(Contents.YMD_TO, models.get(0).getB_17().replaceAll("\\-", StringUtils.EMPTY));
		}
		return "redirect:/input/a_taxList";
	}

	@RequestMapping("/login")
	public String login(Model model, @RequestParam(value="error", required=false) final String error) {
		if ("true".equals(error)) {
			model.addAttribute("errMsg", "login failed");
		}
		logger.info("test login...");
		return "auth/login";
	}

	@RequestMapping("/logout")
	public String logout(Model model) {
		return "auth/login";
	}

	@RequestMapping("/register")
	public String register() {
		logger.info("test register...");
		return "auth/register";
	}

	@RequestMapping(path = "/getUsers", method = RequestMethod.GET)
	public @ResponseBody JsonResult getUsers() {
		JsonResult result = new JsonResult();
		List<User> list = loginService.getUsers(null);
		result.setResultList(list);
		logger.info("test getUsers...");
		return result;
	}

	@RequestMapping(path = "/registerCheck", method = RequestMethod.POST)
	public @ResponseBody JsonResult registerCheck(HttpServletRequest request, @RequestBody User user) {
		JsonResult result = new JsonResult();
		List<User> list = loginService.getUsers(user);
		boolean sendMailFlg = true;
		if (list == null || list.isEmpty()) {
			user = loginService.createUser(user);
			try {
				String url = request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
				loginService.sendMail(user, url);
			} catch (Exception e) {
				sendMailFlg = false;
				logger.error("mail send failed", e);
			}
		} else {
			result.setErrors(new String[] {"this mail has already registered."});
		}
		if (!sendMailFlg) {
			result.setErrors(new String[] {"mail send failed"});
		}
		logger.info("test getUsers...");
		return result;
	}

	@RequestMapping(path = "/loginCheck", method = RequestMethod.POST)
	public @ResponseBody JsonResult loginCheck(HttpServletRequest request, @RequestBody User user) {
		JsonResult result = new JsonResult();
		List<User> list = loginService.getAvailableUsers(user);
		if (list != null && !list.isEmpty()) {
		} else {
			result.getErrors();
		}
		result.setResultList(list);
		logger.info("test getUsers...");
		return result;
	}

	@RequestMapping(path = "/verifyAccount", method = RequestMethod.GET)
	public String getUsers(@RequestParam(name = "auth_key") String auth_key) {
		User user = new User();
		user.setAuth_key(auth_key);
		loginService.updateUserStatus(user);
//		logger.info("test getUsers...");
		return "redirect:./";
	}

}