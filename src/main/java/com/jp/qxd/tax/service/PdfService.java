package com.jp.qxd.tax.service;

import java.beans.BeanInfo;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itextpdf.text.Document;
import com.itextpdf.text.Element;
import com.itextpdf.text.Image;
import com.itextpdf.text.Phrase;
import com.itextpdf.text.pdf.ColumnText;
import com.itextpdf.text.pdf.PdfArray;
import com.itextpdf.text.pdf.PdfContentByte;
import com.itextpdf.text.pdf.PdfCopy;
import com.itextpdf.text.pdf.PdfDictionary;
import com.itextpdf.text.pdf.PdfImportedPage;
import com.itextpdf.text.pdf.PdfName;
import com.itextpdf.text.pdf.PdfObject;
import com.itextpdf.text.pdf.PdfReader;
import com.itextpdf.text.pdf.PdfStamper;
import com.jp.qxd.tax.mapper.Pdf001Mapper;
import com.jp.qxd.tax.mapper.Pdf001_01Mapper;
import com.jp.qxd.tax.mapper.Pdf002Mapper;
import com.jp.qxd.tax.mapper.Pdf003Mapper;
import com.jp.qxd.tax.mapper.Pdf003_tsukiMapper;
import com.jp.qxd.tax.mapper.Pdf004Mapper;
import com.jp.qxd.tax.mapper.Pdf00501Mapper;
import com.jp.qxd.tax.mapper.Pdf00502Mapper;
import com.jp.qxd.tax.mapper.Pdf006Mapper;
import com.jp.qxd.tax.mapper.Pdf007Mapper;
import com.jp.qxd.tax.mapper.Pdf008Mapper;
import com.jp.qxd.tax.mapper.Pdf01102Mapper;
import com.jp.qxd.tax.mapper.Pdf011Mapper;
import com.jp.qxd.tax.mapper.Pdf01402Mapper;
import com.jp.qxd.tax.mapper.Pdf015Mapper;
import com.jp.qxd.tax.mapper.Pdf020Mapper;
import com.jp.qxd.tax.mapper.Pdf21_a_dMapper;
import com.jp.qxd.tax.mapper.Pdf6a_dMapper;
import com.jp.qxd.tax.mapper.Pdf_r1_no6_yosikiMapper;
import com.jp.qxd.tax.mapper.Pdf_r1_no6_yosiki_beppyo9Mapper;
import com.jp.qxd.tax.model.BaseModel;
import com.jp.qxd.tax.model.pdf.Position;
import com.jp.qxd.tax.model.pdf.Rpt001_a_Provider;
import com.jp.qxd.tax.model.pdf.Rpt020_1Model;
import com.jp.qxd.tax.model.pdf.RptBaseProvider;
import com.jp.qxd.tax.utils.PdfFont;
import com.jp.qxd.tax.utils.Utils;

@Service
public class PdfService {

	@Autowired
	private Pdf001Mapper mapper001;

	@Autowired
	private Pdf001_01Mapper mapper001_01;

	@Autowired
	private Pdf002Mapper mapper002;

	@Autowired
	private Pdf003Mapper mapper003;

	@Autowired
	private Pdf003_tsukiMapper mapper003_tsuki;

	@Autowired
	private Pdf004Mapper mapper004;

	@Autowired
	private Pdf00501Mapper mapper00501;

	@Autowired
	private Pdf00502Mapper mapper00502;

	@Autowired
	private Pdf006Mapper mapper006;

	@Autowired
	private Pdf007Mapper mapper007;

	@Autowired
	private Pdf008Mapper mapper008;

	@Autowired
	private Pdf011Mapper mapper011;

	@Autowired
	private Pdf01102Mapper mapper01102;

	@Autowired
	private Pdf01402Mapper mapper01402;

	@Autowired
	private Pdf015Mapper mapper015;

	@Autowired
	private Pdf6a_dMapper mapper6a_d;

	@Autowired
	private Pdf21_a_dMapper mapper21_a_d;

	@Autowired
	private Pdf_r1_no6_yosikiMapper mapper_r1_no6_yosiki;

	@Autowired
	private Pdf_r1_no6_yosiki_beppyo9Mapper mapper_r1_no6_yosiki_beppyo9;

	@Autowired
	private Pdf020Mapper mapper020;

	public List<? extends BaseModel> getPdf01Model(BaseModel model) {
		return mapper001.getModels(model);
	}

	public List<? extends BaseModel> getPdf01_01Model(BaseModel model) {
		return mapper001_01.getModels(model);
	}

	public List<? extends BaseModel> getPdf02Model(BaseModel model) {
		return mapper002.getModels(model);
	}

	public List<? extends BaseModel> getPdf03Model(BaseModel model) {
		return mapper003.getModels(model);
	}

	public List<? extends BaseModel> getPdf03_tsukiModel(BaseModel model) {
		return mapper003_tsuki.getModels(model);
	}

	public List<? extends BaseModel> getPdf04Model(BaseModel model) {
		return mapper004.getModels(model);
	}

	public List<? extends BaseModel> getPdf0501Model(BaseModel model) {
		return mapper00501.getModels(model);
	}

	public List<? extends BaseModel> getPdf0502Model(BaseModel model) {
		return mapper00502.getModels(model);
	}

	public List<? extends BaseModel> getPdf06Model(BaseModel model) {
		return mapper006.getModels(model);
	}

	public List<? extends BaseModel> getPdf07Model(BaseModel model) {
		return mapper007.getModels(model);
	}

	public List<? extends BaseModel> getPdf08Model(BaseModel model) {
		return mapper008.getModels(model);
	}

	public List<? extends BaseModel> getPdf11Model(BaseModel model) {
		return mapper011.getModels(model);
	}

	public List<? extends BaseModel> getPdf1102Model(BaseModel model) {
		return mapper01102.getModels(model);
	}

	public List<? extends BaseModel> getPdf1402Model(BaseModel model) {
		return mapper01402.getModels(model);
	}

	public List<? extends BaseModel> getPdf15Model(BaseModel model) {
		return mapper015.getModels(model);
	}

	public List<? extends BaseModel> getPdf6a_dModel(BaseModel model) {
		return mapper6a_d.getModels(model);
	}

	public List<? extends BaseModel> getPdf21_a_dModel(BaseModel model) {
		return mapper21_a_d.getModels(model);
	}

	public List<? extends BaseModel> getPdf_r1_no6_yosikiModel(BaseModel model) {
		return mapper_r1_no6_yosiki.getModels(model);
	}

	public List<? extends BaseModel> getPdf_r1_no6_yosiki_beppyo9Model(BaseModel model) {
		return mapper_r1_no6_yosiki_beppyo9.getModels(model);
	}

	public List<? extends BaseModel> getPdf20Model(BaseModel model) {
		return mapper020.getModels(model);
	}

	public void makePdfFile(String filepath, String fileName, BaseModel model, RptBaseProvider provider) throws Exception {


		PdfReader reader = new PdfReader(Utils.PROJECT_PATH + filepath);
		PdfReader.unethicalreading = true;
		File outputFile = Utils.createNewFile(fileName);
		PdfStamper stamp = new PdfStamper(reader, new FileOutputStream(outputFile));

		PdfContentByte pcb = stamp.getOverContent(1);

        PdfDictionary pdfDictionary = reader.getPageN(1);
        PdfObject pdfObject =  pdfDictionary.get(new PdfName("MediaBox"));
        PdfArray pdfArray = (PdfArray) pdfObject;

		Map<String, String> map = reflect(model);

		Object obj = provider.getClass().newInstance();
		Field[] f = provider.getClass().getDeclaredFields();
		for (Field field : f) {
			field.setAccessible(true);
			Position position = (Position) field.get(obj);
			if(map.containsKey(field.getName())) {

				String pdfText = map.get(field.getName());
				if(pdfText.isEmpty()) {
					continue;
				}
				int[] pdfOutputData = null;
				if(RptBaseProvider.TEXT.equals(position.getType())) {
					Phrase phrase = new Phrase(pdfText, PdfFont.MSMINCHO);
					if(position.getSize() == 7) {
						phrase = new Phrase(pdfText, PdfFont.MSGOTHIC_7);
					}
					if(position.getSize() == 8) {
						phrase = new Phrase(pdfText, PdfFont.MSGOTHIC_8);
					}
					if(position.getSize() == 9) {
						phrase = new Phrase(pdfText, PdfFont.MSGOTHIC_9);
					}
					if(position.getSize() == 10) {
						phrase = new Phrase(pdfText, PdfFont.MSGOTHIC_10);
					}
			        ColumnText.showTextAligned(pcb, Element.ALIGN_LEFT, phrase, position.getX(), position.getY(), 0);

				}else if(RptBaseProvider.TEXTAREA.equals(position.getType())) {
					Phrase phrase = new Phrase(pdfText, PdfFont.MSMINCHO);
					if(position.getSize() == 8) {
						phrase = new Phrase(pdfText, PdfFont.MSGOTHIC_8);
					}
					if(position.getSize() == 9) {
						phrase = new Phrase(pdfText, PdfFont.MSGOTHIC_9);
					}
					if(position.getSize() == 10) {
						phrase = new Phrase(pdfText, PdfFont.MSGOTHIC_10);
					}
					ColumnText cttitle = new ColumnText(pcb);
					cttitle.setSimpleColumn(phrase, position.getX(), position.getY(), position.getEx(), position.getEy(),
							9, Element.ALIGN_LEFT);
					cttitle.go();

				}else if(RptBaseProvider.NUMBER.equals(position.getType())) {
					pdfOutputData(pdfText, position, pcb);
				}else if(RptBaseProvider.TEL.equals(position.getType()) && pdfText.length() > 9) {
					String[] data = {pdfText.substring(0,2), pdfText.substring(2,6), pdfText.substring(6,10)};
					int x = position.getX();
					for(String outputData : data) {
						pdfOutputData = provider.getPdfOutputData(outputData, x, position.getY(),
							position.getSize(), position.getIndex(), position.getSpacing());
						pdfOutput(outputData, pdfOutputData, position, pcb);
						x = pdfOutputData[pdfOutputData.length - 1] + 40;
					}
				}else if(RptBaseProvider.DATE.equals(position.getType())) {
					pdfText = pdfText.replace("-", "");
					String[] data = {pdfText.substring(0,4), pdfText.substring(4,6), pdfText.substring(6,8)};
					int x = position.getX();
					int year = Integer.parseInt(data[0]) - 2018;
					if(year <= 0) {
						data[0] = "令1";
					}else {
						data[0] = "令" + (year + 1);
					}
					int index = 0;
					for(String outputData : data) {
						if(index == 0) {
							pdfOutputData = provider.getPdfOutputData(outputData, x, position.getY(),
									position.getSize(), position.getIndex(), 9);
							Position position1 = new Position(position.getX(),position.getY(),position.getType(),9,
									position.getSpacing(),position.getIndex(),position.getInterceptPosition());
							pdfOutput(outputData, pdfOutputData, position1, pcb);
						}else {
							pdfOutputData = provider.getPdfOutputData(outputData, x, position.getY(),
									position.getSize(), position.getIndex(), position.getSpacing());
							pdfOutput(outputData, pdfOutputData, position, pcb);
						}
						x = pdfOutputData[pdfOutputData.length - 1] + position.getInterceptPosition();
						index++;
					}
				}else if(RptBaseProvider.MAINDATE.equals(position.getType())) {
					String[] data = {pdfText.substring(0,4), pdfText.substring(4,6), pdfText.substring(6,8)};
					int x = position.getX();
					int year = Integer.parseInt(data[0]) - 2018;
					if(year <= 1) {
						data[0] = "01";
					}else if(year< 10){
						data[0] = "0" + year;
					}else {
						data[0] = "" + year;
					}
					for(String outputData : data) {
						pdfOutputData = provider.getPdfOutputData(outputData, x, position.getY(),
								position.getSize(), position.getIndex(), position.getSpacing());
						pdfOutput(outputData, pdfOutputData, position, pcb);
						x = pdfOutputData[pdfOutputData.length - 1] + position.getInterceptPosition();
					}
				} else if(RptBaseProvider.STRINGDATE.equals(position.getType())) {
					pdfText = pdfText.replace("-", "");
					String[] data = {pdfText.substring(0,4), pdfText.substring(4,6), pdfText.substring(6,8)};
					int x = position.getX();
					for(String outputData : data) {
						pdfOutputData = provider.getPdfOutputData(outputData, x, position.getY(),
								position.getSize(), position.getIndex(), position.getSpacing());
						pdfOutput(outputData, pdfOutputData, position, pcb);
						x = pdfOutputData[pdfOutputData.length - 1] + position.getInterceptPosition();
					}
				}else if(RptBaseProvider.PREFECTURES.equals(position.getType())) {
			        Image image = Image.getInstance(Utils.PROJECT_PATH + "/static/blank.png");
			        int width = position.getEx() - position.getX();
			        int height = position.getY() - position.getEy();
			        int x = position.getX();
			        if(pdfText.equals(RptBaseProvider.TYPE)) {
			        	width = width - position.getIndex();
			        	pdfText = "";
			        }
			        image.scaleAbsolute(width,height);
				    image.setAbsolutePosition(x, position.getY() - position.getSpacing());
			        pcb.addImage(image);
					Phrase phrase = new Phrase(pdfText, PdfFont.MSMINCHO);
					if(position.getSize() == 6) {
						phrase = new Phrase(pdfText, PdfFont.MSGOTHIC_6);
					}
					if(position.getSize() == 7) {
						phrase = new Phrase(pdfText, PdfFont.MSGOTHIC_7);
					}
					if(position.getSize() == 8) {
						phrase = new Phrase(pdfText, PdfFont.MSGOTHIC_8);
					}
					if(position.getSize() == 9) {
						phrase = new Phrase(pdfText, PdfFont.MSGOTHIC_9);
					}
					if(position.getSize() == 10) {
						phrase = new Phrase(pdfText, PdfFont.MSGOTHIC_10);
					}
					if(position.getSize() == 12) {
						phrase = new Phrase(pdfText, PdfFont.MSGOTHIC_12);
					}

					if(pdfText.length() < 5) {
						int length = 5 - pdfText.length();
						x = position.getX() + length * position.getIndex();
					}
		        	ColumnText.showTextAligned(pcb, Element.ALIGN_LEFT, phrase, x, position.getY(), 0);
				}
			}
		}

		stamp.close();
		reader.close();
	}

    public static Map<String, String> reflect(Object e) throws Exception{
    	Map<String, String> map = new HashMap<String, String>();
        Field[] fields = e.getClass().getDeclaredFields();
        for(Field field : fields){
        	field.setAccessible(true);
        	if(field.get(e) == null) {
        		continue;
        	}
        	map.put(field.getName(), field.get(e).toString());
        }
        fields = e.getClass().getSuperclass().getDeclaredFields();
        for(Field field : fields){
        	field.setAccessible(true);
        	if(field.get(e) == null) {
        		continue;
        	}
        	map.put(field.getName(), field.get(e).toString());
        }
        return map;
    }

	public void pdfOutputData(String pdfText, Position position, PdfContentByte pcb) throws Exception {
		Rpt001_a_Provider provider = new Rpt001_a_Provider();
		int[] pdfOutputData = null;
		if(position.getEx() > 0 && position.getInterceptPosition() != 0) {
			pdfOutputData = provider.getPdfOutputData(pdfText, position.getX(), position.getY(), position.getEx(), position.getEy(),
					position.getSize(), position.getIndex(),position.getInterceptPosition(), position.getSpacing());
		}else if(position.getEx() > 0) {
			pdfOutputData = provider.getPdfOutputData(pdfText, position.getX(), position.getY(), position.getEx(), position.getEy(),
					position.getSize(), position.getIndex(),position.getInterceptPosition(), position.getSpacing());
		}else {
				pdfOutputData = provider.getPdfOutputData(pdfText, position.getX(), position.getY(),
						position.getSize(), position.getIndex(), position.getSpacing());
		}
		pdfOutput(pdfText, pdfOutputData, position, pcb);
	}

	public void pdfOutput(String pdfText, int[] pdfOutputData, Position position, PdfContentByte pcb) throws Exception {
		for (int i = 0; i < pdfOutputData.length; i++) {
			if(pdfOutputData[i] == 0) {
				continue;
			}
			Phrase phrase = new Phrase(pdfText.substring(i, i + 1), PdfFont.MSMINCHO);
			if(position.getSize() == 8) {
				phrase = new Phrase(pdfText.substring(i, i + 1), PdfFont.MSGOTHIC_8);
			}else if(position.getSize() == 9) {
				phrase = new Phrase(pdfText.substring(i, i + 1), PdfFont.MSGOTHIC_9);
			}else if(position.getSize() == 10) {
				phrase = new Phrase(pdfText.substring(i, i + 1), PdfFont.MSGOTHIC_10);
			}else if(position.getSize() == 7) {
				phrase = new Phrase(pdfText.substring(i, i + 1), PdfFont.MSGOTHIC_7);
			}else if(position.getSize() == 12) {
				phrase = new Phrase(pdfText.substring(i, i + 1), PdfFont.MSGOTHIC_12);
			}
			if(position.getInterceptPosition() != 0 && i >= (position.getInterceptPosition() - position.getIndex()) && position.getEx() > 0) {
				ColumnText.showTextAligned(pcb, Element.ALIGN_LEFT, phrase, pdfOutputData[i], position.getEy(), 0);
			} else {
				ColumnText.showTextAligned(pcb, Element.ALIGN_LEFT, phrase, pdfOutputData[i], position.getY(), 0);
			}
		}
	}

	public Rpt020_1Model copy(Object source, Rpt020_1Model to) throws Exception {
        // 获取属性
        BeanInfo sourceBean = Introspector.getBeanInfo(source.getClass(),java.lang.Object.class);
        PropertyDescriptor[] sourceProperty = sourceBean.getPropertyDescriptors();

        BeanInfo destBean = Introspector.getBeanInfo(to.getClass(),java.lang.Object.class);
        PropertyDescriptor[] destProperty = destBean.getPropertyDescriptors();

        try {
            for (int i = 0; i < sourceProperty.length; i++) {

                for (int j = 0; j < destProperty.length; j++) {

                    if (sourceProperty[i].getName().equals(destProperty[j].getName())) {
                        // 调用source的getter方法和dest的setter方法
                        destProperty[j].getWriteMethod().invoke(to,sourceProperty[i].getReadMethod().invoke(source));
                        break;
                    }
                }
            }
        } catch (Exception e) {
            throw new Exception("属性复制失败:" + e.getMessage());
        }
        return to;
	}

	public void pdfCopy(String[] fileList, String newfile) throws IOException {

		Document document = null;
		FileOutputStream fio = null;
		PdfCopy copy = null;
        PdfReader mainReader = null;
		try {
			mainReader = new PdfReader(fileList[0]);
	        document = new Document(mainReader.getPageSize(1));

			fio = new FileOutputStream(newfile);

			copy = new PdfCopy(document, fio);
			document.open();
			for (int i = 0; i < fileList.length; i++) {
				PdfReader reader = null;
				try {
					reader = new PdfReader(fileList[i]);

					int n = reader.getNumberOfPages();
					for (int j = 1; j <= n; j++) {
						document.newPage();
						PdfImportedPage page = copy.getImportedPage(reader, j);
						copy.addPage(page);
					}
				} catch(IOException e) {
					continue;
				} finally {
					if (reader != null) {
						reader.close();
					}
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if (mainReader != null) {
				mainReader.close();
			}
			if (copy != null) {
				copy.close();
			}
			if (fio != null) {
				fio.close();
			}
			if (document != null) {
				document.close();
			}
		}

		for (int i = 0; i < fileList.length; i++) {
			File file = new File(fileList[i]);
			file.delete();
		}
	}

	public void makeFolder(String FolderPath) throws Exception {
		File dir = new File(FolderPath);

        if (!dir.exists()) {
        	dir.mkdirs();
        }
	}
}
