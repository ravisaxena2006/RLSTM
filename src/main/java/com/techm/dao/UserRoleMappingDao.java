package com.techm.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.techm.entity.RoleDetails;
import com.techm.entity.UserDetails;
import com.techm.repository.RolesRepository;
import com.techm.repository.UserRepository;
import com.techm.repository.UserRoleRepository;

@Repository
public class UserRoleMappingDao {
	
	@Autowired
	UserRepository repo1;
	@Autowired
	RolesRepository repo2;
	@Autowired
	UserRoleRepository repo3;
	
    public List<UserDetails> getUsers()
    {
      	 List<UserDetails> userList =repo1.findAll();
    	 return userList;
    }
    
    public List<RoleDetails> getRoles()
    {
      	 List<RoleDetails> rolesList =repo2.findAll();
    	 return rolesList;
    }
}
