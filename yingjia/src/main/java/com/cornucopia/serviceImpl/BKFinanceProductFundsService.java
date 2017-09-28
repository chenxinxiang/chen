package com.cornucopia.serviceImpl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.FinanceProductFunds;
import com.cornucopia.bean.FinanceProductSubscribe;
import com.cornucopia.dao.BKFinanceProductFundsDao;
import com.cornucopia.service.SubjectService;

import net.sf.json.JSONArray;

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
	public List<FinanceProductFunds> listall(String name, String status, String type) {
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
		FinanceProductFunds fpf=(FinanceProductFunds)object;
		Date dt=new Date();
	     SimpleDateFormat matter1=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	     String str=matter1.format(dt);
	     try {
			fpf.setCreate_date(matter1.parse(str));
			fpf.setUpdate_date(matter1.parse(str));
		} catch (Exception e) {
			// TODO: handle exception
		}
	     fpf.setInvest_points("1");
	     fpf.setProduct_manager_desc("");
	     fpf.setProduct_factor("");
	     fpf.setProduct_manager("");
	     fpf.setProduct_manager_name("");
	     fpf.setProduct_manager_pic("");
	     fpf.setProduct_manager_title("");
	     BKFinanceProductFundsDao.save(fpf);
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
		double num=BKFinanceProductFundsDao.getTotalMoney(id);
		return 0;
	}



	@Override
	public String gettouzi(int id) {
		List<FinanceProductSubscribe> list=BKFinanceProductFundsDao.gettouzi(id);
		JSONArray jlist=JSONArray.fromObject(list);
		return jlist.toString();
	}



	@Override
	public List list() {
		// TODO Auto-generated method stub
		return null;
	}

	
}
