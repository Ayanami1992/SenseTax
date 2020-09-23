package com.jp.qxd.tax.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.jp.qxd.tax.model.BaseModel;

@Mapper
public interface BaseMapper {

	public List<? extends BaseModel> getModels(BaseModel model);

	public int insertModel(BaseModel model);

	public int deleteModel(BaseModel model);
}
