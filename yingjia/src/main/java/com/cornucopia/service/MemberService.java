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
import com.cornucopia.bean.Subject;

public interface MemberService {

	
	public List<Member> listMember();

	public List<Member> selMember(String hql);
	
	public List<Member> listMap(Map map);
	
	public String listHql(String hql,Map map);

	public Member selMemberOrder(int id) ;
	
	//账号资金信息
	public MemberAccount capital(int id);
	
	//会员理财师管理
	public List<FinanciaPlanner> ListFinancial();
	
	//会员绑卡管理
	public List<MemberBankcards> cardsList();
	
	public List<MemberBankcards> listCards(Map map);
	
	public String Hql(Map map,String hql);
	
	//会员解绑管理
	public void card(int id);
	
	
	//付息计划管理
	public List<Subject> SubjectAll();
	public List<Subject> selSubject(Map map);
	public String SubjectHql(Map map,String hql);
	
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
	public List<AwardRecords> Listinvite();
	public List<MembeWithdrawRecord> inviteMap(Map map);
}
