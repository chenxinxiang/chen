package com.cornucopia.serviceImpl;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Component;

import com.cornucopia.service.UserPasswordDao;
import com.cornucopia.service.UserPasswordService;

@Component
@Transactional
public class UserPasswordServiceImpl implements UserPasswordService {
	
	@Resource
	private UserPasswordDao userPasswordDaoImpl;
	@Override
	public void updateUserPassword(String user_name, String ps) {
		this.userPasswordDaoImpl.updateUserPassword(user_name, ps);
		

	}

}
