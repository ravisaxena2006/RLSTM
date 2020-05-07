package com.techm.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CollectionTable;
import javax.persistence.Column;
import javax.persistence.ElementCollection;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;

@Entity
@Table(name="t_user_role_access")
@DynamicInsert
@DynamicUpdate
public class UserRoleAccess {
	
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name="USER_ROLE_ACCESS_ID")
	private int roleaccessId;
	@Column(name="ROLE_ACCESS_ID")
	private int userID;
	
	@Column(name="ROLE_ID")
	private int roleID;
	
	@Column(name="record_status")
	private String recordStatus;
	
	@Column(name="Module_id")
	private int moduleID;



	public int getRoleaccessId() {
		return roleaccessId;
	}

	public void setRoleaccessId(int roleaccessId) {
		this.roleaccessId = roleaccessId;
	}

	public int getUserID() {
		return userID;
	}

	public void setUserID(int userID) {
		this.userID = userID;
	}

	public int getRoleID() {
		return roleID;
	}

	public void setRoleID(int roleID) {
		this.roleID = roleID;
	}

	public String getRecordStatus() {
		return recordStatus;
	}

	public void setRecordStatus(String recordStatus) {
		this.recordStatus = recordStatus;
	}

	public int getModuleID() {
		return moduleID;
	}

	public void setModuleID(int moduleID) {
		this.moduleID = moduleID;
	}

}
