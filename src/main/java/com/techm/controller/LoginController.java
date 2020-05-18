package com.techm.controller;

import java.util.List;
import java.util.stream.Stream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import com.techm.bean.MappingRole;
import com.techm.dao.LoginDao;
 
import com.techm.dao.MappingDao;
import com.techm.entity.UserDetails;

@Controller
public class LoginController {
	
	@Autowired
	LoginDao  loginDao;
	@Autowired
	MappingDao mappingDao;

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String showLogin(HttpServletRequest request, HttpServletResponse response) {
		// ModelAndView mav = new ModelAndView("/view/login");
		// mav.addObject("login", new Login());
		
	
		
	 
		
		return "login";
	}
	
	@RequestMapping(value = "/loginfail", method = RequestMethod.GET)
	public String loginFail(HttpServletRequest request, HttpServletResponse response) {
	 
		request.setAttribute("errormsg", "Invalid  Login");
		return "login";
	}
	 

	@RequestMapping(value = "/loginProcess", method = RequestMethod.POST)
	public RedirectView loginProcess(HttpServletRequest request, HttpServletResponse response) {
		String uname = request.getParameter("uname");
		String password = request.getParameter("psw");
		String status="C";
		
	/*	List<MappingRole>  role =mappingDao.getMappingById("Bid Manager");
		
		for (MappingRole mappingRole : role) {
			Stream<MappingRole> stream = Stream.of(mappingRole);
			stream.forEach(System.out::println);
		}
		
		
		
		System.out.println("++++"+role);*/

	/*	String pass = request.getParameter("psw");
		String name = "admin";
		String password = "1234";*/
		 HttpSession session=request.getSession();  
	       
		
		List<UserDetails> userDetails=loginDao.getLoginDetails();
		for(UserDetails ud:userDetails) {
		if (uname.equalsIgnoreCase(ud.getLoginId())&& password.equalsIgnoreCase(ud.getPasswod())&& status.equalsIgnoreCase(ud.getRecordStatus())) {
			 session.setAttribute("name",uname);
			return new RedirectView("/viewRole");
		}
		}
		System.out.println(uname);
		
		

		return new RedirectView("/loginfail");
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String loginOut(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session=request.getSession();  
        session.invalidate(); 
		//request.setAttribute("errormsg", "Invalid  Login");
		return "login";
	}
	

}
