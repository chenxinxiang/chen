package com.cornucopia.serviceImpl;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.Resources;
import com.cornucopia.bean.UserRole;
import com.cornucopia.dao.UserRoleImpl;
import com.cornucopia.service.UserService;

@Component
@Transactional
public class UserRoleServiceImpl implements UserService {
	@Autowired
	private UserRoleImpl userRoleImpl;
	
	@Override
	public List<UserRole> ListAll(Object...object) {
		List<UserRole> UserRoleList=userRoleImpl.ListAll();
		return UserRoleList;
	}
	
	@Override
	public List ListAlltrue(int id) {
		List UserRoleList=userRoleImpl.ListAlltrue(id);
		return UserRoleList;
	}
	@Override
	public void save(Object...object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(Object object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Object object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public <T> T getById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public  Set<String> ListAllByName(Object object) {
		Set<String> set=userRoleImpl.ListAllByName(object);
		return set;
	}

	@Override
	public <T> Set<String> ListResourcesByName(String name) {
		Set<String> set=userRoleImpl.ListResourcesByName(name);
		return set;
	}

	@Override
	public <T> T getByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List listall(String name, String status, String type) {
		// TODO Auto-generated method stub
		return null;
	}

}
