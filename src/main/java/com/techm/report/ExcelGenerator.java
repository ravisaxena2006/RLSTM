package com.techm.report;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.List;
 
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.CreationHelper;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.IndexedColors;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
public class ExcelGenerator {
	
	/*public static ByteArrayInputStream customersToExcel(List<Customer> customers) throws IOException {
	    String[] COLUMNs = {"Id", "Name", "Address", "Age"};
	    try(
	        Workbook workbook = new XSSFWorkbook();
	        ByteArrayOutputStream out = new ByteArrayOutputStream();
	    ){
	      CreationHelper createHelper = workbook.getCreationHelper();
	   
	      Sheet sheet = workbook.createSheet("Customers");
	   
	      Font headerFont = workbook.createFont();
	      headerFont.setBold(true);
	      headerFont.setColor(IndexedColors.BLUE.getIndex());
	   
	      CellStyle headerCellStyle = workbook.createCellStyle();
	      headerCellStyle.setFont(headerFont);
	   
	      // Row for Header
	      Row headerRow = sheet.createRow(0);
	   
	      // Header
	      for (int col = 0; col < COLUMNs.length; col++) {
	        Cell cell = headerRow.createCell(col);
	        cell.setCellValue(COLUMNs[col]);
	        cell.setCellStyle(headerCellStyle);
	      }
	   
	      // CellStyle for Age
	      CellStyle ageCellStyle = workbook.createCellStyle();
	      ageCellStyle.setDataFormat(createHelper.createDataFormat().getFormat("#"));
	   
	      int rowIdx = 1;
	      for (Customer customer : customers) {
	        Row row = sheet.createRow(rowIdx++);
	   
	        row.createCell(0).setCellValue(customer.getId());
	        row.createCell(1).setCellValue(customer.getName());
	        row.createCell(2).setCellValue(customer.getAddress());
	   
	        Cell ageCell = row.createCell(3);
	        ageCell.setCellValue(customer.getAge());
	        ageCell.setCellStyle(ageCellStyle);
	      }
	   
	      workbook.write(out);
	      return new ByteArrayInputStream(out.toByteArray());
	    }
	  }
*/
	
	
	
	public static ByteArrayInputStream dealSpaceToExcel(List<DealSpaceBin> dealSpaceBins) throws IOException {
	    String[] COLUMNs = {"BidManager", "salescontactname", "presalescontactname", "deliverymanager","effortestimateby", "customername", "effortapprovedby", "projectid",
	    		"projectstatus", "OpportunityDescription", "BidSubmissionDate", "intimationtobidauditteam","annualitspendofcustomer", "contractsignedstatus", "projectduration", "projectstatrtdate",
	    		"BidManager", "salescontactname", "presalescontactname", "Age","BidManager", "salescontactname", "presalescontactname", "Age",
	    		"BiddingCompetitors", "Incumbents", "maturedoutsourced", "baseline","targetprice", "anyotherbussinessintl", "OnsiteLocation", "LANGUAGE",
	    		"rebadgingstatus", "isprimesub", "locationstatus", "hoursbillingoffsource","warrantyperiod", "bankguarantee", "risktotechm", "pricingmodel","additionalcost", "discount", "anyotherinfoforpricing", "slaprobability",
	    		"deliverycontingency", "quotecurrency", "bacommission", "ANYOTHERNFOFORPRICING","Receivedfrom", "Receiveddate", "transition"};
	    try(
	        Workbook workbook = new XSSFWorkbook();
	        ByteArrayOutputStream out = new ByteArrayOutputStream();
	    ){
	      CreationHelper createHelper = workbook.getCreationHelper();
	   
	      Sheet sheet = workbook.createSheet("Customers");
	   
	      Font headerFont = workbook.createFont();
	      headerFont.setBold(true);
	      headerFont.setColor(IndexedColors.BLUE.getIndex());
	   
	      CellStyle headerCellStyle = workbook.createCellStyle();
	      headerCellStyle.setFont(headerFont);
	   
	      // Row for Header
	      Row headerRow = sheet.createRow(0);
	   
	      // Header
	      for (int col = 0; col < COLUMNs.length; col++) {
	        Cell cell = headerRow.createCell(col);
	        cell.setCellValue(COLUMNs[col]);
	        cell.setCellStyle(headerCellStyle);
	      }
	   
	      // CellStyle for Age
	      CellStyle ageCellStyle = workbook.createCellStyle();
	      ageCellStyle.setDataFormat(createHelper.createDataFormat().getFormat("#"));
	   
	      int rowIdx = 1;
	      for (DealSpaceBin dealSpaceBin : dealSpaceBins) {
	        Row row = sheet.createRow(rowIdx++);
	   
	        row.createCell(0).setCellValue(dealSpaceBin.getBidManager());
	        row.createCell(1).setCellValue(dealSpaceBin.getSalescontactname());
	        row.createCell(2).setCellValue(dealSpaceBin.getPresalescontactname());
	        
	        row.createCell(3).setCellValue(dealSpaceBin.getDeliverymanager());
	        row.createCell(4).setCellValue(dealSpaceBin.getEffortestimateby());
	        row.createCell(5).setCellValue(dealSpaceBin.getCustomername());
	        
	        row.createCell(6).setCellValue(dealSpaceBin.getEffortapprovedby());
	        row.createCell(7).setCellValue(dealSpaceBin.getProjectid());
	        row.createCell(8).setCellValue(dealSpaceBin.getProjectstatus());
	        
	        row.createCell(9).setCellValue(dealSpaceBin.getOpportunityDescription());
	        row.createCell(10).setCellValue(dealSpaceBin.getBidSubmissionDate());
	        row.createCell(11).setCellValue(dealSpaceBin.getIntimationtobidauditteam());
	        
	        row.createCell(12).setCellValue(dealSpaceBin.getAnnualitspendofcustomer());
	        row.createCell(13).setCellValue(dealSpaceBin.getContractsignedstatus());
	        row.createCell(14).setCellValue(dealSpaceBin.getProjectduration());
	        
	        row.createCell(15).setCellValue(dealSpaceBin.getProjectstatrtdate());
	        row.createCell(16).setCellValue(dealSpaceBin.getBiddingCompetitors());
	        row.createCell(17).setCellValue(dealSpaceBin.getIncumbents());
	        
	        row.createCell(18).setCellValue(dealSpaceBin.getMaturedoutsourced());
	        row.createCell(19).setCellValue(dealSpaceBin.getBaseline());
	        row.createCell(20).setCellValue(dealSpaceBin.getTargetprice());
	        
	        row.createCell(21).setCellValue(dealSpaceBin.getAnyotherbussinessintl());
	        row.createCell(22).setCellValue(dealSpaceBin.getOnsiteLocation());
	        row.createCell(23).setCellValue(dealSpaceBin.getLANGUAGE());
	        
	        row.createCell(24).setCellValue(dealSpaceBin.getRebadgingstatus());
	        row.createCell(25).setCellValue(dealSpaceBin.getIsprimesub());
	        row.createCell(26).setCellValue(dealSpaceBin.getLocationstatus());
	        
	        row.createCell(27).setCellValue(dealSpaceBin.getHoursbillingoffsource());
	        row.createCell(28).setCellValue(dealSpaceBin.getWarrantyperiod());
	        row.createCell(29).setCellValue(dealSpaceBin.getBankguarantee());
	        
	        row.createCell(30).setCellValue(dealSpaceBin.getRisktotechm());
	        row.createCell(31).setCellValue(dealSpaceBin.getPricingmodel());
	        row.createCell(32).setCellValue(dealSpaceBin.getAdditionalcost());
	        
	        row.createCell(33).setCellValue(dealSpaceBin.getDiscount());
	        row.createCell(34).setCellValue(dealSpaceBin.getAnyotherinfoforpricing());
	        row.createCell(35).setCellValue(dealSpaceBin.getSlaprobability());
	        
	        row.createCell(36).setCellValue(dealSpaceBin.getDeliverycontingency());
	        row.createCell(37).setCellValue(dealSpaceBin.getQuotecurrency());
	        row.createCell(38).setCellValue(dealSpaceBin.getBacommission());
	        row.createCell(39).setCellValue(dealSpaceBin.getANYOTHERNFOFORPRICING());
	        row.createCell(40).setCellValue(dealSpaceBin.getReceivedfrom());
	        row.createCell(41).setCellValue(dealSpaceBin.getReceiveddate());
	        row.createCell(42).setCellValue(dealSpaceBin.getTransition());
	       
	   
	       /* Cell ageCell = row.createCell(3);
	        ageCell.setCellValue(customer.getAge());
	        ageCell.setCellStyle(ageCellStyle);*/
	      }
	   
	      workbook.write(out);
	      return new ByteArrayInputStream(out.toByteArray());
	    }
	  }

	
	public static ByteArrayInputStream projectCostToExcel(List<ProjectCostBin> projectCosts) throws IOException {
	    String[] COLUMNs = {"tower", "cost_category", "cost_item", "cost_type","description", 
	    		"days_year1", "days_year2", "days_year3","days_year4", "days_year5", "days_year6", "days_year7","days_year8", "days_year9", "days_year10"};
	    try(
	        Workbook workbook = new XSSFWorkbook();
	        ByteArrayOutputStream out = new ByteArrayOutputStream();
	    ){
	      CreationHelper createHelper = workbook.getCreationHelper();
	   
	      Sheet sheet = workbook.createSheet("projectCost");
	   
	      Font headerFont = workbook.createFont();
	      headerFont.setBold(true);
	      headerFont.setColor(IndexedColors.BLUE.getIndex());
	   
	      CellStyle headerCellStyle = workbook.createCellStyle();
	      headerCellStyle.setFont(headerFont);
	   
	      // Row for Header
	      Row headerRow = sheet.createRow(0);
	   
	      // Header
	      for (int col = 0; col < COLUMNs.length; col++) {
	        Cell cell = headerRow.createCell(col);
	        cell.setCellValue(COLUMNs[col]);
	        cell.setCellStyle(headerCellStyle);
	      }
	   
	      // CellStyle for Age
	      CellStyle ageCellStyle = workbook.createCellStyle();
	      ageCellStyle.setDataFormat(createHelper.createDataFormat().getFormat("#"));
	   
	      int rowIdx = 1;
	      for (ProjectCostBin projectCost : projectCosts) {
	        Row row = sheet.createRow(rowIdx++);
	   
	        row.createCell(0).setCellValue(projectCost.getTower());
	        row.createCell(1).setCellValue(projectCost.getCost_category());
	        row.createCell(2).setCellValue(projectCost.getCost_item());
	        
	        row.createCell(3).setCellValue(projectCost.getCost_type());
	        row.createCell(4).setCellValue(projectCost.getDescription());
	        row.createCell(5).setCellValue(projectCost.getDays_year1());
	        
	        row.createCell(6).setCellValue(projectCost.getDays_year2());
	        row.createCell(7).setCellValue(projectCost.getDays_year3());
	        row.createCell(8).setCellValue(projectCost.getDays_year4());
	        
	        row.createCell(9).setCellValue(projectCost.getDays_year5());
	        row.createCell(10).setCellValue(projectCost.getDays_year6());
	        row.createCell(11).setCellValue(projectCost.getDays_year7());
	        
	        row.createCell(12).setCellValue(projectCost.getDays_year8());
	        row.createCell(13).setCellValue(projectCost.getDays_year9());
	        row.createCell(14).setCellValue(projectCost.getDays_year10());
	        
	      
	   
	    
	      }
	   
	      workbook.write(out);
	      return new ByteArrayInputStream(out.toByteArray());
	    }
	  }
	
	
	
	public static ByteArrayInputStream rlstToExcel(List<RlsReporttBin> rlsReports) throws IOException {
	    String[] COLUMNs = {"tracking_number", "project_phase", "vertical", "tower","sub_tower", "role", "billable", "work_place", "location","skill_type", "resource_type", "band", "premises", "remarks", 
	    		"days_year1", "days_year2", "days_year3","days_year4", "days_year5", "days_year6", "days_year7","days_year8", "days_year9", "days_year10"};
	    try(
	        Workbook workbook = new XSSFWorkbook();
	        ByteArrayOutputStream out = new ByteArrayOutputStream();
	    ){
	      CreationHelper createHelper = workbook.getCreationHelper();
	   
	      Sheet sheet = workbook.createSheet("rlsReports");
	   
	      Font headerFont = workbook.createFont();
	      headerFont.setBold(true);
	      headerFont.setColor(IndexedColors.BLUE.getIndex());
	   
	      CellStyle headerCellStyle = workbook.createCellStyle();
	      headerCellStyle.setFont(headerFont);
	   
	      // Row for Header
	      Row headerRow = sheet.createRow(0);
	   
	      // Header
	      for (int col = 0; col < COLUMNs.length; col++) {
	        Cell cell = headerRow.createCell(col);
	        cell.setCellValue(COLUMNs[col]);
	        cell.setCellStyle(headerCellStyle);
	      }
	   
	      // CellStyle for Age
	      CellStyle ageCellStyle = workbook.createCellStyle();
	      ageCellStyle.setDataFormat(createHelper.createDataFormat().getFormat("#"));
	   
	      int rowIdx = 1;
	      for (RlsReporttBin rlsReport : rlsReports) {
	        Row row = sheet.createRow(rowIdx++);
	   
	        row.createCell(0).setCellValue(rlsReport.getTracking_number());
	        row.createCell(1).setCellValue(rlsReport.getProject_phase());
	        row.createCell(2).setCellValue(rlsReport.getVertical());
	        
	        row.createCell(3).setCellValue(rlsReport.getTower());
	        row.createCell(4).setCellValue(rlsReport.getSub_tower());
	        
	        row.createCell(5).setCellValue(rlsReport.getRole());
	        row.createCell(6).setCellValue(rlsReport.getBillable());
	        row.createCell(7).setCellValue(rlsReport.getWork_place());
	        
	        row.createCell(8).setCellValue(rlsReport.getLocation());
	        row.createCell(9).setCellValue(rlsReport.getSkill_type());
	        
	        row.createCell(10).setCellValue(rlsReport.getResource_type());
	        row.createCell(11).setCellValue(rlsReport.getBand());
	        
	        row.createCell(12).setCellValue(rlsReport.getPremises());
	        row.createCell(13).setCellValue(rlsReport.getRemarks());
	        
	
	        
	        row.createCell(14).setCellValue(rlsReport.getDays_year1());
	        
	        row.createCell(15).setCellValue(rlsReport.getDays_year2());
	        row.createCell(16).setCellValue(rlsReport.getDays_year3());
	        row.createCell(17).setCellValue(rlsReport.getDays_year4());
	        
	        row.createCell(18).setCellValue(rlsReport.getDays_year5());
	        row.createCell(19).setCellValue(rlsReport.getDays_year6());
	        row.createCell(20).setCellValue(rlsReport.getDays_year7());
	        
	        row.createCell(21).setCellValue(rlsReport.getDays_year8());
	        row.createCell(22).setCellValue(rlsReport.getDays_year9());
	        row.createCell(23).setCellValue(rlsReport.getDays_year10());
	        
	      
	   
	    
	      }
	   
	      workbook.write(out);
	      return new ByteArrayInputStream(out.toByteArray());
	    }
	  }
	
	
	
	
}
