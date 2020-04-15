package com.techm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="m_amortize")
public class Amortize {


	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name="amortize_id")
	private int amortizeId;
	@Column(name="amortize")
	private String amortize;
	@Column(name="record_status")
	private String recordStatus;
	public int getAmortizeId() {
		return amortizeId;
	}
	public void setAmortizeId(int amortizeId) {
		this.amortizeId = amortizeId;
	}
	public String getAmortize() {
		return amortize;
	}
	public void setAmortize(String amortize) {
		this.amortize = amortize;
	}
	public String getRecordStatus() {
		return recordStatus;
	}
	public void setRecordStatus(String recordStatus) {
		this.recordStatus = recordStatus;
	}
	
	
}
