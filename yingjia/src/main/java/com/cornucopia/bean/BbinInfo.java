package com.cornucopia.bean;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="Bbin_info")//'�������Ϣ��'
@Entity
public class BbinInfo {

	private int id;//����
	private int member_id;//��Աid
	private int amont;//���
	private int status;//״̬��0���ǣ�
	private Date create_date;//����ʱ��
	private Date update_date;//�޸�ʱ��
	
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
	public int getAmont() {
		return amont;
	}
	public void setAmont(int amont) {
		this.amont = amont;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
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
