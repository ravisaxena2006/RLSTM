package com.techm.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.techm.bean.MappingRole;
import com.techm.bean.UserRoleMap;
import com.techm.entity.RoleDetails;
import com.techm.entity.UserDetails;
import com.techm.entity.UserRole;
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
	
	JdbcTemplate jdbcTemplate;
	
	private final String SQL_FIND_role = "select r.role,t.login_id from m_roles r,t_user_info t,t_user_role u where  t.user_srno=u.user_id and r.role_id=u.role_id and t.user_srno=? and u.record_status=?";
	private final String SQL_insert_role ="INSERT INTO t_user_role(user_id, role_id,record_status) VALUES (?,?,'c')";
	private final String SQL_update_role="update t_user_role set record_status='d' where user_id=?";
	
	@Autowired
	public UserRoleMappingDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public List<UserRoleMap> getRoles(String userId) {
		String recordStatus="c";
		List<UserRoleMap> roles=jdbcTemplate.query(SQL_FIND_role, new UserRoleMapper(), userId,recordStatus);
		return roles;
		
	}
	
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

    public void update(String user) {
		if(user!=null)
		{
			int userId=Integer.parseInt(user);
			jdbcTemplate.update(SQL_update_role,userId);
		}
    }
	public void add(String user, String role) {
		if(user!=null && role!=null)
		{
			int userId=Integer.parseInt(user);
			int roleId=Integer.parseInt(role);
			//jdbcTemplate.update(SQL_update_role,userId);
			jdbcTemplate.update(SQL_insert_role,userId,roleId);
			
		}
		
	}

	
}
