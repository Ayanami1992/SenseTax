package com.jp.qxd.tax.service.pdf;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jp.qxd.tax.mapper.Pdf003Mapper;
import com.jp.qxd.tax.mapper.Pdf003_tsukiMapper;
import com.jp.qxd.tax.model.BaseModel;
import com.jp.qxd.tax.model.pdf.Rpt003Model;
import com.jp.qxd.tax.model.pdf.Rpt003_tsukiModel;

@Service
public class Pdf003Service extends PdfBaseService {

	@Autowired
	private Pdf003Mapper mapper003;

	@Autowired
	private Pdf003_tsukiMapper mapper003_tsuki;

	@Transactional
	public void initDB(BaseModel model) throws Exception {

		if (mapper003.getModels(model).size() > 0) {
			mapper003.deleteModel(model);
			mapper003_tsuki.deleteModel(model);
		}

		Rpt003Model model003 = new Rpt003Model();
		model003.setUserId(model.getUserId());
		model003.setCompany_id(model.getCompany_id());
		model003.setYear(model.getYear());
		model003.setLegalPersonName(model.getLegalPersonName());
		model003.setYmdFrom(model.getYmdFrom());
		model003.setYmdTo(model.getYmdTo());

		Rpt003_tsukiModel model003_tsuki = new Rpt003_tsukiModel();
		model003_tsuki.setUserId(model.getUserId());
		model003_tsuki.setCompany_id(model.getCompany_id());
		model003_tsuki.setYear(model.getYear());
		model003_tsuki.setLegalPersonName(model.getLegalPersonName());
		model003_tsuki.setYmdFrom(model.getYmdFrom());
		model003_tsuki.setYmdTo(model.getYmdTo());

		mapper003.insertModel(model003);
		mapper003_tsuki.insertModel(model003_tsuki);

	}
}
