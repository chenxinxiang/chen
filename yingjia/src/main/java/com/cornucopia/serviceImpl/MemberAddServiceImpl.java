package com.cornucopia.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.cornucopia.bean.MemberProfitRecord;
import com.cornucopia.dao.MemberAddDao;
import com.cornucopia.service.MemberAddSerivce;



@Service
public class MemberAddServiceImpl implements MemberAddSerivce {

	@Autowired
	@Qualifier("memberAddDaoImpl")
	private MemberAddDao mad;

	@Override
	public List<MemberProfitRecord> getMemberProfitRecordByMid(int mid) {
		// TODO Auto-generated method stub
		return null;
	}
	
	

}
