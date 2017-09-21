package com.cornucopia.bean;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

//用户关联表
@Entity
@Table(name="member_account")
public class MemberAccount {

	private int id;//主键
	
	private int member_id;//用户id
	
	private int useable_balance;//可用余额
	
	private int imuseale_balance;//冻结余额
	
	private int total_profit;//累计收益
	
	private Date create_date;//创建时间
	
	private Date update_date;//修改时间
	
	private int bonus_amount;//红包金额
	
	private int invest_amount;//投资总额
	
	private int delflag;// 删除'0'
	
	private int bbin_amount;//体验金
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	public int getMember_id() {
		return member_id;
	}
	public void setMember_id(int member_id) {
		this.member_id = member_id;
	}
	public int getUseable_balance() {
		return useable_balance;
	}
	public void setUseable_balance(int useable_balance) {
		this.useable_balance = useable_balance;
	}
	public int getImuseale_balance() {
		return imuseale_balance;
	}
	public void setImuseale_balance(int imuseale_balance) {
		this.imuseale_balance = imuseale_balance;
	}
	public int getTotal_profit() {
		return total_profit;
	}
	public void setTotal_profit(int total_profit) {
		this.total_profit = total_profit;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	public Date getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}
	public int getBonus_amount() {
		return bonus_amount;
	}
	public void setBonus_amount(int bonus_amount) {
		this.bonus_amount = bonus_amount;
	}
	public int getInvest_amount() {
		return invest_amount;
	}
	public void setInvest_amount(int invest_amount) {
		this.invest_amount = invest_amount;
	}
	public int getDelflag() {
		return delflag;
	}
	public void setDelflag(int delflag) {
		this.delflag = delflag;
	}
	public int getBbin_amount() {
		return bbin_amount;
	}
	public void setBbin_amount(int bbin_amount) {
		this.bbin_amount = bbin_amount;
	}
	
}
