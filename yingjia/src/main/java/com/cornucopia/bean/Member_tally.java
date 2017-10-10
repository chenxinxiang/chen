package com.cornucopia.bean;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Table(name="Member_tally")//����
@Entity
public class Member_tally {

	private int id;//����
	private int type_id;//�������id
	private String type_name;//����������
	private int amount;//���
	private Date pay_date;//����ʱ��
	private Date create_date;//����ʱ��
	private Member member;
	@ManyToOne
	@JoinColumn(name="member_id")
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getType_id() {
		return type_id;
	}
	public void setType_id(int type_id) {
		this.type_id = type_id;
	}
	public String getType_name() {
		return type_name;
	}
	public void setType_name(String type_name) {
		this.type_name = type_name;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public Date getPay_date() {
		return pay_date;
	}
	public void setPay_date(Date date) {
		this.pay_date = date;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date date) {
		this.create_date = date;
	}
	
	
	
}
