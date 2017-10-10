package com.cornucopia.dao.Impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.BbinInfo;
import com.cornucopia.bean.FinanceProductSubscribe;
import com.cornucopia.bean.MembeWithdrawRecord;
import com.cornucopia.bean.MemberAccount;
import com.cornucopia.bean.MemberDepositRecord;
import com.cornucopia.bean.SubjectPurchaseRecord;
import com.cornucopia.dao.TouziDao;


@Component
public class TouziDaoImpl implements TouziDao{
			@Autowired
			public SessionFactory sessionFactory;
		
			
			public Session getSession() {
				 return sessionFactory.getCurrentSession();
			}

	@Override
	public List<SubjectPurchaseRecord> listAll(int id) {
		String hql="from SubjectPurchaseRecord where member_id="+id;
		  Session session=getSession();
		  List<SubjectPurchaseRecord> list=session.createQuery(hql).list();
		  return list;
	}

	@Override
	public List<FinanceProductSubscribe> listAllyu(int id) {
		String hql="from FinanceProductSubscribe where member_id="+id;
		  Session session=getSession();
		  List<FinanceProductSubscribe> listyu=session.createQuery(hql).list();
		  return listyu;
	}

	@Override
	public List<MemberDepositRecord> listAllchong(int id) {
		String hql="from MemberDepositRecord where member_id="+id;
		  Session session=getSession();
		  List<MemberDepositRecord> listchong=session.createQuery(hql).list();
		  return listchong;
	}

	@Override
	public List<MembeWithdrawRecord> listAllti(int id) {
		String hql="from MembeWithdrawRecord where member_id="+id;
		  Session session=getSession();
		  List<MembeWithdrawRecord> listti=session.createQuery(hql).list();
		  return listti;
	}

	@Override
	public List<BbinInfo> listAlltiyanj(int id) {
		String hql="from BbinInfo where member_id="+id;
		  Session session=getSession();
		  List<BbinInfo> listtiyanj=session.createQuery(hql).list();
		  return listtiyanj;
	}
	
	//显示账户
	public List<MemberAccount> list(int id){
		Session session=getSession();
		String sql="select useable_balance,imuseale_balance,total_profit,invest_amount "
				+ "from member_account m where m.member_id=45";
		List alist=session.createSQLQuery(sql).list();
		System.out.println(alist.size());
		return alist;
	}

}
