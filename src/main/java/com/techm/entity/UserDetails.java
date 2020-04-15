package com.techm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="t_user_info")
public class UserDetails {
	
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name="USER_SRNO")
	private int usersnum;
	@Column(name="LOGIN_ID")
	private String loginId;
	@Column(name="PASSWORD")
	private String passwod;
	@Column(name="RECORD_STATUS")
	private String recordStatus;
	
	public int getUsersnum() {
		return usersnum;
	}
	public void setUsersnum(int usersnum) {
		this.usersnum = usersnum;
	}
	public String getLoginId() {
		return loginId;
	}
	public void setLoginId(String loginId) {
		this.loginId = loginId;
	}
	public String getPasswod() {
		return passwod;
	}
	public void setPasswod(String passwod) {
		this.passwod = passwod;
	}
	public String getRecordStatus() {
		return recordStatus;
	}
	public void setRecordStatus(String recordStatus) {
		this.recordStatus = recordStatus;
	}

	

}
