package com.cornucopia.serviceImpl;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.cornucopia.service.FinancialDao;
import com.cornucopia.service.FinancialService;

@Service
public class FinancialServiceImpl implements FinancialService{

	@Autowired
	@Qualifier("financialDaoImpl")
	private FinancialDao financialDaoImpl;

	public List lsa(String iphone,String start, String zhifu) {
		return financialDaoImpl.lsa(iphone, start,zhifu);
	}

	public List  lsm(String iphone) {
		return financialDaoImpl.lsm(iphone);
	}
//
	public List  lsmdr(String iphone,String start, String zhifu) {
		return financialDaoImpl.lsmdr(iphone, start,zhifu);
	}

	public List  lsmt(String iphone,String start, String zhifu) {
		return financialDaoImpl.lsmt(iphone, start ,zhifu);
	}

	public List  lsmw(String iphone,String start, String zhifu) {
		return financialDaoImpl.lsmw(iphone, start,zhifu);
	}

	public List  lst(String iphone,String start,String type,String zhifu) {
		return financialDaoImpl.lst(iphone, start,type,zhifu);
	}

	public List  lsma(String iphone,String start, String zhifu) {
		return financialDaoImpl.lsma(iphone, start,zhifu);
	}

	@Override
	public Boolean list1(String iphone) {
		// TODO Auto-generated method stub
		return financialDaoImpl.list1(iphone);
	}
}
