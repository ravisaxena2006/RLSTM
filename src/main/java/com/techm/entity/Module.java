package com.techm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="m_module")
public class Module {
	
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name="MODULE_ID")
	private int moduleId;
	@Column(name="MODULE")
	private String module;
	@Column(name="RECORD_STATUS")
	private String recordStatus;
	public int getModuleId() {
		return moduleId;
	}
	public void setModuleId(int moduleId) {
		this.moduleId = moduleId;
	}
	public String getModule() {
		return module;
	}
	public void setModule(String module) {
		this.module = module;
	}
	public String getRecordStatus() {
		return recordStatus;
	}
	public void setRecordStatus(String recordStatus) {
		this.recordStatus = recordStatus;
	}
	
	
}
