package com.techm.entity;

import javax.persistence.*;

@Embeddable
public class Towers {

	
	public int TOWER_ID;
	
	public int RECORD_STATUS;
	
	public int getTOWER_ID() {
		return TOWER_ID;
	}
	public void setTOWER_ID(int tOWER_ID) {
		TOWER_ID = tOWER_ID;
	}
	
	public int getRECORD_STATUS() {
		return RECORD_STATUS;
	}
	public void setRECORD_STATUS(int rECORD_STATUS) {
		RECORD_STATUS = rECORD_STATUS;
	}
	
	
}
