package com.techm.dao;

import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

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
	
	private final String SQL_FIND_role = "select r.role,t.login_id from m_roles r,t_user_info t,t_user_role u where  t.user_srno=u.user_id and r.role_id=u.role_id and t.user_srno=? and u.crm_id=? and u.record_status=?";
	//private final String SQL_FIND_role1 ="select * from t_user_role where user_id=? and crm_id=? and record_status=?";
	private final String SQL_insert_role ="INSERT INTO t_user_role(user_id, role_id,record_status,crm_id) VALUES (?,?,?,?)";
	private final String SQL_update_role="update t_user_role set record_status='d' where user_id=? and crm_id=? and role_id=(select role_id from m_roles where role=?)";
	
	@Autowired
	public UserRoleMappingDao(DataSource dataSource) {
		jdbcTemplate = new JdbcTemplate(dataSource);
	}

	public List<UserRoleMap> getRoles(String userId,String crmId) {
		String recordStatus="c";
		List<UserRoleMap> roles=jdbcTemplate.query(SQL_FIND_role, new UserRoleMapper(), userId, crmId, recordStatus);
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
    public List<UserRole> getRoles(String user,String crmId,String recordStatus)
    {
    	 int userId=Integer.parseInt(user);
      	 List<UserRole> rolesList = repo3.findByUserIdAndCrmIdAndRecordStatus(userId,crmId,recordStatus);
    	 return rolesList;
    }

     public void delete(String user,String crmId,String role) {
		
			int userId=Integer.parseInt(user);
			jdbcTemplate.update(SQL_update_role,userId,crmId,role);
		
    }
	public void add(String user, int roleId,String crmId) {
		
			int userId=Integer.parseInt(user);
			String recordStatus="c";
			jdbcTemplate.update(SQL_insert_role,userId,roleId,recordStatus,crmId);
				
	}

	
}
