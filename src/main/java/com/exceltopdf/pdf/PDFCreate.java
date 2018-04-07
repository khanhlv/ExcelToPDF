package com.exceltopdf.pdf;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.StandardCharsets;

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
     * Create XML to PDF with file XML and XLST
     * 
     * @param xmlFile
     * @param xsltFile
     * @param output
     */
    public void createXMLtoPDF(String xmlFile, String xsltFile, String output) {
        try {

            Source xslt = new StreamSource(new File(xsltFile));
            Source xml = new StreamSource(new File(xmlFile));

            TransformerFactory factory = TransformerFactory.newInstance();
            Transformer transformer = factory.newTransformer(xslt);

            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            Writer writer = new OutputStreamWriter(outputStream, "UTF-8");

            transformer.transform(xml, new StreamResult(writer));

            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(outputStream.toByteArray());

            createHTMLtoPDF(byteArrayInputStream, output);

        } catch (Exception e) {
            logger.error("Transformer XSLT Exception", e);
        }
    }

    /**
     * Create XML to PDF with data XML and file XLST
     * 
     * @param xmlData is data XML
     * @param xsltFile
     * @param output
     */
    public void createXML2toPDF(String xmlData, String xsltFile, String output) {
        try {

            InputStream streamXML = new ByteArrayInputStream(xmlData.getBytes(StandardCharsets.UTF_8));

            Source xslt = new StreamSource(new File(xsltFile));
            Source xml = new StreamSource(streamXML);

            TransformerFactory factory = TransformerFactory.newInstance();
            Transformer transformer = factory.newTransformer(xslt);

            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            Writer writer = new OutputStreamWriter(outputStream, "UTF-8");

            transformer.transform(xml, new StreamResult(writer));

            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(outputStream.toByteArray());

            createHTMLtoPDF(byteArrayInputStream, output);

        } catch (Exception e) {
            logger.error("Transformer XSLT Exception", e);
        }
    }
}
