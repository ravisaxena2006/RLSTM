package com.techm.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "m_project_id_status")
public class ProjectIdStatus {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long PROJECT_STATUS_ID;
	private String PROJECT_STATUS;
	private String RECORD_STATUS;
	public Long getPROJECT_STATUS_ID() {
		return PROJECT_STATUS_ID;
	}
	public void setPROJECT_STATUS_ID(Long pROJECT_STATUS_ID) {
		PROJECT_STATUS_ID = pROJECT_STATUS_ID;
	}
	public String getPROJECT_STATUS() {
		return PROJECT_STATUS;
	}
	public void setPROJECT_STATUS(String pROJECT_STATUS) {
		PROJECT_STATUS = pROJECT_STATUS;
	}
	public String getRECORD_STATUS() {
		return RECORD_STATUS;
	}
	public void setRECORD_STATUS(String rECORD_STATUS) {
		RECORD_STATUS = rECORD_STATUS;
	}
	
	
}
