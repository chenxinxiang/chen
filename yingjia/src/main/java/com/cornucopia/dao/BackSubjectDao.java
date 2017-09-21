package com.cornucopia.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.Subject;
import com.cornucopia.bean.SubjectPurchaseRecord;

@Component
public class BackSubjectDao {

	
	
	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession(){
		return this.sessionFactory.getCurrentSession();
	}
	
	public List<Subject> listall(String name,String status,String type){
		Session session=getSession();
		String hql="from Subject where 0=0 "+gethql(name, status, type)+" order by id desc";
		List<Subject> list=session.createQuery(hql).list();
		return list;
	}
	
	public String gethql(String name,String status,String type){
		String hql="";
		if(!name.equals("")){
			hql=hql+" and name like '%"+name+"%'";
		}
		if(!status.equals("")){
			hql=hql+" and status="+status;
		}
		if(!type.equals("")){
			hql=hql+" and type="+type;
		}
		return hql;
	}
	
	public void update(Subject sub){
		Session session=getSession();
		session.update(sub);
	}
	
	//����
	public void save(Subject sub){
		Session session=getSession();
		session.save(sub);
	}
	
	public Subject getById(int id){
		Session session=getSession();
		Subject sub=(Subject) session.createQuery("from Subject where id="+id).uniqueResult();
		return sub;
	}
	
	public double getTotalMoney(int id) {
		System.out.println(id);
		Session session=getSession();
		List<SubjectPurchaseRecord> list=session.createQuery("from SubjectPurchaseRecord where subject_id="+id).list();
		double num=0;
//		for(int i=0;i<list.size();i++){
//			SubjectPurchaseRecord rec = list.get(i);
//			num += rec.getAmount();
//		}
		System.out.println(list.size());
		return num;
	}

}
