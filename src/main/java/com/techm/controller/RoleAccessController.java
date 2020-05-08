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
import com.techm.bean.RoleAccess;
import com.techm.bean.UserRoleMap;
import com.techm.dao.MappingDao;
import com.techm.dao.RoleAccessMappingDao;
import com.techm.dao.UserRoleMappingDao;
import com.techm.entity.AccessRight;
import com.techm.entity.CostCategory;
import com.techm.entity.CostItem;
import com.techm.entity.CostType;
import com.techm.entity.DealSpecs;
import com.techm.entity.Module;
import com.techm.entity.RoleDetails;
import com.techm.entity.Tower;
import com.techm.entity.UserDetails;
import com.techm.entity.UserRoleAccess;

@Controller
@RequestMapping("/")
public class RoleAccessController {
	
	@Autowired
	UserRoleMappingDao userRoledao;
	@Autowired
	RoleAccessMappingDao roleAccessMappingDao;
	
	@Autowired
	MappingDao mappingDao;
	
	@RequestMapping("/roleaccess")
	public ModelAndView getProjectCosts(HttpServletRequest request, HttpServletResponse res ) {
		ModelAndView mav = new ModelAndView("roleaccess");
		HttpSession session=request.getSession(false);
		//String loginId=(String) session.getAttribute("name");
		
		//List<UserRoleAccess> UserRoleAccessList= roleAccessMappingDao.getUserRole();
		//mav.addObject("UserRoleAccessList", UserRoleAccessList);
		return mav;
	}

	
 	 @RequestMapping("/getGrid")
	 public ModelAndView getGrid(HttpServletRequest request, HttpServletResponse res ) {
			ModelAndView mav = new ModelAndView("roleaccess");
			//ModelAndView mav = new ModelAndView("UserRole");
			
			String roleId=request.getParameter("role");
			 List<RoleAccess>  roleAccess =mappingDao.getRoleAccessById(roleId);
			 mav.addObject("roleAccess", roleAccess);
			 System.out.println("+++++++==="+roleAccess);
			 
			return mav;
		}
	 
	 
	/*  @RequestMapping(value="/getGrid1", method=RequestMethod.GET)
	  public @ResponseBody
	  String getGrid(HttpServletRequest request, HttpServletResponse res,@RequestParam("roleId") String roleId) {
			//String roleId1=request.getParameter("roleId");
			 List<RoleAccess>  roleAccess =mappingDao.getRoleAccessById(roleId);
			 Gson gson = new Gson();
			  return gson.toJson(roleAccess);
	 }
	  */
	 
/*	 @RequestMapping(value="/getGrid", method=RequestMethod.GET)
	  public @ResponseBody
	  String getGrid(HttpServletRequest request, HttpServletResponse res,@RequestParam("roleId") String roleId)
	  {
		  //int userId=Integer.parseInt(user);
		  //List<UserRoleMap> userRolesList=userRoledao.getRoles(user);
		 System.out.println("roleId==="+roleId);
		 List<RoleAccess>  roleAccess =mappingDao.getRoleAccessById(roleId);
		  Gson gson = new Gson();
		  return gson.toJson(roleAccess);
		  
	  }
	*/
	
 	 
	/*
	 * @RequestMapping("/saveGrig") public ModelAndView
	 * save(@ModelAttribute("userRoleAccess") UserRoleAccess
	 * userRoleAccess,HttpServletRequest request, HttpServletResponse res ) {
	 * ModelAndView mav = new ModelAndView("roleaccess");
	 * 
	 * String role=request.getParameter("role"); String
	 * module=request.getParameter("module"); String
	 * accessRight=request.getParameter("accessRight"); // String
	 * accessRight[]=request.getParameterValues("accessRight"); Integer
	 * roleInt=Integer.parseInt(role); Integer moduleInt=Integer.parseInt(module);
	 * Integer accessRightInt=Integer.parseInt(accessRight); int flag=0;
	 * 
	 * try {
	 * 
	 * 
	 * 
	 * System.out.println("Role: "+role);
	 * mappingDao.addRoleAccess(accessRightInt,roleInt,moduleInt); flag=1;
	 * 
	 * 
	 * }catch (Exception e) { e.printStackTrace(); mav.addObject("message",
	 * "Error"); return new ModelAndView("error");
	 * 
	 * }
	 * 
	 * if(flag==1) { mav.addObject("success","Save SuccessFully"); } return mav;
	 * 
	 * }
	 */
	 
 	 
 	 
 	 
 	 
 	 
 	 
 	 
	 
	 
	 @RequestMapping("/saveGrig")
		public ModelAndView save(@ModelAttribute("userRoleAccess") UserRoleAccess userRoleAccess,HttpServletRequest request, HttpServletResponse res ) {
			ModelAndView mav = new ModelAndView("roleaccess");
			
			String role=request.getParameter("role");
			String module=request.getParameter("module");
			//String accessRight=request.getParameter("accessRight");
			 String accessRight[]=request.getParameterValues("accessRight");
			Integer  roleInt=Integer.parseInt(role);
			Integer  moduleInt=Integer.parseInt(module);
			//Integer  accessRightInt=Integer.parseInt(accessRight);
			int flag=0;
			
			try {
				//roleAccessMappingDao.add(userRoleAccess);
				
				for(String access:accessRight)
				 {
					 System.out.println("Role: "+role);
					 mappingDao.addRoleAccess(Integer.parseInt(access),roleInt,moduleInt);
					 flag=1;
				 }
			
				
				//mappingDao.addRoleAccess(accessRightInt, roleInt, moduleInt);
			}catch (Exception e) {
		           e.printStackTrace();
		           mav.addObject("message", "Error");
		           return new ModelAndView("error");
		           
		       }
			
			 if(flag==1)
			 {
			 mav.addObject("success","Save SuccessFully");
			 List<RoleAccess>  roleAccess =mappingDao.getRoleAccessById(role);
			 mav.addObject("roleAccess", roleAccess);
			 }
			return mav;

		}
	 
	
	@ModelAttribute
    public void setModelList(Model model, HttpServletRequest request, HttpServletResponse res){
			
		 List<UserDetails> users = userRoledao.getUsers();
	        model.addAttribute("usersList", users) ;
	        
	        List<RoleDetails> roles = userRoledao.getRoles();
	        model.addAttribute("rolesList", roles) ;
	        
	        List<Module> moduleList = roleAccessMappingDao.getModules();
	        model.addAttribute("moduleList", moduleList) ;
	        
	        List<AccessRight> accessRightList = roleAccessMappingDao.getAccessRight();
	        model.addAttribute("accessRightList", accessRightList) ;
			
			
			}
	
	
}
