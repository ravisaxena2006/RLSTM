package com.techm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="m_vertical")
public class Vertical {
	
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name="vertical_id")
	private int verticalId;
	@Column(name="vertical")
	private String vertical;
	@Column(name="record_status")
	private String recordStatus;
	public int getVerticalId() {
		return verticalId;
	}
	public void setVerticalId(int verticalId) {
		this.verticalId = verticalId;
	}
	public String getVertical() {
		return vertical;
	}
	public void setVertical(String vertical) {
		this.vertical = vertical;
	}
	public String getRecordStatus() {
		return recordStatus;
	}
	public void setRecordStatus(String recordStatus) {
		this.recordStatus = recordStatus;
	}
	
	
}
