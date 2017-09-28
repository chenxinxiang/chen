package com.cornucopia.bean;

public class CashFlowProcessVo {
    private float money;
    private String mname;
    private String cashWithdrawalTime;
    private String deploymentId;
    public String getDeploymentId() {
		return deploymentId;
	}
	public void setDeploymentId(String deploymentId) {
		this.deploymentId = deploymentId;
	}
	//流程id
    private int lid;
    //流水号
    private String serialNumbe;
    //任务id
    private String rid;
    
	public String getRid() {
		return rid;
	}
	public void setRid(String rid) {
		this.rid = rid;
	}
	public float getMoney() {
		return money;
	}
	public void setMoney(float money) {
		this.money = money;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getCashWithdrawalTime() {
		return cashWithdrawalTime;
	}
	public void setCashWithdrawalTime(String cashWithdrawalTime) {
		this.cashWithdrawalTime = cashWithdrawalTime;
	}
	public int getLid() {
		return lid;
	}
	public void setLid(int lid) {
		this.lid = lid;
	}
	public String getSerialNumbe() {
		return serialNumbe;
	}
	public void setSerialNumbe(String serialNumbe) {
		this.serialNumbe = serialNumbe;
	}
    

}
