package com.techm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="m_roles")
public class RoleDetails {
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name="ROLE_ID")
	private int roleId;
	@Column(name="ROLE")
	private String role;
	@Column(name="RECORD_STATUS")
	private String recordStatus;
	public int getRoleId() {
		return roleId;
	}
	public void setRoleId(int roleId) {
		this.roleId = roleId;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public String getRecordStatus() {
		return recordStatus;
	}
	public void setRecordStatus(String recordStatus) {
		this.recordStatus = recordStatus;
	}
	
}
