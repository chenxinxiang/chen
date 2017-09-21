package com.cornucopia.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.service.UserPasswordDao;
@Component
public class UserPasswordDaoImpl implements UserPasswordDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	@Override
	public void updateUserPassword(String user_name,String ps) {
		String sql="update users set password ='"+ps+"' where user_name='"+user_name+"'";
		getSession().createSQLQuery(sql).executeUpdate();
	}

}
