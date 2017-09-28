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
import com.cornucopia.bean.Range;
import com.cornucopia.bean.Subject;
import com.cornucopia.bean.SubjectPurchaseRecord;
import com.cornucopia.dao.MemberDao;
import com.cornucopia.service.MemberService;

@Component
@Transactional
public class MemberServiceImpl implements MemberService{
	
	
	@Autowired
	private MemberDao memberDao;
	
	
	public List<Member> listMember() {
		return memberDao.ListMember();
	}
	@Override
	public List<Member> listMap(Map map) {
		return this.memberDao.listMap(map);
	}
	@Override
	public String listHql(String hql, Map map) {
		return this.memberDao.listHql(hql, map);
	}
	public Member selMemberOrder(int id) {
		return this.memberDao.selMemberOrder(id);
	}
	
	public List<FinanciaPlanner> ListFinancial(){
		return this.memberDao.ListFinancial();
	}
	
	
	public List<MemberBankcards> cardsList(){
		return this.memberDao.cards();
	}
	@Override
	public void card(int id) {
	 this.memberDao.card(id);
	}
	public List listCards(Map map){
		return this.memberDao.listCards(map);
	}
	@Override
	public String HqlCards(Map map, String hql) {
		return this.memberDao.HqlCards(map, hql);
	}
	
	
	
	
	
	
	
		public List<MemberDepositRecord> Record(){
			return this.memberDao.Record();
		}
		
		public List<MemberDepositRecord> listRecord(Map map){
			return this.memberDao.listRecord(map);
		}
		
		public String RecordHql(Map map,String hql){
			return this.memberDao.RecordHql(map, hql);
		}
		
	
	
	
	public List<MembeWithdrawRecord> Wrecord(){
		return this.memberDao.Wrecord();
	}
	public void Thaw(int id){
		this.memberDao.Thaw(id);
	}
	public void Audit(int id){
		this.memberDao.Audit(id);
	}
	
	public List<MembeWithdrawRecord> withdrawMap(Map map){
		return this.memberDao.withdrawMap(map);
	}
	public String withdrawHql(Map map,String hql){
		return this.memberDao.withdrawHql(map, hql);
	}
	
	@Override
	public List<Range> listRangeAll(Map map) {
		return this.memberDao.ListRangeAll(map);
	}
	
	@Override
	public List<Subject> SubMap(Map map) {
		return this.memberDao.SubMap(map);
	}
	@Override
	public List<SubjectPurchaseRecord> listRange(Map map) {
		return this.memberDao.listRange(map);
	}
	@Override
	public String SubHql(Map map, String sql) {
		return this.memberDao.SubHql(map, sql);
	}
	@Override
	public List<SubjectPurchaseRecord> getById(int id) {
		return this.memberDao.getById(id);
	}
	@Override
	public void update(int id) {
		this.memberDao.update(id);
	}
	@Override
	public List<SubjectPurchaseRecord> listAll(int id) {
		// TODO Auto-generated method stub
		return null;
	}
	@Override
	public String getHql(Map map, String hql) {
		// TODO Auto-generated method stub
		return this.memberDao.getHql(map, hql);
	}
	@Override
	public void updateFuXi(int id) {
		this.memberDao.updateFuXi(id);
	}
	@Override
	public List<Range> listRangeAll2(Map map) {
		return this.memberDao.ListRangeAll2(map);
	}
	//½±Àø¼ÇÂ¼
	@Override
	public List <AwardRecords> Reward(int id) {
		return this.memberDao.Reward1(id);
	}
	@Override
	public List <AwardRecords> Reward2(int id){
		return this.memberDao.Reward2(id);
		
	}

	
}
