package com.exceltopdf.pdf;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;

import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.itextpdf.text.Document;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.tool.xml.XMLWorkerHelper;

public class PDFCreate {
    private static final Logger logger = LoggerFactory.getLogger(PDFCreate.class);

    /**
     * Create file PDF
     * 
     * @param input is String path HTML
     * @param output is String pathh PDF
     */
    public void createHTMLtoPDF(String input, String output) {
        Document document = new Document();
        try {

            PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream(output));

            document.open();

            XMLWorkerHelper.getInstance().parseXHtml(writer, document, new FileInputStream(input));

        } catch (Exception e) {
            logger.error("Create pdf exception", e);
        } finally {
            document.close();
        }
    }

    /**
     * Create file PDF
     * 
     * @param input is InputStream path HTML
     * @param output is String pathh PDF
     */
    public void createHTMLtoPDF(InputStream input, String output) {
        Document document = new Document();
        try {

            PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream(output));

            document.open();

            XMLWorkerHelper.getInstance().parseXHtml(writer, document, input);

        } catch (Exception e) {
            logger.error("Create pdf exception", e);
        } finally {
            document.close();
        }
    }

    /**
     * Create XML to PDF
     * 
     * @param xmlInput
     * @param xsltInput
     * @param output
     */
    public void createXMLtoPDF(String xmlInput, String xsltInput, String output) {
        try {

            Source xslt = new StreamSource(new File(xsltInput));
            Source text = new StreamSource(new File(xmlInput));

            TransformerFactory factory = TransformerFactory.newInstance();
            Transformer transformer = factory.newTransformer(xslt);

            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            Writer writer = new OutputStreamWriter(outputStream, "UTF-8");

            transformer.transform(text, new StreamResult(writer));

            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(outputStream.toByteArray());

            createHTMLtoPDF(byteArrayInputStream, output);

        } catch (Exception e) {
            logger.error("Transformer XSLT Exception", e);
        }
    }
}
