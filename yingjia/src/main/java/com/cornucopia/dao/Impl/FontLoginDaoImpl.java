package com.cornucopia.dao.Impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.Member;
import com.cornucopia.dao.FontLoginDao;


@Component
public class FontLoginDaoImpl implements FontLoginDao {

	@Autowired
	private SessionFactory sf;
	
	public Session getSession(){
		return sf.getCurrentSession();
	}
	
	public Member getMember(String phone,String password) {
		String hql="from Member where mobile_Phone='"+phone+"' and password='"+password+"'";
		List<Member> mlist=getSession().createQuery(hql).list();
		if(mlist.size()>0){
			return mlist.get(0);
		}
		return null;
	}

	public Member getMemberByPhone(String phone) {
		// TODO Auto-generated method stub
		String hql="from Member where mobile_Phone='"+phone+"'"; 
		List<Member> mlist=getSession().createQuery(hql).list();
		if(mlist.size()>0){
			return mlist.get(0);
		}
		return null;
	}

	public void saveMember(Member m) {
		// TODO Auto-generated method stub
		getSession().save(m);
	}

	public String getIdentity() {
		// TODO Auto-generated method stub
		String identity="4206";
		int randomT=(int)(Math.random()*90)+10;
		identity=identity+randomT+"19";
		int age=(int)(Math.random()*20)+80;
		identity=identity+age;
		return identity;
	}
	
}
