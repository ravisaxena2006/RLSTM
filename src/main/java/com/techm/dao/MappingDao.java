package com.techm.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.techm.bean.MappingRole;

@Component
public class MappingDao {
	
	JdbcTemplate jdbcTemplate;
	
	private final String SQL_FIND_role = "SELECT DISTINCT uinfo.LOGIN_ID, mroles.ROLE, mmod.MODULE, mar.ACCESS_RIGHT FROM t_user_info uinfo LEFT JOIN t_user_role tur ON tur.USER_ID = uinfo.USER_SRNO LEFT JOIN m_roles mroles ON mroles.ROLE_ID = tur.ROLE_ID LEFT JOIN t_user_role_access racc ON racc.ROLE_ID = mroles.ROLE_ID LEFT JOIN m_module mmod ON racc.Module_id = mmod.MODULE_ID LEFT JOIN m_access_right mar ON mar.ACCESS_RIGHT_ID = racc.ROLE_ACCESS_ID WHERE uinfo.LOGIN_ID = ?";
	
	
	@Autowired
	public MappingDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public List<MappingRole> getMappingById(String id) {
		
		List<MappingRole> role=jdbcTemplate.query(SQL_FIND_role, new RoleMappingMaper(), id);
		return role;
		//jdbcTemplate.queryForObject(SQL_FIND_role, new Object[] { id }, new RoleMappingMaper());
	}
	
	
}

