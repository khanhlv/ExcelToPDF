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
     * Reader file excel to MAP
     * 
     * @param fileExcel
     * @return MAP
     */
    public List<Map<String, String>> readerToMAP(String fileExcel, int indexSheet, int rowSkip) {
        ArrayList<Map<String, String>> listXML = new ArrayList<Map<String, String>>();

        Workbook workbook = null;
        try {
            workbook = WorkbookFactory.create(new File(fileExcel));
            // Getting the Sheet at index zero
            Sheet sheet = workbook.getSheetAt(indexSheet);

            DataFormatter dataFormatter = new DataFormatter();

            for (int i = rowSkip; i < sheet.getPhysicalNumberOfRows(); i++) {
                Map<String, String> rowMap = new HashedMap<String, String>();

                Row row = sheet.getRow(i);
                for (int j = 0; j < row.getPhysicalNumberOfCells(); j++) {
                    Cell cell = row.getCell(j);
                    String colName = CellReference.convertNumToColString(j);
                    String cellValue = dataFormatter.formatCellValue(cell);
                    rowMap.put(colName, cellValue);
                }

                listXML.add(rowMap);
            }
        } catch (Exception e) {
            logger.error("XLSX Exception", e);
        } finally {
            if (workbook != null) {
                try {
                    workbook.close();
                } catch (IOException e) {
                }
            }
        }

        return listXML;
    }
}
