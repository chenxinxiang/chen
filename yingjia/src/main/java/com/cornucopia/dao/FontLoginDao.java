package com.cornucopia.dao;

import com.cornucopia.bean.Member;

public interface FontLoginDao {

	Member getMember(String phone,String password);
	
	Member getMemberByPhone(String phone);
	
	void saveMember(Member m);
	
	String getIdentity();
}
