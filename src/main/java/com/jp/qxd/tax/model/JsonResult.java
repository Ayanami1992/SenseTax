package com.jp.qxd.tax.model;

import java.util.List;
import java.util.Map;

public class JsonResult{

	private Object resultObject;
	private List<?> resultList;
	private Map<String, ?> resultMap;
	private String status;
	private String[] errors;
	private boolean hasError;

	public Object getResultObject() {
		return resultObject;
	}

	public void setResultObject(Object resultObject) {
		this.resultObject = resultObject;
	}

	public List<?> getResultList() {
		return resultList;
	}

	public void setResultList(List<?> resultList) {
		this.resultList = resultList;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String[] getErrors() {
		return errors;
	}

	public void setErrors(String[] errors) {
		this.errors = errors;
	}

	public boolean isHasError() {
		return hasError;
	}

	public void setHasError(boolean hasError) {
		this.hasError = hasError;
	}

	public Map<String, ?> getResultMap() {
		return resultMap;
	}

	public void setResultMap(Map<String, ?> resultMap) {
		this.resultMap = resultMap;
	}

}
