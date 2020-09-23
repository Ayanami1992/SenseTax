package com.jp.qxd.tax.model.input;

import org.springframework.stereotype.Component;

@Component
public class LocalTaxRate {
	private String city_area;
	private String prefecture;
	private String city;
	private String area;
	private String city_tax_rate1;
	private String city_tax_rate2;
	private String city_equalization9 = "0";
	private String city_equalization8 = "0";
	private String city_equalization7 = "0";
	private String city_equalization6 = "0";
	private String prefecture_equalization_1000 = "0";
	private String prefecture_equalization1000_ = "0";
	private String forest_environment_tax1000_ = "0";
	private String forest_environment_tax_1001 = "0";
	private String city_forest_a = "0";
	private String city_forest_b = "0";
	private String city_forest_c = "0";
	private String city_forest_d = "0";

	public String getCity_area() {
		return city_area;
	}

	public void setCity_area(String city_area) {
		this.city_area = city_area;
	}

	public String getPrefecture() {
		return prefecture;
	}

	public void setPrefecture(String prefecture) {
		this.prefecture = prefecture;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getCity_tax_rate1() {
		return city_tax_rate1;
	}

	public void setCity_tax_rate1(String city_tax_rate1) {
		this.city_tax_rate1 = city_tax_rate1;
	}

	public String getCity_tax_rate2() {
		return city_tax_rate2;
	}

	public void setCity_tax_rate2(String city_tax_rate2) {
		this.city_tax_rate2 = city_tax_rate2;
	}

	public String getCity_equalization9() {
		return city_equalization9;
	}

	public void setCity_equalization9(String city_equalization9) {
		this.city_equalization9 = city_equalization9;
	}

	public String getCity_equalization8() {
		return city_equalization8;
	}

	public void setCity_equalization8(String city_equalization8) {
		this.city_equalization8 = city_equalization8;
	}

	public String getCity_equalization7() {
		return city_equalization7;
	}

	public void setCity_equalization7(String city_equalization7) {
		this.city_equalization7 = city_equalization7;
	}

	public String getCity_equalization6() {
		return city_equalization6;
	}

	public void setCity_equalization6(String city_equalization6) {
		this.city_equalization6 = city_equalization6;
	}

	public String getPrefecture_equalization_1000() {
		return prefecture_equalization_1000;
	}

	public void setPrefecture_equalization_1000(String prefecture_equalization_1000) {
		this.prefecture_equalization_1000 = prefecture_equalization_1000;
	}

	public String getPrefecture_equalization1000_() {
		return prefecture_equalization1000_;
	}

	public void setPrefecture_equalization1000_(String prefecture_equalization1000_) {
		this.prefecture_equalization1000_ = prefecture_equalization1000_;
	}

	public String getForest_environment_tax1000_() {
		return forest_environment_tax1000_;
	}

	public void setForest_environment_tax1000_(String forest_environment_tax1000_) {
		this.forest_environment_tax1000_ = forest_environment_tax1000_;
	}

	public String getForest_environment_tax_1001() {
		return forest_environment_tax_1001;
	}

	public void setForest_environment_tax_1001(String forest_environment_tax_1001) {
		this.forest_environment_tax_1001 = forest_environment_tax_1001;
	}

	public String getCity_forest_a() {
		return city_forest_a;
	}

	public void setCity_forest_a(String city_forest_a) {
		this.city_forest_a = city_forest_a;
	}

	public String getCity_forest_b() {
		return city_forest_b;
	}

	public void setCity_forest_b(String city_forest_b) {
		this.city_forest_b = city_forest_b;
	}

	public String getCity_forest_c() {
		return city_forest_c;
	}

	public void setCity_forest_c(String city_forest_c) {
		this.city_forest_c = city_forest_c;
	}

	public String getCity_forest_d() {
		return city_forest_d;
	}

	public void setCity_forest_d(String city_forest_d) {
		this.city_forest_d = city_forest_d;
	}

}
