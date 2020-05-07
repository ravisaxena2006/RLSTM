package com.techm.bean;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.JoinColumn;

public class RoleAccess{
	  
	   
	  private String role;
	  private String module;
	  private String access;
	  private String accessId;
	  private String roleId;
	  private String moduleId;
	  
	  
	  
	  
		
		// table mapping
		
				@ElementCollection
			    @CollectionTable(name = "t_user_role_access", joinColumns = @JoinColumn(name = "USER_ROLE_ACCESS_ID"))
			    @Column(name = "ROLE_ACCESS_ID")
			    private Set<Integer> accessRightID1 = new HashSet<>();
				
				@ElementCollection
			    @CollectionTable(name = "t_user_role_access", joinColumns = @JoinColumn(name = "USER_ROLE_ACCESS_ID"))
			    @Column(name = "ROLE_ID")
			    private Set<Integer> roleID1 = new HashSet<>();
				
				@ElementCollection
			    @CollectionTable(name = "t_user_role_access", joinColumns = @JoinColumn(name = "USER_ROLE_ACCESS_ID"))
			    @Column(name = "Module_id")
			    private Set<Integer> moduleID1 = new HashSet<>();
	
	public Set<Integer> getAccessRightID1() {
					return accessRightID1;
				}
				public void setAccessRightID1(Set<Integer> accessRightID1) {
					this.accessRightID1 = accessRightID1;
				}
				public Set<Integer> getRoleID1() {
					return roleID1;
				}
				public void setRoleID1(Set<Integer> roleID1) {
					this.roleID1 = roleID1;
				}
				public Set<Integer> getModuleID1() {
					return moduleID1;
				}
				public void setModuleID1(Set<Integer> moduleID1) {
					this.moduleID1 = moduleID1;
				}
	public String getAccessId() {
		return accessId;
	}
	public void setAccessId(String accessId) {
		this.accessId = accessId;
	}
	public String getRoleId() {
		return roleId;
	}
	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}
	public String getModuleId() {
		return moduleId;
	}
	public void setModuleId(String moduleId) {
		this.moduleId = moduleId;
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
	@Override
	public String toString() {
		return "RoleAccess [role=" + role + ", module=" + module + ", access=" + access + ", accessId=" + accessId
				+ ", roleId=" + roleId + ", moduleId=" + moduleId + "]";
	}
	 

	
}