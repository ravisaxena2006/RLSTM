package com.techm.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


import com.techm.dao.DealSpecsDao;

import com.techm.entity.CurrencyQuote;
import com.techm.entity.DealSpecs;
import com.techm.entity.PricingModel;
import com.techm.entity.ProjectIdStatus;

import com.techm.entity.Tower;


@Controller
@RequestMapping("/")
public class HomeController {

	@Autowired
	private DealSpecsDao dao;
	
	
	@RequestMapping("/")
	public String home(HttpSession session)
	{
		String sessionId = session.getId();  
	    System.out.println("[session-id]: " + sessionId); 
		return "login";
	}

	@RequestMapping(value = "/dealspecs", method = RequestMethod.GET, headers = "Accept=application/json")
	public ModelAndView adddealspecs() {
      
		ModelAndView mav = new ModelAndView("dealspecs");
		 try {
		mav.addObject("deal", new DealSpecs());
       }catch (Exception e) {
           e.printStackTrace();
           mav.addObject("message", "Error");
           return new ModelAndView("error");
           
       }
		return mav;
	}

	@RequestMapping("/save")
	public ModelAndView save(@ModelAttribute("deal") DealSpecs dealobj) {
		ModelAndView mav = new ModelAndView("save");
		try {
		System.out.println(dealobj.getCONTRACT_SIGNED_STATUS());
		System.out.println(dealobj.getBID_SUBMISSION_DATE());
		dao.add(dealobj);
		}catch (Exception e) {
	           e.printStackTrace();
	           mav.addObject("message", "Error");
	           return new ModelAndView("error");
	           
	       }
		return mav;

	}

	@RequestMapping(value ="/view", method = RequestMethod.GET,headers = "Accept=application/json")
	public ModelAndView bidview(@ModelAttribute("deal") DealSpecs dealobj) {
		ModelAndView mav = new ModelAndView("bidmanager");
		List<DealSpecs> list = dao.findAll();
		mav.addObject("list", list);
		return mav;
		
		
	}
	@RequestMapping("/bidview/{bID_DETAILS_ID}")
	public ModelAndView get(@PathVariable("bID_DETAILS_ID")  Long bID_DETAILS_ID, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("dealspecsview");
		DealSpecs dealobj = dao.findByBidId(bID_DETAILS_ID);
		String creationDate=getCurrentDateTime();
		Integer project_duration=   dealobj.getPROJECT_DURATION();
		System.out.println(project_duration);
		HttpSession session=request.getSession();
		 session.setAttribute("Bid_ID",bID_DETAILS_ID);
		 session.setAttribute("duryr", project_duration);
		mav.addObject("deal", dealobj);
		mav.addObject("creationDate",creationDate);
		return mav;
	}
	
	@ModelAttribute
    public void setModelList(Model model){
	 
		 List<PricingModel> modelList = dao.getModelList();
        model.addAttribute("modelList", modelList) ;
        
        List<CurrencyQuote> currencyList = dao.getCurrencyList();
        model.addAttribute("currencyList", currencyList) ;
        
        List<ProjectIdStatus> projectIdList = dao.getProjectIdList();
        model.addAttribute("projectIdList", projectIdList) ; 
        
        List <Tower> towerList = dao.getTower();
        model.addAttribute("towerList", towerList);
        
    }
	
	public String getCurrentDateTime(){
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");  
		LocalDateTime now = LocalDateTime.now();  
		String dateTime= dtf.format(now); 
		return dateTime;
  }
}
