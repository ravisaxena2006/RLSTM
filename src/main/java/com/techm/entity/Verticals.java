package com.techm.entity;

import javax.persistence.*;

@Embeddable
public class Verticals {

	
	public int VERTICAL_ID;
	
	public int RECORD_STATUS;
	
	public int getVERTICAL_ID() {
		return VERTICAL_ID;
	}
	public void setVERTICAL_ID(int vERTICAL_ID) {
		VERTICAL_ID = vERTICAL_ID;
	}
	
	public int getRECORD_STATUS() {
		return RECORD_STATUS;
	}
	public void setRECORD_STATUS(int rECORD_STATUS) {
		RECORD_STATUS = rECORD_STATUS;
	}
	
	
}
