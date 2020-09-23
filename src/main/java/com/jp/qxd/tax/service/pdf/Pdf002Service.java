package com.jp.qxd.tax.service.pdf;

import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.math.RoundingMode;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jp.qxd.tax.mapper.Pdf002Mapper;
import com.jp.qxd.tax.mapper.TMapper;
import com.jp.qxd.tax.model.BaseModel;
import com.jp.qxd.tax.model.input.TModel;
import com.jp.qxd.tax.model.pdf.Rpt002Model;
import com.jp.qxd.tax.utils.CNumber;

@Service
public class Pdf002Service extends PdfBaseService {

	@Autowired
	private TMapper tmapper;

	@Autowired
	private Pdf002Mapper mapper002;

	@Transactional
	public void initDB(BaseModel model) throws Exception {
		String userId = model.getUserId();
		String ymdFrom = model.getYmdFrom();
		String ymdTo = model.getYmdTo();
		String LegalPersonName = model.getLegalPersonName();
		model = tmapper.getModels(model).get(0);
		TModel tmodel = (TModel) model;
		tmodel.setUserId(userId);
		tmodel.setYmdFrom(ymdFrom);
		tmodel.setYmdTo(ymdTo);
		tmodel.setLegalPersonName(LegalPersonName);

		if (mapper002.getModels(model).size() > 0) {
			mapper002.deleteModel(model);
		}

		Rpt002Model model002 = new Rpt002Model();
		model002.setUserId(model.getUserId());
		model002.setCompany_id(model.getCompany_id());
		model002.setYear(model.getYear());
		model002.setLegalPersonName(model.getLegalPersonName());
		model002.setYmdFrom(model.getYmdFrom());
		model002.setYmdTo(model.getYmdTo());
		// 1
		BigDecimal g3 = new BigDecimal(nullChangeInteger(tmodel.getT_i442()));
		model002.setF_1(CNumber.toString(g3));
		// 2
		int H30 = this.getH30(tmodel, 1) + this.getH30(tmodel, 2) + this.getH30(tmodel, 3);
		int I30 = this.getI30(tmodel, 1) + this.getI30(tmodel, 2) + this.getI30(tmodel, 3);
		int J30 = this.getJ30(tmodel, 1) + this.getJ30(tmodel, 2) + this.getJ30(tmodel, 3);
		int K30 = this.getK30(tmodel, 1) + this.getK30(tmodel, 2) + this.getK30(tmodel, 3);

		String g4 = CNumber.toString(H30 + J30);
		model002.setF_2(g4);

		// 3 =IF(G3=0,0,ROUNDDOWN(G4/G3,3))*100
		BigDecimal g5 = BigDecimal.ZERO;
		if (g3.compareTo(BigDecimal.ZERO) != 0) {

			BigDecimal gb4 = new BigDecimal(Double.valueOf(g4));
			g5 = gb4.divide(g3, 3, RoundingMode.DOWN).multiply(BigDecimal.valueOf(100));
		}
		model002.setF_3(CNumber.toString(g5));

		// 4
		BigDecimal g6 = new BigDecimal(nullChangeInteger(tmodel.getT_n442()));
		model002.setF_4(CNumber.toString(g6));

		// 5
		Integer g7 = I30 + K30;
		model002.setF_5(CNumber.toString(g7));

		// 6 =IF(G6=0,0,ROUNDDOWN(G7/G6,3))*100
		BigDecimal g8 = BigDecimal.ZERO;
		if (g6.compareTo(BigDecimal.ZERO) != 0) {
			BigDecimal gb7 = new BigDecimal(Double.valueOf(g7));
			g8 = gb7.divide(g6, 3, RoundingMode.DOWN).multiply(BigDecimal.valueOf(100));
		}
		model002.setF_6(CNumber.toString(g8));

		// 7
		BigDecimal g9 = new BigDecimal(nullChangeInteger(tmodel.getT_n446()));
		model002.setF_7(CNumber.toString(g9));

		// 8
		String g10 = tmodel.getT_n447();
		model002.setF_8(g10);

		// 9 =IF(G9=0,0,ROUNDDOWN(G10/G9,3))*100
		BigDecimal g11 = BigDecimal.ZERO;
		if (!"0".equals(CNumber.toString(g9))) {
			BigDecimal gb10 = new BigDecimal(Double.valueOf(nullChangeInteger(g10)));
			g8 = gb10.divide(g9, 3, RoundingMode.DOWN).multiply(BigDecimal.valueOf(100));
		}
		model002.setF_9(CNumber.toString(g11));

		// 10 =MAX(G5,G8,G11)
		model002.setF_10(CNumber.toString(Math.max(Math.max(g5.doubleValue(), g8.doubleValue()), g11.doubleValue())));

		// 11 =IF(B_16>=39173,0,SUMIF($B$17:$B$29,1,J17:J29))
		BigDecimal m3 = BigDecimal.ZERO;
		m3 = BigDecimal.valueOf(this.getJ30(tmodel, 1));
		model002.setF_11(CNumber.toString(m3));

		// 12 =IF(B_16>=39173,0,IF(G3=0,0,ROUNDDOWN(M3/G3,3)))*100
		BigDecimal m4 = BigDecimal.ZERO;
		if (g3.compareTo(BigDecimal.ZERO) != 0) {
			m4 = m3.divide(g3, 3, RoundingMode.DOWN).multiply(BigDecimal.valueOf(100));
		}
		model002.setF_12(CNumber.toString(m4));

		// 13 =IF(B_16>=39173,0,SUMIF($C$17:$C$29,1,K17:K29))
		BigDecimal m5 = BigDecimal.ZERO;
		m5 = BigDecimal.valueOf(this.getK30(tmodel, 1));
		model002.setF_13(CNumber.toString(m5));

		// 14 =IF(B_16>=39173,0,IF(G6=0,0,ROUNDDOWN(M5/G6,3)))*100
		BigDecimal m6 = BigDecimal.ZERO;
		if (g6.compareTo(BigDecimal.ZERO) != 0) {
			m6 = m5.divide(g6, 3, RoundingMode.DOWN).multiply(BigDecimal.valueOf(100));
		}
		model002.setF_14(CNumber.toString(m6));

		// 15
		BigDecimal m7 = new BigDecimal(nullChangeInteger(tmodel.getT_n448()));
		model002.setF_15(CNumber.toString(m7));

		// 16 =IF(B_16>=39173,0,IF(G9=0,0,ROUNDDOWN(M7/G9,3)))*100
		BigDecimal m8 = BigDecimal.ZERO;
		if (g9.compareTo(BigDecimal.ZERO) != 0) {
			m8 = m7.divide(g9, 3, RoundingMode.DOWN).multiply(BigDecimal.valueOf(100));
		}
		model002.setF_16(CNumber.toString(m8));

		// 17 =IF(B_16>=39173,0,MAX(M4,M6,M8))
		model002.setF_17(CNumber.toString(Math.max(Math.max(m4.doubleValue(), m6.doubleValue()), m8.doubleValue())));

		// 18 =IF(G12=0,"",IF(G12<=50,"非同族会社",IF(B_16>=39173,"同族会社",IF(M9<=50,"同族会社","特定同族会社"))))
		BigDecimal g12 = new BigDecimal(model002.getF_10());
		if (g12.compareTo(BigDecimal.ZERO) != 0) {
			if (g12.compareTo(BigDecimal.valueOf(50)) <= 0) {
				model002.setF_18("非同族会社");
			} else {
				model002.setF_18("同族会社");
			}
		}

		setFields(tmodel, model002);

		mapper002.insertModel(model002);

	}

	private Integer getH30(TModel tmodel, int condition)
			throws NoSuchFieldException, SecurityException, IllegalArgumentException, IllegalAccessException {

		final int start = 428;
		final int end = 440;
		final String col = "t_b";
		final String valueCol = "t_l";

		return this.getAmount(tmodel, condition, start, end, col, valueCol);
	}

	private Integer getI30(TModel tmodel, int condition)
			throws NoSuchFieldException, SecurityException, IllegalArgumentException, IllegalAccessException {

		final int start = 428;
		final int end = 440;
		final String col = "t_c";
		final String valueCol = "t_m";

		return this.getAmount(tmodel, condition, start, end, col, valueCol);
	}

	private Integer getJ30(TModel tmodel, int condition)
			throws NoSuchFieldException, SecurityException, IllegalArgumentException, IllegalAccessException {

		final int start = 428;
		final int end = 440;
		final String col = "t_b";
		final String valueCol = "t_n";

		return this.getAmount(tmodel, condition, start, end, col, valueCol);
	}

	private Integer getK30(TModel tmodel, int condition)
			throws NoSuchFieldException, SecurityException, IllegalArgumentException, IllegalAccessException {

		final int start = 428;
		final int end = 440;
		final String col = "t_c";
		final String valueCol = "t_o";

		return this.getAmount(tmodel, condition, start, end, col, valueCol);
	}

	private Integer getAmount(TModel tmodel, int condition, int start, int end, String col, String valueCol)
			throws NoSuchFieldException, SecurityException, NumberFormatException, IllegalArgumentException,
			IllegalAccessException {

		Integer amount = 0;
		for (int i = start; i <= end; i++) {

			Field field = tmodel.getClass().getDeclaredField(col + i);
			field.setAccessible(true);
			Field valueField = tmodel.getClass().getDeclaredField(valueCol + i);
			valueField.setAccessible(true);

			if (nullChangeInteger((String) field.get(tmodel)) == condition) {
				amount += nullChangeInteger((String) valueField.get(tmodel));
			}
		}

		return amount;
	}

	private void setFields(TModel tmodel, Rpt002Model model002)
			throws IllegalArgumentException, IllegalAccessException, NoSuchFieldException, SecurityException {

		String[] fcol = { "t_b", "t_c", "t_d", "t_h", "t_k", "t_l", "t_m", "t_n", "t_o" };
		String[] tcol = { "b_", "c_", "d_", "e_", "g_", "h_", "i_", "j_", "k_" };
		;
		int fi = 428;
		int ti = 17;

		for (int i = 0; i < 13; i++, fi++, ti++) {
			for (int j = 0; j < fcol.length; j++) {

				Field fField = tmodel.getClass().getDeclaredField(fcol[j] + fi);
				fField.setAccessible(true);
				Field tField = model002.getClass().getDeclaredField(tcol[j] + ti);
				tField.setAccessible(true);

				tField.set(model002, fField.get(tmodel));
			}
		}
	}
}
