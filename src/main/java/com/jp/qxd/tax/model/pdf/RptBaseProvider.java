package com.jp.qxd.tax.model.pdf;

import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.util.ResourceUtils;

public abstract class RptBaseProvider {

	public static final String NUMBER = "number";
	public static final String TEXT = "text";
	public static final String TEXTAREA = "textArea";
	public static final String TEL = "tel";
	public static final String DATE = "date";
	public static final String MAINDATE = "mainDate";
	public static final String STRINGDATE = "stringDate";
	public static final String PREFECTURES = "Prefectures";
	public static final String LINE_FEED = "linefeed";
 	public static final String FIXEDTEXT = "令和";

	public static final String TYPE = "政令指定都市以外";

	private String templatePath;

	private String reportId;

	private String logoPath;

	public Map<String, Object> getReportParam() {
		Map<String, Object> reportParam = new HashMap<String, Object>();
		reportParam.put("REPORT_ID", reportId);
		reportParam.put("REPORT_LOGO_PATH", logoPath);
		return reportParam;
	}

	public String getTemplate() throws FileNotFoundException {
		File path = new File(ResourceUtils.getURL("classpath:").getPath());
		templatePath = path.getAbsolutePath() + "/static/pdfTemplates/";
		return templatePath + "/rpt" + reportId + ".jasper";
	}

	public abstract Collection<?> getReprotData();

	public void setTemplatePath(String templatePath) {
		this.templatePath = templatePath;
	}

	public String getReportId() {
		return reportId;
	}

	public void setReportId(String reportId) {
		this.reportId = reportId;
	}

	public String getLogoPath() {
		return logoPath;
	}

	public void setLogoPath(String logoPath) {
		this.logoPath = logoPath;
	}

	public int[] getPdfOutputData (String pdfText, int x, int y, int size, int index, int spacing) {
		if (pdfText.length() <= index) {
			return new int[1];
		}

		pdfText = pdfText.substring(0, pdfText.length() - index);

		int data[] = new int[pdfText.length()];

		for (int i = pdfText.length()-1; i>=0; i--) {
			data[pdfText.length()-1 - i]  = x - i * spacing;
		}
		return data;
	}

	public int[] getPdfOutputData (String pdfText, int x, int y, int ex, int ey, int size, int index, int interceptPosition, int spacing) {
		String[] data = null;
		if(pdfText.length() > interceptPosition) {
			String[] outputData = {pdfText.substring(0, interceptPosition - index), pdfText.substring(interceptPosition, pdfText.length())};
			data = outputData;
		}else {
			String[] outputData = {pdfText};
			data = outputData;
		}
		List<Integer> list = new ArrayList<Integer>();
		int count = 0;
		int position = 0;

		for(String field : data) {
			count++;
			if(count == 1) {
				position = x;
			}else {
				position = ex;
			}
			for (int i = field.length()-1; i>=0; i--) {
				list.add(position - i * spacing);
			}
		}

		int[] fieldPosition = new int[list.size()];
		for(int i = 0; i<list.size(); i++) {
			fieldPosition[i] = list.get(i);
		}
		return fieldPosition;
	}

}
