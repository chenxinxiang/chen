package com.cornucopia.bean;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

//�û�������
@Entity
@Table(name="member_account")
public class MemberAccount {

	private int id;//����
	private Member member;
	@ManyToOne
	@JoinColumn(name="member_id", unique = true)
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	private int useable_balance;//�������
	
	private int imuseale_balance;//�������
	
	private int total_profit;//�ۼ�����
	
	private String create_date;//����ʱ��
	
	private String update_date;//�޸�ʱ��
	
	private int bonus_amount;//������
	
	private int invest_amount;//Ͷ���ܶ�
	
	private int delflag;// ɾ��'0'
	
	private int bbin_amount;//�����
	
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
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
	public String getCreate_date() {
		return create_date;
	}
	public void setCreate_date(String create_date) {
		this.create_date = create_date;
	}
	public String getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(String date) {
		this.update_date = date;
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
