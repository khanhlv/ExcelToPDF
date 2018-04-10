package com.exceltopdf.excel;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections4.map.HashedMap;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.hssf.util.CellReference;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class XLSXReader {
    private static final Logger logger = LoggerFactory.getLogger(XLSXReader.class);

    /**
     * Reader file excel to XML
     * 
     * @param fileExcel
     * @return XML
     */
    public List<Map<String, String>> readerToXML(String fileExcel) {
        ArrayList<Map<String, String>> listXML = new ArrayList<Map<String, String>>();
        
        Workbook workbook = null;
        try {
            workbook = WorkbookFactory.create(new File(fileExcel));
            // Getting the Sheet at index zero
            Sheet sheet = workbook.getSheetAt(0);

            DataFormatter dataFormatter = new DataFormatter();

            int rowSkip = 8;
            
            for (int i = rowSkip; i < sheet.getPhysicalNumberOfRows(); i++) {
                Map<String, String> rowMap = new HashedMap<String, String>();

                StringBuilder strBuilder = new StringBuilder("<?xml version=\"1.0\" encoding=\"UTF-8\"?>");
                strBuilder.append("<root>").append("<data>");

                Row row = sheet.getRow(i);
                for (int j = 0; j < row.getPhysicalNumberOfCells(); j++) {
                    Cell cell = row.getCell(j);
                    String colName = CellReference.convertNumToColString(j);
                    String cellValue = dataFormatter.formatCellValue(cell);
                    strBuilder.append("<" + colName + ">").append(convertValue(cellValue)).append("</" + colName + ">");
                    rowMap.put(colName, cellValue);
                }
                strBuilder.append("</data>").append("</root>");

                rowMap.put("XML_OUTPUT", strBuilder.toString());

                listXML.add(rowMap);
            }
        } catch (Exception e) {
            logger.error("XLSX Exception", e);
        } finally {
            if (workbook != null) {
                try {
                    workbook.close();
                } catch (IOException e) { }
            }
        }
        System.out.println("Convert EXCEL to XML is COMPLETE");
        return listXML;
    }

    private String convertValue(String value) {
        return StringUtils.isBlank(value) || value.equals("- 0") ? "0" : value.trim();
    }

    public static void main(String[] args) throws Exception {
        new XLSXReader().readerToXML("Test salary.xlsx");
    }
}
