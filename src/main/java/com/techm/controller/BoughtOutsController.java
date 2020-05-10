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
	
	@RequestMapping("/BoughtOuts")
	public ModelAndView getBoughtOutsForm(HttpServletRequest request, HttpServletResponse res) {
		ModelAndView mav1 = new ModelAndView("BoughtOuts2");
		ModelAndView mav = new ModelAndView("BoughtOut");
		try {
			//int dl_id = Integer.parseInt(request.getParameter("dsld"));
			String timestamp = getTimestampNumber();
			String creationDate = getCurrentDateTime();
            String project_duration = request.getParameter("durayear");
            String dl_id = request.getParameter("dsld");
			//List<BoughtOuts> uniqeList = new ArrayList<BoughtOuts>();
			List<BoughtOuts> boughtoutviewTimp = boughtOutsDao.findByboughTimptList(dl_id);
			int count = boughtoutviewTimp.size();
			
		List<BoughtOuts> boughtoutview = boughtOutsDao.findByboughtOutsId(dl_id);
			
			
			HttpSession session = request.getSession(false);
			String createdBy = (String) session.getAttribute("name");
			session.setAttribute("Bid_ID", dl_id);
			session.setAttribute("duryr", project_duration);
			
			if (boughtoutviewTimp.isEmpty()) {
				
				mav1.addObject("timestamp_key", timestamp);
				mav1.addObject("creationDate", creationDate);
				mav1.addObject("createdBy", createdBy);
				mav1.addObject("dl_id_key", dl_id);
				mav1.addObject("project_duration", project_duration);
				return mav1;

			}
			else {
			mav.addObject("timestamp_key", timestamp);
			mav.addObject("creationDate", creationDate);
			mav.addObject("createdBy", createdBy);
			mav.addObject("dl_id_key", dl_id);
			mav.addObject("project_duration", project_duration);
			mav.addObject("boughtoutviewTimp", boughtoutviewTimp);
			mav.addObject("boughtoutview", boughtoutview);
			mav.addObject("count", count);
			}
			return mav;

		
		
		} catch (Exception e) {
			e.printStackTrace();
			mav.addObject("message", "Error in");
			return new ModelAndView("error");

		}
		

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
	  public ModelAndView addBoughtOutsDetails(@ModelAttribute("boughtOutsList") BoughtOutsList boughtOutsList,
	  HttpServletRequest request,HttpServletResponse res) {
		  List<BoughtOuts> boughtOuts = boughtOutsList.getBoughtOuts(); 
		  for (BoughtOuts bo : boughtOutsList.getBoughtOuts()) {	
              System.out.println(bo.getTimeStamp());
		  }
		  boughtOutsDao.add(boughtOuts); 
		  ModelAndView mav = getBoughtOutsForm(request, res);
		  return mav;
	  		}
	 
	@RequestMapping("/BoughtOutsView")
	public ModelAndView getBoughtOutsView(HttpServletRequest request, HttpServletResponse res ) {
		ModelAndView mav = new ModelAndView("BoughtOut");
		System.out.println("Inside View Bought Count");
		//int dl_id=Integer.parseInt(request.getParameter("dsld"));
		String timestamp=getTimestampNumber();
		String timestmp=request.getParameter("timestampId");
		String project_duration=request.getParameter("durayear");
		String dl_id=request.getParameter("dsld");
		String creationDate=getCurrentDateTime(); 
		HttpSession session=request.getSession(true);
		String createdBy= (String) session.getAttribute("name");
		List<BoughtOuts> boughtoutview = boughtOutsDao.getBoughtOutDetails(timestmp);
		
		List<BoughtOuts> boughtoutviewTimp = boughtOutsDao.findByboughtOutsId(dl_id);
		int count = boughtoutview.size();
		mav.addObject("creationDate",creationDate);
		mav.addObject("createdBy",createdBy);
		mav.addObject("timestamp_key", timestamp);		
		mav.addObject("boughtoutview", boughtoutview);
		mav.addObject("count", count);
		mav.addObject("boughtoutviewTimp", boughtoutviewTimp);
		mav.addObject("project_duration", project_duration);
		mav.addObject("dl_id_key", dl_id);
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
