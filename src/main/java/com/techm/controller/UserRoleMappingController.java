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
import org.springframework.web.servlet.ModelAndView;

import com.techm.bean.UserRoleMap;
import com.techm.dao.UserRoleMappingDao;
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
	 
	 @RequestMapping(value="/searchRoles", method=RequestMethod.GET)
	  public ModelAndView getRoles(HttpServletRequest request)
	  {			 
		  ModelAndView mav = new ModelAndView("UserRole");
		  String userId=request.getParameter("userId");
		  String crmId=request.getParameter("crmId");
		  List<UserRoleMap> userRolesList=userRoledao.getRoles(userId,crmId);
		  mav.addObject("userRolesList",userRolesList);
		  mav.addObject("userId",userId);
		  mav.addObject("crmId",crmId);
		  return mav;
		 
	  }
	 
	 @RequestMapping(value="/addRoles", method=RequestMethod.POST)
		public ModelAndView addUserRoles(HttpServletRequest request)
		{
		 ModelAndView mav = new ModelAndView("UserRole");
		 String msg1="Role(s) assigned successfully";
		 String msg2="Role(s) already assigned";
		 String userId=request.getParameter("userId");
		 String crmId=request.getParameter("crmId");
		 System.out.println("LoginId: "+userId);
		 String roles[]=request.getParameterValues("role");
		 int flag=0;
		 List <UserRole>userRoleList=userRoledao.getRoles(userId,crmId,"c");
			
		 for(String role:roles)
		 {
			 int roleId=Integer.parseInt(role);
			 for(UserRole userRole1:userRoleList)
				{
					if(userRole1.getRoleId()==roleId)
					{
						flag=1;
					}
				}
			
		 }
		 if(flag==0)
		 {
			 for(String role:roles)
			 {
				 int roleId=Integer.parseInt(role);
				 userRoledao.add(userId,roleId,crmId);
			 }
		
			 List<UserRoleMap> userRolesList=userRoledao.getRoles(userId,crmId);
			 mav.addObject("userRolesList",userRolesList);
			 mav.addObject("userId",userId);
			 mav.addObject("crmId",crmId);
			 mav.addObject("message",msg1);
			 return mav;
		 }
		 else
		 {
			 mav.addObject("message",msg2);
			 return mav;
		 }
	}
	        
	 
	 @RequestMapping(value="/deleteRoles", method=RequestMethod.POST)
		public ModelAndView removeUserRoles(HttpServletRequest request)
		{
		 ModelAndView mav = new ModelAndView("UserRole");
		 String msg1="Role(s) removed successfully";
		 String userId=request.getParameter("userId");
		 String crmId=request.getParameter("crmId");
		 System.out.println("LoginId: "+userId);
		 String roles[]=request.getParameterValues("role");
	
		 for(String role:roles)
		 {
		 userRoledao.delete(userId,crmId,role);
		 }
		 List<UserRoleMap> userRolesList=userRoledao.getRoles(userId,crmId);
		 mav.addObject("userRolesList",userRolesList);
		 mav.addObject("userId",userId);
		 mav.addObject("crmId",crmId);
		 mav.addObject("message",msg1);
		 return mav;
		}
	 

	 
	 
	 
	 
	 
	 /*
	 @RequestMapping(value="/getRoles", method=RequestMethod.GET)
	  public @ResponseBody
	  String getRoles(HttpServletRequest request, HttpServletResponse res,@RequestParam("user") String user)
	  {
		  //int userId=Integer.parseInt(user);
		  List<UserRoleMap> userRolesList=userRoledao.getRoles(user);
		  Gson gson = new Gson();
		  return gson.toJson(userRolesList);
		  
	  }
	  */
	  
}
