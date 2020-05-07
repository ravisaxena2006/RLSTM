package com.techm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="m_access_right")
public class AccessRight {
	
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
	
	@Column(name="ACCESS_RIGHT_ID")
	private int  accessRightId;
	
	@Column(name="ACCESS_RIGHT")
	private String accessRight;

	@Column(name="RECORD_STATUS")
	private String recordStatus;

	public String getAccessRight() {
		return accessRight;
	}

	public void setAccessRight(String accessRight) {
		this.accessRight = accessRight;
	}

	public int getAccessRightId() {
		return accessRightId;
	}

	public void setAccessRightId(int accessRightId) {
		this.accessRightId = accessRightId;
	}

	

	public String getRecordStatus() {
		return recordStatus;
	}

	public void setRecordStatus(String recordStatus) {
		this.recordStatus = recordStatus;
	}


	
}
