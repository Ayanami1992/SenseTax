package com.jp.qxd.tax.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.jp.qxd.tax.model.BaseModel;

@Mapper
public interface BMapper extends BaseMapper{

	public List<? extends BaseModel> getModelsForPdf001(BaseModel model);

	public List<? extends BaseModel> getModelsForPdf6a_d(BaseModel model);

	public List<? extends BaseModel> getModelsForPdf6a(BaseModel model);

	public List<? extends BaseModel> getModelsForPd20(BaseModel model);

	public int copy(BaseModel model);

}
