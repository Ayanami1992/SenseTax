package com.jp.qxd.tax.utils;

import java.math.BigDecimal;

import org.apache.commons.lang3.StringUtils;

public class CNumber {

	public static Integer parseInteger(String val) {
		return StringUtils.isEmpty(val) ? 0 : Integer.valueOf(val);
	}

	public static Integer parseInteger(BigDecimal val) {
		return val.intValue();
	}

	public static Integer parseInteger(Integer val) {
		return val == null ? 0 : val;
	}

	public static Double parseDouble(String val) {
		return StringUtils.isEmpty(val) ? 0.0 : Double.valueOf(val);
	}

	public static BigDecimal parseBigDecimal(String val) {
		return val == null ? BigDecimal.ZERO : new BigDecimal(val);
	}

	public static BigDecimal parseBigDecimal(Integer val) {
		return val == null ? BigDecimal.ZERO : new BigDecimal(val);
	}

	public static BigDecimal parseBigDecimal(Double val) {
		return val == null ? BigDecimal.ZERO : new BigDecimal(val);
	}

	public static String toString(BigDecimal val) {
		return val == null ? "0" : String.valueOf(val.longValue());
	}

	public static String toString(Integer val) {
		return val == null ? "0" : String.valueOf(val);
	}

	public static String toString(Double val) {
		return val == null ? "0" : String.valueOf(val);
	}
	public static String toString(Object val) {
		return val.toString();
	}
}
