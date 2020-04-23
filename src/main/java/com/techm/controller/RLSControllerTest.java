package com.techm.controller;


import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import com.google.gson.Gson;
import com.techm.bean.RLSList;
//import com.techm.dao.DealSpecsDao;
import com.techm.dao.RLSDao;
import com.techm.entity.Band;
import com.techm.entity.Billable;
import com.techm.entity.City;
import com.techm.entity.Location;
import com.techm.entity.Premises;
import com.techm.entity.ProjectPhase;
import com.techm.entity.RLS;
import com.techm.entity.ResourceType;
import com.techm.entity.SkillType;
import com.techm.entity.Tower;
import com.techm.entity.TowerMapping;
import com.techm.entity.Vertical;
import com.techm.entity.WorkPlace;
import com.techm.repository.BandRepository;


@Controller
public class RLSControllerTest {
	
	@Autowired
	RLSDao rlsDao;
	
		
	@RequestMapping("/RLS")
	public ModelAndView getRLSForm(HttpServletRequest request, HttpServletResponse res)
	{
		ModelAndView mav1 = new ModelAndView("RLS2");
		ModelAndView mav2 = new ModelAndView("RLSTest1");
		String dsId=request.getParameter("dsld");
		int dsId1=Integer.parseInt(request.getParameter("dsld"));
		String project_duration=request.getParameter("durayear");
		//String location=request.getParameter("location");
		String trackingNumber=getTimestampNumber();
		String creationDate=getCurrentDateTime();
		
		List<RLS> rlsListLatest= rlsDao.getRLSDetailsLatest(dsId1);
		int count=rlsListLatest.size();
		List<RLS> rlsListSorted= rlsDao.getRLSDetailsSorted(dsId1);
		HttpSession session=request.getSession(false);
		String createdBy= (String) session.getAttribute("name");
		session.setAttribute("Bid_ID",dsId);
		session.setAttribute("duryr", project_duration);
		if(rlsListLatest.isEmpty())
		{
		mav1.addObject("trackingNumber", trackingNumber);
		mav1.addObject("dl_id_key", dsId);
		mav1.addObject("creationDate",creationDate);
		mav1.addObject("createdBy",createdBy);
		mav1.addObject("project_duration", project_duration);
		return mav1;
		}
		else
		{
		mav2.addObject("trackingNumber", trackingNumber);
		mav2.addObject("dl_id_key", dsId);
		mav2.addObject("creationDate",creationDate);
		mav2.addObject("createdBy",createdBy);
		mav2.addObject("rlsDetails", rlsListLatest);
		mav2.addObject("rlsDetailsSorted", rlsListSorted);
		mav2.addObject("rlsDetailsSize",count);
		mav2.addObject("project_duration", project_duration);
		return mav2;
		}
	}
	
    @ModelAttribute
    public void setModelList(Model model, HttpServletRequest request, HttpServletResponse res ){
    	
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
		
    	
        List<ProjectPhase> projectPhases = rlsDao.getProjectPhase();
        model.addAttribute("projectPhases", projectPhases) ;
        
        List<Vertical> verticals = rlsDao.getVerticals(bidId);
        model.addAttribute("verticals", verticals) ;
        
        List<Tower> towers = rlsDao.getTowers(bidId);
        model.addAttribute("towers", towers) ;
    	
        List<Billable> billable = rlsDao.getBillable();
        model.addAttribute("billable", billable) ;
        
        List<WorkPlace> workPlaces = rlsDao.getWorkPlace();
        model.addAttribute("workPlaces", workPlaces) ;
        
        List<Location> locations = rlsDao.getLocation();
        model.addAttribute("locations", locations) ;
        
        List<City> cities = rlsDao.getCities();
        model.addAttribute("cities", cities) ;
        
        List<SkillType> skillTypes = rlsDao.getSkillType();
        model.addAttribute("skillTypes", skillTypes) ;
        
        List<ResourceType> resourceTypes = rlsDao.getResourceType();
        model.addAttribute("resourceTypes", resourceTypes) ;
        
        List<Band> bands = rlsDao.getBand();
        model.addAttribute("bands", bands) ;
        
        List<Premises> premises = rlsDao.getPremises();
        model.addAttribute("premises", premises) ;
        
    }
	
	  @RequestMapping(value="RLSDetails", method=RequestMethod.POST)
	  public ModelAndView addRLSDetails(@ModelAttribute("rlsList") RLSList rlsList, HttpServletRequest request, HttpServletResponse res) {
	  System.out.println("Inside addRLSDetails method ");
		String dsId=request.getParameter("dsld");
	  List<RLS> rls = rlsList.getRLSDetails(); 
	  for(RLS pc:rlsList.getRLSDetails()){ 
		  System.out.println(pc.getTrackingNumber());
		  System.out.println(pc.getDsId());
	 	  } 
	  	rlsDao.add(rls); 
	  	 ModelAndView  mav=getRLSForm(request, res);
	  	 return  mav;
	 	  
	  }
	

	  @RequestMapping(value="getRLSDetails", method=RequestMethod.GET)
	  public ModelAndView getRLSDetails(HttpServletRequest request, HttpServletResponse res)
				{
		  	ModelAndView mav = new ModelAndView("RLSTest");
			int dsId=Integer.parseInt(request.getParameter("dsld"));
			List<RLS> rlsList= rlsDao.getRLSDetails(dsId);
			for(RLS pc:rlsList){ 
				  System.out.println(pc.getTrackingNumber());
				  System.out.println(pc.getDsId());
			 	  } 
			mav.addObject("rlsDetails", rlsList);
			return mav;
			}
	  
	  @RequestMapping(value="getRLSDetails1", method=RequestMethod.GET)
	  public ModelAndView getRLSDetails1(HttpServletRequest request, HttpServletResponse res)
				{
		  	ModelAndView mav = new ModelAndView("RLSTest1");
		  	String trackingNumber=getTimestampNumber();
			String creationDate=getCurrentDateTime();
			String createdBy="Daya";
		  	int dsId1=Integer.parseInt(request.getParameter("dsld"));
			String trackingNo=request.getParameter("trackingNo");
			System.out.println(request.getParameter("dsld"));
			String project_duration=request.getParameter("durayear");
			List<RLS> rlsList= rlsDao.getRLSDetails1(trackingNo);
			List<RLS> rlsList1=rlsDao.getRLSDetailsSorted(dsId1);
			int count=rlsList.size();
			for(RLS pc:rlsList){ 
				  System.out.println(pc.getTrackingNumber());
				  System.out.println(pc.getDsId());
			 	  } 
			mav.addObject("rlsDetails", rlsList);
		    mav.addObject("rlsDetailsSorted", rlsList1);
		    mav.addObject("trackingNumber", trackingNumber);
			mav.addObject("dl_id_key", dsId1);
			mav.addObject("creationDate",creationDate);
			mav.addObject("createdBy",createdBy);
			mav.addObject("rlsDetailsSize",count);
			mav.addObject("project_duration", project_duration);
			return mav;
			}

	
	  @RequestMapping(value="/getCities", method=RequestMethod.GET)
	  public @ResponseBody
	  String getCities(HttpServletRequest request, HttpServletResponse res,@RequestParam("countryId") String countryId)
	  {
		  int locationId=Integer.parseInt(countryId);
		  List<City> cities = rlsDao.getCities(locationId);
		  Gson gson = new Gson();
		  return gson.toJson(cities);
		  
	  }
	  
	 
	  	String getTimestampNumber(){
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
