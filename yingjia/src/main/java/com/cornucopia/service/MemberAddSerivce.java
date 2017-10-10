package com.cornucopia.service;

import java.util.List;

import org.springframework.stereotype.Component;

import com.cornucopia.bean.MemberProfitRecord;


@Component
public interface MemberAddSerivce {

	List<MemberProfitRecord> getMemberProfitRecordByMid(int mid);
	
}
