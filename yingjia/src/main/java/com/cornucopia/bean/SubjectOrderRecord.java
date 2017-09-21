package com.cornucopia.bean;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="Subject_order_record")//标的订单
@Entity

public class SubjectOrderRecord {
           private int id;//主键
           private String serial_number;//流水号
           private int deal_type;//交易类型
           private int amout;//订单金额
           private int status;//订单状态
           private int subject_id;//标的id
           private int member_id;//用户id
           private int delfalg;//是否删除
           private Date create_date;//创建日期
           private Date update_date;//更新日期
           
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
		public int getDeal_type() {
			return deal_type;
		}
		public void setDeal_type(int deal_type) {
			this.deal_type = deal_type;
		}
		public int getAmout() {
			return amout;
		}
		public void setAmout(int amout) {
			this.amout = amout;
		}
		public int getStatus() {
			return status;
		}
		public void setStatus(int status) {
			this.status = status;
		}
		public int getSubject_id() {
			return subject_id;
		}
		public void setSubject_id(int subject_id) {
			this.subject_id = subject_id;
		}
		public int getMember_id() {
			return member_id;
		}
		public void setMember_id(int member_id) {
			this.member_id = member_id;
		}
		public int getDelfalg() {
			return delfalg;
		}
		public void setDelfalg(int delfalg) {
			this.delfalg = delfalg;
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
