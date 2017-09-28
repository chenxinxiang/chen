package com.cornucopia.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.cornucopia.bean.AwardRecords;
import com.cornucopia.bean.Member;

@Service
@Transactional
public interface FinancialService {

	List<AwardRecords> lsa(String iphone,String start, String zhifu);
	List<Member> lsm(String iphone);
	List lsmdr(String iphone,String start, String zhifu);
	List lsmt(String iphone,String start, String zhifu);
	List lsmw(String iphone,String start, String zhifu); 
	List lst(String iphone,String start,String type,String zhifu);
	List lsma(String iphone,String start, String zhifu);
	Boolean list1(String iphone);
}
