package com.exceltopdf.core;

import java.io.IOException;

import com.exceltopdf.pdf.PDFCreate;

public class ExcelToPDF {
    public static void main(String[] args) throws IOException, InterruptedException {
        PDFCreate pdfCreate = new PDFCreate();
        pdfCreate.createXMLtoPDF("test.xml", "test.xslt", "/Users/khanhlv/sample.pdf");
    }
}
