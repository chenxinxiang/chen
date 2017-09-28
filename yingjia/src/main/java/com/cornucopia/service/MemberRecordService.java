package com.cornucopia.service;

import java.util.List;
import java.util.Map;

import com.cornucopia.bean.Member;
import com.cornucopia.bean.MemberTradeRecord;

public interface MemberRecordService {
	
	
	public List<MemberTradeRecord> mrList(Map map);
	
	public List<Member> memberList();
	
//	//模糊查询
//	public List<MemberTradeRecord> mtrList(String trade_no);	
//	
//	public List<Member> memList(String mobile_Phone);
	
	public String listHql(Map map,String hql);
}
