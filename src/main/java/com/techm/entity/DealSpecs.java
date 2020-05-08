package com.techm.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;
import javax.validation.constraints.*;
import org.hibernate.annotations.DynamicInsert;
import org.hibernate.annotations.DynamicUpdate;



@Entity
@Table(name ="t_dealspecs")
@DynamicInsert
@DynamicUpdate
public class DealSpecs {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private Long BID_DETAILS_ID;
	
	private String BID_CREATION_DATE;

	private String BID_MANAGER;
	private String DELIVERY_MANAGER;
	private String SALES_CONTACT_NAME;
	private String EFFORT_ESTIMATE_BY;
	private String PRE_SALES_CONTACT_NAME ;
	private String EFFORT_APPROVED_BY;

	//Basics
	@Column(unique = true)
	private String PROJECT_ID;	
	private String INTIMATION_TO_BID_AUDIT_TEAM;
	
	private String CUSTOMER_NAME;
	
	private String ANNUAL_IT_SPEND_OF_CUSTOMER;
	
	private Long PROJECT_ID_STATUS;
	
	private String CONTRACT_SIGNED_STATUS;
	
	private String OPPORTUNITY_DESCRIPTION;
	
	private int PROJECT_DURATION;
	private int optional_duration;
	
	private String BID_SUBMISSION_DATE;
	
	
	private String PROJECT_START_DATE;

	//Intelligence
	
	private String BIDDING_COMPETITORS;
	
	private String BASELINE;
	
	private String INCUMBENTS;
	private Long TARGET_PRICE;
	
	private String MATURED_OUTSOURCED;
	
	private String ANY_OTHER_BUSSINESS_INTL;

	//Operations
	
	private String ONSITE_LOCATION;
	
	private String LOCATION_STATUS;
	
	private String LANGUAGE;
	
	private String IS_PRIME_SUB;
	
	private String ANY_REBADGING;
	
	private String HOURS_BILLING_OFFSOURCE;
	
	private String REBADGING_STATUS;

	//Terms & Conditions
	
	private int WARRANTY_PERIOD;
	
	private Long BANK_GUARANTEE;
	
	private String transition;
	
	private String RISK_TO_TECHM;
	
	//Commercials
	
	private Long PRICING_MODEL_ID;
	
	private Long SLA_PROBABILITY;
	
	private Long ADDITIONAL_COST;
	
	private Long DELIVERY_CONTINGENCY;
	
	private Long DISCOUNT;
	
	private Long CURRENCY_QUOTE_ID;
	
	private String ANY_OTHER_INFO_FOR_PRICING;
	
	private String BA_COMMISSION;
	
	private String RECEIVED_FROM;
	private String RECEIVED_DATE;
	
	private String review;
 	private String freeze;
	// table mapping
	
		@ElementCollection
	    @CollectionTable(name = "t_tower_mapping", joinColumns = @JoinColumn(name = "BID_ID"))
	    @Column(name = "TOWER_ID")
	    private Set<Integer> towers = new HashSet<>();
		
		@ElementCollection
	    @CollectionTable(name = "t_vertical_mapping", joinColumns = @JoinColumn(name = "BID_ID"))
	    @Column(name = "VERTICAL_ID")
	    private Set<Integer> verticals = new HashSet<>();
	
	public Long getBID_DETAILS_ID() {
		return BID_DETAILS_ID;
	}
	public void setBID_DETAILS_ID(Long bID_DETAILS_ID) {
		BID_DETAILS_ID = bID_DETAILS_ID;
	}
	
	
	
	public String getBID_MANAGER() {
		return BID_MANAGER;
	}
	public void setBID_MANAGER(String bID_MANAGER) {
		BID_MANAGER = bID_MANAGER;
	}
	public String getDELIVERY_MANAGER() {
		return DELIVERY_MANAGER;
	}
	public void setDELIVERY_MANAGER(String dELIVERY_MANAGER) {
		DELIVERY_MANAGER = dELIVERY_MANAGER;
	}
	public String getSALES_CONTACT_NAME() {
		return SALES_CONTACT_NAME;
	}
	public void setSALES_CONTACT_NAME(String sALES_CONTACT_NAME) {
		SALES_CONTACT_NAME = sALES_CONTACT_NAME;
	}
	public String getEFFORT_ESTIMATE_BY() {
		return EFFORT_ESTIMATE_BY;
	}
	public void setEFFORT_ESTIMATE_BY(String eFFORT_ESTIMATE_BY) {
		EFFORT_ESTIMATE_BY = eFFORT_ESTIMATE_BY;
	}
	public String getPRE_SALES_CONTACT_NAME() {
		return PRE_SALES_CONTACT_NAME;
	}
	public void setPRE_SALES_CONTACT_NAME(String pRE_SALES_CONTACT_NAME) {
		PRE_SALES_CONTACT_NAME = pRE_SALES_CONTACT_NAME;
	}
	public String getEFFORT_APPROVED_BY() {
		return EFFORT_APPROVED_BY;
	}
	public void setEFFORT_APPROVED_BY(String eFFORT_APPROVED_BY) {
		EFFORT_APPROVED_BY = eFFORT_APPROVED_BY;
	}
	public String getPROJECT_ID() {
		return PROJECT_ID;
	}
	public void setPROJECT_ID(String pROJECT_ID) {
		PROJECT_ID = pROJECT_ID;
	}
	public String getINTIMATION_TO_BID_AUDIT_TEAM() {
		return INTIMATION_TO_BID_AUDIT_TEAM;
	}
	public void setINTIMATION_TO_BID_AUDIT_TEAM(String iNTIMATION_TO_BID_AUDIT_TEAM) {
		INTIMATION_TO_BID_AUDIT_TEAM = iNTIMATION_TO_BID_AUDIT_TEAM;
	}
	public String getCUSTOMER_NAME() {
		return CUSTOMER_NAME;
	}
	public void setCUSTOMER_NAME(String cUSTOMER_NAME) {
		CUSTOMER_NAME = cUSTOMER_NAME;
	}
	public String getANNUAL_IT_SPEND_OF_CUSTOMER() {
		return ANNUAL_IT_SPEND_OF_CUSTOMER;
	}
	public void setANNUAL_IT_SPEND_OF_CUSTOMER(String aNNUAL_IT_SPEND_OF_CUSTOMER) {
		ANNUAL_IT_SPEND_OF_CUSTOMER = aNNUAL_IT_SPEND_OF_CUSTOMER;
	}
	
	public String getCONTRACT_SIGNED_STATUS() {
		return CONTRACT_SIGNED_STATUS;
	}
	public void setCONTRACT_SIGNED_STATUS(String cONTRACT_SIGNED_STATUS) {
		CONTRACT_SIGNED_STATUS = cONTRACT_SIGNED_STATUS;
	}
	public String getOPPORTUNITY_DESCRIPTION() {
		return OPPORTUNITY_DESCRIPTION;
	}
	public void setOPPORTUNITY_DESCRIPTION(String oPPORTUNITY_DESCRIPTION) {
		OPPORTUNITY_DESCRIPTION = oPPORTUNITY_DESCRIPTION;
	}
	public int getPROJECT_DURATION() {
		return PROJECT_DURATION;
	}
	public void setPROJECT_DURATION(int pROJECT_DURATION) {
		PROJECT_DURATION = pROJECT_DURATION;
	}
	
	
	public String getBID_CREATION_DATE() {
		return BID_CREATION_DATE;
	}
	public void setBID_CREATION_DATE(String bID_CREATION_DATE) {
		BID_CREATION_DATE = bID_CREATION_DATE;
	}
	public String getBID_SUBMISSION_DATE() {
		return BID_SUBMISSION_DATE;
	}
	public void setBID_SUBMISSION_DATE(String bID_SUBMISSION_DATE) {
		BID_SUBMISSION_DATE = bID_SUBMISSION_DATE;
	}
	public String getPROJECT_START_DATE() {
		return PROJECT_START_DATE;
	}
	public void setPROJECT_START_DATE(String pROJECT_START_DATE) {
		PROJECT_START_DATE = pROJECT_START_DATE;
	}
	public String getBIDDING_COMPETITORS() {
		return BIDDING_COMPETITORS;
	}
	public void setBIDDING_COMPETITORS(String bIDDING_COMPETITORS) {
		BIDDING_COMPETITORS = bIDDING_COMPETITORS;
	}
	public String getBASELINE() {
		return BASELINE;
	}
	public void setBASELINE(String bASELINE) {
		BASELINE = bASELINE;
	}
	public String getINCUMBENTS() {
		return INCUMBENTS;
	}
	public void setINCUMBENTS(String iNCUMBENTS) {
		INCUMBENTS = iNCUMBENTS;
	}
	public Long getTARGET_PRICE() {
		return TARGET_PRICE;
	}
	public void setTARGET_PRICE(Long tARGET_PRICE) {
		TARGET_PRICE = tARGET_PRICE;
	}
	public String getMATURED_OUTSOURCED() {
		return MATURED_OUTSOURCED;
	}
	public void setMATURED_OUTSOURCED(String mATURED_OUTSOURCED) {
		MATURED_OUTSOURCED = mATURED_OUTSOURCED;
	}
	public String getANY_OTHER_BUSSINESS_INTL() {
		return ANY_OTHER_BUSSINESS_INTL;
	}
	public void setANY_OTHER_BUSSINESS_INTL(String aNY_OTHER_BUSSINESS_INTL) {
		ANY_OTHER_BUSSINESS_INTL = aNY_OTHER_BUSSINESS_INTL;
	}
	public String getONSITE_LOCATION() {
		return ONSITE_LOCATION;
	}
	public void setONSITE_LOCATION(String oNSITE_LOCATION) {
		ONSITE_LOCATION = oNSITE_LOCATION;
	}
	public String getLOCATION_STATUS() {
		return LOCATION_STATUS;
	}
	public void setLOCATION_STATUS(String lOCATION_STATUS) {
		LOCATION_STATUS = lOCATION_STATUS;
	}
	public String getLANGUAGE() {
		return LANGUAGE;
	}
	public void setLANGUAGE(String lANGUAGE) {
		LANGUAGE = lANGUAGE;
	}
	public String getIS_PRIME_SUB() {
		return IS_PRIME_SUB;
	}
	public void setIS_PRIME_SUB(String iS_PRIME_SUB) {
		IS_PRIME_SUB = iS_PRIME_SUB;
	}
	public String getANY_REBADGING() {
		return ANY_REBADGING;
	}
	public void setANY_REBADGING(String aNY_REBADGING) {
		ANY_REBADGING = aNY_REBADGING;
	}
	public String getHOURS_BILLING_OFFSOURCE() {
		return HOURS_BILLING_OFFSOURCE;
	}
	public void setHOURS_BILLING_OFFSOURCE(String hOURS_BILLING_OFFSOURCE) {
		HOURS_BILLING_OFFSOURCE = hOURS_BILLING_OFFSOURCE;
	}
	public String getREBADGING_STATUS() {
		return REBADGING_STATUS;
	}
	public void setREBADGING_STATUS(String rEBADGING_STATUS) {
		REBADGING_STATUS = rEBADGING_STATUS;
	}
	public int getWARRANTY_PERIOD() {
		return WARRANTY_PERIOD;
	}
	public void setWARRANTY_PERIOD(int wARRANTY_PERIOD) {
		WARRANTY_PERIOD = wARRANTY_PERIOD;
	}
	public Long getBANK_GUARANTEE() {
		return BANK_GUARANTEE;
	}
	public void setBANK_GUARANTEE(Long bANK_GUARANTEE) {
		BANK_GUARANTEE = bANK_GUARANTEE;
	}
	public String getTransition() {
		return transition;
	}
	public void setTransition(String transition) {
		this.transition = transition;
	}
	public String getRISK_TO_TECHM() {
		return RISK_TO_TECHM;
	}
	public void setRISK_TO_TECHM(String rISK_TO_TECHM) {
		RISK_TO_TECHM = rISK_TO_TECHM;
	}
	
	public Long getSLA_PROBABILITY() {
		return SLA_PROBABILITY;
	}
	public void setSLA_PROBABILITY(Long sLA_PROBABILITY) {
		SLA_PROBABILITY = sLA_PROBABILITY;
	}
	public Long getADDITIONAL_COST() {
		return ADDITIONAL_COST;
	}
	public void setADDITIONAL_COST(Long aDDITIONAL_COST) {
		ADDITIONAL_COST = aDDITIONAL_COST;
	}
	public Long getDELIVERY_CONTINGENCY() {
		return DELIVERY_CONTINGENCY;
	}
	public void setDELIVERY_CONTINGENCY(Long dELIVERY_CONTINGENCY) {
		DELIVERY_CONTINGENCY = dELIVERY_CONTINGENCY;
	}
	public Long getDISCOUNT() {
		return DISCOUNT;
	}
	public void setDISCOUNT(Long dISCOUNT) {
		DISCOUNT = dISCOUNT;
	}
	
	public String getANY_OTHER_INFO_FOR_PRICING() {
		return ANY_OTHER_INFO_FOR_PRICING;
	}
	public void setANY_OTHER_INFO_FOR_PRICING(String aNY_OTHER_INFO_FOR_PRICING) {
		ANY_OTHER_INFO_FOR_PRICING = aNY_OTHER_INFO_FOR_PRICING;
	}
	public String getBA_COMMISSION() {
		return BA_COMMISSION;
	}
	public void setBA_COMMISSION(String bA_COMMISSION) {
		BA_COMMISSION = bA_COMMISSION;
	}
	public String getRECEIVED_FROM() {
		return RECEIVED_FROM;
	}
	public void setRECEIVED_FROM(String rECEIVED_FROM) {
		RECEIVED_FROM = rECEIVED_FROM;
	}

	/*
	 * public Date getRECEIVED_DATE() { return RECEIVED_DATE; } public void
	 * setRECEIVED_DATE(Date rECEIVED_DATE) { if(rECEIVED_DATE != null) {
	 * this.RECEIVED_DATE = new Date(rECEIVED_DATE.getTime()); } else {
	 * this.RECEIVED_DATE = null; } }
	 */
	
	public Long getPROJECT_ID_STATUS() {
		return PROJECT_ID_STATUS;
	}
	public String getRECEIVED_DATE() {
		return RECEIVED_DATE;
	}
	public void setRECEIVED_DATE(String rECEIVED_DATE) {
		RECEIVED_DATE = rECEIVED_DATE;
	}
	public void setPROJECT_ID_STATUS(Long pROJECT_ID_STATUS) {
		PROJECT_ID_STATUS = pROJECT_ID_STATUS;
	}
	public Long getPRICING_MODEL_ID() {
		return PRICING_MODEL_ID;
	}
	public void setPRICING_MODEL_ID(Long pRICING_MODEL_ID) {
		PRICING_MODEL_ID = pRICING_MODEL_ID;
	}
	public Long getCURRENCY_QUOTE_ID() {
		return CURRENCY_QUOTE_ID;
	}
	public void setCURRENCY_QUOTE_ID(Long cURRENCY_QUOTE_ID) {
		CURRENCY_QUOTE_ID = cURRENCY_QUOTE_ID;
	}
	public Set<Integer> getTowers() {
		return towers;
	}
	public void setTowers(Set<Integer> towers) {
		this.towers = towers;
	}
	public Set<Integer> getVerticals() {
		return verticals;
	}
	public void setVerticals(Set<Integer> verticals) {
		this.verticals = verticals;
	}
	public String getReview() {
		return review;
	}
	public void setReview(String review) {
		this.review = review;
	}
	public String getFreeze() {
		return freeze;
	}
	public void setFreeze(String freeze) {
		this.freeze = freeze;
	}
	public int getOptional_duration() {
		return optional_duration;
	}
	public void setOptional_duration(int optional_duration) {
		this.optional_duration = optional_duration;
	}
	
	
}
