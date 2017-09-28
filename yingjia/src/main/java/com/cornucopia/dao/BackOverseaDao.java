package com.cornucopia.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.OverseaConfig;
import com.cornucopia.bean.OverseaConfigSubscribe;

@Component
public class BackOverseaDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession(){
		return this.sessionFactory.getCurrentSession();
	}
	
	public List<OverseaConfig> list(){
		Session session=getSession();
		List<OverseaConfig> list=session.createQuery("from OverseaConfig").list();
		return list;
	}
	
	public OverseaConfig getbyId(int id){
		Session session=getSession();
		OverseaConfig one=(OverseaConfig) session.createQuery("from OverseaConfig where id="+id).uniqueResult();
		return one;
	}
	
	public void update(OverseaConfig one){
		Session session=getSession();
		session.update(one);
	}
	public void save(OverseaConfig one){
		Session session=getSession();
		session.save(one);
	}
	
	public List<OverseaConfigSubscribe> gettouzi(int id){
		Session session=getSession();
		List<OverseaConfigSubscribe> list= session.createQuery("from OverseaConfigSubscribe where oversea_id="+id).list();
		return list;
	}
}
