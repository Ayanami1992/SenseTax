package com.jp.qxd.tax.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jp.qxd.tax.mapper.OptionsMapper;
import com.jp.qxd.tax.model.input.LocalTaxRate;

@Service
public class OptionsService {

	@Autowired
	private OptionsMapper optionsMapper;

	public List<LocalTaxRate> getLocalTaxRate() {
		return optionsMapper.getLocalTaxRate();
	}

}
