package com.cornucopia.bean;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Table
@Entity
public class Resources {
  
	  //��Դid
	private int Resources_id;
	//��Դ����
	  private String Resources_name;
	  //��Դ�ϼ�id
	  private int Resources_higher;
	 //�Ƿ��Ǹ��ڵ�
	  private int IsParent;
	  //�Ƿ��״̬
	  private int Open;
	  //�Ƿ����ѡ��
	  private int chkDisabled;
	public int getChkDisabled() {
		return chkDisabled;
	}
	public void setChkDisabled(int chkDisabled) {
		this.chkDisabled = chkDisabled;
	}
	public int getOpen() {
		return Open;
	}
	public void setOpen(int open) {
		Open = open;
	}
	public int getIsParent() {
		return IsParent;
	}
	public void setIsParent(int isParent) {
		IsParent = isParent;
	}
	private Set<UserRole> resour=new HashSet<UserRole>();
	@ManyToMany(mappedBy="resour")
	 public Set<UserRole> getResour() {
			return resour;
		}
		public void setResour(Set<UserRole> resour) {
			this.resour = resour;
		}
	  @Id
	  @GeneratedValue
	  public int getResources_id() {
			return Resources_id;
		}
		public void setResources_id(int resources_id) {
			Resources_id = resources_id;
		}
		public String getResources_name() {
			return Resources_name;
		}
		public void setResources_name(String resources_name) {
			Resources_name = resources_name;
		}
		public int getResources_higher() {
			return Resources_higher;
		}
		public void setResources_higher(int resources_higher) {
			Resources_higher = resources_higher;
		}
}
