package com.techm.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="m_skill_type")
public class SkillType {
	
	@Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE)
	@Column(name="skill_type_id")
	private int skillTypeId;
	@Column(name="skill_type")
	private String skillType;
	@Column(name="record_status")
	private String recordStatus;
	public int getSkillTypeId() {
		return skillTypeId;
	}
	public void setSkillTypeId(int skillTypeId) {
		this.skillTypeId = skillTypeId;
	}
	public String getSkillType() {
		return skillType;
	}
	public void setSkillType(String skillType) {
		this.skillType = skillType;
	}
	public String getRecordStatus() {
		return recordStatus;
	}
	public void setRecordStatus(String recordStatus) {
		this.recordStatus = recordStatus;
	}
	
	

}
