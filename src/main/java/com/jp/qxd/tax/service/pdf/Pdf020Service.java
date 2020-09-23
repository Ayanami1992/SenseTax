package com.jp.qxd.tax.service.pdf;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jp.qxd.tax.mapper.BMapper;
import com.jp.qxd.tax.mapper.CMapper;
import com.jp.qxd.tax.mapper.JMapper;
import com.jp.qxd.tax.mapper.Pdf001Mapper;
import com.jp.qxd.tax.mapper.Pdf020Mapper;
import com.jp.qxd.tax.mapper.UMapper;
import com.jp.qxd.tax.model.BaseModel;
import com.jp.qxd.tax.model.input.CModel;
import com.jp.qxd.tax.model.input.JModel;
import com.jp.qxd.tax.model.input.UModel;
import com.jp.qxd.tax.model.pdf.Rpt001Model;
import com.jp.qxd.tax.model.pdf.Rpt020Model;
import com.jp.qxd.tax.utils.CNumber;

@Service
public class Pdf020Service extends PdfBaseService {

	@Autowired
	private BMapper bmapper;

	@Autowired
	private JMapper jmapper;

	@Autowired
	private CMapper cmapper;

	@Autowired
	private UMapper umapper;

	@Autowired
	private Pdf001Mapper mapper001;

	@Autowired
	private Pdf020Mapper mapper020;

	@Transactional
	public Rpt020Model initDB(BaseModel model) throws Exception {

		if (mapper020.getModels(model).size() > 0) {
			mapper020.deleteModel(model);
		}

		Rpt020Model model020 = new Rpt020Model();

		List<? extends BaseModel> list = bmapper.getModelsForPd20(model);
		if (list.size() > 0) {
			model020 = (Rpt020Model) list.get(0);
		}

		model020.setUserId(model.getUserId());
		model020.setCompany_id(model.getCompany_id());
		model020.setYear(model.getYear());
		model020.setLegalPersonName(model.getLegalPersonName());
		model020.setYmdFrom(model.getYmdFrom());
		model020.setYmdTo(model.getYmdTo());

		BigDecimal c8 = BigDecimal.ZERO;
		BigDecimal h3 = BigDecimal.ZERO;
		BigDecimal h4 = BigDecimal.ZERO;
		BigDecimal h5 = BigDecimal.ZERO;
		BigDecimal h6 = BigDecimal.ZERO;
		BigDecimal h7 = BigDecimal.ZERO;
		BigDecimal h8 = BigDecimal.ZERO;
		BigDecimal i8 = BigDecimal.ZERO;
		BigDecimal h11 = BigDecimal.ZERO;
		BigDecimal h12 = BigDecimal.ZERO;
		BigDecimal h13 = BigDecimal.ZERO;
		BigDecimal h14 = BigDecimal.ZERO;
		BigDecimal h15 = BigDecimal.ZERO;
		BigDecimal h16 = BigDecimal.ZERO;
		BigDecimal h17 = BigDecimal.ZERO;
		BigDecimal h18 = BigDecimal.ZERO;
		BigDecimal h19 = BigDecimal.ZERO;
		BigDecimal h20 = BigDecimal.ZERO;
		BigDecimal h21 = BigDecimal.ZERO;
		BigDecimal h22 = BigDecimal.ZERO;
		BigDecimal h23 = BigDecimal.ZERO;
		BigDecimal h24 = BigDecimal.ZERO;
		BigDecimal h25 = BigDecimal.ZERO;
		List<? extends BaseModel> models = mapper001.getModels(model);
		if (models.size() > 0) {
			Rpt001Model mmodel = (Rpt001Model) models.get(0);
			h3 = CNumber.parseBigDecimal(mmodel.getF_13());
		}

		List<? extends BaseModel> umodels = umapper.getModels(model);
		if (umodels.size() > 0) {
			UModel umodel = (UModel) umodels.get(0);
			h4 = CNumber.parseBigDecimal(umodel.getU_l455());
			h5 = CNumber.parseBigDecimal(umodel.getU_l457());
			h6 = CNumber.parseBigDecimal(umodel.getU_l458());
		}
		BigDecimal sum = h3.add(h4).subtract(h5).add(h6);
		h7 = sum.setScale(-3,BigDecimal.ROUND_DOWN);

		List<? extends BaseModel> cmodels = cmapper.getModels(model);
		if (cmodels.size() > 0) {
			CModel cmodel = (CModel) cmodels.get(0);
			i8 = CNumber.parseBigDecimal(cmodel.getC_16());
			c8 = i8.multiply(new BigDecimal(100));
			h18 = CNumber.parseBigDecimal(cmodel.getC_06());
			h19 = CNumber.parseBigDecimal(cmodel.getC_08());
			model020.setPrefectures1(cmodel.getC_03());
			model020.setPrefectures2(cmodel.getC_03());
			model020.setPrefectures3(cmodel.getC_03());
		}
		h8 = h7.multiply(i8);
		BigDecimal sum1 = h8.subtract(h11).subtract(h12).subtract(h13);
		h14 = sum1.setScale(-2,BigDecimal.ROUND_DOWN);

		List<? extends BaseModel> jmodels = jmapper.getModels(model);
		if (jmodels.size() > 0) {
			JModel jmodel = (JModel) jmodels.get(0);
			h15 = CNumber.parseBigDecimal(jmodel.getJ_m229());
			h21 = CNumber.parseBigDecimal(jmodel.getJ_m228());
		}
		BigDecimal sum2 = h14.subtract(h15).subtract(h16);
		h17 = sum2.setScale(-2,BigDecimal.ROUND_DOWN);

		BigDecimal sum3 = h19.multiply(h18).divide(new BigDecimal(12));
		h20 = sum3.setScale(-2,BigDecimal.ROUND_DOWN);

		h22 = h20.subtract(h21);

		BigDecimal sum4 = (h17.compareTo(BigDecimal.ZERO) == -1 ? BigDecimal.ZERO : h17).add(h22);
		h23 = sum4.setScale(-2,BigDecimal.ROUND_DOWN);
		h25 = h23.subtract(h24).setScale(-2,BigDecimal.ROUND_DOWN);

		model020.setF_1(CNumber.toString(h3));
		model020.setF_2(CNumber.toString(h4));
		model020.setF_3(CNumber.toString(h5));
		model020.setF_4(CNumber.toString(h6));
		model020.setF_5_1(CNumber.toString(h7));
		model020.setF_5_2(CNumber.toString(c8));
		model020.setF_5_3(CNumber.toString(h8));
		model020.setF_10(CNumber.toString(h14));
		model020.setF_11(CNumber.toString(h15));
		model020.setF_13(CNumber.toString(h17));
		model020.setF_14_1(CNumber.toString(h18));
		model020.setF_14_2(CNumber.toString(h19));
		model020.setF_15(CNumber.toString(h20));
		model020.setF_16(CNumber.toString(h21));
		model020.setF_17(CNumber.toString(h22));
		model020.setF_18(CNumber.toString(h23));
		model020.setF_20(CNumber.toString(h25));

		mapper020.insertModel(model020);
		return model020;
	}

}
