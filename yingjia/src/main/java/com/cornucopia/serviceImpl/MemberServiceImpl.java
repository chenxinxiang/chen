package com.cornucopia.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.cornucopia.bean.AwardRecords;
import com.cornucopia.bean.FinanciaPlanner;
import com.cornucopia.bean.MembeWithdrawRecord;
import com.cornucopia.bean.Member;
import com.cornucopia.bean.MemberAccount;
import com.cornucopia.bean.MemberBankcards;
import com.cornucopia.bean.MemberDepositRecord;
import com.cornucopia.bean.Subject;
import com.cornucopia.dao.MemberDao;
import com.cornucopia.service.MemberService;

@Component
@Transactional
public class MemberServiceImpl implements MemberService{
	
	
	//会员账号管理
	@Autowired
	private MemberDao memberDao;
	
	public List<Member> listMember() {
		return memberDao.ListMember();
	}

	public List<Member> selMember(String hql) {
		return memberDao.selMember(hql);
	}
	
	public List<Member> listMap(Map map){
		return this.memberDao.listMap(map);
		
	}
	
	public String listHql(String hql,Map map){
		return this.memberDao.listHql(hql, map);
	}

	public Member selMemberOrder(int id) {
		return this.memberDao.selMemberOrder(id);
	}
	
	//账号资金信息
	public MemberAccount capital(int id){
		return this.memberDao.capital(id);
	}
	
	//会员理财师管理
	public List<FinanciaPlanner> ListFinancial(){
		return this.memberDao.ListFinancial();
	}
	
	//会员绑卡管理
	public List<MemberBankcards> cardsList(){
		return this.memberDao.cards();
	}
	
	public List<MemberBankcards> listCards(Map map){
		return this.memberDao.listCards(map);
	}
	
	public String Hql(Map map,String hql){
		return this.memberDao.Hql(map, hql);
		
	}
	
	//会员解绑管理
	public void card(int id){
		 this.memberDao.cards(id);
	}
	
	
	//付息计划管理
	public List<Subject> SubjectAll(){
		return this.memberDao.SubjectAll();
	}
	
	public List<Subject> selSubject(Map map){
		return this.memberDao.selSubject(map);
	}
	public String SubjectHql(Map map,String hql){
		return this.memberDao.SubjectHql(map, hql);
	}
	
	//充值管理
	//充值显示
	public List<MemberDepositRecord> Record(){
		return this.memberDao.Record();
	}
	
	public List<MemberDepositRecord> listRecord(Map map){
		return this.memberDao.listRecord(map);
	}
	
	public String RecordHql(Map map,String hql){
		return this.memberDao.RecordHql(map, hql);
	}
	
	//提现管理
	//显示
	public List<MembeWithdrawRecord> Wrecord(){
		return this.memberDao.Wrecord();
	}
	//解冻
	public void Thaw(int id){
		this.memberDao.Thaw(id);
	}
	
	public List<MembeWithdrawRecord> withdrawMap(Map map){
		return this.memberDao.withdrawMap(map);
	}
	public String withdrawHql(Map map,String hql){
		return this.memberDao.withdrawHql(map, hql);
	}
	
	
	//邀请显示
	public List<AwardRecords> Listinvite(){
		return this.memberDao.Listinvite();
	}
	//邀请模糊查询
	public List<MembeWithdrawRecord> inviteMap(Map map){
		return this.memberDao.inviteMap(map);
	}
}
