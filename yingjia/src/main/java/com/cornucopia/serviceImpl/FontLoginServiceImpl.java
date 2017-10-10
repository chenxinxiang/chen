package com.cornucopia.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.cornucopia.bean.Member;
import com.cornucopia.dao.FontLoginDao;
import com.cornucopia.service.FontLoginService;


@Service
public class FontLoginServiceImpl implements FontLoginService {

	@Autowired
	@Qualifier("fontLoginDaoImpl")
	private FontLoginDao fontLogin;
	
	public Member getMember(String phone,String password) {
		// TODO Auto-generated method stub
		return fontLogin.getMember(phone,password);
	}

	public Member getMemberByPhone(String phone) {
		// TODO Auto-generated method stub
		return this.fontLogin.getMemberByPhone(phone);
	}

	public void saveMember(Member m) {
		// TODO Auto-generated method stub
		this.fontLogin.saveMember(m);
	}

	public String getIdentity() {
		// TODO Auto-generated method stub
		return this.fontLogin.getIdentity();
	}

}
