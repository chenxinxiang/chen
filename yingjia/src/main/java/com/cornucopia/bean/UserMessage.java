package com.cornucopia.bean;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="User_message")//用户消息表
public class UserMessage {
             
	           private int id;//主键
	           private int user_id;//用户id
	           private String title;//消息标题
	           private int business_type;//业务类别
	           private int owner_id;//业务id
	           private String content;//消息内容
	           private int msg_status;//状态,(已读未读)
	           private int del_flag;//删除标志
	           private Date create_date;//创建时间
	           private Date update_date;//修改时间
	           
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
			public String getTitle() {
				return title;
			}
			public void setTitle(String title) {
				this.title = title;
			}
			public int getBusiness_type() {
				return business_type;
			}
			public void setBusiness_type(int business_type) {
				this.business_type = business_type;
			}
			public int getOwner_id() {
				return owner_id;
			}
			public void setOwner_id(int owner_id) {
				this.owner_id = owner_id;
			}
			public String getContent() {
				return content;
			}
			public void setContent(String content) {
				this.content = content;
			}
			public int getMsg_status() {
				return msg_status;
			}
			public void setMsg_status(int msg_status) {
				this.msg_status = msg_status;
			}
			public int getDel_flag() {
				return del_flag;
			}
			public void setDel_flag(int del_flag) {
				this.del_flag = del_flag;
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
