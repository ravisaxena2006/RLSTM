package com.techm.bean;

public class MappingRole{
	  
	  private String logiId;
	  private String role;
	  private String module;
	  private String access;
	  
	
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
	@Override
	public String toString() {
		return "MappingRole [logiId=" + logiId + ", role=" + role + ", module=" + module + ", access=" + access + "]";
	}
	
}