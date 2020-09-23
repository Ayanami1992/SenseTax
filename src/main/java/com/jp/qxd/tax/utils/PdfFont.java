package com.jp.qxd.tax.utils;

import java.io.IOException;

import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Font;
import com.itextpdf.text.pdf.BaseFont;

public class PdfFont {
	public static Font MSGOTHIC_6;

	public static Font MSGOTHIC_7;

	public static Font MSGOTHIC_8;

	public static Font MSGOTHIC_9;

	public static Font MSGOTHIC_10;

	public static Font MSGOTHIC_12;

	public static Font MSMINCHO;

	static {

		try {
			String fontPath = Utils.PROJECT_PATH + "/static/font/";



			BaseFont b_MSMINCHO = BaseFont.createFont(
					fontPath + "MSMINCHO.TTF",
					BaseFont.IDENTITY_H, BaseFont.EMBEDDED);
			MSMINCHO = new Font(b_MSMINCHO, 11);
			MSGOTHIC_12 = new Font(b_MSMINCHO, 12);
			MSGOTHIC_10 = new Font(b_MSMINCHO, 10);
			MSGOTHIC_9 = new Font(b_MSMINCHO, 9);
			MSGOTHIC_8 = new Font(b_MSMINCHO, 8);
			MSGOTHIC_7 = new Font(b_MSMINCHO, 7);
			MSGOTHIC_6 = new Font(b_MSMINCHO, 6);


		} catch (DocumentException | IOException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
	};

}
