package com.cornucopia.dao;

import java.util.List;

import com.cornucopia.bean.MemberProfitRecord;


public interface MemberAddDao {

	List<MemberProfitRecord> getMemberProfitRecordByMid(int mid);
	
	
	
}
