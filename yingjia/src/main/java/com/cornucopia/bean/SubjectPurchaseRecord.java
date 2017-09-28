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
                  
	private int id;// 主键
	private String serial_number;// 流水号
	private int amount;// 购买金额
	private String deal_id;// 交易IP
	private int delflag;// 是否删除
	private String  create_date;// 创建时间
	private String update_date;// 修改时间
	private int interest;// 结算利息
	private int ispayment;// 是否还款
	private int pay_interest_times;// 购买次数
	private String last_profit_day;// 最后计息日
	private String bonus_info;// 红包金额信息（app端实际投资额度+红包额度)
	private Member member;// 会员表
	private Subject subject;//标的标
	
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
