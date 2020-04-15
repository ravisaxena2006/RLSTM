package com.techm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="m_cost_item")
public class CostItem {
	
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name="cost_item_id")
	private int costItemId;
	@Column(name="cost_item")
	private String costItem;
	@Column(name="record_status")
	private String recordStatus;
	public int getCostItemId() {
		return costItemId;
	}
	public void setCostItemId(int costItemId) {
		this.costItemId = costItemId;
	}
	public String getCostItem() {
		return costItem;
	}
	public void setCostItem(String costItem) {
		this.costItem = costItem;
	}
	public String getRecordStatus() {
		return recordStatus;
	}
	public void setRecordStatus(String recordStatus) {
		this.recordStatus = recordStatus;
	}
	
	

}
