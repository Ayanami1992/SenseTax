package com.jp.qxd.tax.controller;



import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jp.qxd.tax.model.BaseModel;
import com.jp.qxd.tax.model.pdf.Rpt001Model;
import com.jp.qxd.tax.model.pdf.Rpt001_01Model;
import com.jp.qxd.tax.model.pdf.Rpt001_01Provider;
import com.jp.qxd.tax.model.pdf.Rpt001_a_Provider;
import com.jp.qxd.tax.model.pdf.Rpt001_b_Provider;
import com.jp.qxd.tax.model.pdf.Rpt002Model;
import com.jp.qxd.tax.model.pdf.Rpt002Provider;
import com.jp.qxd.tax.model.pdf.Rpt003Model;
import com.jp.qxd.tax.model.pdf.Rpt003Provider;
import com.jp.qxd.tax.model.pdf.Rpt003_tsukiModel;
import com.jp.qxd.tax.model.pdf.Rpt003_tsukiProvider;
import com.jp.qxd.tax.model.pdf.Rpt004Model;
import com.jp.qxd.tax.model.pdf.Rpt004Provider;
import com.jp.qxd.tax.model.pdf.Rpt00501Model;
import com.jp.qxd.tax.model.pdf.Rpt00501Provider;
import com.jp.qxd.tax.model.pdf.Rpt00502Model;
import com.jp.qxd.tax.model.pdf.Rpt00502Provider;
import com.jp.qxd.tax.model.pdf.Rpt006Model;
import com.jp.qxd.tax.model.pdf.Rpt006Provider;
import com.jp.qxd.tax.model.pdf.Rpt007Model;
import com.jp.qxd.tax.model.pdf.Rpt007Provider;
import com.jp.qxd.tax.model.pdf.Rpt008Model;
import com.jp.qxd.tax.model.pdf.Rpt008Provider;
import com.jp.qxd.tax.model.pdf.Rpt01102Model;
import com.jp.qxd.tax.model.pdf.Rpt01102Provider;
import com.jp.qxd.tax.model.pdf.Rpt011Model;
import com.jp.qxd.tax.model.pdf.Rpt011Provider;
import com.jp.qxd.tax.model.pdf.Rpt01402Model;
import com.jp.qxd.tax.model.pdf.Rpt01402Provider;
import com.jp.qxd.tax.model.pdf.Rpt015Model;
import com.jp.qxd.tax.model.pdf.Rpt015Provider;
import com.jp.qxd.tax.model.pdf.Rpt020Model;
import com.jp.qxd.tax.model.pdf.Rpt020Provider;
import com.jp.qxd.tax.model.pdf.Rpt020_1Model;
import com.jp.qxd.tax.model.pdf.Rpt020_1Provider;
import com.jp.qxd.tax.model.pdf.Rpt21_a_dModel;
import com.jp.qxd.tax.model.pdf.Rpt21_a_dProvider;
import com.jp.qxd.tax.model.pdf.Rpt6aModel;
import com.jp.qxd.tax.model.pdf.Rpt6a_dModel;
import com.jp.qxd.tax.model.pdf.Rpt6a_dProvider;
import com.jp.qxd.tax.model.pdf.RptBaseProvider;
import com.jp.qxd.tax.model.pdf.Rpt_r1_no6_yosikiProvider;
import com.jp.qxd.tax.model.pdf.Rpt_r1_no6_yosiki_beppyo9Model;
import com.jp.qxd.tax.model.pdf.Rpt_r1_no6_yosiki_beppyo9Provider;
import com.jp.qxd.tax.service.PdfService;
import com.jp.qxd.tax.service.pdf.Pdf001Service;
import com.jp.qxd.tax.service.pdf.Pdf002Service;
import com.jp.qxd.tax.service.pdf.Pdf003Service;
import com.jp.qxd.tax.service.pdf.Pdf004Service;
import com.jp.qxd.tax.service.pdf.Pdf00501Service;
import com.jp.qxd.tax.service.pdf.Pdf00502Service;
import com.jp.qxd.tax.service.pdf.Pdf006Service;
import com.jp.qxd.tax.service.pdf.Pdf007Service;
import com.jp.qxd.tax.service.pdf.Pdf008Service;
import com.jp.qxd.tax.service.pdf.Pdf01102Service;
import com.jp.qxd.tax.service.pdf.Pdf011Service;
import com.jp.qxd.tax.service.pdf.Pdf01402Service;
import com.jp.qxd.tax.service.pdf.Pdf015Service;
import com.jp.qxd.tax.service.pdf.Pdf020Service;
import com.jp.qxd.tax.service.pdf.Pdf0643Service;
import com.jp.qxd.tax.service.pdf.Pdf6aService;
import com.jp.qxd.tax.service.pdf.Pdf6a_dService;
import com.jp.qxd.tax.service.pdf.Pdfd69Service;
import com.jp.qxd.tax.utils.Contents;
import com.jp.qxd.tax.utils.Utils;

@Controller
@RequestMapping("/outputpdf")
public class PdfController {
	private static Logger logger = LoggerFactory.getLogger(PdfController.class);

	@Autowired
	private PdfService pdfService;

	@Autowired
	private Pdf001Service pdf001Service;

	@Autowired
	private Pdf002Service pdf002Service;

	@Autowired
	private Pdf003Service pdf003Service;

	@Autowired
	private Pdf004Service pdf004Service;

	@Autowired
	private Pdf00501Service pdf00501Service;

	@Autowired
	private Pdf00502Service pdf00502Service;

	@Autowired
	private Pdf006Service pdf006Service;

	@Autowired
	private Pdf007Service pdf007Service;

	@Autowired
	private Pdf008Service pdf008Service;

	@Autowired
	private Pdf011Service pdf011Service;

	@Autowired
	private Pdf01102Service pdf01102Service;

	@Autowired
	private Pdf01402Service pdf01402Service;

	@Autowired
	private Pdf015Service pdf015Service;

	@Autowired
	private Pdfd69Service pdfd69Service;

	@Autowired
	private Pdf0643Service pdf0643Service;

	@Autowired
	private Pdf6aService pdf6aService;

	@Autowired
	private Pdf6a_dService pdf6a_dService;

	@Autowired
	private Pdf020Service pdf020Service;



	@RequestMapping("/")
	public String pdf() throws Exception {
		return "pdf";
	}

	@RequestMapping("/01")
	public String output01(HttpSession session, BaseModel model, String dateString, String dateYMDHMS) throws Exception {
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
        String legalPersonName = (String) session.getAttribute(Contents.LEGAL_PERSON_NAME);
        if (model.getUserId() == null) {
    		model.setUserId(userId);
    		model.setYear(year);
    		model.setCompany_id("1");
    		model.setLegalPersonName(legalPersonName);
    		model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
    		model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));
        }

		if (dateString == null) {
			dateString = Utils.timeYMD();
			dateYMDHMS = Utils.timeYMDHMS();
		}

		pdfService.makeFolder(Utils.PROJECT_PATH + "/static/outputpdf/" + dateString);

		Rpt001Model outputModel = pdf001Service.initDB(model);

//		String color = "white";
		String color = "白色申告";

		String pdfPath = "redirect:/outputpdf/" + dateString + "/01" + dateYMDHMS + ".pdf";

		outputModel.setLegalPersonName(legalPersonName);
		outputModel.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
		outputModel.setYmdTo((String) session.getAttribute(Contents.YMD_TO));
		if(!color.equals(outputModel.getB_14())) {
			String filepath= "/static/pdfTemplates/01-a.pdf";
			String outputFilePath = Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/01" + dateYMDHMS + ".pdf";
			Rpt001_a_Provider provider = new Rpt001_a_Provider();
			pdfService.makePdfFile(filepath, outputFilePath, outputModel, provider);
		}else if(color.equals(outputModel.getB_14())) {
			String filepath= "/static/pdfTemplates/01_01b.pdf";
			String outputFilePath = Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/01" + dateYMDHMS + ".pdf";
			Rpt001_b_Provider provider = new Rpt001_b_Provider();
			pdfService.makePdfFile(filepath, outputFilePath, outputModel, provider);
		}
		return pdfPath;
	}

	@RequestMapping("/0101")
	public String output0101(HttpSession session, BaseModel model, String dateString, String dateYMDHMS) throws Exception {
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
        String legalPersonName = (String) session.getAttribute(Contents.LEGAL_PERSON_NAME);
        if (model.getUserId() == null) {
    		model.setUserId(userId);
    		model.setYear(year);
    		model.setCompany_id("1");
    		model.setLegalPersonName(legalPersonName);
    		model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
    		model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));
        }

		if (dateString == null) {
			dateString = Utils.timeYMD();
			dateYMDHMS = Utils.timeYMDHMS();
		}

		pdfService.makeFolder(Utils.PROJECT_PATH + "/static/outputpdf/" + dateString);

		pdf001Service.initDB(model);

		Rpt001_01Model outputModel = (Rpt001_01Model) pdfService.getPdf01_01Model(model).get(0);
		String filepath= "/static/pdfTemplates/01-1.pdf";
		Rpt001_01Provider provider = new Rpt001_01Provider();
		pdfService.makePdfFile(filepath, Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/01-1_" + dateYMDHMS + ".pdf", outputModel, provider);

        return "redirect:/outputpdf/" + dateString + "/01-1_" + dateYMDHMS + ".pdf";
	}

	@RequestMapping("/02")
	public String output02(HttpSession session, BaseModel model, String dateString, String dateYMDHMS) throws Exception {
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
        String legalPersonName = (String) session.getAttribute(Contents.LEGAL_PERSON_NAME);
        if (model.getUserId() == null) {
    		model.setUserId(userId);
    		model.setYear(year);
    		model.setCompany_id("1");
    		model.setLegalPersonName(legalPersonName);
    		model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
    		model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));
        }

		if (dateString == null) {
			dateString = Utils.timeYMD();
			dateYMDHMS = Utils.timeYMDHMS();
		}

		pdfService.makeFolder(Utils.PROJECT_PATH + "/static/outputpdf/" + dateString);

		pdf002Service.initDB(model);

		Rpt002Model outputModel = (Rpt002Model) pdfService.getPdf02Model(model).get(0);
		String filepath= "/static/pdfTemplates/02.pdf";
		Rpt002Provider provider = new Rpt002Provider();
		pdfService.makePdfFile(filepath, Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/02_" + dateYMDHMS + ".pdf", outputModel, provider);

        return "redirect:/outputpdf/" + dateString + "/02_" + dateYMDHMS + ".pdf";
	}

	@RequestMapping("/03")
	public String output03(HttpSession session, BaseModel model, String dateString, String dateYMDHMS) throws Exception {
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
        String legalPersonName = (String) session.getAttribute(Contents.LEGAL_PERSON_NAME);
        if (model.getUserId() == null) {
    		model.setUserId(userId);
    		model.setYear(year);
    		model.setCompany_id("1");
    		model.setLegalPersonName(legalPersonName);
    		model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
    		model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));
        }

		if (dateString == null) {
			dateString = Utils.timeYMD();
			dateYMDHMS = Utils.timeYMDHMS();
		}
		pdfService.makeFolder(Utils.PROJECT_PATH + "/static/outputpdf/" + dateString);

		pdf003Service.initDB(model);

		Rpt003Model outputModel = (Rpt003Model) pdfService.getPdf03Model(model).get(0);
		String filepath= "/static/pdfTemplates/03(01).pdf";
		Rpt003Provider provider = new Rpt003Provider();
		pdfService.makePdfFile(filepath, Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/03(01)_" + dateYMDHMS + ".pdf", outputModel, provider);

        return "redirect:/outputpdf/" + dateString + "/03(01)_" + dateYMDHMS + ".pdf";
	}

	@RequestMapping("/03tsuki")
	public String output03tsuki(HttpSession session, BaseModel model, String dateString, String dateYMDHMS) throws Exception {
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
        String legalPersonName = (String) session.getAttribute(Contents.LEGAL_PERSON_NAME);
        if (model.getUserId() == null) {
    		model.setUserId(userId);
    		model.setYear(year);
    		model.setCompany_id("1");
    		model.setLegalPersonName(legalPersonName);
    		model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
    		model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));
        }

		if (dateString == null) {
			dateString = Utils.timeYMD();
			dateYMDHMS = Utils.timeYMDHMS();
		}

		pdfService.makeFolder(Utils.PROJECT_PATH + "/static/outputpdf/" + dateString);

		pdf003Service.initDB(model);

		Rpt003_tsukiModel outputModel = (Rpt003_tsukiModel) pdfService.getPdf03_tsukiModel(model).get(0);
		String filepath= "/static/pdfTemplates/03(01)-tsuki.pdf";
		Rpt003_tsukiProvider provider = new Rpt003_tsukiProvider();
		pdfService.makePdfFile(filepath, Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/03(01)-tsuki_" + dateYMDHMS + ".pdf", outputModel, provider);

        return "redirect:/outputpdf/" + dateString + "/03(01)-tsuki_" + dateYMDHMS + ".pdf";
	}

	@RequestMapping("/04")
	public String output04(HttpSession session, BaseModel model, String dateString, String dateYMDHMS) throws Exception {
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
        String legalPersonName = (String) session.getAttribute(Contents.LEGAL_PERSON_NAME);
        if (model.getUserId() == null) {
    		model.setUserId(userId);
    		model.setYear(year);
    		model.setCompany_id("1");
    		model.setLegalPersonName(legalPersonName);
    		model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
    		model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));
        }

		if (dateString == null) {
			dateString = Utils.timeYMD();
			dateYMDHMS = Utils.timeYMDHMS();
		}

		pdfService.makeFolder(Utils.PROJECT_PATH + "/static/outputpdf/" + dateString);

		pdf004Service.initDB(model);

		Rpt004Model outputModel = (Rpt004Model) pdfService.getPdf04Model(model).get(0);
		String filepath= "/static/pdfTemplates/04-b.pdf";
		Rpt004Provider provider = new Rpt004Provider();
		pdfService.makePdfFile(filepath, Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/04-b_" + dateYMDHMS + ".pdf", outputModel, provider);

        return "redirect:/outputpdf/" + dateString + "/04-b_" + dateYMDHMS + ".pdf";
	}

	@RequestMapping("/0501")
	public String output0501(HttpSession session, BaseModel model, String dateString, String dateYMDHMS) throws Exception {
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
        String legalPersonName = (String) session.getAttribute(Contents.LEGAL_PERSON_NAME);
        if (model.getUserId() == null) {
    		model.setUserId(userId);
    		model.setYear(year);
    		model.setCompany_id("1");
    		model.setLegalPersonName(legalPersonName);
    		model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
    		model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));
        }

		if (dateString == null) {
			dateString = Utils.timeYMD();
			dateYMDHMS = Utils.timeYMDHMS();
		}

		pdfService.makeFolder(Utils.PROJECT_PATH + "/static/outputpdf/" + dateString);

		pdf00501Service.initDB(model);

		Rpt00501Model outputModel = (Rpt00501Model) pdfService.getPdf0501Model(model).get(0);
		String filepath= "/static/pdfTemplates/05_01.pdf";
		Rpt00501Provider provider = new Rpt00501Provider();
		pdfService.makePdfFile(filepath, Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/05_01_" + dateYMDHMS + ".pdf", outputModel, provider);

        return "redirect:/outputpdf/" + dateString + "/05_01_" + dateYMDHMS + ".pdf";
	}

	@RequestMapping("/0502")
	public String output0502(HttpSession session, BaseModel model, String dateString, String dateYMDHMS) throws Exception {
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
        String legalPersonName = (String) session.getAttribute(Contents.LEGAL_PERSON_NAME);
        if (model.getUserId() == null) {
    		model.setUserId(userId);
    		model.setYear(year);
    		model.setCompany_id("1");
    		model.setLegalPersonName(legalPersonName);
    		model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
    		model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));
        }

		if (dateString == null) {
			dateString = Utils.timeYMD();
			dateYMDHMS = Utils.timeYMDHMS();
		}

		pdfService.makeFolder(Utils.PROJECT_PATH + "/static/outputpdf/" + dateString);

		pdf00502Service.initDB(model);

		Rpt00502Model outputModel = (Rpt00502Model) pdfService.getPdf0502Model(model).get(0);
		String filepath= "/static/pdfTemplates/05_02.pdf";
		Rpt00502Provider provider = new Rpt00502Provider();
		pdfService.makePdfFile(filepath, Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/05_02_" + dateYMDHMS + ".pdf", outputModel, provider);

        return "redirect:/outputpdf/" + dateString + "/05_02_" + dateYMDHMS + ".pdf";
	}

	@RequestMapping("/06")
	public String output06(HttpSession session, BaseModel model, String dateString, String dateYMDHMS) throws Exception {
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
        String legalPersonName = (String) session.getAttribute(Contents.LEGAL_PERSON_NAME);
        if (model.getUserId() == null) {
    		model.setUserId(userId);
    		model.setYear(year);
    		model.setCompany_id("1");
    		model.setLegalPersonName(legalPersonName);
    		model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
    		model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));
        }

		if (dateString == null) {
			dateString = Utils.timeYMD();
			dateYMDHMS = Utils.timeYMDHMS();
		}

		pdfService.makeFolder(Utils.PROJECT_PATH + "/static/outputpdf/" + dateString);

		pdf006Service.initDB(model);

		Rpt006Model outputModel = (Rpt006Model) pdfService.getPdf06Model(model).get(0);
		String filepath= "/static/pdfTemplates/06(1).pdf";
		Rpt006Provider provider = new Rpt006Provider();
		pdfService.makePdfFile(filepath, Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/06(1)_" + dateYMDHMS + ".pdf", outputModel, provider);

        return "redirect:/outputpdf/" + dateString + "/06(1)_" + dateYMDHMS + ".pdf";
	}

	@RequestMapping("/07")
	public String output07(HttpSession session, BaseModel model, String dateString, String dateYMDHMS) throws Exception {
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
        String legalPersonName = (String) session.getAttribute(Contents.LEGAL_PERSON_NAME);
        if (model.getUserId() == null) {
    		model.setUserId(userId);
    		model.setYear(year);
    		model.setCompany_id("1");
    		model.setLegalPersonName(legalPersonName);
    		model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
    		model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));
        }

		if (dateString == null) {
			dateString = Utils.timeYMD();
			dateYMDHMS = Utils.timeYMDHMS();
		}

		pdfService.makeFolder(Utils.PROJECT_PATH + "/static/outputpdf/" + dateString);

		pdf007Service.initDB(model);

		Rpt007Model outputModel = (Rpt007Model) pdfService.getPdf07Model(model).get(0);
		String filepath= "/static/pdfTemplates/07_01.pdf";
		Rpt007Provider provider = new Rpt007Provider();
		pdfService.makePdfFile(filepath, Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/07_01_" + dateYMDHMS + ".pdf", outputModel, provider);

        return "redirect:/outputpdf/" + dateString + "/07_01_" + dateYMDHMS + ".pdf";
	}

	@RequestMapping("/08")
	public String output08(HttpSession session, BaseModel model, String dateString, String dateYMDHMS) throws Exception {
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
        String legalPersonName = (String) session.getAttribute(Contents.LEGAL_PERSON_NAME);
        if (model.getUserId() == null) {
    		model.setUserId(userId);
    		model.setYear(year);
    		model.setCompany_id("1");
    		model.setLegalPersonName(legalPersonName);
    		model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
    		model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));
        }

		if (dateString == null) {
			dateString = Utils.timeYMD();
			dateYMDHMS = Utils.timeYMDHMS();
		}

		pdfService.makeFolder(Utils.PROJECT_PATH + "/static/outputpdf/" + dateString);

		pdf008Service.initDB(model);

		Rpt008Model outputModel = (Rpt008Model) pdfService.getPdf08Model(model).get(0);
		String filepath= "/static/pdfTemplates/08(1).pdf";
		Rpt008Provider provider = new Rpt008Provider();
		pdfService.makePdfFile(filepath, Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/08(1)_" + dateYMDHMS + ".pdf", outputModel, provider);

        return "redirect:/outputpdf/" + dateString + "/08(1)_" + dateYMDHMS + ".pdf";
	}

	@RequestMapping("/11")
	public String output11(HttpSession session, BaseModel model, String dateString, String dateYMDHMS) throws Exception {
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
        String legalPersonName = (String) session.getAttribute(Contents.LEGAL_PERSON_NAME);
        if (model.getUserId() == null) {
    		model.setUserId(userId);
    		model.setYear(year);
    		model.setCompany_id("1");
    		model.setLegalPersonName(legalPersonName);
    		model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
    		model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));
        }

		if (dateString == null) {
			dateString = Utils.timeYMD();
			dateYMDHMS = Utils.timeYMDHMS();
		}

		pdfService.makeFolder(Utils.PROJECT_PATH + "/static/outputpdf/" + dateString);

		pdf011Service.initDB(model);

		Rpt011Model outputModel = (Rpt011Model) pdfService.getPdf11Model(model).get(0);
		String filepath= "/static/pdfTemplates/11(01).pdf";
		Rpt011Provider provider = new Rpt011Provider();
		pdfService.makePdfFile(filepath, Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/11(01)_" + dateYMDHMS + ".pdf", outputModel, provider);

        return "redirect:/outputpdf/" + dateString + "/11(01)_" + dateYMDHMS + ".pdf";
	}

	@RequestMapping("/1101")
	public String output1101(HttpSession session, BaseModel model, String dateString, String dateYMDHMS) throws Exception {
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
        String legalPersonName = (String) session.getAttribute(Contents.LEGAL_PERSON_NAME);
        if (model.getUserId() == null) {
    		model.setUserId(userId);
    		model.setYear(year);
    		model.setCompany_id("1");
    		model.setLegalPersonName(legalPersonName);
    		model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
    		model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));
        }

		if (dateString == null) {
			dateString = Utils.timeYMD();
			dateYMDHMS = Utils.timeYMDHMS();
		}

		pdfService.makeFolder(Utils.PROJECT_PATH + "/static/outputpdf/" + dateString);

		pdf01102Service.initDB(model);

		Rpt01102Model outputModel = (Rpt01102Model) pdfService.getPdf1102Model(model).get(0);
		String filepath= "/static/pdfTemplates/11(01-02).pdf";
		Rpt01102Provider provider = new Rpt01102Provider();
		pdfService.makePdfFile(filepath, Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/11(01-02)_" + dateYMDHMS + ".pdf", outputModel, provider);

        return "redirect:/outputpdf/" + dateString + "/11(01-02)_" + dateYMDHMS + ".pdf";
	}

	@RequestMapping("/1402")
	public String output1402(HttpSession session, BaseModel model, String dateString, String dateYMDHMS) throws Exception {
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
        String legalPersonName = (String) session.getAttribute(Contents.LEGAL_PERSON_NAME);
        if (model.getUserId() == null) {
    		model.setUserId(userId);
    		model.setYear(year);
    		model.setCompany_id("1");
    		model.setLegalPersonName(legalPersonName);
    		model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
    		model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));
        }

		if (dateString == null) {
			dateString = Utils.timeYMD();
			dateYMDHMS = Utils.timeYMDHMS();
		}

		pdfService.makeFolder(Utils.PROJECT_PATH + "/static/outputpdf/" + dateString);

		pdf01402Service.initDB(model);

		Rpt01402Model outputModel = (Rpt01402Model) pdfService.getPdf1402Model(model).get(0);
		String filepath= "/static/pdfTemplates/14(02).pdf";
		Rpt01402Provider provider = new Rpt01402Provider();
		pdfService.makePdfFile(filepath, Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/14(02)_" + dateYMDHMS + ".pdf", outputModel, provider);

        return "redirect:/outputpdf/" + dateString + "/14(02)_" + dateYMDHMS + ".pdf";
	}

	@RequestMapping("/15")
	public String output15(HttpSession session, BaseModel model, String dateString, String dateYMDHMS) throws Exception {
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
        String legalPersonName = (String) session.getAttribute(Contents.LEGAL_PERSON_NAME);
        if (model.getUserId() == null) {
    		model.setUserId(userId);
    		model.setYear(year);
    		model.setCompany_id("1");
    		model.setLegalPersonName(legalPersonName);
    		model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
    		model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));
        }

		if (dateString == null) {
			dateString = Utils.timeYMD();
			dateYMDHMS = Utils.timeYMDHMS();
		}

		pdfService.makeFolder(Utils.PROJECT_PATH + "/static/outputpdf/" + dateString);

		pdf015Service.initDB(model);

		Rpt015Model outputModel = (Rpt015Model) pdfService.getPdf15Model(model).get(0);
		String filepath= "/static/pdfTemplates/15.pdf";
		Rpt015Provider provider = new Rpt015Provider();
		pdfService.makePdfFile(filepath, Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/15_" + dateYMDHMS + ".pdf", outputModel, provider);

        return "redirect:/outputpdf/" + dateString + "/15_" + dateYMDHMS + ".pdf";
	}

	@RequestMapping("/6a_d")
	public String output6a_d(HttpSession session, BaseModel model, String dateString, String dateYMDHMS) throws Exception {
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
        String legalPersonName = (String) session.getAttribute(Contents.LEGAL_PERSON_NAME);
        if (model.getUserId() == null) {
    		model.setUserId(userId);
    		model.setYear(year);
    		model.setCompany_id("1");
    		model.setLegalPersonName(legalPersonName);
    		model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
    		model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));
        }

		if (dateString == null) {
			dateString = Utils.timeYMD();
			dateYMDHMS = Utils.timeYMDHMS();
		}

		pdfService.makeFolder(Utils.PROJECT_PATH + "/static/outputpdf/" + dateString);

		pdf6a_dService.initDB(model);

		String filepath= "/static/pdfTemplates/6a_d.pdf";
		Rpt6a_dProvider provider = new Rpt6a_dProvider();
		List<Rpt6a_dModel> list = (List<Rpt6a_dModel>) pdfService.getPdf6a_dModel(model);
		if(list.size() != 0) {
			model = list.get(0);
		}
		model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
		model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));

		pdfService.makePdfFile(filepath, Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/6a_d_" + dateYMDHMS + ".pdf", model, provider);

        return "redirect:/outputpdf/" + dateString + "/6a_d_" + dateYMDHMS + ".pdf";
	}

    @RequestMapping("/6a")
    public String output6a(HttpSession session, BaseModel model, String dateString, String dateYMDHMS) throws Exception {
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
        String legalPersonName = (String) session.getAttribute(Contents.LEGAL_PERSON_NAME);
        if (model.getUserId() == null) {
    		model.setUserId(userId);
    		model.setYear(year);
    		model.setCompany_id("1");
    		model.setLegalPersonName(legalPersonName);
    		model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
    		model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));
        }

		if (dateString == null) {
			dateString = Utils.timeYMD();
			dateYMDHMS = Utils.timeYMDHMS();
		}

		pdfService.makeFolder(Utils.PROJECT_PATH + "/static/outputpdf/" + dateString);

        pdf6aService.initDB(model);

        String filepath= "/static/pdfTemplates/r1_no6_yosiki.pdf";
        Rpt_r1_no6_yosikiProvider provider = new Rpt_r1_no6_yosikiProvider();
        List<Rpt6aModel> list = (List<Rpt6aModel>) pdfService.getPdf_r1_no6_yosikiModel(model);
        if(list.size() != 0) {
            model = list.get(0);
        }
        model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
        model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));

        pdfService.makePdfFile(filepath, Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/r1_no6_yosiki_" + dateYMDHMS + ".pdf", model, provider);

        return "redirect:/outputpdf/" + dateString + "/r1_no6_yosiki_" + dateYMDHMS + ".pdf";
    }

	@RequestMapping("/21_a_d")
	public String output21_a_d(HttpSession session, BaseModel model, String dateString, String dateYMDHMS) throws Exception {
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
        String legalPersonName = (String) session.getAttribute(Contents.LEGAL_PERSON_NAME);
        if (model.getUserId() == null) {
    		model.setUserId(userId);
    		model.setYear(year);
    		model.setCompany_id("1");
    		model.setLegalPersonName(legalPersonName);
    		model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
    		model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));
        }

		if (dateString == null) {
			dateString = Utils.timeYMD();
			dateYMDHMS = Utils.timeYMDHMS();
		}

		pdfService.makeFolder(Utils.PROJECT_PATH + "/static/outputpdf/" + dateString);

		pdf0643Service.initDB(model);

		String filepath= "/static/pdfTemplates/21-a_d.pdf";
		Rpt21_a_dProvider provider = new Rpt21_a_dProvider();
		List<Rpt21_a_dModel> list = (List<Rpt21_a_dModel>) pdfService.getPdf21_a_dModel(model);
		if(list.size() != 0) {
			model = list.get(0);
		}
		pdfService.makePdfFile(filepath, Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/21-a_d_" + dateYMDHMS + ".pdf", model, provider);

        return "redirect:/outputpdf/" + dateString + "/21-a_d_" + dateYMDHMS + ".pdf";
	}

	@RequestMapping("/r1_no6_yosiki_beppyo9")
	public String outputr1_no6_yosiki_beppyo9(HttpSession session, BaseModel model, String dateString, String dateYMDHMS) throws Exception {
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
        String legalPersonName = (String) session.getAttribute(Contents.LEGAL_PERSON_NAME);
        if (model.getUserId() == null) {
    		model.setUserId(userId);
    		model.setYear(year);
    		model.setCompany_id("1");
    		model.setLegalPersonName(legalPersonName);
    		model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
    		model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));
        }

		if (dateString == null) {
			dateString = Utils.timeYMD();
			dateYMDHMS = Utils.timeYMDHMS();
		}

		pdfService.makeFolder(Utils.PROJECT_PATH + "/static/outputpdf/" + dateString);

		pdfd69Service.initDB(model);

		String filepath= "/static/pdfTemplates/r1_no6_yosiki_beppyo9.pdf";
		Rpt_r1_no6_yosiki_beppyo9Provider provider = new Rpt_r1_no6_yosiki_beppyo9Provider();
		List<Rpt_r1_no6_yosiki_beppyo9Model> list = (List<Rpt_r1_no6_yosiki_beppyo9Model>) pdfService.getPdf_r1_no6_yosiki_beppyo9Model(model);
		if(list.size() != 0) {
			model = list.get(0);
		}
		pdfService.makePdfFile(filepath, Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/r1_no6_yosiki_beppyo9_" + dateYMDHMS + ".pdf", model, provider);

        return "redirect:/outputpdf/" + dateString + "/r1_no6_yosiki_beppyo9_" + dateYMDHMS + ".pdf";
	}

	@RequestMapping("/20_d")
	public String output20_d(HttpSession session, BaseModel model, String dateString, String dateYMDHMS) throws Exception {
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
        String legalPersonName = (String) session.getAttribute(Contents.LEGAL_PERSON_NAME);
        if (model.getUserId() == null) {
    		model.setUserId(userId);
    		model.setYear(year);
    		model.setCompany_id("1");
    		model.setLegalPersonName(legalPersonName);
    		model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
    		model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));
        }

		if (dateString == null) {
			dateString = Utils.timeYMD();
			dateYMDHMS = Utils.timeYMDHMS();
		}

		pdfService.makeFolder(Utils.PROJECT_PATH + "/static/outputpdf/" + dateString);

		pdf020Service.initDB(model);

		String filepath= "/static/pdfTemplates/20_1.pdf";
		Rpt020Provider provider = new Rpt020Provider();
		List<Rpt020Model> list = (List<Rpt020Model>) pdfService.getPdf20Model(model);
		if(list.size() != 0) {
			model = list.get(0);
		}
		model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
		model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));
		model.setFixedYearFrom(RptBaseProvider.FIXEDTEXT);
		model.setFixedYearTo(RptBaseProvider.FIXEDTEXT);

		pdfService.makePdfFile(filepath, Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/20_1_" + dateYMDHMS + ".pdf", model, provider);

		Rpt020_1Model model01 = new Rpt020_1Model();
		model01 = pdfService.copy(model, model01);
		Rpt020_1Provider provider01 = new Rpt020_1Provider();
		filepath= "/static/pdfTemplates/20_2.pdf";
		pdfService.makePdfFile(filepath, Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/20_2_" + dateYMDHMS + ".pdf", model01, provider01);
		String[] fileList = {Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/20_1_" + dateYMDHMS + ".pdf", Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/20_2_" + dateYMDHMS + ".pdf"};
		String newfile = Utils.PROJECT_PATH + "/static/outputpdf/" + dateString + "/20_" + dateYMDHMS + ".pdf";

		pdfService.pdfCopy(fileList, newfile);

        return "redirect:/outputpdf/" + dateString + "/20_" + dateYMDHMS + ".pdf";
	}

	@RequestMapping(path = "/download", method = RequestMethod.POST)
	public String download(HttpSession session, String[] pdfArray) throws Exception {
		BaseModel model = new BaseModel();
		String userId = Utils.getUserId(session);
		String year = (String) session.getAttribute(Contents.YEAR);
        String legalPersonName = (String) session.getAttribute(Contents.LEGAL_PERSON_NAME);
        if (model.getUserId() == null) {
    		model.setUserId(userId);
    		model.setYear(year);
    		model.setCompany_id("1");
    		model.setLegalPersonName(legalPersonName);
    		model.setYmdFrom((String) session.getAttribute(Contents.YMD_FROM));
    		model.setYmdTo((String) session.getAttribute(Contents.YMD_TO));
        }

		String dateYMDHMS = Utils.timeYMDHMS();
		String dateString = Utils.timeYMD();
		String subPath =  dateString + "/" + dateYMDHMS;
		String fullPath = Utils.PROJECT_PATH + "/static/outputpdf/" + subPath;

		if(pdfArray == null) {
			pdfArray = new String[]{"01", "0101", "02", "03", "03tsuki", "04", "0501", "0502", "06", "07", "08", "11",
			            "1101", "1402", "15", "6a", "6a_d", "21_a_d", "r1_no6_yosiki_beppyo9", "20_d"};
		}

		String[] fileList = new String[pdfArray.length];

		for(int i = 0; i < pdfArray.length; i++) {
			switch(pdfArray[i]) {
				case "01":
					output01(session, model, subPath, dateYMDHMS);
					fileList[i] = fullPath + "/01" + dateYMDHMS + ".pdf";
					break;
				case "0101":
					output0101(session, model, subPath, dateYMDHMS);
					fileList[i] = fullPath + "/01-1_" + dateYMDHMS + ".pdf";
					break;
				case "02":
					output02(session, model, subPath, dateYMDHMS);
					fileList[i] = fullPath + "/02_" + dateYMDHMS + ".pdf";
					break;
				case "03":
					output03(session, model, subPath, dateYMDHMS);
					fileList[i] = fullPath + "/03(01)_" + dateYMDHMS + ".pdf";
					break;
				case "03tsuki":
					output03tsuki(session, model, subPath, dateYMDHMS);
					fileList[i] = fullPath + "/03(01)-tsuki_" + dateYMDHMS + ".pdf";
					break;
				case "04":
					output04(session, model, subPath, dateYMDHMS);
					fileList[i] = fullPath + "/04-b_" + dateYMDHMS + ".pdf";
					break;
				case "0501":
					output0501(session, model, subPath, dateYMDHMS);
					fileList[i] = fullPath + "/05_01_" + dateYMDHMS + ".pdf";
					break;
				case "0502":
					output0502(session, model, subPath, dateYMDHMS);
					fileList[i] = fullPath + "/05_02_" + dateYMDHMS + ".pdf";
					break;
				case "06":
					output06(session, model, subPath, dateYMDHMS);
					fileList[i] = fullPath + "/06(1)_" + dateYMDHMS + ".pdf";
					break;
				case "07":
					output07(session, model, subPath, dateYMDHMS);
					fileList[i] = fullPath + "/07_01_" + dateYMDHMS + ".pdf";
					break;
				case "08":
					output08(session, model, subPath, dateYMDHMS);
					fileList[i] = fullPath + "/08(1)_" + dateYMDHMS + ".pdf";
					break;
				case "11":
					output11(session, model, subPath, dateYMDHMS);
					fileList[i] = fullPath + "/11(01)_" + dateYMDHMS + ".pdf";
					break;
				case "1101":
					output1101(session, model, subPath, dateYMDHMS);
					fileList[i] = fullPath + "/11(01-02)_" + dateYMDHMS + ".pdf";
					break;
				case "1402":
					output1402(session, model, subPath, dateYMDHMS);
					fileList[i] = fullPath + "/14(02)_" + dateYMDHMS + ".pdf";
					break;
				case "15":
					output15(session, model, subPath, dateYMDHMS);
					fileList[i] = fullPath + "/15_" + dateYMDHMS + ".pdf";
					break;
				case "6a":
					output6a(session, model, subPath, dateYMDHMS);
					fileList[i] = fullPath + "/r1_no6_yosiki_" + dateYMDHMS + ".pdf";
					break;
				case "6a_d":
					output6a_d(session, model, subPath, dateYMDHMS);
					fileList[i] = fullPath + "/6a_d_" + dateYMDHMS + ".pdf";
					break;
				case "21_a_d":
					output21_a_d(session, model, subPath, dateYMDHMS);
					fileList[i] = fullPath + "/21-a_d_" + dateYMDHMS + ".pdf";
					break;
				case "r1_no6_yosiki_beppyo9":
					outputr1_no6_yosiki_beppyo9(session, model, subPath, dateYMDHMS);
					fileList[i] = fullPath + "/r1_no6_yosiki_beppyo9_" + dateYMDHMS + ".pdf";
					break;
				case "20_d":
					output20_d(session, model, subPath, dateYMDHMS);
					fileList[i] = fullPath + "/20_" + dateYMDHMS + ".pdf";
					break;
				default:
					throw new Exception();
			}
		}

		String newfile = fullPath + "/" + dateYMDHMS + ".pdf";
		pdfService.pdfCopy(fileList, newfile);

		return "redirect:/outputpdf/" + subPath + "/" + dateYMDHMS + ".pdf";
	}
}