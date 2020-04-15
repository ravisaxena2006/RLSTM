package com.techm.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "m_quote_currency")
public class CurrencyQuote {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long QUOTE_CURRENCY_ID;
	private String QUOTE_CURRENCY;
	private String RECORD_STATUS;
	public Long getQUOTE_CURRENCY_ID() {
		return QUOTE_CURRENCY_ID;
	}
	public void setQUOTE_CURRENCY_ID(Long qUOTE_CURRENCY_ID) {
		QUOTE_CURRENCY_ID = qUOTE_CURRENCY_ID;
	}
	public String getQUOTE_CURRENCY() {
		return QUOTE_CURRENCY;
	}
	public void setQUOTE_CURRENCY(String qUOTE_CURRENCY) {
		QUOTE_CURRENCY = qUOTE_CURRENCY;
	}
	public String getRECORD_STATUS() {
		return RECORD_STATUS;
	}
	public void setRECORD_STATUS(String rECORD_STATUS) {
		RECORD_STATUS = rECORD_STATUS;
	}
	
	
}
