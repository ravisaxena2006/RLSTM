package com.techm.dao;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.techm.entity.RoleDetails;
import com.techm.entity.UserRole;
import com.techm.entity.Vertical;
import com.techm.entity.VerticalMapping;
import com.techm.repository.RolesRepository;
import com.techm.repository.UserRepository;
import com.techm.repository.UserRoleRepository;

@Repository
public class RoleMappingDao {
	
	@Autowired
	UserRepository userRepo;
	@Autowired
	UserRoleRepository userRoleRepo;
	@Autowired
	RolesRepository roleRepo;
	
	
	public List<String> getCrmIdList(String loginId) {
		int userId=userRepo.findUsersnumByLoginId(loginId);
		List<String> crmIdList=userRoleRepo.findCrmIdByUserId(userId);
		return crmIdList;
	}


	public List<RoleDetails> getRoles(String crmId, String loginId) {
		int userId=userRepo.findUsersnumByLoginId(loginId);
		List<UserRole>roleDetails= userRoleRepo.findByUserIdAndCrmIdAndRecordStatus(userId,crmId,"c");
		 List<Integer> roleIdList=new ArrayList<Integer>();
     	 for(UserRole ur:roleDetails)
     	 {
     		roleIdList.add(ur.getRoleId()); 
     	 }
     	 List<RoleDetails>roleList=roleRepo.findByRoleIdIn(roleIdList);
    	 return roleList;
		}


	public String getRole(int roleId) {
		String role=roleRepo.findRoleByRoleId(roleId);
		return role;
	}
	
	

	
}

