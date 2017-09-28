package com.cornucopia.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import com.cornucopia.bean.Member;
import com.cornucopia.bean.MemberTradeRecord;

@Component
public class MemberRecordDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return this.sessionFactory.getCurrentSession();
	}
	
	public List<MemberTradeRecord> listRecordAll(Map map){
		Session session=getSession();
		String hql="from MemberTradeRecord M where 0=0";
		 hql=listHql(map, hql);
//		if(trade_no!=null&&!"".equals(trade_no)){
//			hql+="and trade_no like '%"+trade_no+"%'" ;
//		}
//		if(mobile_Phone!=null&&!"".equals(mobile_Phone)){
//			hql+="and mobile_Phone like '%"+mobile_Phone+"%'" ;
//		}
		List<MemberTradeRecord> mrList=session.createQuery(hql).list();
		return mrList;
	}
	
	public List<Member> listMemberAll(){
		Session session=getSession();
		String hql="from Member";
		List<Member> mrList=session.createQuery(hql).list();
		return mrList;
	}
	
	
	//通过交易号和电话号码进行模糊查询
//	public List<MemberTradeRecord> mtrlist(String trade_no){
//		Session ss=getSession();
//			String hql="from MemberTradeRecord e where e.trade_no like '%"+trade_no+"%'";
//			System.out.println(hql);
//			List <MemberTradeRecord> mrList=ss.createQuery(hql).list();
//			return mrList;
//		}
//	public List<Member> memList(String mobile_Phone){
//		Session ss=getSession();
//			String hql="from MemberTradeRecord where member.mobile_Phone like '%"+mobile_Phone+"%'";
//			System.out.println(hql);
//			List <Member> memList=ss.createQuery(hql).list();
//			return memList;
//		}
	
	
	public String listHql(Map map,String hql){
		String trade_no=(String)map.get("trade_no");
		String mobile_Phone=(String)map.get("mobile_Phone");
		System.out.println(trade_no+" ---"+mobile_Phone);
				
		if(trade_no!=null&&!trade_no.equals("")){
			hql+=" and trade_no like '%"+trade_no+"%'";
		}
		if(mobile_Phone!=null&&!mobile_Phone.equals("")){
			hql+=" and M.member.mobile_Phone like '%"+mobile_Phone+"%'";
		}
		return hql;
	}
}
