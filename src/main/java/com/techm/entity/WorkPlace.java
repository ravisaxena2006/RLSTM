package com.techm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="m_work_place")
public class WorkPlace {
	
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name="work_place_id")
	private int workPlaceId;
	@Column(name="work_place")
	private String workPlace;
	@Column(name="record_status")
	private String recordStatus;
	public int getWorkPlaceId() {
		return workPlaceId;
	}
	public void setWorkPlaceId(int workPlaceId) {
		this.workPlaceId = workPlaceId;
	}
	public String getWorkPlace() {
		return workPlace;
	}
	public void setWorkPlace(String workPlace) {
		this.workPlace = workPlace;
	}
	public String getRecordStatus() {
		return recordStatus;
	}
	public void setRecordStatus(String recordStatus) {
		this.recordStatus = recordStatus;
	}
	
	

}
