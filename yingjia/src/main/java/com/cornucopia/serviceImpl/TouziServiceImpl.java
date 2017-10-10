package com.cornucopia.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.BbinInfo;
import com.cornucopia.bean.FinanceProductSubscribe;
import com.cornucopia.bean.MembeWithdrawRecord;
import com.cornucopia.bean.MemberAccount;
import com.cornucopia.bean.MemberDepositRecord;
import com.cornucopia.bean.SubjectPurchaseRecord;
import com.cornucopia.dao.TouziDao;
import com.cornucopia.service.TouziService;


@Component
public class TouziServiceImpl implements TouziService{
	
		@Autowired
	    @Qualifier("touziDaoImpl")
      private TouziDao touziDaoImpl;

	@Override
	public List<SubjectPurchaseRecord> listAll(int id) {
		return this.touziDaoImpl.listAll(id);
	}

	@Override
	public List<FinanceProductSubscribe> listAllyu(int id) {
		return this.touziDaoImpl.listAllyu(id);
	}

	@Override
	public List<MemberDepositRecord> listAllchong(int id) {
		return this.touziDaoImpl.listAllchong(id);
	}

	@Override
	public List<MembeWithdrawRecord> listAllti(int id) {
		return this.touziDaoImpl.listAllti(id);
	}

	@Override
	public List<BbinInfo> listAlltiyanj(int id) {
		return this.touziDaoImpl.listAlltiyanj(id);
	}

	@Override
	public List<MemberAccount> list(int id) {
		// TODO Auto-generated method stub
		return this.touziDaoImpl.list(id);
	}

}
