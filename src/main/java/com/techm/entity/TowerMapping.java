package com.techm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="t_tower_mapping")
public class TowerMapping {
	

	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name="tower_mapping_id")
	int towerMappingId;
	@Column(name="tower_id")
	int towerId;
	@Column(name="bid_id")
	int bidId;
	@Column(name="record_status")
	String recordStatus;
	
	public int getTowerMappingId() {
		return towerMappingId;
	}
	public void setTowerMappingId(int towerMappingId) {
		this.towerMappingId = towerMappingId;
	}
	public int getTowerId() {
		return towerId;
	}
	public void setTowerId(int towerId) {
		this.towerId = towerId;
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
