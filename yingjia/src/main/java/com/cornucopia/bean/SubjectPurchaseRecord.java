package com.cornucopia.bean;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Table(name="subject_bbin_purchase_record")  
@Entity

public class SubjectPurchaseRecord {
                  
	private int id;// ����
	private String serial_number;// ��ˮ��
	private int amount;// ������
	private String deal_id;// ����IP
	private int delflag;// �Ƿ�ɾ��
	private String  create_date;// ����ʱ��
	private String update_date;// �޸�ʱ��
	private int interest;// ������Ϣ
	private int ispayment;// �Ƿ񻹿�
	private int pay_interest_times;// �������
	private String last_profit_day;// ����Ϣ��
	private String bonus_info;// ��������Ϣ��app��ʵ��Ͷ�ʶ��+������)
	private Member member;// ��Ա��
	private Subject subject;//��ı�
	
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
	public String getDeal_id() {
		return deal_id;
	}
	public void setDeal_id(String deal_id) {
		this.deal_id = deal_id;
	}
	public int getDelflag() {
		return delflag;
	}
	public void setDelflag(int delflag) {
		this.delflag = delflag;
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
	public void setUpdate_date(String update_date) {
		this.update_date = update_date;
	}
	public int getInterest() {
		return interest;
	}
	public void setInterest(int interest) {
		this.interest = interest;
	}
	public int getIspayment() {
		return ispayment;
	}
	public void setIspayment(int ispayment) {
		this.ispayment = ispayment;
	}
	public int getPay_interest_times() {
		return pay_interest_times;
	}
	public void setPay_interest_times(int pay_interest_times) {
		this.pay_interest_times = pay_interest_times;
	}
	public String getLast_profit_day() {
		return last_profit_day;
	}
	public void setLast_profit_day(String last_profit_day) {
		this.last_profit_day = last_profit_day;
	}
	public String getBonus_info() {
		return bonus_info;
	}
	public void setBonus_info(String bonus_info) {
		this.bonus_info = bonus_info;
	}
	@ManyToOne
	@JoinColumn(name="member_id",unique=true)
	public Member getMember() {
		return member;
	}
	public void setMember(Member member) {
		this.member = member;
	}
	@ManyToOne
	@JoinColumn(name="subject_id",unique=true)
	public Subject getSubject() {
		return subject;
	}
	public void setSubject(Subject subject) {
		this.subject = subject;
	}
	
	
	
	
	
}
