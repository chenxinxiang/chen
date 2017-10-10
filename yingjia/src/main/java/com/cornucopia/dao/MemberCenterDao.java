package com.cornucopia.dao;

import java.util.List;

import com.cornucopia.bean.Member;
import com.cornucopia.bean.MemberBankcards;
import com.cornucopia.bean.MemberDepositRecord;
import com.cornucopia.bean.SysRegion;


public interface MemberCenterDao {

	List getarAmount(int memberId);
	
	List getmprAmount(int memberId);
	
	List getmaAmount(int memberId);
	
	List<SysRegion> getSheng();
	
	List<SysRegion> getShi(int pid);
	
	List<SysRegion> getxiang(int sid);
	
	List<Member> idcheck(String idcard);

	List<MemberBankcards> bankCarkCheck(String bankCark);
	
	void boundCard(MemberBankcards mb);
	
	SysRegion getRegion(int id);
	
	List<MemberBankcards> bankCark(int memberID);
	
	void updateps(Member member);
	
	void saveMoneyRecord(MemberDepositRecord mdr);

	List<Member> tikuanPscheck(String name,String ps);
	
}
