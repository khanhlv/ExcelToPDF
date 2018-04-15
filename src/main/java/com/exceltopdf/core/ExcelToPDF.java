package com.exceltopdf.core;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;

import com.exceltopdf.excel.XLSXReader;
import com.exceltopdf.pdf.PDFCreate;

public class ExcelToPDF {
    private static String convertValue(String value) {
        return StringUtils.isBlank(value) || value.equals("- 0") ? "0" : value.trim().replaceAll("\\(|\\)|,", "");
    }

    public static void main(String[] args) throws IOException, InterruptedException {
        PDFCreate pdfCreate = new PDFCreate();
        XLSXReader xlsxReader = new XLSXReader();

        List<Map<String, String>> list = xlsxReader.readerToMAP("/Users/khanhlv/Downloads/Test 2.xlsx", 0, 4);

        for (Map<String, String> mapXML : list) {
            String file = mapXML.get("C");

            StringBuilder strBuilder = new StringBuilder("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
            strBuilder.append("<root>").append("<data>");
            for (Map.Entry<String, String> entry : mapXML.entrySet()) {
                strBuilder.append(String.format("<%s>", entry.getKey()));
                strBuilder.append("<![CDATA[" + convertValue(entry.getValue()) + "]]>");
                strBuilder.append(String.format("</%s>", entry.getKey()));
            }
            strBuilder.append("</data>").append("</root>");

            System.out.println(file);
            System.out.println(strBuilder.toString());
            pdfCreate.createXML2toPDF(strBuilder.toString(), "test.xslt", "/Users/khanhlv/" + file + ".pdf");
            System.out.println("Create PDF is COMPLETE");
        }
    }
}
