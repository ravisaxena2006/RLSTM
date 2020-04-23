package com.techm.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class ProjectCosts {

	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
	 private int projectId;
	
	 private int bidDetailsId;
	
	 private int towerId;
	
	 private int costCategoryId;
	
	 private int costItemId;
	
	 private int costTypeId;
	
	 private String description;
	 
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
     private String creationDate;
     private String createdBy;
     private String dl_id;
     private String time_stamp;
 
     private String filepath;
     
     
     private String project_duration;
     public String getProject_duration() {
		return project_duration;
	}
	public void setProject_duration(String project_duration) {
		this.project_duration = project_duration;
	}
     
    
	public String getFilepath() {
		return filepath;
	}
	public void setFilepath(String filepath) {
		this.filepath = filepath;
	}
	public int getTowerId() {
		return towerId;
	}
	public void setTowerId(int towerId) {
		this.towerId = towerId;
	}
	public int getCostCategoryId() {
		return costCategoryId;
	}
	public void setCostCategoryId(int costCategoryId) {
		this.costCategoryId = costCategoryId;
	}
	public int getCostItemId() {
		return costItemId;
	}
	public void setCostItemId(int costItemId) {
		this.costItemId = costItemId;
	}
	
	public int getCostTypeId() {
		return costTypeId;
	}
	public void setCostTypeId(int costTypeId) {
		this.costTypeId = costTypeId;
	}
	public String getTime_stamp() {
		return time_stamp;
	}
	public void setTime_stamp(String time_stamp) {
		this.time_stamp = time_stamp;
	}
	public String getDl_id() {
 		return dl_id;
 	}
 	public void setDl_id(String dl_id) {
 		this.dl_id = dl_id;
 	}
     
	public int getProjectId() {
		return projectId;
	}
	public void setProjectId(int projectId) {
		this.projectId = projectId;
	}
	public int getBidDetailsId() {
		return bidDetailsId;
	}
	public void setBidDetailsId(int bidDetailsId) {
		this.bidDetailsId = bidDetailsId;
	}
	
 
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
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
     
     
}
