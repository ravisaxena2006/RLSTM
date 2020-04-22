package com.techm.controller;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

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

import com.techm.bean.BoughtOutsList;
import com.techm.dao.BoughtOutsDao;
import com.techm.entity.Amortize;
import com.techm.entity.BoughtOuts;
import com.techm.entity.DealSpecs;
import com.techm.entity.QuoteCurrency;
import com.techm.entity.QuoteExists;
import com.techm.entity.Tower;

@Controller
public class BoughtOutsController {

	@Autowired
	BoughtOutsDao boughtOutsDao;

	
	
	  @RequestMapping("/BoughtOuts") public ModelAndView
	  getBoughtOutsForm(HttpServletRequest request, HttpServletResponse res) {
	  ModelAndView mav = new ModelAndView("BoughtOuts2");
	  try {
	  String dl_id = request.getParameter("dsld");
	  String timestamp = getTimestampNumber(); 
	  String creationDate=getCurrentDateTime(); 
	  
	  String project_duration=request.getParameter("durayear");
	  List<BoughtOuts> uniqeList= new ArrayList<BoughtOuts>();		
		List<BoughtOuts> boughtoutviewTimp = boughtOutsDao.findByboughTimptList(dl_id);
		  Set<BoughtOuts> s = new LinkedHashSet<BoughtOuts>(boughtoutviewTimp); 
		 for(BoughtOuts bo:s) {			
			System.out.println(bo.getTime_stamp());
			System.out.println(bo.getDl_id());
		} 
		 HttpSession session=request.getSession(true);
		 String createdBy= (String) session.getAttribute("name");
		session.setAttribute("Bid_ID",dl_id);
		session.setAttribute("duryr", project_duration);
	   mav.addObject("boughtoutviewTimp", boughtoutviewTimp);
	   mav.addObject("timestamp_key",timestamp); 
	   mav.addObject("dl_id_key", dl_id);
	   mav.addObject("creationDate",creationDate);
	   mav.addObject("createdBy",createdBy);
	   mav.addObject("project_duration", project_duration);
	  }catch (Exception e) {
          e.printStackTrace();
          mav.addObject("message", "Error in");
          return new ModelAndView("error");
          
      }
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
			
			
			List<Tower> towerList = boughtOutsDao.getTowerList(bidId);
	        model.addAttribute("towerList", towerList) ;
	        

			List<Amortize> amortizeList = boughtOutsDao.getAmortize();
			model.addAttribute("amortizeList", amortizeList);

			List<QuoteCurrency> quoteCurrencyList = boughtOutsDao.getQuoteCurrency();
			model.addAttribute("quoteCurrencyList", quoteCurrencyList);

			List<QuoteExists> quoteExistsList = boughtOutsDao.getQuoteExists();
			model.addAttribute("quoteExistsList", quoteExistsList);

		}
	 
	  @RequestMapping(value = "/BoughtOutsDetails")
		public ModelAndView addBoughtOutsDetails(@ModelAttribute("boughtOutsList") BoughtOutsList boughtOutsList,HttpServletRequest request, HttpServletResponse res) {
			ModelAndView mav = new ModelAndView("BoughtOuts2");
			System.out.println("Inside addBoughtOutsDetails method");
			String dlId=request.getParameter("dlidkey");
			String timestamp=getTimestampNumber();
			String project_duration=request.getParameter("durayear");
			String creationDate=getCurrentDateTime(); 
			HttpSession session=request.getSession(true);
			String createdBy= (String) session.getAttribute("name");
			session.setAttribute("Bid_ID",dlId);
			session.setAttribute("duryr", project_duration);
			List<BoughtOuts> boughtOuts = boughtOutsList.getBoughtOuts();
			for (BoughtOuts bo : boughtOutsList.getBoughtOuts()) {
				
				System.out.println(bo.getDescription());
				System.out.println(bo.getLicenceYear1());
				System.out.println(bo.getLicenceTotal());

	          }
			boughtOutsDao.add(boughtOuts);
			List<BoughtOuts> boughtoutviewTimp = boughtOutsDao.findByboughTimptList(dlId);
			
			mav.addObject("boughtoutviewTimp", boughtoutviewTimp);
			mav.addObject("timestamp_key", timestamp);
			mav.addObject("dl_id_key", dlId);
			mav.addObject("creationDate",creationDate);
			mav.addObject("createdBy",createdBy);
			mav.addObject("project_duration", project_duration);
			return mav;

		}

	@RequestMapping("/BoughtOutsView")
	public ModelAndView getProjectCostsView(HttpServletRequest request, HttpServletResponse res ) {
		ModelAndView mav = new ModelAndView("BoughtOut");
		System.out.println("Inside View Bought Count");
		String dl_id=request.getParameter("dsld");
		String timestamp=getTimestampNumber();
		String timestmp=request.getParameter("timestampId");
		String dlId=request.getParameter("dsld");
		String creationDate=getCurrentDateTime(); 
		
		List<BoughtOuts> boughtoutview = boughtOutsDao.findByboughtOutsId(dlId,timestmp);
		
		List<BoughtOuts> boughtoutviewTimp = boughtOutsDao.findByboughTimptList(dl_id);
		String project_duration2=request.getParameter("durayear");
		String project_duration=request.getParameter("project_duration");
		
		HttpSession session=request.getSession(true);
		String createdBy= (String) session.getAttribute("name");
		session.setAttribute("Bid_ID",dl_id);
		session.setAttribute("duryr", project_duration2);
		Integer count=1;
		if(count!=0) {
			count=boughtoutview.size();
		
		}
		if(boughtoutview == null) {
			throw new RuntimeException("not found"+dl_id);
		}
		else {
			
			for(BoughtOuts bo:boughtoutview) {
				
				System.out.println(bo.getTowerId());
				System.out.println(bo.getDescription());
				
			}
			
		}		
		mav.addObject("creationDate",creationDate);
		mav.addObject("createdBy",createdBy);
		mav.addObject("timestamp_key", timestamp);		
		mav.addObject("boughtoutview", boughtoutview);
		mav.addObject("count", count);
		mav.addObject("boughtoutviewTimp", boughtoutviewTimp);
		mav.addObject("project_duration", project_duration);
		mav.addObject("project_duration2", project_duration2);
		return mav;

	}


	

	public String getTimestampNumber() {

		String timeStamp = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(Calendar.getInstance().getTime());
		String trackingNumber = timeStamp;
		return trackingNumber;

	}
	  public String getCurrentDateTime(){
			DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy HH:mm:ss");  
			LocalDateTime now = LocalDateTime.now();  
			String dateTime= dtf.format(now); 
			return dateTime;
	  }
	
}
