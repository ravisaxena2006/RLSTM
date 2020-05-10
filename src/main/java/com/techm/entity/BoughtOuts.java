package com.techm.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;


@Entity
@Table(name = "bout_table")
public class BoughtOuts {	
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
	private int boughtOutsId; 
	
	private int towerId;
	
	private String vendor;
	
	private String productDescription;
	
	private int amortizeId;
	
	private int quoteCurrencyId;
	
	private int quoteExistsId;
	
	private int priceTotal;
	
	private String licenceYear1;
	
	private String licenceYear2;
	
	private String licenceYear3;
	
	private String licenceYear4;
	
	private String licenceYear5;
	
	private String licenceYear6;
	
	private String licenceYear7;
	
	private String licenceYear8;
	
	private String licenceYear9;
	
	private String licenceYear10;
	
	private int licenceTotal;
	
	private String supportYear1;
	
	private String supportYear2;
	
	private String supportYear3;
	
	private String supportYear4;
	
	private String supportYear5;
	
	private String supportYear6;
	
	private String supportYear7;
	
	private String supportYear8;
	
	private String supportYear9;
	
	private String supportYear10;
	
	private int supportTotal;
	
	private int professionalService;
	
	private int training;
	
	private String description;
	private String otherYear1;
	
	private String otherYear2;
	
	private String otherYear3;
	
	private String otherYear4;
	
	private String otherYear5;
	
	private String otherYear6;
	
	private String otherYear7;
	
	private String otherYear8;
	
	private String otherYear9;
	
	private String otherYear10;
	
	private int otherTotal;
	
	private String dlId;
    private String timeStamp;
    private String creationDate;
    private String createdBy;
    private String project_duration;
    
    private String review;
	private String freeze;
	
    public String getProject_duration() {
		return project_duration;
	}
	public void setProject_duration(String project_duration) {
		this.project_duration = project_duration;
	}
	
	public BoughtOuts() {
		
	}
	public int getBoughtOutsId() {
		return boughtOutsId;
	}
	public void setBoughtOutsId(int boughtOutsId) {
		this.boughtOutsId = boughtOutsId;
	}

	
	
	public int getTowerId() {
		return towerId;
	}
	public void setTowerId(int towerId) {
		this.towerId = towerId;
	}
	public String getVendor() {
		return vendor;
	}
	public void setVendor(String vendor) {
		this.vendor = vendor;
	}
	public String getProductDescription() {
		return productDescription;
	}
	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}
	
	public int getAmortizeId() {
		return amortizeId;
	}
	public void setAmortizeId(int amortizeId) {
		this.amortizeId = amortizeId;
	}
	public int getQuoteCurrencyId() {
		return quoteCurrencyId;
	}
	public void setQuoteCurrencyId(int quoteCurrencyId) {
		this.quoteCurrencyId = quoteCurrencyId;
	}
	public int getQuoteExistsId() {
		return quoteExistsId;
	}
	public void setQuoteExistsId(int quoteExistsId) {
		this.quoteExistsId = quoteExistsId;
	}
	public int getPriceTotal() {
		return priceTotal;
	}
	public void setPriceTotal(int priceTotal) {
		this.priceTotal = priceTotal;
	}
	
	public String getLicenceYear1() {
		return licenceYear1;
	}
	public void setLicenceYear1(String licenceYear1) {
		this.licenceYear1 = licenceYear1;
	}
	public String getLicenceYear2() {
		return licenceYear2;
	}
	public void setLicenceYear2(String licenceYear2) {
		this.licenceYear2 = licenceYear2;
	}
	public String getLicenceYear3() {
		return licenceYear3;
	}
	public void setLicenceYear3(String licenceYear3) {
		this.licenceYear3 = licenceYear3;
	}
	public String getLicenceYear4() {
		return licenceYear4;
	}
	public void setLicenceYear4(String licenceYear4) {
		this.licenceYear4 = licenceYear4;
	}
	public String getLicenceYear5() {
		return licenceYear5;
	}
	public void setLicenceYear5(String licenceYear5) {
		this.licenceYear5 = licenceYear5;
	}
	public String getLicenceYear6() {
		return licenceYear6;
	}
	public void setLicenceYear6(String licenceYear6) {
		this.licenceYear6 = licenceYear6;
	}
	public String getLicenceYear7() {
		return licenceYear7;
	}
	public void setLicenceYear7(String licenceYear7) {
		this.licenceYear7 = licenceYear7;
	}
	public String getLicenceYear8() {
		return licenceYear8;
	}
	public void setLicenceYear8(String licenceYear8) {
		this.licenceYear8 = licenceYear8;
	}
	public String getLicenceYear9() {
		return licenceYear9;
	}
	public void setLicenceYear9(String licenceYear9) {
		this.licenceYear9 = licenceYear9;
	}
	public String getLicenceYear10() {
		return licenceYear10;
	}
	public void setLicenceYear10(String licenceYear10) {
		this.licenceYear10 = licenceYear10;
	}
	public int getLicenceTotal() {
		return licenceTotal;
	}
	public void setLicenceTotal(int licenceTotal) {
		this.licenceTotal = licenceTotal;
	}
	public String getSupportYear1() {
		return supportYear1;
	}
	public void setSupportYear1(String supportYear1) {
		this.supportYear1 = supportYear1;
	}
	public String getSupportYear2() {
		return supportYear2;
	}
	public void setSupportYear2(String supportYear2) {
		this.supportYear2 = supportYear2;
	}
	public String getSupportYear3() {
		return supportYear3;
	}
	public void setSupportYear3(String supportYear3) {
		this.supportYear3 = supportYear3;
	}
	public String getSupportYear4() {
		return supportYear4;
	}
	public void setSupportYear4(String supportYear4) {
		this.supportYear4 = supportYear4;
	}
	public String getSupportYear5() {
		return supportYear5;
	}
	public void setSupportYear5(String supportYear5) {
		this.supportYear5 = supportYear5;
	}
	public String getSupportYear6() {
		return supportYear6;
	}
	public void setSupportYear6(String supportYear6) {
		this.supportYear6 = supportYear6;
	}
	public String getSupportYear7() {
		return supportYear7;
	}
	public void setSupportYear7(String supportYear7) {
		this.supportYear7 = supportYear7;
	}
	public String getSupportYear8() {
		return supportYear8;
	}
	public void setSupportYear8(String supportYear8) {
		this.supportYear8 = supportYear8;
	}
	public String getSupportYear9() {
		return supportYear9;
	}
	public void setSupportYear9(String supportYear9) {
		this.supportYear9 = supportYear9;
	}
	public String getSupportYear10() {
		return supportYear10;
	}
	public void setSupportYear10(String supportYear10) {
		this.supportYear10 = supportYear10;
	}
	public int getSupportTotal() {
		return supportTotal;
	}
	public void setSupportTotal(int supportTotal) {
		this.supportTotal = supportTotal;
	}
	public int getProfessionalService() {
		return professionalService;
	}
	public void setProfessionalService(int professionalService) {
		this.professionalService = professionalService;
	}
	public int getTraining() {
		return training;
	}
	public void setTraining(int training) {
		this.training = training;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getOtherYear1() {
		return otherYear1;
	}
	public void setOtherYear1(String otherYear1) {
		this.otherYear1 = otherYear1;
	}
	public String getOtherYear2() {
		return otherYear2;
	}
	public void setOtherYear2(String otherYear2) {
		this.otherYear2 = otherYear2;
	}
	public String getOtherYear3() {
		return otherYear3;
	}
	public void setOtherYear3(String otherYear3) {
		this.otherYear3 = otherYear3;
	}
	public String getOtherYear4() {
		return otherYear4;
	}
	public void setOtherYear4(String otherYear4) {
		this.otherYear4 = otherYear4;
	}
	public String getOtherYear5() {
		return otherYear5;
	}
	public void setOtherYear5(String otherYear5) {
		this.otherYear5 = otherYear5;
	}
	public String getOtherYear6() {
		return otherYear6;
	}
	public void setOtherYear6(String otherYear6) {
		this.otherYear6 = otherYear6;
	}
	public String getOtherYear7() {
		return otherYear7;
	}
	public void setOtherYear7(String otherYear7) {
		this.otherYear7 = otherYear7;
	}
	public String getOtherYear8() {
		return otherYear8;
	}
	public void setOtherYear8(String otherYear8) {
		this.otherYear8 = otherYear8;
	}
	public String getOtherYear9() {
		return otherYear9;
	}
	public void setOtherYear9(String otherYear9) {
		this.otherYear9 = otherYear9;
	}
	public String getOtherYear10() {
		return otherYear10;
	}
	public void setOtherYear10(String otherYear10) {
		this.otherYear10 = otherYear10;
	}
	public int getOtherTotal() {
		return otherTotal;
	}
	public void setOtherTotal(int otherTotal) {
		this.otherTotal = otherTotal;
	}
	
	
	
	public String getDlId() {
		return dlId;
	}
	public void setDlId(String dlId) {
		this.dlId = dlId;
	}
	public String getTimeStamp() {
		return timeStamp;
	}
	public void setTimeStamp(String timeStamp) {
		this.timeStamp = timeStamp;
	}
	public String getCreationDate() {
		return creationDate;
	}
	public void setCreationDate(String creationDate) {
		this.creationDate = creationDate;
	}
	public String getCreatedBy() {
		return createdBy;
	}
	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
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
	
	
}
