package com.jp.qxd.tax.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.jp.qxd.tax.model.YearModel;

@Mapper
public interface YearMapper{

	public List<YearModel> getYears();
}
