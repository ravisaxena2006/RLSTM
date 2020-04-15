package com.techm.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "m_pricing_model")
public class PricingModel {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long PRICING_MODEL_ID;
	
	private String PRICING_MODEL;
	private String RECORD_STATUS;
	public Long getPRICING_MODEL_ID() {
		return PRICING_MODEL_ID;
	}
	public void setPRICING_MODEL_ID(Long pRICING_MODEL_ID) {
		PRICING_MODEL_ID = pRICING_MODEL_ID;
	}
	public String getPRICING_MODEL() {
		return PRICING_MODEL;
	}
	public void setPRICING_MODEL(String pRICING_MODEL) {
		PRICING_MODEL = pRICING_MODEL;
	}
	public String getRECORD_STATUS() {
		return RECORD_STATUS;
	}
	public void setRECORD_STATUS(String rECORD_STATUS) {
		RECORD_STATUS = rECORD_STATUS;
	}
	
	
	

}
