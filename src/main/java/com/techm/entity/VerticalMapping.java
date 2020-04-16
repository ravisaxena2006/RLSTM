package com.techm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="t_vertical_mapping")
public class VerticalMapping {

	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name="vertical_mapping_id")
	int verticalMappingId;
	@Column(name="vertical_id")
	int verticalId;
	@Column(name="bid_id")
	int bidId;
	@Column(name="record_status")
	String recordStatus;
	public int getVerticalMappingId() {
		return verticalMappingId;
	}
	public void setVerticalMappingId(int verticalMappingId) {
		this.verticalMappingId = verticalMappingId;
	}
	public int getVerticalId() {
		return verticalId;
	}
	public void setVerticalId(int verticalId) {
		this.verticalId = verticalId;
	}
	public int getBidId() {
		return bidId;
	}
	public void setBidId(int bidId) {
		this.bidId = bidId;
	}
	public String getRecordStatus() {
		return recordStatus;
	}
	public void setRecordStatus(String recordStatus) {
		this.recordStatus = recordStatus;
	}
	
	
	
}
