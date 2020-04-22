package com.techm.controller;



import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Stream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.techm.bean.MappingRole;
import com.techm.bean.ProjectCostsList;
import com.techm.dao.MappingDao;
import com.techm.dao.ProjectCostsDao;
import com.techm.dao.ProjectCostsDao2;
import com.techm.entity.CostCategory;
import com.techm.entity.CostItem;
import com.techm.entity.CostType;
import com.techm.entity.ProjectCosts;
import com.techm.entity.Tower;

@Controller
@RequestMapping("/")
public class ProjectCostsController {
	
	//private static final String UPLOAD_FOLDER ="E:/uploadedfile/";
	//private static final String UPLOAD_FOLDER ="src/main/static/resources/fileStorage/";

	public static String uploadDirectory = System.getProperty("user.dir")+"/uploads"; 
	
	@Autowired
	ProjectCostsDao projectCostsDao;
	@Autowired
	ProjectCostsDao2 projectCostsDao2;
	
	@Autowired
	MappingDao mappingDao;
	
	// View project cost form in RLS Tool
	@RequestMapping("/ProjectCosts")
	public ModelAndView getProjectCosts(HttpServletRequest request, HttpServletResponse res ) {
		ModelAndView mav = new ModelAndView("ProjectCosts3");
		
		HttpSession session=request.getSession(true);
		String loginId=(String) session.getAttribute("name");
		String dl_id=request.getParameter("dsld");	
		String timestamp=getTimestampNumber();
		String creationDate=getCurrentDateTime(); 
		String createdBy= (String) session.getAttribute("name");
		String project_duration=request.getParameter("durayear");
		//List<ProjectCosts> uniqeList= new ArrayList<ProjectCosts>();	
	     List<ProjectCosts> projectCostsviewTimp = projectCostsDao2.findByprojecTimptList(dl_id);
		
		  Set<ProjectCosts> s = new LinkedHashSet<ProjectCosts>(projectCostsviewTimp);
		  for(ProjectCosts pc:s) { System.out.println(pc.getTime_stamp());
		  System.out.println(pc.getDl_id()); System.out.println(pc.getDaysYear1()); }
		  
		 //Role access
		 List<MappingRole>  role =mappingDao.getMappingById(loginId);
			
			for (MappingRole mappingRole : role) {
				Stream<MappingRole> stream = Stream.of(mappingRole);
				stream.forEach(System.out::println);
				System.out.println(mappingRole.getRole());
			}
			
		session.setAttribute("Bid_ID",dl_id);
		session.setAttribute("duryr", project_duration);
       
		mav.addObject("timestamp_key", timestamp);
		mav.addObject("creationDate",creationDate);
	    mav.addObject("createdBy",createdBy);
		mav.addObject("dl_id_key", dl_id);
		mav.addObject("project_duration", project_duration);
		mav.addObject("projectCostsviewTimp", projectCostsviewTimp);
		mav.addObject("roleMapping", role);
		return mav;

	}
	
	@RequestMapping(value="/ProjectCostsDetails")
	public ModelAndView addProjectCostsDetails( @ModelAttribute("projectCostList")  ProjectCostsList projectCostList,HttpServletRequest request, HttpServletResponse res, MultipartFile file) throws IOException
	{
		System.out.println("Inside addProjectCostsDetails method ");
		
		ModelAndView mav = new ModelAndView("ProjectCosts3");
		
		String project_duration=request.getParameter("project_duration");
		
		String timestamp=getTimestampNumber();
		String dlId=request.getParameter("dlidkey");
		String creationDate=getCurrentDateTime(); 
		
		HttpSession session=request.getSession(true);
		String createdBy= (String) session.getAttribute("name");
		session.setAttribute("Bid_ID",dlId);
		session.setAttribute("duryr", project_duration);
		
		
		
		// file upload

		try {
			List<ProjectCosts> projectCosts = projectCostList.getProjectCost();

			// read and write the file to the selected location-
			byte[] bytes = file.getBytes();
			Path path = Paths.get(uploadDirectory , file.getOriginalFilename());
			
			Files.write(path, bytes);
			System.out.println(path);
			for (ProjectCosts pc : projectCosts) {
				pc.setFilepath(uploadDirectory);
			}

			projectCostsDao.add(projectCosts);
		} catch (IOException e) {
			e.printStackTrace();
			mav.addObject("message", "Error in Uploading File");
			return new ModelAndView("error");

		}

		
				
		List<ProjectCosts> projectCostsviewTimp = projectCostsDao2.findByprojecTimptList(dlId);
		mav.addObject("projectCostsviewTimp", projectCostsviewTimp);
		mav.addObject("timestamp_key", timestamp);
		mav.addObject("dl_id_key", dlId);
		mav.addObject("project_duration", project_duration);
		mav.addObject("creationDate",creationDate);
	    mav.addObject("createdBy",createdBy);
		return mav;
	
	}
	
	
	@RequestMapping("/ProjectCostsView")
	public ModelAndView getProjectCostsView(HttpServletRequest request, HttpServletResponse res,MultipartFile file ) throws IOException {
		ModelAndView mav = new ModelAndView("test");
		
		String dl_id=request.getParameter("dsld");	
		String timestmp=request.getParameter("timestampId");
		String dlId=request.getParameter("dsld");
		String creationDate=getCurrentDateTime(); 
		
		
		List<ProjectCosts> projectCostsview = projectCostsDao2.findByprojectCostId(dlId,timestmp);
		
		List<ProjectCosts> projectCostsviewTimp = projectCostsDao2.findByprojecTimptList(dl_id);
		
		
		String project_duration2=request.getParameter("durayear");
		String project_duration=request.getParameter("project_duration");
		
		HttpSession session=request.getSession(true);
		String createdBy= (String) session.getAttribute("name");
		session.setAttribute("Bid_ID",dlId);
		session.setAttribute("duryr", project_duration2);
		
		Integer count=1;
		if(count!=0) {
			count=projectCostsview.size();
		
		}
		if(projectCostsview == null) {
			throw new RuntimeException("not found"+dl_id);
		}
		else {
			
			
			for(ProjectCosts pc:projectCostsview) {
				
				System.out.println(pc.getTowerId());
				System.out.println(pc.getDescription());	
				System.out.println(pc.getDaysYear1());
							
			}
			
		}
		

		 
		String timestamp=getTimestampNumber();
		
		
		mav.addObject("timestamp_key", timestamp);
		mav.addObject("creationDate",creationDate);
		mav.addObject("createdBy",createdBy);
		mav.addObject("projectCostsview", projectCostsview);
		mav.addObject("count", count);
		mav.addObject("projectCostsviewTimp", projectCostsviewTimp);
		mav.addObject("project_duration", project_duration);
		mav.addObject("project_duration2", project_duration2);
		return mav;

	}
	
	@ModelAttribute
    public void setModelList(Model model, HttpServletRequest request, HttpServletResponse res){
			
    		String dsId=request.getParameter("dsld");
    		HttpSession session=request.getSession(true);
    		int bidId=0;
    		if(dsId==null)
    		{
    			bidId=Integer.parseInt((String)session.getAttribute("Bid_ID"));
    		}else
    		{
    			bidId=Integer.parseInt(dsId);
    		}
			
			List<Tower> towerList = projectCostsDao.getTowerList(bidId);
	        model.addAttribute("towerList", towerList) ;
	        
	        List<CostCategory> costCategoryList = projectCostsDao.getCostCategoryList();
	        model.addAttribute("costCategoryList", costCategoryList) ;
	        
	        List<CostItem> CostItemList = projectCostsDao.getCostItemList();
	        model.addAttribute("CostItemList", CostItemList) ;
	        	        
	        List<CostType> CostTypeList = projectCostsDao.getCostTypeList();
	        model.addAttribute("CostTypeList", CostTypeList) ;
	}
		
	// Find the Timestamp number
	public String getTimestampNumber(){
        String timeStamp = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(Calendar.getInstance().getTime());
        String trackingNumber  = timeStamp;
        return trackingNumber;
 }

	 public String getCurrentDateTime(){
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");  
			LocalDateTime now = LocalDateTime.now();  
			String dateTime= dtf.format(now); 
			return dateTime;
	  }
	 
	 
} 