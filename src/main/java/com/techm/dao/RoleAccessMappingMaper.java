package com.techm.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.techm.bean.MappingRole;
import com.techm.bean.RoleAccess;

public class RoleAccessMappingMaper implements RowMapper<RoleAccess> {
	
	
	
 

	@Override
	public RoleAccess mapRow(ResultSet resultSet, int arg1) throws SQLException {
		RoleAccess mapping = new RoleAccess();
		
		mapping.setRole(resultSet.getString("ROLE"));
		mapping.setModule(resultSet.getString("MODULE"));
		mapping.setAccess(resultSet.getString("ACCESS_RIGHT"));
		
		mapping.setAccessId(resultSet.getString("role_access_id"));
		mapping.setModuleId(resultSet.getString("module_id"));
		mapping.setRoleId(resultSet.getString("ROLE_ID"));
		
				return mapping;
	}


}
 
	
