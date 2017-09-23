package com.cornucopia.bean;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table
public class Range {
	/**
	 * 邀请奖励  值域
	 * @author ASUS
	 *
	 */
		private int id;
		
		private String member_name;
		
		private String mobile_Phone;
		
		private String invitationCode;
		
		private String invitedCode;
		
		private int amount;
		
		private String type;
		
		private String isAward;
		
		private String addTime;
		
		@Id
		@GeneratedValue
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getMember_name() {
			return member_name;
		}
		public void setMember_name(String member_name) {
			this.member_name = member_name;
		}
		public String getMobile_Phone() {
			return mobile_Phone;
		}
		public void setMobile_Phone(String mobile_Phone) {
			this.mobile_Phone = mobile_Phone;
		}
		public String getInvitationCode() {
			return invitationCode;
		}
		public void setInvitationCode(String invitationCode) {
			this.invitationCode = invitationCode;
		}
		public String getInvitedCode() {
			return invitedCode;
		}
		public void setInvitedCode(String invitedCode) {
			this.invitedCode = invitedCode;
		}
		public int getAmount() {
			return amount;
		}
		public void setAmount(int amount) {
			this.amount = amount;
		}
		public String getType() {
			return type;
		}
		public void setType(String type) {
			this.type = type;
		}
		public String getIsAward() {
			return isAward;
		}
		public void setIsAward(String isAward) {
			this.isAward = isAward;
		}
		public String getAddTime() {
			return addTime;
		}
		public void setAddTime(String addTime) {
			this.addTime = addTime;
		}

}
