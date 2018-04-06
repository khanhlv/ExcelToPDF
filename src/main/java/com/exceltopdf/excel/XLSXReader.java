package com.exceltopdf.excel;

import java.io.File;

import org.apache.poi.hssf.util.CellReference;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.DataFormatter;
import org.apache.poi.ss.usermodel.DateUtil;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.exceltopdf.pdf.PDFCreate;

public class XLSXReader {
    private static final Logger logger = LoggerFactory.getLogger(XLSXReader.class);

    private static void printCellValue(Cell cell) {
        switch (cell.getCellTypeEnum()) {
        case BOOLEAN:
            System.out.print(cell.getBooleanCellValue());
            break;
        case STRING:
            System.out.print(cell.getRichStringCellValue().getString());
            break;
        case NUMERIC:
            if (DateUtil.isCellDateFormatted(cell)) {
                System.out.print(cell.getDateCellValue());
            } else {
                System.out.print(cell.getNumericCellValue());
            }
            break;
        case FORMULA:
            System.out.print(cell.getCellFormula());
            break;
        case BLANK:
            System.out.print("");
            break;
        default:
            System.out.print("");
        }

        System.out.print("\t");
    }

    public void reader() throws Exception {
        Workbook workbook = WorkbookFactory.create(new File("/Users/khanhlv/Downloads/Test salary.xlsx"));

        // Retrieving the number of sheets in the Workbook
        System.out.println("Workbook has " + workbook.getNumberOfSheets() + " Sheets : ");

        // 2. Or you can use a for-each loop
        System.out.println("Retrieving Sheets using for-each loop");
        for (Sheet sheet : workbook) {
            System.out.println("=> " + sheet.getSheetName());
        }

        // Getting the Sheet at index zero
        Sheet sheet = workbook.getSheetAt(0);

        // Create a DataFormatter to format and get each cell's value as String
        DataFormatter dataFormatter = new DataFormatter();

        System.out.println("\n\nIterating over Rows and Columns using for-each loop\n");
        int rowSkip = 8;
        for (int i = rowSkip; i < sheet.getPhysicalNumberOfRows(); i++) {
            Row row = sheet.getRow(i);
            System.out.println(row.getCell(CellReference.convertColStringToIndex("D")));
            for (Cell cell : row) {
                String cellValue = dataFormatter.formatCellValue(cell);
                System.out.print(cellValue + "\t");
            }
            System.out.println();
        }

        // Closing the workbook
        workbook.close();
    }
    public static void main(String[] args) throws Exception {
        String abc = "#{H4}";
        System.out.println(abc.replaceAll("\\#\\{H4\\}", "abc"));
    }
}
