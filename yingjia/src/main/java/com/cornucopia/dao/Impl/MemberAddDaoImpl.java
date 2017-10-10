package com.cornucopia.dao.Impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.MemberProfitRecord;
import com.cornucopia.dao.MemberAddDao;


@Component
public class MemberAddDaoImpl implements MemberAddDao {

	@Autowired
	private SessionFactory sf;
	
	public Session getSession(){
		return sf.getCurrentSession();
	}
	
	@Override
	public List<MemberProfitRecord> getMemberProfitRecordByMid(int mid) {
		// TODO Auto-generated method stub
		String hql="from Member_profit_record where member_id="+mid+"";
		List<MemberProfitRecord> mprList=getSession().createQuery(hql).list();
		return mprList;
	}

}
