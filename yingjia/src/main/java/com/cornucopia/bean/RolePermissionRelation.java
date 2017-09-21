package com.cornucopia.bean;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="Role_permission_relation")//��ɫȨ�ޱ�
@Entity
public class RolePermissionRelation {

	private int role_id;//��ɫid
	
	private String permission_ename;//Ȩ������
	
	private Date create_date;//����ʱ��

	@Id
	@GeneratedValue
	public int getRole_id() {
		return role_id;
	}

	public void setRole_id(int role_id) {
		this.role_id = role_id;
	}

	public String getPermission_ename() {
		return permission_ename;
	}

	public void setPermission_ename(String permission_ename) {
		this.permission_ename = permission_ename;
	}

	public Date getCreate_date() {
		return create_date;
	}

	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}
	
	
}
