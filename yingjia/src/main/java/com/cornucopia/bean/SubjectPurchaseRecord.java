package com.cornucopia.bean;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Table(name="Subject_purchase_record")  //��Ĺ����
@Entity

public class SubjectPurchaseRecord {
                  
	       private int id;//����
	       private String serial_number;//��ˮ��
	       private int amount;//������
	       private String deal_id;//����IP
	       private Subject subject;
	       private int member_id;//��Աid
	       private int delflag;//�Ƿ�ɾ��
	       private Date create_date;//����ʱ��
	       private Date update_date;//�޸�ʱ��
	       private int interset;//������Ϣ
	       private int ispayment;//�Ƿ񻹿�
	       private int pay_interest_times;//�������
	       private int last_profit_day;//����Ϣ��
	       private String bonus_info;//��������Ϣ��app��ʵ��Ͷ�ʶ��+������)
	       
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
		@ManyToOne
		@JoinColumn(name="subject_id")
	public Subject getSubject() {
		return subject;
	}

	public void setSubject(Subject subject) {
		this.subject = subject;
	}
		public int getMember_id() {
			return member_id;
		}
		public void setMember_id(int member_id) {
			this.member_id = member_id;
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
		public void setCreate_date(Date create_date) {
			this.create_date = create_date;
		}
		public Date getUpdate_date() {
			return update_date;
		}
		public void setUpdate_date(Date update_date) {
			this.update_date = update_date;
		}
		public int getInterset() {
			return interset;
		}
		public void setInterset(int interset) {
			this.interset = interset;
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
			public int getLast_profit_day() {
				return last_profit_day;
			}
			public void setLast_profit_day(int last_profit_day) {
				this.last_profit_day = last_profit_day;
			}
			public String getBonus_info() {
				return bonus_info;
			}
			public void setBonus_info(String bonus_info) {
				this.bonus_info = bonus_info;
			}   
}
