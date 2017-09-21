package com.cornucopia.bean;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name="User_role")//��ɫ��
public class UserRole {
              
	         private int id;//����
	         private String cname;//������
	         private String remark;//��ע
	         private Date create_date;//����ʱ��
	         private Date update_date;//�޸�ʱ��
	         private Set<Resources> resour=new HashSet<Resources>();
	         private Set<Users> users=new HashSet<Users>();
             //�����û���
	     	@OneToMany(cascade=CascadeType.ALL,mappedBy="userrole")
	         public Set<Users> getUsers() {
				return users;
			}
			public void setUsers(Set<Users> users) {
				this.users = users;
			}
			@Id
	         @GeneratedValue
			public int getId() {
				return id;
			}
			
			public void setId(int id) {
				this.id = id;
			}
			public String getCname() {
				return cname;
			}
			public void setCname(String cname) {
				this.cname = cname;
			}
			public String getRemark() {
				return remark;
			}
			public void setRemark(String remark) {
				this.remark = remark;
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
	         //��Զ�Ȩ��
	     	@ManyToMany(cascade=CascadeType.ALL)
	     	//�м������
	    	@JoinTable(name="role_Res",joinColumns=@JoinColumn(name="rid"),
	    		inverseJoinColumns=@JoinColumn(name="pid"))
	     	public Set<Resources> getResour() {
				return resour;
			}
			public void setResour(Set<Resources> resour) {
				this.resour = resour;
			}
			
}
