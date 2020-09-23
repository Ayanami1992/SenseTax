package com.jp.qxd.tax.utils;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.security.core.context.SecurityContextImpl;
import org.springframework.util.ResourceUtils;

import com.jp.qxd.tax.model.User;

public class Utils {


	public static String PROJECT_PATH;

	static {
			try {
				File path = new File(ResourceUtils.getURL("classpath:").getPath());
				PROJECT_PATH = path.getAbsolutePath();
			} catch (FileNotFoundException e) {
				// TODO 自動生成された catch ブロック
				e.printStackTrace();
			}
	};

	public static String getUserId(HttpSession session) {

		SecurityContextImpl context = (SecurityContextImpl) session.getAttribute("SPRING_SECURITY_CONTEXT");
		if (context != null) {

			User user = (User) context.getAuthentication().getPrincipal();

			return user.getId().toString();
		}

		return null;
	}

	public static File createNewFile(String fileName) throws IOException {
		File file = new File(fileName);
		if (!file.getParentFile().exists()) {
			file.getParentFile().mkdirs();
		}
		file.createNewFile();
		return file;
	}

	public static String timeYMD() throws IOException {
		Date currentTime = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMdd");
		String dateString = formatter.format(currentTime);
		return dateString;
	}

	public static String timeYMDHMS() throws IOException {
		Date currentTime = new Date();
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
		String dateString = formatter.format(currentTime);
		return dateString;
	}
}
