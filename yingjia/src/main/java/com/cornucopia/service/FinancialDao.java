package com.cornucopia.service;

import java.util.List;

import com.cornucopia.bean.AwardRecords;
import com.cornucopia.bean.MemberAccount;
import com.cornucopia.bean.MemberProfitRecord;
import com.cornucopia.bean.MemberRecord;

public interface FinancialDao {

	List<AwardRecords> lsa(String iphone,String start, String zhifu);
	List lsm(String iphone);
	List lsmdr(String iphone,String start, String zhifu);
	List lsmt(String iphone,String start, String zhifu);
	List<MemberProfitRecord  > lsmw(String iphone,String start, String zhifu);
	List<MemberRecord  > lst(String iphone,String start,String type,String zhifu);
	List<MemberAccount   > lsma(String iphone,String start, String zhifu);
	Boolean list1(String iphone);
}
