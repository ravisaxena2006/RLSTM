package com.techm.report;

import org.springframework.web.bind.annotation.RestController;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpRequest;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class ExcelDownloadController {
	
	 
	  @Autowired
	  ReportDao reportDao;
	 
	 /*   @GetMapping(value = "/customers.xlsx")
	    public ResponseEntity<InputStreamResource> excelCustomersReport() throws IOException {
	        List<Customer> customers = (List<Customer>) customerRepository.findAll();
	    
	    ByteArrayInputStream in = ExcelGenerator.customersToExcel(customers);
	     //return toByteArray(in);
	    
	    HttpHeaders headers = new HttpHeaders();
	        headers.add("Content-Disposition", "attachment; filename=customers.xlsx");
	    
	     return ResponseEntity
	                  .ok()
	                  .headers(headers)
	                  .body(new InputStreamResource(in));
	    }*/
	  
	  
	  
	  
	   @GetMapping(value = "/delspaceReport")
	    public ResponseEntity<InputStreamResource> excelCustomersReport(HttpServletRequest request) throws IOException {
	 
		   String bidId=request.getParameter("bidId");
		   List<DealSpaceBin> dealspaceReport= reportDao.getdealspace(bidId);
	    
	    ByteArrayInputStream in = ExcelGenerator.dealSpaceToExcel(dealspaceReport);
	     //return toByteArray(in);
	    
	    HttpHeaders headers = new HttpHeaders();
	        headers.add("Content-Disposition", "attachment; filename=DealSpec.xlsx");
	    
	     return ResponseEntity
	                  .ok()
	                  .headers(headers)
	                  .body(new InputStreamResource(in));
	    }
	   
	   
	   
	   @GetMapping(value = "/projectCostReport")
	    public ResponseEntity<InputStreamResource> excelProjectCostReport( HttpServletRequest request) throws IOException {
	 
		   
		  String timeStamp=request.getParameter("timestampId");
		  
		  String dlId=request.getParameter("dsld");
		   
		   List<ProjectCostBin> projectCostReport= reportDao.getprojectCostById(dlId, timeStamp);
	    
	    ByteArrayInputStream in = ExcelGenerator.projectCostToExcel(projectCostReport);
	     //return toByteArray(in);
	    
	    HttpHeaders headers = new HttpHeaders();
	        headers.add("Content-Disposition", "attachment; filename=projectCost.xlsx");
	    
	     return ResponseEntity
	                  .ok()
	                  .headers(headers)
	                  .body(new InputStreamResource(in));
	    }
	   
	   
	   @GetMapping(value = "/rlsReport")
	    public ResponseEntity<InputStreamResource> excelRlsReport( HttpServletRequest request) throws IOException {
	 
		   
		  String timeStamp=request.getParameter("timestampId");
		  
		  String dlId=request.getParameter("dsld");
		   
		   List<RlsReporttBin> rlsReport= reportDao.getRlsById("316","20200515102851564");
	    
	    ByteArrayInputStream in = ExcelGenerator.rlstToExcel(rlsReport);
	     //return toByteArray(in);
	    
	    HttpHeaders headers = new HttpHeaders();
	        headers.add("Content-Disposition", "attachment; filename=rlsReport.xlsx");
	    
	     return ResponseEntity
	                  .ok()
	                  .headers(headers)
	                  .body(new InputStreamResource(in));
	    }

}
