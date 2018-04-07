package com.exceltopdf.core;

import java.io.IOException;
import java.util.Date;
import java.util.List;

import com.exceltopdf.excel.XLSXReader;
import com.exceltopdf.pdf.PDFCreate;

public class ExcelToPDF {
    public static void main(String[] args) throws IOException, InterruptedException {
        PDFCreate pdfCreate = new PDFCreate();
        XLSXReader xlsxReader = new XLSXReader();
        
        List<String> list = xlsxReader.readerToXML("Test salary.xlsx");
        for (String xml : list) {
            System.out.println(xml);
            pdfCreate.createXML2toPDF(xml, "test.xslt", "/Users/khanhlv/" + new Date().getTime()+ ".pdf");
            System.out.println("Done");
        }
    }
}
