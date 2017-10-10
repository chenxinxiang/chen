package com.cornucopia.service;

import java.util.List;

import com.cornucopia.bean.BbinInfo;
import com.cornucopia.bean.FinanceProductSubscribe;
import com.cornucopia.bean.MembeWithdrawRecord;
import com.cornucopia.bean.MemberAccount;
import com.cornucopia.bean.MemberDepositRecord;
import com.cornucopia.bean.SubjectPurchaseRecord;

public interface TouziService {
	List<SubjectPurchaseRecord> listAll(int id);
	List<FinanceProductSubscribe> listAllyu(int id);
	List<MemberDepositRecord> listAllchong(int id);
	List<MembeWithdrawRecord> listAllti(int id);
	List<BbinInfo> listAlltiyanj(int id);
	List<MemberAccount> list(int id);

}
