package com.jp.qxd.tax.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.jp.qxd.tax.model.input.LocalTaxRate;

@Mapper
public interface OptionsMapper {

	public List<LocalTaxRate> getLocalTaxRate();

	public LocalTaxRate getLocalTaxRateByArea(String cityArea);

}
