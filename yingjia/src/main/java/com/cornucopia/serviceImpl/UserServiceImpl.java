package com.cornucopia.serviceImpl;

import java.util.List;
import java.util.Set;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.UserRole;
import com.cornucopia.bean.Users;
import com.cornucopia.dao.UserDaoImpl;
import com.cornucopia.service.UserService;

@Component
@Transactional
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDaoImpl userDaoImpl;

	@Override
		public List<Users> ListAll(Object... objects) {
	        List<Users> User = userDaoImpl.ListAll();
			return User;
		}

	
	@Override
	public <T> T getById(int id) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <T> List<T> ListAlltrue(int id) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <T> Set<String> ListAllByName(Object object) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public <T> Set<String> ListResourcesByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public  Users getByName(String name) {
        Users users=userDaoImpl.getByName(name);
		return users;
	}


	@Override
	public List listall(String name, String status, String type) {
		// TODO Auto-generated method stub
		return null;
	}
	

	@Override
	public void save(Object... objects) {
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

}
