package com.exceltopdf.core;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;

import com.exceltopdf.excel.XLSXReader;
import com.exceltopdf.pdf.PDFCreate;

public class ExcelToPDF {
    private static String convertValue(String value) {
        return StringUtils.isBlank(value) || value.equals("- 0") ? "0" : value.trim();
    }
    
    public static void main(String[] args) throws IOException, InterruptedException {
        PDFCreate pdfCreate = new PDFCreate();
        XLSXReader xlsxReader = new XLSXReader();
        
        List<Map<String, String>> list = xlsxReader.readerToMAP("Test salary.xlsx", 0, 8);

        for (Map<String, String> mapXML : list) {
            String colA = mapXML.get("A");

            StringBuilder strBuilder = new StringBuilder("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
            strBuilder.append("<root>").append("<data>");
            for (Map.Entry<String, String> entry : mapXML.entrySet()) {
                strBuilder.append(String.format("<%s>", entry.getKey()));
                strBuilder.append(convertValue(entry.getValue()));
                strBuilder.append(String.format("</%s>", entry.getKey()));
            }
            strBuilder.append("</data>").append("</root>");

            System.out.println(colA);
            System.out.println(strBuilder.toString());
            pdfCreate.createXML2toPDF(strBuilder.toString(), "test.xslt", "/Users/khanhlv/" + colA + ".pdf");
            System.out.println("Create PDF is COMPLETE");
        }
    }
}
