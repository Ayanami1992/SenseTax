package com.jp.qxd.tax.service.pdf;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jp.qxd.tax.mapper.PMapper;
import com.jp.qxd.tax.mapper.Pdf008Mapper;
import com.jp.qxd.tax.model.BaseModel;
import com.jp.qxd.tax.model.input.PModel;
import com.jp.qxd.tax.model.pdf.Rpt008Model;
import com.jp.qxd.tax.utils.CNumber;

@Service
public class Pdf008Service extends PdfBaseService {

	@Autowired
	private PMapper pmapper;

	@Autowired
	private Pdf008Mapper mapper008;

	@Transactional
	public Rpt008Model initDB(BaseModel model) throws Exception {

		if (mapper008.getModels(model).size() > 0) {
			mapper008.deleteModel(model);
		}

		Rpt008Model model008 = new Rpt008Model();
		model008.setUserId(model.getUserId());
		model008.setCompany_id(model.getCompany_id());
		model008.setYear(model.getYear());
		model008.setLegalPersonName(model.getLegalPersonName());
		model008.setYmdFrom(model.getYmdFrom());
		model008.setYmdTo(model.getYmdTo());

		// =E2+IF((E3-E11)<0,0,E3-E11)+IF((E12)<0,0,ROUNDDOWN((E12)*0.5,0))+E13*0.2
		BigDecimal e14 = BigDecimal.ZERO;
		// =I2+IF((I3-I11)<0,0,I3-I11)+IF((I12)<0,0,ROUNDDOWN((I12)*0.5,0))+I13*0.2
		BigDecimal i14 = BigDecimal.ZERO;

		BigDecimal e2 = BigDecimal.ZERO;
		BigDecimal g28 = BigDecimal.ZERO;

		BigDecimal e3 = BigDecimal.ZERO;
		BigDecimal i35 = BigDecimal.ZERO;

		BigDecimal e11 = BigDecimal.ZERO;
		BigDecimal e12 = BigDecimal.ZERO;
		BigDecimal e13 = BigDecimal.ZERO;

		PModel pmodel = null;
		List<? extends BaseModel> pmodels = pmapper.getModels(model);
		if (pmodels.size() > 0) {
			pmodel = (PModel) pmodels.get(0);
			// g28=SUM(g26:g27)
			BigDecimal g26 = new BigDecimal(nullChangeInteger(pmodel.getP_o368()));
			BigDecimal g27 = new BigDecimal(nullChangeInteger(pmodel.getP_o369()));

			g28 = g26.add(g27);
			e2 = g28;

			BigDecimal g33 = new BigDecimal(nullChangeInteger(pmodel.getP_q373()));
			BigDecimal g34 = new BigDecimal(nullChangeInteger(pmodel.getP_q374()));
			BigDecimal h33 = new BigDecimal(nullChangeInteger(pmodel.getP_t373()));
			BigDecimal h34 = new BigDecimal(nullChangeInteger(pmodel.getP_t374()));

			// =SUMIF(g33,"<>""",g33)-SUMIF(H33,"<>""",H33)
			BigDecimal i33 = g33.subtract(h33);
			// =SUMIF(g34,"<>""",g34)-SUMIF(H34,"<>""",H34)
			BigDecimal i34 = g34.subtract(h34);
			i35 = i33.add(i34);
			e3 = i35;

			BigDecimal e4 = new BigDecimal(nullChangeInteger(pmodel.getP_g357()));
			BigDecimal e5 = new BigDecimal(nullChangeInteger(pmodel.getP_g358()));
			BigDecimal e8 = e4.subtract(e5);

			BigDecimal c19 = new BigDecimal(nullChangeInteger(pmodel.getP_d363()));
			BigDecimal d19 = new BigDecimal(nullChangeInteger(pmodel.getP_g363()));
			BigDecimal e19 = c19.subtract(d19);
			BigDecimal c20 = new BigDecimal(nullChangeInteger(pmodel.getP_d364()));
			BigDecimal d20 = new BigDecimal(nullChangeInteger(pmodel.getP_g364()));
			BigDecimal e20 = c20.subtract(d20);
			BigDecimal c21 = c19.add(c20);
			BigDecimal d21 = d19.add(d20);
			BigDecimal e21 = e19.add(e20);
			BigDecimal e9 = e21;

			BigDecimal f19 = new BigDecimal(nullChangeInteger(pmodel.getP_k363()));
			BigDecimal f20 = new BigDecimal(nullChangeInteger(pmodel.getP_k364()));
			BigDecimal f21 = f19.add(f20);
			BigDecimal e10 = f21;

			// =IF(E9=0,0,ROUNDDOWN(E8*E10/E9,0))
			if (e9.compareTo(BigDecimal.ZERO) != 0) {
				e11 = e8.multiply(e10).divide(e9, BigDecimal.ROUND_DOWN);
			}

			String b26 = pmodel.getP_d368();
			String d26 = pmodel.getP_g368();
			String e26 = pmodel.getP_k368();
			String f26 = pmodel.getP_m368();

			String b27 = pmodel.getP_d369();
			String d27 = pmodel.getP_g369();
			String e27 = pmodel.getP_k369();
			String f27 = pmodel.getP_m369();

			String b33 = pmodel.getP_d373();
			String c33 = pmodel.getP_g373();
			String d33 = pmodel.getP_k373();
			String e33 = pmodel.getP_m373();
			String f33 = pmodel.getP_o373();

			String b34 = pmodel.getP_d374();
			String c34 = pmodel.getP_g374();
			String d34 = pmodel.getP_k374();
			String e34 = pmodel.getP_m374();
			String f34 = pmodel.getP_o374();

			String b40 = pmodel.getP_d378();
			String c40 = pmodel.getP_g378();
			BigDecimal d40 = new BigDecimal(nullChangeInteger(pmodel.getP_k378()));
			BigDecimal e40 = new BigDecimal(nullChangeInteger(pmodel.getP_n378()));
			BigDecimal f40 = d40.subtract(e40);
			String b41 = pmodel.getP_d379();
			String c41 = pmodel.getP_g379();
			BigDecimal d41 = new BigDecimal(nullChangeInteger(pmodel.getP_k379()));
			BigDecimal e41 = new BigDecimal(nullChangeInteger(pmodel.getP_n379()));
			BigDecimal f41 = d41.subtract(e41);
			BigDecimal f42 = f40.add(f41);
			e12 = f42;

			String b47 = pmodel.getP_d383();
			BigDecimal c47 = new BigDecimal(nullChangeInteger(pmodel.getP_g383()));
			String d47 = pmodel.getP_k383();
			BigDecimal e47 = new BigDecimal(nullChangeInteger(pmodel.getP_m383()));
			BigDecimal f47 = new BigDecimal(nullChangeInteger(pmodel.getP_o383()));
			BigDecimal g47 = new BigDecimal(nullChangeInteger(pmodel.getP_r383()));
			BigDecimal h47 = f47.subtract(g47);
			String b48 = pmodel.getP_d384();
			BigDecimal c48 = new BigDecimal(nullChangeInteger(pmodel.getP_g384()));
			String d48 = pmodel.getP_k384();
			BigDecimal e48 = new BigDecimal(nullChangeInteger(pmodel.getP_m384()));
			BigDecimal f48 = new BigDecimal(nullChangeInteger(pmodel.getP_o384()));
			BigDecimal g48 = new BigDecimal(nullChangeInteger(pmodel.getP_r384()));
			BigDecimal h48 = f48.subtract(g48);
			BigDecimal h49 = h47.add(h48);
			e13 = h49;

			// =E2+IF((E3-E11)<0,0,E3-E11)+IF((E12)<0,0,ROUNDDOWN((E12)*0.5,0))+E13*0.2
			BigDecimal z1 = e3.subtract(e11);
			if (z1.compareTo(BigDecimal.ZERO) < 0) {
				z1 = BigDecimal.ZERO;
			}

			BigDecimal z2 = e12.multiply(new BigDecimal(0.5)).setScale(0, BigDecimal.ROUND_DOWN);
			if (e12.compareTo(BigDecimal.ZERO) < 0) {
				z2 = BigDecimal.ZERO;
			}
			e14 = e2.add(z1).add(z2).add(e13.multiply(new BigDecimal(0.2))).setScale(0, BigDecimal.ROUND_DOWN);

			if ("使う".equals(pmodel.getP_g359())) {

				// =I2+IF((I3-I11)<0,0,I3-I11)+IF((I12)<0,0,ROUNDDOWN((I12)*0.5,0))+I13*0.2
				BigDecimal g35 = g33.add(g34);
				BigDecimal i2 = g35;
				BigDecimal i3 = i35;
				BigDecimal i4 = new BigDecimal(nullChangeInteger(pmodel.getP_g357()));
				BigDecimal i7 = i4;
				BigDecimal i8 = new BigDecimal(nullChangeInteger(pmodel.getP_o357()));
				BigDecimal i9 = new BigDecimal(nullChangeInteger(pmodel.getP_o358()));
				BigDecimal i10 = BigDecimal.ZERO;
				if (i8.compareTo(BigDecimal.ZERO) != 0) {
					i10 = i9.divide(i8, 3, BigDecimal.ROUND_DOWN);
				}
				BigDecimal i11 = i7.multiply(i10).setScale(0, BigDecimal.ROUND_DOWN);

				BigDecimal i12 = f42;
				BigDecimal i13 = h49;
				BigDecimal z3 = i3.subtract(i11);
				if (z3.compareTo(BigDecimal.ZERO) < 0) {
					z3 = BigDecimal.ZERO;
				}
				BigDecimal z4 = i12.multiply(new BigDecimal(0.5)).setScale(0, BigDecimal.ROUND_DOWN);
				i14 = i2.add(z3).add(z4).add(i13.multiply(new BigDecimal(0.2))).setScale(0, BigDecimal.ROUND_DOWN);

				model008.setF_14(CNumber.toString(i2));
				model008.setF_15(CNumber.toString(i3));
				model008.setF_16(CNumber.toString(i4));
				model008.setF_19(CNumber.toString(i7));
				model008.setF_20(CNumber.toString(i8));
				model008.setF_21(CNumber.toString(i9));
				model008.setF_22(CNumber.toString(i10));
				model008.setF_23(CNumber.toString(i11));
				model008.setF_24(CNumber.toString(i12));
				model008.setF_25(CNumber.toString(i13));
				model008.setF_26(CNumber.toString(i14));
			}

			model008.setF_1(CNumber.toString(e2));
			model008.setF_2(CNumber.toString(e3));
			model008.setF_3(CNumber.toString(e4));
			model008.setF_4(CNumber.toString(e5));
			model008.setF_7(CNumber.toString(e8));
			model008.setF_8(CNumber.toString(e9));
			model008.setF_9(CNumber.toString(e10));
			model008.setF_10(CNumber.toString(e11));
			model008.setF_11(CNumber.toString(e12));
			model008.setF_12(CNumber.toString(e13));
			model008.setF_13(CNumber.toString(e14));

			model008.setF_27_1(CNumber.toString(c19));
			model008.setF_27_2(CNumber.toString(c20));
			model008.setF_27_total(CNumber.toString(c21));

			model008.setF_28_1(CNumber.toString(d19));
			model008.setF_28_2(CNumber.toString(d20));
			model008.setF_28_total(CNumber.toString(d21));

			model008.setF_29_1(CNumber.toString(e19));
			model008.setF_29_2(CNumber.toString(e20));
			model008.setF_29_total(CNumber.toString(e21));

			model008.setF_30_1(CNumber.toString(f19));
			model008.setF_30_2(CNumber.toString(f20));
			model008.setF_30_total(CNumber.toString(f21));

			model008.setF_brand_1(b26);
			model008.setF_HeadOfficeLocation_1(d26);
			model008.setF_dataFrom_1(e26);
			model008.setF_dataTo_1(f26);
			model008.setF_31_1(CNumber.toString(g26));

			model008.setF_brand_2(b27);
			model008.setF_HeadOfficeLocation_2(d27);
			model008.setF_dataFrom_2(e27);
			model008.setF_dataTo_2(f27);
			model008.setF_31_2(CNumber.toString(g27));
			model008.setF_31_total(CNumber.toString(g26.add(g27)));

			model008.setF_brand_3(b33);
			model008.setF_HeadOfficeLocation_3(c33);
			model008.setF_dataFrom_3(d33);
			model008.setF_dataTo_3(e33);
			model008.setF_holdingRatio_1(f33);
			model008.setF_32_1(CNumber.toString(g33));
			model008.setF_33_1(CNumber.toString(h33));
			model008.setF_34_1(CNumber.toString(i33));

			model008.setF_brand_4(b34);
			model008.setF_HeadOfficeLocation_4(c34);
			model008.setF_dataFrom_4(d34);
			model008.setF_dataTo_4(e34);
			model008.setF_holdingRatio_2(f34);
			model008.setF_32_2(CNumber.toString(g34));
			model008.setF_33_2(CNumber.toString(h34));
			model008.setF_34_2(CNumber.toString(i34));
			model008.setF_32_total(CNumber.toString(g33.add(g34)));
			model008.setF_33_total(CNumber.toString(h33.add(h34)));
			model008.setF_34_total(CNumber.toString(i33.add(i34)));

			model008.setF_brand_5(b40);
			model008.setF_HeadOfficeLocation_5(c40);
			model008.setF_35_1(CNumber.toString(d40));
			model008.setF_36_1(CNumber.toString(e40));
			model008.setF_37_1(CNumber.toString(f40));

			model008.setF_brand_6(b41);
			model008.setF_HeadOfficeLocation_6(c41);
			model008.setF_35_2(CNumber.toString(d41));
			model008.setF_36_2(CNumber.toString(e41));
			model008.setF_37_2(CNumber.toString(f41));
			model008.setF_35_total(CNumber.toString(d40.add(d41)));
			model008.setF_36_total(CNumber.toString(e40.add(e41)));
			model008.setF_37_total(CNumber.toString(f40.add(f41)));

			model008.setF_brand_7(b47);
			model008.setF_38_1(CNumber.toString(c47));
			model008.setF_39_1(d47);
			model008.setF_40_1(CNumber.toString(e47));
			model008.setF_41_1(CNumber.toString(f47));
			model008.setF_42_1(CNumber.toString(g47));
			model008.setF_43_1(CNumber.toString(h47));

			model008.setF_brand_8(b48);
			model008.setF_38_2(CNumber.toString(c48));
			model008.setF_39_2(d48);
			model008.setF_40_2(CNumber.toString(e48));
			model008.setF_41_2(CNumber.toString(f48));
			model008.setF_42_2(CNumber.toString(g48));
			model008.setF_43_2(CNumber.toString(h48));
			model008.setF_41_total(CNumber.toString(f47.add(f48)));
			model008.setF_42_total(CNumber.toString(g47.add(g48)));
			model008.setF_43_total(CNumber.toString(h47.add(h48)));

		}

		mapper008.insertModel(model008);
		return model008;

	}
}
