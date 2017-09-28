package com.cornucopia.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class UserCountDao {
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	public List listAll(){
		String sql="select *from member m1,member_trade_record m2,member_deposit_record m3,financial_planner f, member_profit_record m4,member_account m5 where m1.id=m2.member_id and m1.id=m3.member_id and m1.id=m4.member_id and m1.id=m5.member_id and m1.id=f.member_id";
		Session session=getSession();
		List list=session.createSQLQuery(sql).list();
		return list;
	}

}
