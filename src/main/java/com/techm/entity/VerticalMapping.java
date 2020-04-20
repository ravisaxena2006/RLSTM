package com.techm.entity;

import javax.persistence.*;
import javax.persistence.Embeddable;
import javax.persistence.Table;

@Entity
@Table(name="t_vertical_mapping")
public class VerticalMapping {

	@Id
    @GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name="vertical_mapping_id")
	int verticalMappingId;
	@Column(name="vertical_id")
	int verticalId;
	@Column(name="bid_id")
	int bidId;
	@Column(name="record_status")
	String recordStatus;
	
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
	public int getVerticalMappingId() {
		return verticalMappingId;
	}
	public void setVerticalMappingId(int verticalMappingId) {
		this.verticalMappingId = verticalMappingId;
	}
	
	
	
}
