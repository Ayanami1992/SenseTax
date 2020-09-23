package com.jp.qxd.tax.service.pdf;

public class PdfBaseService {

	Integer initValue = 0;

	public Integer nullChangeInteger(Object item) {
		if(item == null) {
			return initValue;
		}else if(item.equals("")) {
			return initValue;
		}else {
			return Integer.valueOf(item.toString());
		}
	}
}
