package com.jp.qxd.tax.model;

public class BaseModel {

	private String userId;
	private String preYear;
	private String year;
	private String company_id;
	private String legalPersonName;
	private String ymdFrom;
	private String ymdTo;

	private String fixedYearFrom;
	private String fixedYearTo;

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getCompany_id() {
		return company_id;
	}

	public void setCompany_id(String company_id) {
		this.company_id = company_id;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getLegalPersonName() {
		return legalPersonName;
	}

	public void setLegalPersonName(String legalPersonName) {
		this.legalPersonName = legalPersonName;
	}

	public String getYmdFrom() {
		return ymdFrom;
	}

	public void setYmdFrom(String ymdFrom) {
		this.ymdFrom = ymdFrom;
	}

	public String getYmdTo() {
		return ymdTo;
	}

	public void setYmdTo(String ymdTo) {
		this.ymdTo = ymdTo;
	}

	public String getPreYear() {
		return preYear;
	}

	public void setPreYear(String preYear) {
		this.preYear = preYear;
	}
	public String getFixedYearFrom() {
		return fixedYearFrom;
	}
	public void setFixedYearFrom(String fixedYearFrom) {
		this.fixedYearFrom = fixedYearFrom;
	}
	public String getFixedYearTo() {
		return fixedYearTo;
	}
	public void setFixedYearTo(String fixedYearTo) {
		this.fixedYearTo = fixedYearTo;
	}

}
