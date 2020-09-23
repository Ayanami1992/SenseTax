package com.jp.qxd.tax.service.input;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jp.qxd.tax.mapper.BMapper;
import com.jp.qxd.tax.mapper.FMapper;
import com.jp.qxd.tax.model.BaseModel;

@Service
public class BService {

	@Autowired
	private BMapper mapper;

	@Autowired
	private FMapper fmapper;

	public List<? extends BaseModel> getModels(BaseModel model) {
		return mapper.getModels(model);
	}

	@Transactional
	public int insertModel(BaseModel model) {
		if (this.getModels(model).size() > 0) {
			mapper.deleteModel(model);
			fmapper.deleteModel(model);
		}
		return mapper.insertModel(model);
	}

	@Transactional
	public int copy(BaseModel model, String year) {
		model.setYear(year);
		if (this.getModels(model).size() > 0) {
			mapper.deleteModel(model);
			fmapper.deleteModel(model);
		}
		return mapper.copy(model);
	}
}
