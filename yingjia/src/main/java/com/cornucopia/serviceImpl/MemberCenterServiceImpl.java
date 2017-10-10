package com.cornucopia.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.cornucopia.bean.Member;
import com.cornucopia.bean.MemberBankcards;
import com.cornucopia.bean.MemberDepositRecord;
import com.cornucopia.bean.SysRegion;
import com.cornucopia.dao.MemberCenterDao;
import com.cornucopia.service.MemberCenterService;


@Service
public class MemberCenterServiceImpl implements MemberCenterService  {

	@Autowired
	@Qualifier("memberCenterDaoImpl")
	private MemberCenterDao mcd;
	
	@Override
	public List getarAmount(int memberId) {
		// TODO Auto-generated method stub
		List list=this.mcd.getarAmount(memberId);
		list.add(0);
		return list;
	}

	@Override
	public List getmprAmount(int memberId) {
		// TODO Auto-generated method stub
		List list=this.mcd.getmprAmount(memberId);
		list.add(0);
		return list;
	}

	@Override
	public List getmaAmount(int memberId) {
		// TODO Auto-generated method stub
		List list=this.mcd.getmaAmount(memberId);
		list.add(0);
		return list;
	}

	@Override
	public List<SysRegion> getSheng() {
		// TODO Auto-generated method stub
		return this.mcd.getSheng();
	}

	@Override
	public List<SysRegion> getShi(int pid) {
		// TODO Auto-generated method stub
		return this.mcd.getShi(pid);
	}

	@Override
	public List<SysRegion> getxiang(int sid) {
		// TODO Auto-generated method stub
		return this.mcd.getxiang(sid);
	}

	@Override
	public List<Member> idcheck(String idcard) {
		// TODO Auto-generated method stub
		return this.mcd.idcheck(idcard);
	}

	@Override
	public List<MemberBankcards> bankCarkcheck(String bankCark) {
		// TODO Auto-generated method stub
		return this.mcd.bankCarkCheck(bankCark);
	}

	@Override
	public void boundCard(MemberBankcards mb) {
		// TODO Auto-generated method stub
		this.mcd.boundCard(mb);
	}

	@Override
	public SysRegion getRegion(int id) {
		// TODO Auto-generated method stub
		return this.mcd.getRegion(id);
	}

	@Override
	public List<MemberBankcards> bankCark(int memberID) {
		// TODO Auto-generated method stub
		List list=this.mcd.bankCark(memberID);
		list.add(0);
		return list;
	}

	@Override
	public void updateps(Member member) {
		// TODO Auto-generated method stub
		this.mcd.updateps(member);
	}

	@Override
	public void saveMoneyRecord(MemberDepositRecord mdr) {
		// TODO Auto-generated method stub
		this.mcd.saveMoneyRecord(mdr);
	}

	@Override
	public List tikuanPscheck(String name,String ps) {
		// TODO Auto-generated method stub
		List mList=this.mcd.tikuanPscheck(name,ps);
		mList.add(0);
		return mList;
	}

}
