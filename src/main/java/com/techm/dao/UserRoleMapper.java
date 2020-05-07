package com.techm.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;
import com.techm.bean.UserRoleMap;

public class UserRoleMapper implements RowMapper<UserRoleMap> {
	
	@Override
	public UserRoleMap mapRow(ResultSet resultSet, int arg1) throws SQLException {
		UserRoleMap mapping = new UserRoleMap();
		mapping.setLoginId(resultSet.getString("LOGIN_ID"));
		mapping.setRole(resultSet.getString("ROLE"));
		return mapping;
	}


}
 