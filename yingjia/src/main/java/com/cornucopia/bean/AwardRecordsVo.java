package com.cornucopia.bean;

public class AwardRecordsVo {
	private String bname;
	private int type;
	public int getIsAward() {
		return isAward;
	}
	public void setIsAward(int isAward) {
		this.isAward = isAward;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	private String date;
	private float money;
	private int isAward; 
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}

	public float getMoney() {
		return money;
	}
	public void setMoney(float f) {
		this.money = f;
	}
	

}
