package com.cornucopia.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.FinanceProductFunds;
import com.cornucopia.bean.FinanceProductSubscribe;

@Component
public class BKFinanceProductFundsDao {

	@Autowired
	private SessionFactory sessionFactory;

	private Session getSession() {
		return this.sessionFactory.getCurrentSession();
	}

	// ��ѯ
	public List<FinanceProductFunds> listall(String name, String status, String type) {
		Session session = getSession();
		String hql = "from FinanceProductFunds where 0=0 " + gethql(name, status, type) + " order by id desc";
		List<FinanceProductFunds> list = session.createQuery(hql).list();
		return list;
	}

	// ƴ��ģ����ѯ���
	public String gethql(String name, String status, String type) {
		String hql = "";
		if (!name.equals("")) {
			hql = hql + " and name like '%" + name + "%'";
		}
		if (!status.equals("")) {
			hql = hql + " and status=" + status;
		}
		if (!type.equals("")) {
			hql = hql + " and type='" + type+"'";
		}
		return hql;
	}

	// �༭
	public void update(FinanceProductFunds fina) {
		Session session = getSession();
		session.update(fina);
	}

	// ����
	public void save(FinanceProductFunds fina) {
		Session session = getSession();
		session.save(fina);
	}
	
	public FinanceProductFunds getById(int id){
		Session session = getSession();
		FinanceProductFunds fpf=(FinanceProductFunds)session.createQuery("from FinanceProductFunds where id="+id).uniqueResult();
		return fpf;
	}
	
	public double getTotalMoney(int id) {
		Session session=getSession();
		List<FinanceProductSubscribe> list=session.createQuery("from FinanceProductSubscribe where product_id="+id).list();
		double num=0;
		for(int i=0;i<list.size();i++){
			FinanceProductSubscribe rec = list.get(i);
			num += rec.getAmount();
		}
		return num;
	}
	
	public List<FinanceProductSubscribe> gettouzi(int id){
		Session session=getSession();
		List<FinanceProductSubscribe> list=session.createQuery("from FinanceProductSubscribe where product_id="+id).list();
		return list;
	}
}
