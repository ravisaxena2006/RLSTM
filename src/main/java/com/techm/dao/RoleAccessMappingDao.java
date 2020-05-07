package com.techm.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.techm.bean.RoleAccess;
import com.techm.entity.AccessRight;
import com.techm.entity.Module;
import com.techm.entity.UserRoleAccess;
import com.techm.repository.AccessRightREpositry;
import com.techm.repository.ModuleRepositry;
import com.techm.repository.RoleAccessRepo;
import com.techm.repository.RolesAccessMappingRepository;

@Repository
public class RoleAccessMappingDao {
	
	@Autowired
	ModuleRepositry moduleRepositry;
	@Autowired
	RolesAccessMappingRepository rolesAccessMappingRepository;
	@Autowired
	AccessRightREpositry accessRightREpositry;
	@Autowired
	RoleAccessRepo roleAccessRepo;
	
	public List<Module> getModules()
    {
      	 List<Module> moduleList =moduleRepositry.findAll();
    	 return moduleList;
    }
	
	public List<AccessRight> getAccessRight()
    {
      	 List<AccessRight> accesslaccessleListeList =accessRightREpositry.findAll();
    	 return accesslaccessleListeList;
    }

	public List<UserRoleAccess> getUserRole()
    {
      	 List<UserRoleAccess> UserRoleAccessList =rolesAccessMappingRepository.findAll();
    	 return UserRoleAccessList;
    }
	
	public void add(UserRoleAccess userRoleAccess) {
		roleAccessRepo.save(userRoleAccess);
		
	}
	
}
