package com.cornucopia.dao.Impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.Member;
import com.cornucopia.bean.MemberBankcards;
import com.cornucopia.bean.MemberDepositRecord;
import com.cornucopia.bean.SysRegion;
import com.cornucopia.dao.MemberCenterDao;


@Component
public class MemberCenterDaoImpl implements MemberCenterDao {

	@Autowired
	private SessionFactory sf;
	
	public Session getSession(){
		return sf.getCurrentSession();
	}
	
	//奖励记录的金额
	@Override
	public List getarAmount(int memberId) {
		// TODO Auto-generated method stub
		String sql="select sum(amount) from award_records where invitingid = (select invitationCode from member where id='"+memberId+"')";
		List jList=getSession().createSQLQuery(sql).list();
		return jList;
	}

	//成员利润记录表金额
	@Override
	public List getmprAmount(int memberId) {
		// TODO Auto-generated method stub
		String sql="select sum(amount) from member_profit_record where member_id='"+memberId+"'";
		List jList=getSession().createSQLQuery(sql).list();
		return jList;
	}

	//成员账户表 红包金额
	@Override
	public List getmaAmount(int memberId) {
		// TODO Auto-generated method stub
		String sql="select bonus_amount from member_account where member_id='"+memberId+"'";
		List jList=getSession().createSQLQuery(sql).list();
		return jList;
	}

	@Override
	public List<SysRegion> getSheng() {
		// TODO Auto-generated method stub
		String sql="from SysRegion where region_level=1";
		return getSession().createQuery(sql).list();
	}

	@Override
	public List<SysRegion> getShi(int pid) {
		// TODO Auto-generated method stub
		String sql="from SysRegion where region_level=2 and parent_id = "+pid+"";
		return getSession().createQuery(sql).list();
	}

	@Override
	public List<SysRegion> getxiang(int sid) {
		// TODO Auto-generated method stub
		String sql="from SysRegion where region_level=3 and parent_id = "+sid+"";
		return getSession().createQuery(sql).list();
	}

	@Override
	public List<Member> idcheck(String idcard) {
		// TODO Auto-generated method stub
		String sql="from Member where identity = '"+idcard+"' ";
		return getSession().createQuery(sql).list();
	}

	@Override
	public List<MemberBankcards> bankCarkCheck(String bankCark) {
		// TODO Auto-generated method stub
		String sql="from MemberBankcards where card_no = '"+bankCark+"' ";
		return getSession().createQuery(sql).list();
	}

	@Override
	public void boundCard(MemberBankcards mb) {
		// TODO Auto-generated method stub
		getSession().save(mb);
	}

	@Override
	public SysRegion getRegion(int id) {
		// TODO Auto-generated method stub
		String hql="from SysRegion where id="+id+"";
		return null;
	}

	@Override
	public List<MemberBankcards> bankCark(int memberID) {
		// TODO Auto-generated method stub
		String sql="from MemberBankcards where member_id = '"+memberID+"' ";
		return getSession().createQuery(sql).list();
	}

	@Override
	public void updateps(Member member) {
		// TODO Auto-generated method stub
		getSession().update(member);
	}

	@Override
	public void saveMoneyRecord(MemberDepositRecord mdr) {
		// TODO Auto-generated method stub
		getSession().save(mdr);
	}

	@Override
	public List<Member> tikuanPscheck(String name,String ps) {
		// TODO Auto-generated method stub
		String sql="from Member where member_name='"+name+"' withdraw_password = '"+ps+"' ";
		return getSession().createQuery(sql).list();
	}

	
	
}
