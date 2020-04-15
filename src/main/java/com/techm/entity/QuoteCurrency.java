package com.techm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="m_quote_currency")
public class QuoteCurrency {
	
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name="quote_currency_id")
	private int quoteCurrencyId;
	@Column(name="quote_currency")
	private String quoteCurrency;
	@Column(name="record_status")
	private String recordStatus;
	public int getQuoteCurrencyId() {
		return quoteCurrencyId;
	}
	public void setQuoteCurrencyId(int quoteCurrencyId) {
		this.quoteCurrencyId = quoteCurrencyId;
	}
	public String getQuoteCurrency() {
		return quoteCurrency;
	}
	public void setQuoteCurrency(String quoteCurrency) {
		this.quoteCurrency = quoteCurrency;
	}
	public String getRecordStatus() {
		return recordStatus;
	}
	public void setRecordStatus(String recordStatus) {
		this.recordStatus = recordStatus;
	}
	
	
}
