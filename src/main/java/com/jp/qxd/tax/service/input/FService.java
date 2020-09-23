package com.jp.qxd.tax.service.input;

import java.util.Calendar;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jp.qxd.tax.mapper.FMapper;
import com.jp.qxd.tax.model.BaseModel;
import com.jp.qxd.tax.model.input.BModel;
import com.jp.qxd.tax.model.input.FModel;

@Service
public class FService {

	@Autowired
	private FMapper mapper;

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

	public FModel formatYears(BModel bmodel) {
		FModel fmodel = new FModel();
		if (bmodel.getB_16() == null) {
			return fmodel;
		}
		String[] start = bmodel.getB_16().split("-");
		Calendar initStart = Calendar.getInstance();
		initStart.set(Integer.valueOf(start[0]), Integer.valueOf(start[1]) - 1, Integer.valueOf(start[2]));

		String[] end = bmodel.getB_17().split("-");
		Calendar initEnd = Calendar.getInstance();
		initEnd.set(Integer.valueOf(end[0]), Integer.valueOf(end[1]) - 1, Integer.valueOf(end[2]));

		String startDate;
		String endDate;

		Calendar startC;
		Calendar endC;
		int i = -10;

		// 10期前
		startC = (Calendar) initStart.clone();
		startC.add(Calendar.YEAR, i);
		startDate = formatDate(startC);
		endC = (Calendar) initEnd.clone();
		endC.add(Calendar.YEAR, i);
		endDate = formatDate(endC);
		fmodel.setF_d136(startDate);
		fmodel.setF_f136(endDate);
		i++;

		// 9期前
		startC = (Calendar) initStart.clone();
		startC.add(Calendar.YEAR, i);
		startDate = formatDate(startC);
		endC = (Calendar) initEnd.clone();
		endC.add(Calendar.YEAR, i);
		endDate = formatDate(endC);
		fmodel.setF_d137(startDate);
		fmodel.setF_f137(endDate);
		fmodel.setF_d149(startDate);
		fmodel.setF_f149(endDate);
		i++;

		// 8期前
		startC = (Calendar) initStart.clone();
		startC.add(Calendar.YEAR, i);
		startDate = formatDate(startC);
		endC = (Calendar) initEnd.clone();
		endC.add(Calendar.YEAR, i);
		endDate = formatDate(endC);
		fmodel.setF_d138(startDate);
		fmodel.setF_f138(endDate);
		fmodel.setF_d150(startDate);
		fmodel.setF_f150(endDate);
		i++;

		// 7期前
		startC = (Calendar) initStart.clone();
		startC.add(Calendar.YEAR, i);
		startDate = formatDate(startC);
		endC = (Calendar) initEnd.clone();
		endC.add(Calendar.YEAR, i);
		endDate = formatDate(endC);
		fmodel.setF_d139(startDate);
		fmodel.setF_f139(endDate);
		fmodel.setF_d151(startDate);
		fmodel.setF_f151(endDate);
		i++;

		// 6期前
		startC = (Calendar) initStart.clone();
		startC.add(Calendar.YEAR, i);
		startDate = formatDate(startC);
		endC = (Calendar) initEnd.clone();
		endC.add(Calendar.YEAR, i);
		endDate = formatDate(endC);
		fmodel.setF_d140(startDate);
		fmodel.setF_f140(endDate);
		fmodel.setF_d152(startDate);
		fmodel.setF_f152(endDate);
		i++;

		// 5期前
		startC = (Calendar) initStart.clone();
		startC.add(Calendar.YEAR, i);
		startDate = formatDate(startC);
		endC = (Calendar) initEnd.clone();
		endC.add(Calendar.YEAR, i);
		endDate = formatDate(endC);
		fmodel.setF_d141(startDate);
		fmodel.setF_f141(endDate);
		fmodel.setF_d153(startDate);
		fmodel.setF_f153(endDate);
		i++;

		// 4期前
		startC = (Calendar) initStart.clone();
		startC.add(Calendar.YEAR, i);
		startDate = formatDate(startC);
		endC = (Calendar) initEnd.clone();
		endC.add(Calendar.YEAR, i);
		endDate = formatDate(endC);
		fmodel.setF_d142(startDate);
		fmodel.setF_f142(endDate);
		fmodel.setF_d154(startDate);
		fmodel.setF_f154(endDate);
		i++;

		// 3期前
		startC = (Calendar) initStart.clone();
		startC.add(Calendar.YEAR, i);
		startDate = formatDate(startC);
		endC = (Calendar) initEnd.clone();
		endC.add(Calendar.YEAR, i);
		endDate = formatDate(endC);
		fmodel.setF_d143(startDate);
		fmodel.setF_f143(endDate);
		fmodel.setF_d155(startDate);
		fmodel.setF_f155(endDate);
		i++;

		// 2期前
		startC = (Calendar) initStart.clone();
		startC.add(Calendar.YEAR, i);
		startDate = formatDate(startC);
		endC = (Calendar) initEnd.clone();
		endC.add(Calendar.YEAR, i);
		endDate = formatDate(endC);
		fmodel.setF_d144(startDate);
		fmodel.setF_f144(endDate);
		fmodel.setF_d156(startDate);
		fmodel.setF_f156(endDate);
		i++;

		// 前期
		startC = (Calendar) initStart.clone();
		startC.add(Calendar.YEAR, i);
		startDate = formatDate(startC);
		endC = (Calendar) initEnd.clone();
		endC.add(Calendar.YEAR, i);
		endDate = formatDate(endC);
		fmodel.setF_d145(startDate);
		fmodel.setF_f145(endDate);
		fmodel.setF_d157(startDate);
		fmodel.setF_f157(endDate);
		i++;

		return fmodel;

	}

	private String formatDate(Calendar date) {


		String resultDate = date.get(Calendar.YEAR) + "-";

		int month = date.get(Calendar.MONTH) + 1;
		if (month < 10) {
			resultDate += "0";
		}
		resultDate += month + "-";

		int day = date.get(Calendar.DATE);
		if (day < 10) {
			resultDate += "0";
		}
		resultDate += day;
		return resultDate;
	}
}
