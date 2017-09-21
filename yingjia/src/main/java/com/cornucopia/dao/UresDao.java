package com.cornucopia.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.Pushnotice;




@Component
public class UresDao{

		@Autowired
		public SessionFactory sessionFactory;

		public Session getSession() {
			return sessionFactory.getCurrentSession();
		}
		public List listadd(Map map) {
			Session session = getSession();
			String hql = "from Pushnotice where 0=0";	
			hql=mapp(hql, map);
			System.out.println("hql:"+hql);
			List list = session.createQuery(hql).list();
			return list;
	    }
		public String mapp(String hql,Map map){
			  String title=(String)map.get("title");
			  System.out.println(title);
				if(title!=null&&!title.trim().equals("")){
						hql+=" and title like '%"+title+"%'";
					}
					return hql;
		    }
				public List listemp() {
					Session session = getSession();
					String hql = "from Feedback";		
					List list = session.createQuery(hql).list();
					return list;
					}
					
               
		
		public void update(Pushnotice push_notice){
			Session session=getSession();
			session.update(push_notice);
		}
		
		public Pushnotice getById(int id) {
			Session session=getSession();
		    Pushnotice emp=(Pushnotice)session.get(Pushnotice.class,id);
			return emp;
		 }
		
		
		
	  public Pushnotice getPushnoticeById(int id){
			Session session=getSession();
			Pushnotice emp=(Pushnotice)session.get(Pushnotice.class,id);
			return emp;
		}
		public void delete(int id) {
			Session session=getSession();
			Pushnotice pushnotice=getPushnoticeById(id);
			session.delete(pushnotice);			
		}
		
	   public void save(Pushnotice pushnotice){
		Session session=getSession();
		session.save(pushnotice);
	
	}
	   
	    
	   
	    public List<Pushnotice> emplist(String title){
	    	Session session=getSession();
	    	String hql="from Pushnotice e where e.title like '%"+title+"%'";
	    	List <Pushnotice> userlist=session.createQuery(hql).list();
	    	return userlist;
	    }  	    
	    
	    
	  
	    }
 
    

   
