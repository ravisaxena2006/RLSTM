package com.techm.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.techm.dao.UserRoleMappingDao;
import com.techm.entity.RoleDetails;
import com.techm.entity.UserDetails;


@Controller
public class UserRoleMappingController {
	
	@Autowired
	UserRoleMappingDao userRoledao;
	
	 @ModelAttribute
	    public void setModelList(Model model, HttpServletRequest request, HttpServletResponse res ){
	    		    	    	
	        List<UserDetails> users = userRoledao.getUsers();
	        model.addAttribute("usersList", users) ;
	        
	        List<RoleDetails> roles = userRoledao.getRoles();
	        model.addAttribute("rolesList", roles) ;
	 }
	 
	 @RequestMapping("/userRole")
		public String getuserRoleMappingPage()
		{
			//ModelAndView mav = new ModelAndView("UserRole");
			return "UserRole";
		}
	        

}
