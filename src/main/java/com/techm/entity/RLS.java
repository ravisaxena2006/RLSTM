package com.techm.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Pattern;

@Entity
public class RLS {
	
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
	 private int RLSId;
	 private int projectPhaseId;
	 private int verticalId;
	 private int towerId;
	 private String subTower;
	 private String role;
     private int billableId;
     private int workPlaceId;
     private int locationId;
     private int cityId;
     private int skillTypeId;
     private int resourceTypeId;
     private int bandId;
     private int premisesId;
     private String remarks;
    // @Pattern(regexp="[0-9]*",message="Number of days should be numeric")
     private String daysYear1;
     private String daysYear2;
     private String daysYear3;
     private String daysYear4;
     private String daysYear5;
     private String daysYear6;
     private String daysYear7;
     private String daysYear8;
     private String daysYear9;
     private String daysYear10;
     private int total;
     private int dsId;
     private String trackingNumber;
     private String creationDate;
     private String createdBy;
     private String projectDuration;
     
 	public RLS() {
		
 	}

	public int getRLSId() {
		return RLSId;
	}

	public void setRLSId(int rLSId) {
		RLSId = rLSId;
	}

	public int getProjectPhaseId() {
		return projectPhaseId;
	}

	public void setProjectPhaseId(int projectPhaseId) {
		this.projectPhaseId = projectPhaseId;
	}

	public int getVerticalId() {
		return verticalId;
	}

	public void setVerticalId(int verticalId) {
		this.verticalId = verticalId;
	}

	public int getTowerId() {
		return towerId;
	}

	public void setTowerId(int towerId) {
		this.towerId = towerId;
	}

	public String getSubTower() {
		return subTower;
	}

	public void setSubTower(String subTower) {
		this.subTower = subTower;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public int getBillableId() {
		return billableId;
	}

	public void setBillableId(int billableId) {
		this.billableId = billableId;
	}

	public int getWorkPlaceId() {
		return workPlaceId;
	}

	public void setWorkPlaceId(int workPlaceId) {
		this.workPlaceId = workPlaceId;
	}

	public int getLocationId() {
		return locationId;
	}

	public void setLocationId(int locationId) {
		this.locationId = locationId;
	}


	public int getCityId() {
		return cityId;
	}

	public void setCityId(int cityId) {
		this.cityId = cityId;
	}

	public int getSkillTypeId() {
		return skillTypeId;
	}

	public void setSkillTypeId(int skillTypeId) {
		this.skillTypeId = skillTypeId;
	}

	public int getResourceTypeId() {
		return resourceTypeId;
	}

	public void setResourceTypeId(int resourceTypeId) {
		this.resourceTypeId = resourceTypeId;
	}

	public int getBandId() {
		return bandId;
	}

	public void setBandId(int bandId) {
		this.bandId = bandId;
	}

	public int getPremisesId() {
		return premisesId;
	}

	public void setPremisesId(int premisesId) {
		this.premisesId = premisesId;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}


	public String getDaysYear1() {
		return daysYear1;
	}

	public void setDaysYear1(String daysYear1) {
		this.daysYear1 = daysYear1;
	}

	public String getDaysYear2() {
		return daysYear2;
	}

	public void setDaysYear2(String daysYear2) {
		this.daysYear2 = daysYear2;
	}

	public String getDaysYear3() {
		return daysYear3;
	}

	public void setDaysYear3(String daysYear3) {
		this.daysYear3 = daysYear3;
	}

	public String getDaysYear4() {
		return daysYear4;
	}

	public void setDaysYear4(String daysYear4) {
		this.daysYear4 = daysYear4;
	}

	public String getDaysYear5() {
		return daysYear5;
	}

	public void setDaysYear5(String daysYear5) {
		this.daysYear5 = daysYear5;
	}

	public String getDaysYear6() {
		return daysYear6;
	}

	public void setDaysYear6(String daysYear6) {
		this.daysYear6 = daysYear6;
	}

	public String getDaysYear7() {
		return daysYear7;
	}

	public void setDaysYear7(String daysYear7) {
		this.daysYear7 = daysYear7;
	}

	public String getDaysYear8() {
		return daysYear8;
	}

	public void setDaysYear8(String daysYear8) {
		this.daysYear8 = daysYear8;
	}

	public String getDaysYear9() {
		return daysYear9;
	}

	public void setDaysYear9(String daysYear9) {
		this.daysYear9 = daysYear9;
	}

	public String getDaysYear10() {
		return daysYear10;
	}

	public void setDaysYear10(String daysYear10) {
		this.daysYear10 = daysYear10;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getDsId() {
		return dsId;
	}

	public void setDsId(int dsId) {
		this.dsId = dsId;
	}

	public String getTrackingNumber() {
		return trackingNumber;
	}

	public void setTrackingNumber(String trackingNumber) {
		this.trackingNumber = trackingNumber;
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

	public String getProjectDuration() {
		return projectDuration;
	}

	public void setProjectDuration(String projectDuration) {
		this.projectDuration = projectDuration;
	}
     
	
	
}
