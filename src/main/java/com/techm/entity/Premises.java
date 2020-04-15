package com.techm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="m_premises")
public class Premises {
	
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name="premises_id")
	private int premisesId;
	@Column(name="premises")
	private String premises;
	@Column(name="record_status")
	private String recordStatus;
	public int getPremisesId() {
		return premisesId;
	}
	public void setPremisesId(int premisesId) {
		this.premisesId = premisesId;
	}
	public String getPremises() {
		return premises;
	}
	public void setPremises(String premises) {
		this.premises = premises;
	}
	public String getRecordStatus() {
		return recordStatus;
	}
	public void setRecordStatus(String recordStatus) {
		this.recordStatus = recordStatus;
	}
	
	
	
}
