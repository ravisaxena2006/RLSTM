package com.techm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="m_project_phase")
public class ProjectPhase {
	
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name="project_phase_Id")
	private int projectPhaseId;
	@Column(name="project_phase")
	private String projectPhase;
	@Column(name="record_status")
	private String recordStatus;
	
	public int getProjectPhaseId() {
		return projectPhaseId;
	}
	public void setProjectPhaseId(int projectPhaseId) {
		this.projectPhaseId = projectPhaseId;
	}
	public String getProjectPhase() {
		return projectPhase;
	}
	public void setProjectPhase(String projectPhase) {
		this.projectPhase = projectPhase;
	}
	public String getRecordStatus() {
		return recordStatus;
	}
	public void setRecordStatus(String recordStatus) {
		this.recordStatus = recordStatus;
	}
	
	
}
