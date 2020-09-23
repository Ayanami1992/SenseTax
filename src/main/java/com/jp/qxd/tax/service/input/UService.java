package com.jp.qxd.tax.service.input;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jp.qxd.tax.mapper.UMapper;
import com.jp.qxd.tax.model.BaseModel;

@Service
public class UService {

	@Autowired
	private UMapper mapper;

	public List<? extends BaseModel> getModels(BaseModel model) {
		return mapper.getModels(model);
	}

	@Transactional
	public int insertModel(BaseModel model) {
		if (this.getModels(model).size() > 0) {
			mapper.deleteModel(model);
		}
		return mapper.insertModel(model);
	}

}
