package com.techm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="m_cost_type")
public class CostType {
	
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name="cost_type_id")
	private int costTypeId;
	@Column(name="cost_type")
	private String costType;
	@Column(name="record_status")
	private String recordStatus;
	public int getCostTypeId() {
		return costTypeId;
	}
	public void setCostTypeId(int costTypeId) {
		this.costTypeId = costTypeId;
	}
	public String getCostType() {
		return costType;
	}
	public void setCostType(String costType) {
		this.costType = costType;
	}
	public String getRecordStatus() {
		return recordStatus;
	}
	public void setRecordStatus(String recordStatus) {
		this.recordStatus = recordStatus;
	}

	
}
