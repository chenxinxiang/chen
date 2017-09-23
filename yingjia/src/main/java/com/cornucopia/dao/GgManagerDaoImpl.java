package com.cornucopia.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.Pushnotice;
import com.cornucopia.service.GgManagerDao;

@Component
public class GgManagerDaoImpl implements GgManagerDao  {

	@Autowired
	public SessionFactory sessionFactory;
	
	public Session getSession(){
		return this.sessionFactory.getCurrentSession();
	}
	//查询所有公告，新闻
	public List ListAll() {
		Session session = getSession();
		String hql="from Push_notice";
		 List list =session.createQuery(hql).list();
		return list;
	}
	//查询所有反馈意见表
	public List Feed(){
		Session session = getSession();
		StringBuffer buffer = new StringBuffer();
		buffer.append(" from  Feedback  u  inner  join fetch u.member ");
		Query query = session.createQuery(buffer.toString());
		List list = query.list();
		System.out.println(list.size());
		return list;

		
	}
	//查询是否有该标题
	public List  list(String hql){
		Session session=getSession();
		List list=session.createQuery(hql).list();
		return list;
	}
	//根据id查询公告内容
			public Pushnotice chakan(int id){
				Session session=getSession();
				Pushnotice pushNotice = (Pushnotice) session.get(Pushnotice.class, id);
				return pushNotice;
	}
	//编辑公告
	public Pushnotice chakang(int id){
		Session session=getSession();
		Pushnotice pushNotice = (Pushnotice) session.get(Pushnotice.class, id);
		return pushNotice;
	}
	//添加
		public void save(Object...objects){
			Session session=getSession();
			session.save(objects[0]);
		}
   //修改
		public void updatelist(int id,String title,String content){
			Session session=getSession();
			String hql="update push_notice user set user.title='"+title+"', user.content='"+content+"' where user.id="+id;
			System.out.println(title+content);
			session.createSQLQuery(hql).executeUpdate();
		}
		//红包统计
         public List  ListCop() {
        	 Session session = getSession();
     		String hql="select sum(amount) from award_records where type=0 and isAward=1";
     		 List list =session.createSQLQuery(hql).list();
     		return list;
}
       //红包统计
		public List  ListCop1() {
			 Session session = getSession();
	     		String hql="select sum(amount) from award_records where type=1 and isAward=1";
	     		 List list2 =session.createSQLQuery(hql).list();
	     		return list2;
		}
		//收益统计
		public List  ListCop2() {
			 Session session = getSession();
	     		String hql="select sum(amount) from Subject where type=0 ";
	     		 List list3 =session.createSQLQuery(hql).list();
	     		return list3;
		}
		//收益统计
		public List  ListCop3() {
			 Session session = getSession();
	     		String hql="select sum(amount) from Subject where type=1 ";
	     		 List list4 =session.createSQLQuery(hql).list();
	     		return list4;
		}
		//收益统计
		public List  ListCop4() {
			 Session session = getSession();
	     		String hql="select sum(amount) from Subject where type=2 ";
	     		 List list5 =session.createSQLQuery(hql).list();
	     		return list5;
		}
		public List  ListCop5() {
			 Session session = getSession();
	     		String hql="select sum(market_price) from Sys_recharge_price_config where type='MOBILE' ";
	     		 List list6 =session.createSQLQuery(hql).list();
	     		return list6;
		}
		@Override
		public List  ListCop6() {
			Session session = getSession();
     		String hql="select sum(market_price) from Sys_recharge_price_config where type='OIL' ";
     		 List list7 =session.createSQLQuery(hql).list();
     		return list7;
		}
		@Override
		public List ListCop7() {
			Session session = getSession();
     		String hql="select sum(amount) from Member_withdraw_record where channel_name='FUIOU' ";
     		 List list8 =session.createSQLQuery(hql).list();
     		return list8;
		}
}
