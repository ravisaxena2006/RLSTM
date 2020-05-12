package com.techm.report;

import org.springframework.web.bind.annotation.RestController;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.List;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.InputStreamResource;
import org.springframework.http.HttpHeaders;
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
	    public ResponseEntity<InputStreamResource> excelCustomersReport() throws IOException {
	 
		   
		   List<DealSpaceBin> dealspaceReport= reportDao.getdealspace();
	    
	    ByteArrayInputStream in = ExcelGenerator.dealSpaceToExcel(dealspaceReport);
	     //return toByteArray(in);
	    
	    HttpHeaders headers = new HttpHeaders();
	        headers.add("Content-Disposition", "attachment; filename=dealSpace.xlsx");
	    
	     return ResponseEntity
	                  .ok()
	                  .headers(headers)
	                  .body(new InputStreamResource(in));
	    }

}
