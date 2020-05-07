package com.techm.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.techm.entity.UserDetails;
import com.techm.repository.UserRepository;


@Repository
public class LoginDao {
	
	@Autowired
	UserRepository userRepositry;
	
	public List<UserDetails> getLoginDetails(){
		
		return userRepositry.findAll();
	}

}
