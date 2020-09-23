package com.jp.qxd.tax.service.pdf;

import java.math.BigDecimal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jp.qxd.tax.mapper.OMapper;
import com.jp.qxd.tax.mapper.Pdf011Mapper;
import com.jp.qxd.tax.model.BaseModel;
import com.jp.qxd.tax.model.input.OModel;
import com.jp.qxd.tax.model.pdf.Rpt011Model;
import com.jp.qxd.tax.utils.CNumber;

@Service
public class Pdf011Service extends PdfBaseService {

	@Autowired
	private OMapper omapper;

	@Autowired
	private Pdf011Mapper mapper011;

	@Transactional
	public Rpt011Model initDB(BaseModel model) throws Exception {

		if (mapper011.getModels(model).size() > 0) {
			mapper011.deleteModel(model);
		}

		Rpt011Model model011 = new Rpt011Model();
		model011.setUserId(model.getUserId());
		model011.setCompany_id(model.getCompany_id());
		model011.setYear(model.getYear());
		model011.setLegalPersonName(model.getLegalPersonName());
		model011.setYmdFrom(model.getYmdFrom());
		model011.setYmdTo(model.getYmdTo());

		OModel omodel = null;
		List<? extends BaseModel> omodels = omapper.getModels(model);
		if (omodels.size() > 0) {
			omodel = (OModel) omodels.get(0);

			String e2 = omodel.getO_g308();
			String f2 = omodel.getO_k308();
			String g2 = omodel.getO_o308();
			String h2 = omodel.getO_s308();

			String e4 = omodel.getO_g310();
			String f4 = omodel.getO_k310();
			String g4 = omodel.getO_o310();
			String h4 = omodel.getO_s310();

			String e6 = omodel.getO_g312();
			String f6 = omodel.getO_k312();
			String g6 = omodel.getO_o312();
			String h6 = omodel.getO_s312();

			String e7_1 = omodel.getO_g313();
			String e7_2 = omodel.getO_i313();
			String f7_1 = omodel.getO_k313();
			String f7_2 = omodel.getO_m313();
			String g7_1 = omodel.getO_o313();
			String g7_2 = omodel.getO_q313();
			String h7_1 = omodel.getO_s313();
			String h7_2 = omodel.getO_u313();

			String e8 = omodel.getO_g314();
			String f8 = omodel.getO_k314();
			String g8 = omodel.getO_o314();
			String h8 = omodel.getO_s314();

			BigDecimal e9 = new BigDecimal(nullChangeInteger(omodel.getO_g315()));
			BigDecimal f9 = new BigDecimal(nullChangeInteger(omodel.getO_k315()));
			BigDecimal g9 = new BigDecimal(nullChangeInteger(omodel.getO_o315()));
			BigDecimal h9 = new BigDecimal(nullChangeInteger(omodel.getO_s315()));
			BigDecimal i9 = e9.add(f9).add(g9).add(h9);

			BigDecimal e10 = new BigDecimal(nullChangeInteger(omodel.getO_g316()));
			BigDecimal f10 = new BigDecimal(nullChangeInteger(omodel.getO_k316()));
			BigDecimal g10 = new BigDecimal(nullChangeInteger(omodel.getO_o316()));
			BigDecimal h10 = new BigDecimal(nullChangeInteger(omodel.getO_s316()));
			BigDecimal i10 = e10.add(f10).add(g10).add(h10);

			BigDecimal e11 = new BigDecimal(nullChangeInteger(omodel.getO_g317()));
			BigDecimal f11 = new BigDecimal(nullChangeInteger(omodel.getO_k317()));
			BigDecimal g11 = new BigDecimal(nullChangeInteger(omodel.getO_o317()));
			BigDecimal h11 = new BigDecimal(nullChangeInteger(omodel.getO_s317()));

			BigDecimal e12 = new BigDecimal(nullChangeInteger(omodel.getO_g318()));
			BigDecimal f12 = new BigDecimal(nullChangeInteger(omodel.getO_k318()));
			BigDecimal g12 = new BigDecimal(nullChangeInteger(omodel.getO_o318()));
			BigDecimal h12 = new BigDecimal(nullChangeInteger(omodel.getO_s318()));

			BigDecimal e13 = new BigDecimal(nullChangeInteger(omodel.getO_g319()));
			BigDecimal f13 = new BigDecimal(nullChangeInteger(omodel.getO_k319()));
			BigDecimal g13 = new BigDecimal(nullChangeInteger(omodel.getO_o319()));
			BigDecimal h13 = new BigDecimal(nullChangeInteger(omodel.getO_s319()));

			BigDecimal e14 = new BigDecimal(nullChangeInteger(omodel.getO_g320()));
			BigDecimal f14 = new BigDecimal(nullChangeInteger(omodel.getO_k320()));
			BigDecimal g14 = new BigDecimal(nullChangeInteger(omodel.getO_o320()));
			BigDecimal h14 = new BigDecimal(nullChangeInteger(omodel.getO_s320()));

			BigDecimal e15 = e12.add(e13).add(e14);
			BigDecimal f15 = f12.add(f13).add(f14);
			BigDecimal g15 = g12.add(g13).add(g14);
			BigDecimal h15 = h12.add(h13).add(h14);

			BigDecimal e16 = new BigDecimal(nullChangeInteger(omodel.getO_g321()));
			BigDecimal f16 = new BigDecimal(nullChangeInteger(omodel.getO_k321()));
			BigDecimal g16 = new BigDecimal(nullChangeInteger(omodel.getO_o321()));
			BigDecimal h16 = new BigDecimal(nullChangeInteger(omodel.getO_s321()));

			BigDecimal e17 = e10.subtract(e11).subtract(e15).subtract(e16);
			BigDecimal f17 = f10.subtract(f11).subtract(f15).subtract(f16);
			BigDecimal g17 = g10.subtract(g11).subtract(g15).subtract(g16);
			BigDecimal h17 = h10.subtract(h11).subtract(h15).subtract(h16);

			BigDecimal e18 = e7_1.indexOf("1") == 0 ? e17 : BigDecimal.ZERO;
			BigDecimal f18 = f7_1.indexOf("1") == 0 ? f17 : BigDecimal.ZERO;
			BigDecimal g18 = g7_1.indexOf("1") == 0 ? g17 : BigDecimal.ZERO;
			BigDecimal h18 = h7_1.indexOf("1") == 0 ? h17 : BigDecimal.ZERO;
			BigDecimal i18 = e18.add(f18).add(g18).add(h18);

			BigDecimal e19 = e7_1.indexOf("2") == 0 ? e17 : BigDecimal.ZERO;
			BigDecimal f19 = f7_1.indexOf("2") == 0 ? f17 : BigDecimal.ZERO;
			BigDecimal g19 = g7_1.indexOf("2") == 0 ? g17 : BigDecimal.ZERO;
			BigDecimal h19 = h7_1.indexOf("2") == 0 ? h17 : BigDecimal.ZERO;
			BigDecimal i19 = e19.add(f19).add(g19).add(h19);

			BigDecimal e20 = e7_1.indexOf("3") == 0 ? e17.multiply(new BigDecimal(0.5)) : BigDecimal.ZERO;
			BigDecimal f20 = f7_1.indexOf("3") == 0 ? f17.multiply(new BigDecimal(0.5)) : BigDecimal.ZERO;
			BigDecimal g20 = g7_1.indexOf("3") == 0 ? g17.multiply(new BigDecimal(0.5)) : BigDecimal.ZERO;
			BigDecimal h20 = h7_1.indexOf("3") == 0 ? h17.multiply(new BigDecimal(0.5)) : BigDecimal.ZERO;
			BigDecimal i20 = e20.add(f20).add(g20).add(h20);

			BigDecimal e21 = e7_1.indexOf("4") == 0 ? e17.multiply(new BigDecimal(0.5)) : BigDecimal.ZERO;
			BigDecimal f21 = f7_1.indexOf("4") == 0 ? f17.multiply(new BigDecimal(0.5)) : BigDecimal.ZERO;
			BigDecimal g21 = g7_1.indexOf("4") == 0 ? g17.multiply(new BigDecimal(0.5)) : BigDecimal.ZERO;
			BigDecimal h21 = h7_1.indexOf("4") == 0 ? h17.multiply(new BigDecimal(0.5)) : BigDecimal.ZERO;
			BigDecimal i21 = e21.add(f21).add(g21).add(h21);

			BigDecimal e22 = e9.subtract(e18.add(e19).add(e20).add(e21));
			e22 = e22.compareTo(BigDecimal.ZERO) < 0 ? BigDecimal.ZERO : e22;
			BigDecimal f22 = f9.subtract(f18.add(f19).add(f20).add(f21));
			f22 = f22.compareTo(BigDecimal.ZERO) < 0 ? BigDecimal.ZERO : f22;
			BigDecimal g22 = g9.subtract(g18.add(g19).add(g20).add(g21));
			g22 = g22.compareTo(BigDecimal.ZERO) < 0 ? BigDecimal.ZERO : g22;
			BigDecimal h22 = h9.subtract(h18.add(h19).add(h20).add(h21));
			h22 = h22.compareTo(BigDecimal.ZERO) < 0 ? BigDecimal.ZERO : h22;
			BigDecimal i22 = e22.add(f22).add(g22).add(h22);

			BigDecimal e23 = new BigDecimal(nullChangeInteger(omodel.getO_g322()));
			BigDecimal f23 = new BigDecimal(nullChangeInteger(omodel.getO_k322()));
			BigDecimal g23 = new BigDecimal(nullChangeInteger(omodel.getO_o322()));
			BigDecimal h23 = new BigDecimal(nullChangeInteger(omodel.getO_s322()));
			BigDecimal i23 = e23.add(f23).add(g23).add(h23);

			BigDecimal e24 = new BigDecimal(nullChangeInteger(omodel.getO_g323()));
			BigDecimal f24 = new BigDecimal(nullChangeInteger(omodel.getO_k323()));
			BigDecimal g24 = new BigDecimal(nullChangeInteger(omodel.getO_o323()));
			BigDecimal h24 = new BigDecimal(nullChangeInteger(omodel.getO_s323()));
			BigDecimal i24 = e24.add(f24).add(g24).add(h24);

			BigDecimal e25 = new BigDecimal(nullChangeInteger(omodel.getO_g324()));
			BigDecimal f25 = new BigDecimal(nullChangeInteger(omodel.getO_k324()));
			BigDecimal g25 = new BigDecimal(nullChangeInteger(omodel.getO_o324()));
			BigDecimal h25 = new BigDecimal(nullChangeInteger(omodel.getO_s324()));
			BigDecimal i25 = e25.add(f25).add(g25).add(h25);

			BigDecimal e26 = new BigDecimal(nullChangeInteger(omodel.getO_g325()));
			BigDecimal f26 = new BigDecimal(nullChangeInteger(omodel.getO_k325()));
			BigDecimal g26 = new BigDecimal(nullChangeInteger(omodel.getO_o325()));
			BigDecimal h26 = new BigDecimal(nullChangeInteger(omodel.getO_s325()));
			BigDecimal i26 = e26.add(f26).add(g26).add(h26);

			BigDecimal e27 = new BigDecimal(nullChangeInteger(omodel.getO_g326()));
			BigDecimal f27 = new BigDecimal(nullChangeInteger(omodel.getO_k326()));
			BigDecimal g27 = new BigDecimal(nullChangeInteger(omodel.getO_o326()));
			BigDecimal h27 = new BigDecimal(nullChangeInteger(omodel.getO_s326()));
			BigDecimal i27 = e27.add(f27).add(g27).add(h27);

			BigDecimal e28 = e26.add(e27).compareTo(BigDecimal.ZERO) != 0 ? e25 : BigDecimal.ZERO;
			BigDecimal f28 = f26.add(f27).compareTo(BigDecimal.ZERO) != 0 ? f25 : BigDecimal.ZERO;
			BigDecimal g28 = g26.add(g27).compareTo(BigDecimal.ZERO) != 0 ? g25 : BigDecimal.ZERO;
			BigDecimal h28 = h26.add(h27).compareTo(BigDecimal.ZERO) != 0 ? h25 : BigDecimal.ZERO;
			BigDecimal i28 = e28.add(f28).add(g28).add(h28);

			model011.setF_1_1(e2);
			model011.setF_1_2(f2);
			model011.setF_1_3(g2);
			model011.setF_1_4(h2);

			model011.setF_2_1_u(e4);
			model011.setF_2_2_u(f4);
			model011.setF_2_3_u(g4);
			model011.setF_2_4_u(h4);

			model011.setF_2_1_d(e6);
			model011.setF_2_2_d(f6);
			model011.setF_2_3_d(g6);
			model011.setF_2_4_d(h6);

			model011.setF_3_1_number(e7_1);
			model011.setF_3_1_applicable(e7_2);
			model011.setF_3_2_number(f7_1);
			model011.setF_3_2_applicable(f7_2);
			model011.setF_3_3_number(g7_1);
			model011.setF_3_3_applicable(g7_2);
			model011.setF_3_4_number(h7_1);
			model011.setF_3_4_applicable(h7_2);

			model011.setF_4_1(e8);
			model011.setF_4_2(f8);
			model011.setF_4_3(g8);
			model011.setF_4_4(h8);

			model011.setF_5_1(CNumber.toString(e9.compareTo(BigDecimal.ZERO) == 0 ? "" : e9));
			model011.setF_5_2(CNumber.toString(f9.compareTo(BigDecimal.ZERO) == 0 ? "" : f9));
			model011.setF_5_3(CNumber.toString(g9.compareTo(BigDecimal.ZERO) == 0 ? "" : g9));
			model011.setF_5_4(CNumber.toString(h9.compareTo(BigDecimal.ZERO) == 0 ? "" : h9));
			model011.setF_5_5(CNumber.toString(i9.compareTo(BigDecimal.ZERO) == 0 ? "" : i9));

			model011.setF_6_1(CNumber.toString(e10.compareTo(BigDecimal.ZERO) == 0 ? "" : e10));
			model011.setF_6_2(CNumber.toString(f10.compareTo(BigDecimal.ZERO) == 0 ? "" : f10));
			model011.setF_6_3(CNumber.toString(g10.compareTo(BigDecimal.ZERO) == 0 ? "" : g10));
			model011.setF_6_4(CNumber.toString(h10.compareTo(BigDecimal.ZERO) == 0 ? "" : h10));
			model011.setF_6_5(CNumber.toString(i10.compareTo(BigDecimal.ZERO) == 0 ? "" : i10));

			model011.setF_7_1(CNumber.toString(e11.compareTo(BigDecimal.ZERO) == 0 ? "" : e11));
			model011.setF_7_2(CNumber.toString(f11.compareTo(BigDecimal.ZERO) == 0 ? "" : f11));
			model011.setF_7_3(CNumber.toString(g11.compareTo(BigDecimal.ZERO) == 0 ? "" : g11));
			model011.setF_7_4(CNumber.toString(h11.compareTo(BigDecimal.ZERO) == 0 ? "" : h11));

			model011.setF_8_1(CNumber.toString(e12.compareTo(BigDecimal.ZERO) == 0 ? "" : e12));
			model011.setF_8_2(CNumber.toString(f12.compareTo(BigDecimal.ZERO) == 0 ? "" : f12));
			model011.setF_8_3(CNumber.toString(g12.compareTo(BigDecimal.ZERO) == 0 ? "" : g12));
			model011.setF_8_4(CNumber.toString(h12.compareTo(BigDecimal.ZERO) == 0 ? "" : h12));

			model011.setF_9_1(CNumber.toString(e13.compareTo(BigDecimal.ZERO) == 0 ? "" : e13));
			model011.setF_9_2(CNumber.toString(f13.compareTo(BigDecimal.ZERO) == 0 ? "" : f13));
			model011.setF_9_3(CNumber.toString(g13.compareTo(BigDecimal.ZERO) == 0 ? "" : g13));
			model011.setF_9_4(CNumber.toString(h13.compareTo(BigDecimal.ZERO) == 0 ? "" : h13));

			model011.setF_10_1(CNumber.toString(e14.compareTo(BigDecimal.ZERO) == 0 ? "" : e14));
			model011.setF_10_2(CNumber.toString(f14.compareTo(BigDecimal.ZERO) == 0 ? "" : f14));
			model011.setF_10_3(CNumber.toString(g14.compareTo(BigDecimal.ZERO) == 0 ? "" : g14));
			model011.setF_10_4(CNumber.toString(h14.compareTo(BigDecimal.ZERO) == 0 ? "" : h14));

			model011.setF_11_1(CNumber.toString(e15));
			model011.setF_11_2(CNumber.toString(f15));
			model011.setF_11_3(CNumber.toString(g15));
			model011.setF_11_4(CNumber.toString(h15));

			model011.setF_12_1(CNumber.toString(e16.compareTo(BigDecimal.ZERO) == 0 ? "" : e16));
			model011.setF_12_2(CNumber.toString(f16.compareTo(BigDecimal.ZERO) == 0 ? "" : f16));
			model011.setF_12_3(CNumber.toString(g16.compareTo(BigDecimal.ZERO) == 0 ? "" : g16));
			model011.setF_12_4(CNumber.toString(h16.compareTo(BigDecimal.ZERO) == 0 ? "" : h16));

			model011.setF_13_1(CNumber.toString(e17));
			model011.setF_13_2(CNumber.toString(f17));
			model011.setF_13_3(CNumber.toString(g17));
			model011.setF_13_4(CNumber.toString(h17));

			model011.setF_14_1(CNumber.toString(e18.compareTo(BigDecimal.ZERO) == 0 ? "" : e18));
			model011.setF_14_2(CNumber.toString(f18.compareTo(BigDecimal.ZERO) == 0 ? "" : f18));
			model011.setF_14_3(CNumber.toString(g18.compareTo(BigDecimal.ZERO) == 0 ? "" : g18));
			model011.setF_14_4(CNumber.toString(h18.compareTo(BigDecimal.ZERO) == 0 ? "" : h18));
			model011.setF_14_5(CNumber.toString(i18.compareTo(BigDecimal.ZERO) == 0 ? "" : i18));

			model011.setF_15_1(CNumber.toString(e19.compareTo(BigDecimal.ZERO) == 0 ? "" : e19));
			model011.setF_15_2(CNumber.toString(f19.compareTo(BigDecimal.ZERO) == 0 ? "" : f19));
			model011.setF_15_3(CNumber.toString(g19.compareTo(BigDecimal.ZERO) == 0 ? "" : g19));
			model011.setF_15_4(CNumber.toString(h19.compareTo(BigDecimal.ZERO) == 0 ? "" : h19));
			model011.setF_15_5(CNumber.toString(i19.compareTo(BigDecimal.ZERO) == 0 ? "" : i19));

			model011.setF_16_1(CNumber.toString(e20.compareTo(BigDecimal.ZERO) == 0 ? "" : e20));
			model011.setF_16_2(CNumber.toString(f20.compareTo(BigDecimal.ZERO) == 0 ? "" : f20));
			model011.setF_16_3(CNumber.toString(g20.compareTo(BigDecimal.ZERO) == 0 ? "" : g20));
			model011.setF_16_4(CNumber.toString(h20.compareTo(BigDecimal.ZERO) == 0 ? "" : h20));
			model011.setF_16_5(CNumber.toString(i20.compareTo(BigDecimal.ZERO) == 0 ? "" : i20));

			model011.setF_17_1(CNumber.toString(e21.compareTo(BigDecimal.ZERO) == 0 ? "" : e21));
			model011.setF_17_2(CNumber.toString(f21.compareTo(BigDecimal.ZERO) == 0 ? "" : f21));
			model011.setF_17_3(CNumber.toString(g21.compareTo(BigDecimal.ZERO) == 0 ? "" : g21));
			model011.setF_17_4(CNumber.toString(h21.compareTo(BigDecimal.ZERO) == 0 ? "" : h21));
			model011.setF_17_5(CNumber.toString(i21.compareTo(BigDecimal.ZERO) == 0 ? "" : i21));

			model011.setF_18_1(CNumber.toString(e22));
			model011.setF_18_2(CNumber.toString(f22));
			model011.setF_18_3(CNumber.toString(g22));
			model011.setF_18_4(CNumber.toString(h22));
			model011.setF_18_5(CNumber.toString(i22));

			model011.setF_19_1(CNumber.toString(e23.compareTo(BigDecimal.ZERO) == 0 ? "" : e23));
			model011.setF_19_2(CNumber.toString(f23.compareTo(BigDecimal.ZERO) == 0 ? "" : f23));
			model011.setF_19_3(CNumber.toString(g23.compareTo(BigDecimal.ZERO) == 0 ? "" : g23));
			model011.setF_19_4(CNumber.toString(h23.compareTo(BigDecimal.ZERO) == 0 ? "" : h23));
			model011.setF_19_5(CNumber.toString(i23.compareTo(BigDecimal.ZERO) == 0 ? "" : i23));

			model011.setF_20_1(CNumber.toString(e24.compareTo(BigDecimal.ZERO) == 0 ? "" : e24));
			model011.setF_20_2(CNumber.toString(f24.compareTo(BigDecimal.ZERO) == 0 ? "" : f24));
			model011.setF_20_3(CNumber.toString(g24.compareTo(BigDecimal.ZERO) == 0 ? "" : g24));
			model011.setF_20_4(CNumber.toString(h24.compareTo(BigDecimal.ZERO) == 0 ? "" : h24));
			model011.setF_20_5(CNumber.toString(i24.compareTo(BigDecimal.ZERO) == 0 ? "" : i24));

			model011.setF_21_1(CNumber.toString(e25.compareTo(BigDecimal.ZERO) == 0 ? "" : e25));
			model011.setF_21_2(CNumber.toString(f25.compareTo(BigDecimal.ZERO) == 0 ? "" : f25));
			model011.setF_21_3(CNumber.toString(g25.compareTo(BigDecimal.ZERO) == 0 ? "" : g25));
			model011.setF_21_4(CNumber.toString(h25.compareTo(BigDecimal.ZERO) == 0 ? "" : h25));
			model011.setF_21_5(CNumber.toString(i25.compareTo(BigDecimal.ZERO) == 0 ? "" : i25));

			model011.setF_22_1(CNumber.toString(e26.compareTo(BigDecimal.ZERO) == 0 ? "" : e26));
			model011.setF_22_2(CNumber.toString(f26.compareTo(BigDecimal.ZERO) == 0 ? "" : f26));
			model011.setF_22_3(CNumber.toString(g26.compareTo(BigDecimal.ZERO) == 0 ? "" : g26));
			model011.setF_22_4(CNumber.toString(h26.compareTo(BigDecimal.ZERO) == 0 ? "" : h26));
			model011.setF_22_5(CNumber.toString(i26.compareTo(BigDecimal.ZERO) == 0 ? "" : i26));

			model011.setF_23_1(CNumber.toString(e27.compareTo(BigDecimal.ZERO) == 0 ? "" : e27));
			model011.setF_23_2(CNumber.toString(f27.compareTo(BigDecimal.ZERO) == 0 ? "" : f27));
			model011.setF_23_3(CNumber.toString(g27.compareTo(BigDecimal.ZERO) == 0 ? "" : g27));
			model011.setF_23_4(CNumber.toString(h27.compareTo(BigDecimal.ZERO) == 0 ? "" : h27));
			model011.setF_23_5(CNumber.toString(i27.compareTo(BigDecimal.ZERO) == 0 ? "" : i27));

			model011.setF_24_1(CNumber.toString(e28.compareTo(BigDecimal.ZERO) == 0 ? "" : e28));
			model011.setF_24_2(CNumber.toString(f28.compareTo(BigDecimal.ZERO) == 0 ? "" : f28));
			model011.setF_24_3(CNumber.toString(g28.compareTo(BigDecimal.ZERO) == 0 ? "" : g28));
			model011.setF_24_4(CNumber.toString(h28.compareTo(BigDecimal.ZERO) == 0 ? "" : h28));
			model011.setF_24_5(CNumber.toString(i28.compareTo(BigDecimal.ZERO) == 0 ? "" : i28));

		}

		mapper011.insertModel(model011);
		return model011;

	}
}
