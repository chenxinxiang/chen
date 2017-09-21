package com.cornucopia.bean;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Table(name="Role_permission_relation")//角色权限表
@Entity
public class RolePermissionRelation {

	private int role_id;//角色id
	
	private String permission_ename;//权限名称
	
	private Date create_date;//创建时间

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
