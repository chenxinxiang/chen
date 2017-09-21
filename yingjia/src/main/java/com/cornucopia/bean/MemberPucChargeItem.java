package com.cornucopia.bean;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="Member_puc_charge_item")//缴费项目表
@Entity
public class MemberPucChargeItem {

	private int id;//主键
	private int member_id;//默认‘0’ 用户id
	private int home_id;//默认‘0’ homeid
	private String charge_type;//缴费类别
	private int charge_institution_id;//默认‘0’ 缴费机构id
	private String charge_institution_name;//缴费机构名称
	private String charge_institution_code;//缴费机构编码
	private String customer_code;//客户编码
	private String comment;//备注
	
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
	public int getHome_id() {
		return home_id;
	}
	public void setHome_id(int home_id) {
		this.home_id = home_id;
	}
	public String getCharge_type() {
		return charge_type;
	}
	public void setCharge_type(String charge_type) {
		this.charge_type = charge_type;
	}
	public int getCharge_institution_id() {
		return charge_institution_id;
	}
	public void setCharge_institution_id(int charge_institution_id) {
		this.charge_institution_id = charge_institution_id;
	}
	public String getCharge_institution_name() {
		return charge_institution_name;
	}
	public void setCharge_institution_name(String charge_institution_name) {
		this.charge_institution_name = charge_institution_name;
	}
	public String getCharge_institution_code() {
		return charge_institution_code;
	}
	public void setCharge_institution_code(String charge_institution_code) {
		this.charge_institution_code = charge_institution_code;
	}
	public String getCustomer_code() {
		return customer_code;
	}
	public void setCustomer_code(String customer_code) {
		this.customer_code = customer_code;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	
}
