package com.cornucopia.service;

import com.cornucopia.bean.Member;


public interface FontLoginService {

	Member getMember(String phone,String password);
	
	Member getMemberByPhone(String phone);
	
	void saveMember(Member m);
	
	String getIdentity();
	
}
