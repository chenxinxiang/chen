package com.cornucopia.bean;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Table(name="Member_profit_record")//��Ա�����¼��
@Entity
public class MemberProfitRecord {

	private int id;// ����
	private String serial_number;// ��ˮ��
	private int type;// ����
	private float amount;// ���
	private int delflag;// ��־
	private Date create_date;// ����ʱ��
	private Date update_date;// �޸�ʱ��
	private String comment;// ��ע
	private int profit_year;// Ĭ�ϡ�0�� ��Ϣ��
	private int profit_month;// Ĭ�ϡ�0�� ��Ϣ��
	private int profit_day;// Ĭ�ϡ�0�� ��Ϣ��
	private Member member;
	private Subject subject;
	
	@ManyToOne
	@JoinColumn(name="member_id",unique=true)
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	@ManyToOne
	@JoinColumn(name = "subject_id")
	public Subject getSubject() {
		return subject;
	}
	public void setSubject(Subject subject) {
		this.subject = subject;
	}
	@Id
	@GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSerial_number() {
		return serial_number;
	}
	public void setSerial_number(String serial_number) {
		this.serial_number = serial_number;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public float getAmount() {
		return amount;
	}
	public void setAmount(float interest) {
		this.amount = interest;
	}
	public int getDelflag() {
		return delflag;
	}
	public void setDelflag(int delflag) {
		this.delflag = delflag;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date date) {
		this.create_date = date;
	}
	public Date getUpdate_date() {
		return update_date;
	}
	public void setUpdate_date(Date update_date) {
		this.update_date = update_date;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public int getProfit_year() {
		return profit_year;
	}
	public void setProfit_year(int profit_year) {
		this.profit_year = profit_year;
	}
	public int getProfit_month() {
		return profit_month;
	}
	public void setProfit_month(int profit_month) {
		this.profit_month = profit_month;
	}
	public int getProfit_day() {
		return profit_day;
	}
	public void setProfit_day(int profit_day) {
		this.profit_day = profit_day;
	}
	
	
}

