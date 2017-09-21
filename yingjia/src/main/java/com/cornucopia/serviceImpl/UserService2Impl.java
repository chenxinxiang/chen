package com.cornucopia.serviceImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.cornucopia.bean.UserRole;
import com.cornucopia.bean.Users;
import com.cornucopia.dao.UserDaoImpl;
import com.cornucopia.service.UserService2;
@Component
@Transactional
public class UserService2Impl implements UserService2 {

	@Autowired
	private UserDaoImpl userDaoImpl;

	@Override
	public void saveUser(Users users) {
		this.userDaoImpl.saveUser(users);

	}

	@Override
	public void saveUserRole(UserRole userRole) {
		this.userDaoImpl.saveUserRole(userRole);

	}

	@Override
	public List<Users> userList() {
		return this.userDaoImpl.userList();
	}

	@Override
	public List<UserRole> roleList() {
		return this.userDaoImpl.roleList();
	}

	@Override
	public Users getByUid(int uid) {
		
		return this.userDaoImpl.getByUid(uid);
	}

	@Override
	public UserRole getByRid(int rid) {
		
		return this.userDaoImpl.getByRid(rid);
	}

	@Override
	public void deleteUser(int uid) {
		 this.userDaoImpl.deleteUser(uid);

	}

	@Override
	public void update(Users users) {
		this.userDaoImpl.update(users);

	}

}
