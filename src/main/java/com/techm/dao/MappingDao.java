package com.techm.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;

import com.techm.bean.MappingRole;
import com.techm.bean.RoleAccess;
import com.techm.entity.DealSpecs;

@Component
public class MappingDao {
	
	JdbcTemplate jdbcTemplate;
	
	private final String SQL_FIND_role = "SELECT DISTINCT uinfo.LOGIN_ID, mroles.ROLE, mmod.MODULE, mar.ACCESS_RIGHT FROM t_user_info uinfo LEFT JOIN t_user_role tur ON tur.USER_ID = uinfo.USER_SRNO LEFT JOIN m_roles mroles ON mroles.ROLE_ID = tur.ROLE_ID LEFT JOIN t_user_role_access racc ON racc.ROLE_ID = mroles.ROLE_ID LEFT JOIN m_module mmod ON racc.Module_id = mmod.MODULE_ID LEFT JOIN m_access_right mar ON mar.ACCESS_RIGHT_ID = racc.ROLE_ACCESS_ID WHERE uinfo.LOGIN_ID = ?";
	
	private final String SQL_role_access="SELECT mr.role,mm.module,mar.access_right,tura.role_access_id,tura.module_id,tura.`ROLE_ID` FROM `t_user_role_access` tura INNER JOIN `m_roles` mr ON mr.role_id=tura.role_id AND mr.record_status<>'D' INNER JOIN `m_module` mm ON mm.module_id=tura.module_id AND mm.record_status<>'D' INNER JOIN `m_access_right` mar ON mar. access_right_id=tura.role_access_id AND mar.record_status<>'D'  WHERE tura.record_status<>'D' AND tura.`ROLE_ID`=?";
	
	@Autowired
	public MappingDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public List<MappingRole> getMappingById(String id) {
		
		List<MappingRole> role=jdbcTemplate.query(SQL_FIND_role, new RoleMappingMaper(), id);
		return role;
		
	}
	
	public List<RoleAccess> getRoleAccessById(String id) {
		
		List<RoleAccess> roleAccess=jdbcTemplate.query(SQL_role_access, new RoleAccessMappingMaper(), id);
		return roleAccess;
		
	}
	
	public int addRoleAccess(int accessRight,int role,int module) {
	    return jdbcTemplate.update(
	      "INSERT INTO t_user_role_access (ROLE_ACCESS_ID, ROLE_ID,RECORD_STATUS,Module_id) VALUES (?, ?, ?, ?)", accessRight, role, "C", module);
	}
	
	
}

