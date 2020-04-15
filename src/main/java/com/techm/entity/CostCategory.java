package com.techm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="m_cost_category")
public class CostCategory {
	
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name="cost_category_id")
	private int costCategoryId;
	@Column(name="cost_category")
	private String costCategory;
	@Column(name="record_status")
	private String recordStatus;
	public int getCostCategoryId() {
		return costCategoryId;
	}
	public void setCostCategoryId(int costCategoryId) {
		this.costCategoryId = costCategoryId;
	}
	public String getCostCategory() {
		return costCategory;
	}
	public void setCostCategory(String costCategory) {
		this.costCategory = costCategory;
	}
	public String getRecordStatus() {
		return recordStatus;
	}
	public void setRecordStatus(String recordStatus) {
		this.recordStatus = recordStatus;
	}
	
	

}
