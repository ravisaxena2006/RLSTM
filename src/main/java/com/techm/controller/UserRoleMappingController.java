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
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.techm.bean.MappingRole;
import com.techm.bean.RLSList;
import com.techm.bean.UserRoleMap;
import com.techm.dao.MappingDao;
import com.techm.dao.UserRoleMappingDao;
import com.techm.entity.City;
import com.techm.entity.RoleDetails;
import com.techm.entity.UserDetails;
import com.techm.entity.UserRole;


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
	 
	 @RequestMapping("/saveRoles")
		public ModelAndView saveUserRoles(@ModelAttribute("userRole")UserRole userRole,HttpServletRequest request)
		{
		 ModelAndView mav = new ModelAndView("UserRoleSuccess");
		 String msg="Roles assigned successfully";
		 int flag=0;
		 String userId=request.getParameter("userId");
		 userRoledao.update(userId);
		 System.out.println("LoginId: "+userId);
		 String roles[]=request.getParameterValues("roleId");
		 for(String role:roles)
		 {
			 System.out.println("Role: "+role);
			 userRoledao.add(userId,role);
			 flag=1;
		 }
		 if(flag==1)
		 {
		 mav.addObject("success",msg);
		 }
		 return mav;
		}
	        
	 @RequestMapping(value="/getRoles", method=RequestMethod.GET)
	  public @ResponseBody
	  String getRoles(HttpServletRequest request, HttpServletResponse res,@RequestParam("user") String user)
	  {
		  //int userId=Integer.parseInt(user);
		  List<UserRoleMap> userRolesList=userRoledao.getRoles(user);
		  Gson gson = new Gson();
		  return gson.toJson(userRolesList);
		  
	  }
	  
}
