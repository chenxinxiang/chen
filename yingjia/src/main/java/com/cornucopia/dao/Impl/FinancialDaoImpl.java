package com.cornucopia.dao.Impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.AwardRecords;
import com.cornucopia.bean.Member;
import com.cornucopia.service.FinancialDao;
@Component
public class FinancialDaoImpl implements FinancialDao{

	@Autowired
	private SessionFactory sf;
	
	public Session getSession(){
		return sf.getCurrentSession();
	}
	public List<AwardRecords> lsa(String iphone,String start, String zhifu) {
		Session session=getSession();
		String hql="select SUM(amount) from award_records where 0=0";
		 List<Member>  m=lsm(iphone);
		 int i=-1;
		 	for (Member member : m) {
				i=member.getId();
			}
			System.out.println(i);
			if(i!=0){
				hql+=" and invitingid ="+i+" GROUP BY invitingid";
			}
			if(start!=null&&!"".equals(start)){
       		 hql+=" and addTime>='"+start+"' ";
       	 }
    		if(zhifu!=null&&!"".equals(zhifu)){
    			 hql+=" and addTime<='"+zhifu+"' "; 
    		 }
			System.out.println(hql);
		List list=session.createSQLQuery(hql).list();
		if(list.size()>0){
			System.out.println(list.size());
			System.out.println(list.get(0)+"+"+list.size());
			return list;
		}
		return null;
	}

	public List<Member> lsm(String iphone) {
		Session session=getSession();
		String hql=" from Member where  mobile_Phone ='"+iphone+"'";
		if(iphone!=null&&!"".equals(iphone)){
			hql+=" and mobile_Phone ='"+iphone+"'";
		}
		System.out.println(hql);
		List<Member> list=session.createQuery(hql).list();
		if(list.size()<1){
			System.out.println("123");
			return null;
		}
		return list;
	}

	public List lsmdr(String iphone,String start, String zhifu) {
		Session session=getSession();
		String hql="select SUM(amount) from member_deposit_record where 0=0  ";
		 List<Member> m=lsm(iphone);
			int i=m.get(0).getId();
			if(start!=null&&!"".equals(start)){
	      		 hql+=" and create_date>='"+start+"' ";
	      	 }
	   		if(zhifu!=null&&!"".equals(zhifu)){
	   			 hql+=" and create_date<='"+zhifu+"' "; 
	   		 }
			if(i!=0){
				hql+=" and member_id ='"+i+"' GROUP BY member_id" ;
			}
			
			System.out.println(hql);
		List list=session.createSQLQuery(hql).list();
		if(list.size()<1){
			System.out.println("123");
			return null;
		}
		return list;
	}

	public List lsmt(String iphone,String start, String zhifu) {
		Session session=getSession();
		String hql="select SUM(amount) from member_tally where 0=0";
		 List<Member> m=lsm(iphone);
			int i=m.get(0).getId();
			if(i!=0){
				hql+=" and member_id ='"+i+"' GROUP BY member_id";
			}
			if(start!=null&&!"".equals(start)){
	      		 hql+=" and create_date>='"+start+"' ";
	      	 }
	   		if(zhifu!=null&&!"".equals(zhifu)){
	   			 hql+=" and create_date<='"+zhifu+"' "; 
	   		 }
			System.out.println(hql);
		List list=session.createSQLQuery(hql).list();
		if(list.size()<1){
			System.out.println("123");
			return null;
		}
		return list;
	}

	public List lsmw(String iphone,String start, String zhifu) {
		Session session=getSession();
		String hql="select SUM(amount) from member_withdraw_record where 0=0";
		 List<Member> m=lsm(iphone);
			int i=m.get(0).getId();
			if(start!=null&&!"".equals(start)){
	      		 hql+=" and create_date>='"+start+"' ";
	      	 }
	   		if(zhifu!=null&&!"".equals(zhifu)){
	   			 hql+=" and create_date<='"+zhifu+"' "; 
	   		 }
			if(i!=0){
				hql+=" and member_id ='"+i+"' GROUP BY member_id";
			}
			System.out.println(hql);
		List list=session.createSQLQuery(hql).list();
		if(list.size()<1){
			System.out.println("123");
			return null;
		}
		return list;
	}

	public List  lst(String iphone,String start,String type,String zhifu) {
		Session session=getSession();
		String hql=" from Member_trade_record where 0=0";
		 List<Member> m=lsm(iphone);
			int i=m.get(0).getId();
			if(i!=0){
				hql+=" and member_id ='"+i+"'";
			}
			if(start!=null&&!"".equals(start)){
	      		 hql+=" and create_date>='"+start+"' ";
	      	 }
	   		if(zhifu!=null&&!"".equals(zhifu)){
	   			 hql+=" and create_date<='"+zhifu+"' "; 
	   		 }
         System.out.println(zhifu+"-----------------");
	   		if(type!=null&&!"".equals(type)){
				hql+=" and trade_type ='"+type+"'";
			}
			System.out.println(hql);
		List  list=session.createQuery(hql).list();
		System.out.println(list.size()+"qwee");
		if(list.size()<1){
			System.out.println("123");
			return null;
		}
		return list;
	}

	public List lsma(String iphone,String start, String zhifu) {
		Session session=getSession();
		String hql=" from Member_account ";
		 List<Member> m=lsm(iphone);
			int i=m.get(0).getId();
			if(i!=0){
				hql+=" where  member_id ='"+i+"'";
			}
			if(start!=null&&!"".equals(start)){
	      		 hql+=" and create_date>='"+start+"' ";
	      	 }
	   		if(zhifu!=null&&!"".equals(zhifu)){
	   			 hql+=" and create_date<='"+zhifu+"' "; 
	   		 }
		List<Member>list=session.createQuery(hql).list();
		return list;
	}
	@Override
	public Boolean list1(String iphone) {
         Session session=getSession();
         String hql="from Member where  mobile_Phone ='"+iphone+"'";
         List<Member> list=session.createQuery(hql).list();
         if(list.size()>0){
        	 return true;
         }
         
		return false;
	}

}
