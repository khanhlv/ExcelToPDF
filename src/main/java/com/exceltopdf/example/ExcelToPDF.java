package com.exceltopdf.example;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;

import com.exceltopdf.excel.XLSXReader;
import com.exceltopdf.pdf.PDFCreate;

public class ExcelToPDF {
    private static String convertValue(String value) {
        return StringUtils.isBlank(value) || value.equals("- 0") ? "0" : value.trim().replaceAll("\\(|\\)|,", "");
    }

    private void execute(String fileInput, String fileFolder, String columnFileName, String sheetIndex,
            String skipRow) {
        PDFCreate pdfCreate = new PDFCreate();
        XLSXReader xlsxReader = new XLSXReader();
        SimpleDateFormat simpleDateFormatMonth = new SimpleDateFormat("MM");
        SimpleDateFormat simpleDateFormatYeah = new SimpleDateFormat("YYYY");
        SimpleDateFormat simpleDateFormatVN = new SimpleDateFormat("MM/YYYY");
        SimpleDateFormat simpleDateFormatUS = new SimpleDateFormat("MMM YYYY");
        Date date = new Date();

        List<Map<String, String>> list = xlsxReader.readerToMAP(fileInput, Integer.parseInt(sheetIndex),
                Integer.parseInt(skipRow));

        for (Map<String, String> mapXML : list) {
            String file = mapXML.get(columnFileName);

            StringBuilder strBuilder = new StringBuilder("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
            strBuilder.append("<root>").append("<data>");
            for (Map.Entry<String, String> entry : mapXML.entrySet()) {
                strBuilder.append(String.format("<%s>", entry.getKey()));
                strBuilder.append("<![CDATA[" + convertValue(entry.getValue()) + "]]>");
                strBuilder.append(String.format("</%s>", entry.getKey()));
            }

            strBuilder.append(String.format("<%s>", "DATE_MONTH"));
            strBuilder.append("<![CDATA[" + simpleDateFormatMonth.format(date) + "]]>");
            strBuilder.append(String.format("</%s>", "DATE_MONTH"));

            strBuilder.append(String.format("<%s>", "DATE_YEAH"));
            strBuilder.append("<![CDATA[" + simpleDateFormatYeah.format(date) + "]]>");
            strBuilder.append(String.format("</%s>", "DATE_YEAH"));

            strBuilder.append(String.format("<%s>", "DATE_MONTH_YEAH_VN"));
            strBuilder.append("<![CDATA[" + simpleDateFormatVN.format(date) + "]]>");
            strBuilder.append(String.format("</%s>", "DATE_MONTH_YEAH_VN"));

            strBuilder.append(String.format("<%s>", "DATE_MONTH_YEAH_US"));
            strBuilder.append("<![CDATA[" + simpleDateFormatUS.format(date) + "]]>");
            strBuilder.append(String.format("</%s>", "DATE_MONTH_YEAH_US"));

            strBuilder.append("</data>").append("</root>");

            System.out.println(file);
            // System.out.println(strBuilder.toString());
            pdfCreate.createXML2toPDF(strBuilder.toString(), "test.xslt", fileFolder + file + ".pdf");
            System.out.println("Create PDF is COMPLETE");
        }
    }

    public static void main(String[] args) throws IOException, InterruptedException {
        String fileInput = args[0];
        String fileFolder = args[1];
        String columnFileName = args[2] == null ? "C" : args[2];
        String sheetIndex = args[3] == null ? "0" : args[3];
        String skipRow = args[4] == null ? "4" : args[4];

        new ExcelToPDF().execute(fileInput, fileFolder, columnFileName, sheetIndex, skipRow);

    }
}
