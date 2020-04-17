package com.techm.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.techm.bean.MappingRole;

public class RoleMappingMaper implements RowMapper<MappingRole> {
	
	
	
 

	@Override
	public MappingRole mapRow(ResultSet resultSet, int arg1) throws SQLException {
		MappingRole mapping = new MappingRole();
		mapping.setLogiId(resultSet.getString("LOGIN_ID"));
		mapping.setRole(resultSet.getString("ROLE"));
		mapping.setModule(resultSet.getString("MODULE"));
		mapping.setAccess(resultSet.getString("ACCESS_RIGHT"));
		
		System.out.println(mapping.getLogiId());
		return mapping;
	}


}
  class Mapping{
	  
	  private String logiId;
	  private String role;
	  private String module;
	  private String access;
	  
	/*  public Mapping(String logiId, String role, String module, String access) {
		super();
		this.logiId = logiId;
		this.role = role;
		this.module = module;
		this.access = access;
	}*/
	
	public String getLogiId() {
		return logiId;
	}
	public void setLogiId(String logiId) {
		this.logiId = logiId;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getModule() {
		return module;
	}
	public void setModule(String module) {
		this.module = module;
	}
	public String getAccess() {
		return access;
	}
	public void setAccess(String access) {
		this.access = access;
	}
	  
	
}