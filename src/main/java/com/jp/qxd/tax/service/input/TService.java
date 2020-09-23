package com.jp.qxd.tax.service.input;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jp.qxd.tax.mapper.TMapper;
import com.jp.qxd.tax.model.BaseModel;

@Service
public class TService {

	@Autowired
	private TMapper mapper;

	public List<? extends BaseModel> getModels(BaseModel model) {
		return mapper.getModels(model);
	}

	@Transactional
	public int insertModel(BaseModel model) throws NoSuchFieldException, SecurityException, IllegalArgumentException, IllegalAccessException {

		if (this.getModels(model).size() > 0) {
			mapper.deleteModel(model);
		}
		return mapper.insertModel(model);
	}

	@Transactional
	public int copy(BaseModel model, String year) {
		model.setYear(year);
		if (this.getModels(model).size() > 0) {
			mapper.deleteModel(model);
		}
		return mapper.copy(model);
	}

}
