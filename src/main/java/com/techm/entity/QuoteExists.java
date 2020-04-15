package com.techm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="m_quote_exists")
public class QuoteExists {
	
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name="quote_exists_id")
	private int quoteExistsId;
	@Column(name="quote_exists")
	private String quoteExists;
	@Column(name="record_status")
	private String recordStatus;
	public int getQuoteExistsId() {
		return quoteExistsId;
	}
	public void setQuoteExistsId(int quoteExistsId) {
		this.quoteExistsId = quoteExistsId;
	}
	public String getQuoteExists() {
		return quoteExists;
	}
	public void setQuoteExists(String quoteExists) {
		this.quoteExists = quoteExists;
	}
	public String getRecordStatus() {
		return recordStatus;
	}
	public void setRecordStatus(String recordStatus) {
		this.recordStatus = recordStatus;
	}
	
	

}
