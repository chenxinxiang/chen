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

public interface MemberService {

	
	//账号显示
	public List<Member> listMember();
	//账号模糊查询
	public List<Member> listMap(Map map);
	public String listHql(String hql,Map map);
   //账号详情	
	public Member selMemberOrder(int id) ;
  //public MemberAccount capital(int id);
	
	
	
	//会员理财师管理
	public List<FinanciaPlanner> ListFinancial();

	
	
	//会员绑卡管理
	public List<MemberBankcards> cardsList();
	//会员解绑管理
	public void card(int id);
	//模糊查询
	public List listCards(Map map);
	public String HqlCards(Map map,String hql);
	
//	
//	//付息计划管理
//	public List<Subject> SubjectAll();
//	public List<Subject> selSubject(Map map);
//	public String SubjectHql(Map map,String hql);
//	
	
	
	//充值管理
	//充值显示
	public List<MemberDepositRecord> Record();
	
	public List<MemberDepositRecord> listRecord(Map map);
	
	public String RecordHql(Map map,String hql);

	
	
	//提现管理
	//显示
	public List<MembeWithdrawRecord> Wrecord();
	//解冻
	public void Thaw(int id);
	public List<MembeWithdrawRecord> withdrawMap(Map map);
	public String withdrawHql(Map map,String hql);

	
	
	//邀请显示
	public List<Range> listRangeAll(Map map); 
	
}
