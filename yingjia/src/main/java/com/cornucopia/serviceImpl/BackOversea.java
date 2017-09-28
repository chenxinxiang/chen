package com.cornucopia.serviceImpl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.OverseaConfig;
import com.cornucopia.bean.OverseaConfigSubscribe;
import com.cornucopia.dao.BackOverseaDao;
import com.cornucopia.service.SubjectService;

import net.sf.json.JSONArray;

@Component
@Transactional
public class BackOversea implements SubjectService{

	@Autowired
	private BackOverseaDao BackOverseaDao;
	
	@Override
	public List list() {
		List list=BackOverseaDao.list();
		return list;
	}

	@Override
	public List listall(String name, String status, String type) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public OverseaConfig getById(int id) {
		OverseaConfig one=BackOverseaDao.getbyId(id);
		return one;
	}

	@Override
	public void save(Object object) {
		OverseaConfig one=(OverseaConfig)object;
		Date dt=new Date();
	     SimpleDateFormat matter1=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	     String str=matter1.format(dt);
	     try{
	    	 one.setAddTime(matter1.parse(str));
	    	 one.setUpdTime(matter1.parse(str));
	     }catch(Exception e){
	    	 
	     }
		BackOverseaDao.save(one);
	}

	@Override
	public void update(Object object) {
		OverseaConfig one=(OverseaConfig)object;
		BackOverseaDao.update(one);
		
	}

	@Override
	public double getTotalMoney(int id) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public String gettouzi(int id) {
		List<OverseaConfigSubscribe> list=BackOverseaDao.gettouzi(id);
		JSONArray jlist=JSONArray.fromObject(list);
		return jlist.toString();
	}

}
