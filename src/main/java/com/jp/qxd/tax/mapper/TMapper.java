package com.jp.qxd.tax.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.jp.qxd.tax.model.BaseModel;

@Mapper
public interface TMapper extends BaseMapper{

	public int copy(BaseModel model);
}
