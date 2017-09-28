package com.cornucopia.service;

import java.util.List;
import java.util.Map;

import com.cornucopia.bean.AwardRecords;
import com.cornucopia.bean.FinanciaPlanner;
import com.cornucopia.bean.MembeWithdrawRecord;
import com.cornucopia.bean.Member;
import com.cornucopia.bean.MemberAccount;
import com.cornucopia.bean.MemberBankcards;
import com.cornucopia.bean.MemberDepositRecord;
import com.cornucopia.bean.Range;
import com.cornucopia.bean.Subject;
import com.cornucopia.bean.SubjectPurchaseRecord;

public interface MemberService {

	
	public List<Member> listMember();
	public List<Member> listMap(Map map);
	public String listHql(String hql,Map map);
	public Member selMemberOrder(int id) ;
	
	
	
	public List<FinanciaPlanner> ListFinancial();

	
	
	public List<MemberBankcards> cardsList();
	public void card(int id);
	public List listCards(Map map);
	public String HqlCards(Map map,String hql);
	
//	
//	//付息计划管理
//	public List<Subject> SubjectAll();
//	public List<Subject> selSubject(Map map);
//	public String SubjectHql(Map map,String hql);
//	
	
	
	public List<MemberDepositRecord> Record();
	
	public List<MemberDepositRecord> listRecord(Map map);

	public String RecordHql(Map map,String hql);

	
	
	public List<MembeWithdrawRecord> Wrecord();
	public void Thaw(int id);
	
	public void Audit(int id);
	public List<MembeWithdrawRecord> withdrawMap(Map map);
	public String withdrawHql(Map map,String hql);
	
	
	//��Ϣ��ҳ����ʾ
		public List<Subject> SubMap(Map map);
		public List<SubjectPurchaseRecord> listRange(Map map);
		//ģ����ѯ
		public String SubHql(Map map,String sql);
		//��������Ϣ��ť��ʾ������Ϣ
		public List<SubjectPurchaseRecord> getById(int id);
		//������ť���л������,״̬-->�ѻ����ť--->�ѻ���
		public void update(int id);
		//��Ϣ�б���ʾ
		public List<SubjectPurchaseRecord> listAll(int id);
		public String getHql(Map map,String hql);
		public void updateFuXi(int id);
		public List<Range> listRangeAll(Map map); 
		
		

		//������ʾ
			public List<Range> listRangeAll2(Map map); 
			//������¼
			//����������Ϣ
			public List <AwardRecords> Reward(int id);
			//��������Ϣ
			public List <AwardRecords> Reward2(int id);


}
