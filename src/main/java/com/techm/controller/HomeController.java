package com.techm.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
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
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.techm.bean.MappingRole;
import com.techm.dao.DealSpecsAcessDao;
import com.techm.dao.DealSpecsDao;
import com.techm.dao.MappingDao;
import com.techm.dao.RLSDao2;
import com.techm.entity.CurrencyQuote;
import com.techm.entity.DealSpecs;
import com.techm.entity.PricingModel;
import com.techm.entity.ProjectIdStatus;

import com.techm.entity.Tower;
import com.techm.entity.Vertical;
import com.techm.repository.DealSpecsAcessRepo;


@Controller
@RequestMapping("/")
public class HomeController {

	@Autowired
	private DealSpecsDao dao;
	
	@Autowired
	MappingDao mappingDao;
	@Autowired
	DealSpecsAcessDao accessdao;
	
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
		dao.add(dealobj);
		System.out.println(dealobj.getBID_DETAILS_ID());
		}catch (Exception e) {
	           e.printStackTrace();
	           mav.addObject("message", "Error");
	           return new ModelAndView("error");
	           
	       }
		return mav;

	}

	@RequestMapping(value ="/view", method = RequestMethod.GET,headers = "Accept=application/json")
	public ModelAndView bidview(@ModelAttribute("deal") DealSpecs dealobj ,HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("bidmanager");
		HttpSession session=request.getSession(true);
		String roleName=null;
		String loginId=(String) session.getAttribute("name");
       List<MappingRole>  role =mappingDao.getMappingById(loginId);
		
		for (MappingRole mappingRole : role) {
			Stream<MappingRole> stream = Stream.of(mappingRole);
			stream.forEach(System.out::println);
			System.out.println(mappingRole.getRole());
			roleName=mappingRole.getRole();
		}
		session.setAttribute("roleName", roleName);
		List<DealSpecs> list = dao.findAll();
		mav.addObject("list", list);
		mav.addObject("roleMapping", role);
		//mav.addObject("roleName", roleName);
		return mav;
		
		
	}
	@RequestMapping("/bidview/{bID_DETAILS_ID}")
	public ModelAndView get(@PathVariable("bID_DETAILS_ID")  Long bID_DETAILS_ID, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("dealspecsview");
		DealSpecs dealobj = dao.findByBidId(bID_DETAILS_ID);
		String creationDate=getCurrentDateTime();
		Integer project_duration=   dealobj.getPROJECT_DURATION();
		Integer optional_duration = dealobj.getOptional_duration();
		Integer total_duration = project_duration+optional_duration ;
		System.out.println(total_duration);
		Set<Integer> towerselected = dealobj.getTowers();
		System.out.println(towerselected);
		request.setAttribute("towerselected", towerselected);
		Integer towerCount = towerselected.size();
		Set<Integer> verticalselected = dealobj.getVerticals();
		System.out.println(verticalselected);
		request.setAttribute("verticalselected", verticalselected);
		Integer verticalCount = verticalselected.size();
		HttpSession session=request.getSession();
		 session.setAttribute("Bid_ID",bID_DETAILS_ID);
		 session.setAttribute("duryr", total_duration);
		 mav.addObject("verticalCount", verticalCount) ;
		 System.out.println("vertical count:" +verticalCount);
		 mav.addObject("towerCount", towerCount) ;
		 System.out.println("tower count:" +towerCount);
		mav.addObject("deal", dealobj);
		mav.addObject("duryr", total_duration);
		mav.addObject("creationDate",creationDate);
		mav.addObject("bID_DETAILS_ID",bID_DETAILS_ID);
		return mav;
	}	
	 
	
	@RequestMapping(value ="/access", method = RequestMethod.GET,headers = "Accept=application/json")
	public ModelAndView access(@ModelAttribute("deal") DealSpecs dealobj ,HttpServletRequest request, HttpServletResponse response) {
		ModelAndView mav = new ModelAndView("accessManager");
		HttpSession session=request.getSession(true);
		String roleName=null;
		String loginId=(String) session.getAttribute("name");
       List<MappingRole>  role =mappingDao.getMappingById(loginId);
		
		for (MappingRole mappingRole : role) {
			Stream<MappingRole> stream = Stream.of(mappingRole);
			stream.forEach(System.out::println);
			System.out.println(mappingRole.getRole());
			roleName=mappingRole.getRole();
		}
		session.setAttribute("roleName", roleName);
		String ds_id1 = request.getParameter("dsld");
		String review = null;		
		review = request.getParameter("review");
	
	
	if(review != null && review.equalsIgnoreCase("y") ) {
		accessdao.updateReviewOn(ds_id1);
		
		}
	if(review != null && review.equalsIgnoreCase("n") ) {
		accessdao.updateReviewOff(ds_id1);
	}
	
	String freeze = null;
	freeze = request.getParameter("freeze");


	
	if(freeze != null && freeze.equalsIgnoreCase("y")) {
	accessdao.updateFreezeOn(ds_id1);
	}
	if(freeze != null && freeze.equalsIgnoreCase("n")) {
		accessdao.updateFreezeOff(ds_id1);
	}
	
	session.setAttribute("review",review );
		session.setAttribute("freeze", freeze);
		System.out.println(review);	
		List<DealSpecs> list = dao.findAll();
		mav.addObject("list", list);
		mav.addObject("roleMapping", role);
		//mav.addObject("roleName", roleName);
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
       

        List<Vertical> verticals = dao.getVertical();
        model.addAttribute("verticals", verticals) ;
    
    }
	
	public String getCurrentDateTime(){
		DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");  
		LocalDateTime now = LocalDateTime.now();  
		String dateTime= dtf.format(now); 
		return dateTime;
  }
}
