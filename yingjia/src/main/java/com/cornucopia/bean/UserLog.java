package com.cornucopia.bean;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="User_log")//��¼��־��
@Entity

public class UserLog {          
	  private int id;//����
	  private int user_id;//�û�id
	  private int action;//����
	  private Date create_date;//����ʱ��
	  private Date update_date;//�޸�ʱ��
	  private String login_iP;//��¼ip��ַ
	 
	 @Id
	 @GeneratedValue
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getAction() {
		return action;
	}
	public void setAction(int action) {
		this.action = action;
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
	public String getLogin_iP() {
		return login_iP;
	}
	public void setLogin_iP(String login_iP) {
		this.login_iP = login_iP;
	}
	  
}
