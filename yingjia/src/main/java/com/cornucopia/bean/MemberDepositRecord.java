package com.cornucopia.bean;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

//��ֵ��¼��
@Entity
@Table(name="Member_deposit_record")
public class MemberDepositRecord {

	private int id;//����
	
	private String serial_number;//��ˮ��
	
	private int amount;//���
	
	private int status;//Ĭ�ϡ�0�� ״̬��0����1����ɣ�
	
	private String pay_channel_name;//��ֵ�������
	
	private String pay_channel_order_no;//��ֵ����������
	
	private int delFlag;//��־
	
	private Date create_date;//����ʱ��
	
	private Date update_date;//�޸�ʱ��
	
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
	public String getSerial_number() {
		return serial_number;
	}
	public void setSerial_number(String serial_number) {
		this.serial_number = serial_number;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getPay_channel_name() {
		return pay_channel_name;
	}
	public void setPay_channel_name(String pay_channel_name) {
		this.pay_channel_name = pay_channel_name;
	}
	public String getPay_channel_order_no() {
		return pay_channel_order_no;
	}
	public void setPay_channel_order_no(String pay_channel_order_no) {
		this.pay_channel_order_no = pay_channel_order_no;
	}
	public int getDelFlag() {
		return delFlag;
	}
	public void setDelFlag(int delFlag) {
		this.delFlag = delFlag;
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
	
}
