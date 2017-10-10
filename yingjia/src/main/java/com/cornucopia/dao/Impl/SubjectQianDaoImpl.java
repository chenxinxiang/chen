package com.cornucopia.dao.Impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.MemberAccount;
import com.cornucopia.bean.MemberBankcards;
import com.cornucopia.bean.Subject;
import com.cornucopia.bean.SubjectPurchaseRecord;
import com.cornucopia.dao.SubjectQianDao;

@Component
public class SubjectQianDaoImpl implements SubjectQianDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	private Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	//点击购买的时候 通过ID查询该产品
	@Override
	public Subject getById(int id) {
		String sql="from Subject where id="+id;
		List<Subject> subjectList=getSession().createQuery(sql).list();
		if (subjectList!=null&&subjectList.size()>0) {
			return subjectList.get(0);
		}
		return null;
	}
			
	public void saveOrUpdateProduct(Subject subject){
		this.getSession().saveOrUpdate(subject);
	}

	//查询该memberId下的账户信息
	public MemberAccount ListAllByMemberId(int memberId) {
		System.out.println("memberId:"+memberId);
		String hql="from MemberAccount where member_id="+memberId;
		List<MemberAccount> memberAccount=getSession().createQuery(hql).list();
//				getSession().createQuery(hql).list();
		if(memberAccount!=null&&memberAccount.size()>0){
			System.out.println(memberAccount.size());
			return memberAccount.get(0);
		}
		return null;
	}

	//查询该memberId下的银行卡
	public MemberBankcards ListCardByMemberId(int memberId) {
		System.out.println("memberId:---"+memberId);
		String hql="from MemberBankcards where member_id="+memberId;
		List<MemberBankcards> memberBankcards=getSession().createQuery(hql).list();
		if(memberBankcards!=null&&memberBankcards.size()>0){
			System.out.println(memberBankcards.size()+"-");
			return memberBankcards.get(0);
		}
		return null;
	}

	public void updateMemberAccount(Object object){
		Session session=getSession();
		session.update(object);
	}
	
	public void saveMemberTradeRecord(Object object){
		Session session=getSession();
		session.save(object);
	}
	
	public void saveMemberProfitRecord(Object object){
		Session session=getSession();
		session.save(object);
	}
	
	public void saveMember_tally(Object object){
	   Session session=getSession();
	   session.save(object);
	}
	
	public void saveSubjectPurchaseRecord(Object object){
		  Session session=getSession();
		  session.save(object);
	}
	
	public int getCntBySubjectIdAndMemberId(int subject_id,int member_id){
		String sql="select count(*) from Subject_purchase_record where subject_id="+subject_id+" and member_id="+member_id;
		String cut=this.getSession().createSQLQuery(sql).uniqueResult().toString();
		return Integer.parseInt(cut);
	}
	
	public List<SubjectPurchaseRecord> listSubjectPurchaseRecordAll(int subject_id,int member_id){
		String hql="from SubjectPurchaseRecord s where s.subject.id="+subject_id+" and s.member.id="+member_id;
		List<SubjectPurchaseRecord> subjectPurchaseRecordList=getSession().createQuery(hql).list();
		if(subjectPurchaseRecordList.size()!=0){
			System.out.println(subjectPurchaseRecordList.size()+"--------------");
			return subjectPurchaseRecordList;
		}
		return null;
	}
	
	public void updateSubjectPurchaseRecordAfterSave(Object object) {
		this.getSession().update(object);
	}


	@Override
	public Subject getSubjectById(int parseInt) {
		// TODO Auto-generated method stub
		String sql="from Subject where id="+parseInt;
		List<Subject> subjectList=getSession().createQuery(sql).list();
		if (subjectList!=null&&subjectList.size()>0) {
			return subjectList.get(0);
		}
		return null;
	}


	@Override
	public void updateSubject(Subject subject) {
		// TODO Auto-generated method stub
		getSession().update(subject);
	}

}
