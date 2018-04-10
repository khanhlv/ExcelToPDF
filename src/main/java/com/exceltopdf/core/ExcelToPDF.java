package com.exceltopdf.core;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import com.exceltopdf.excel.XLSXReader;
import com.exceltopdf.pdf.PDFCreate;

public class ExcelToPDF {
    public static void main(String[] args) throws IOException, InterruptedException {
        PDFCreate pdfCreate = new PDFCreate();
        XLSXReader xlsxReader = new XLSXReader();
        
        List<Map<String, String>> list = xlsxReader.readerToXML("Test salary.xlsx");
        for (Map<String, String> mapXML : list) {
            String colA = mapXML.get("A");
            String xml = mapXML.get("XML_OUTPUT");
            
            System.out.println(colA);
            System.out.println(xml);
            pdfCreate.createXML2toPDF(xml, "test.xslt", "/Users/khanhlv/" + colA + ".pdf");
            System.out.println("Create PDF is COMPLETE");
        }
    }
}
