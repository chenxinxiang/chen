package com.cornucopia.serviceImpl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.FinanceProductFunds;
import com.cornucopia.dao.BKFinanceProductFundsDao;
import com.cornucopia.service.SubjectService;

@Component
@Transactional
public class BKFinanceProductFundsService implements SubjectService{
	
	@Autowired
	private BKFinanceProductFundsDao BKFinanceProductFundsDao;

	

	@Override
	public FinanceProductFunds getById(int id) {
		FinanceProductFunds fpf=BKFinanceProductFundsDao.getById(id);
		return fpf;
	}



	@Override
	public List listall(String name, String status, String type) {
		if(name==null){
			name="";
		}
		if(status==null||status.equals("-1")){
			status="";
		}
		if(type==null||type.equals("-1")){
			type="";
		}
		
		return BKFinanceProductFundsDao.listall(name, status, type);
	}

	@Override
	public void save(Object object) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void update(Object object) {
		FinanceProductFunds fpf=(FinanceProductFunds)object;
		Date dt=new Date();
	     SimpleDateFormat matter1=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	     String str=matter1.format(dt);
	     try{
	    	 fpf.setUpdate_date(matter1.parse(str));
	     }catch(Exception e){
	    	 
	     }
	     
	     BKFinanceProductFundsDao.update(fpf);
		
	}



	@Override
	public double getTotalMoney(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	
}
