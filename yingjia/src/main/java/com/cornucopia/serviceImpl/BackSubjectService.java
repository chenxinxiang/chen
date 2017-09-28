package com.cornucopia.serviceImpl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.Subject;
import com.cornucopia.bean.SubjectBbinPurchassRecord;
import com.cornucopia.dao.BackSubjectDao;
import com.cornucopia.service.SubjectService;

import net.sf.json.JSONArray;

@Component
@Transactional
public class BackSubjectService implements SubjectService{
	
	@Autowired
	private BackSubjectDao BackSubjectDao;
	
	@Override
	public List<Subject> listall(String name,String status,String type){
		if(name==null){
			name="";
		}
		if(status==null||status.equals("-1")){
			status="";
		}
		if(type==null||type.equals("-1")){
			type="";
		}
		
		return BackSubjectDao.listall(name, status, type);
	}

	

	

	

	@Override
	public void update(Object object) {
		Subject sub=(Subject)object;
		Date dt=new Date();
	     SimpleDateFormat matter1=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	     String str=matter1.format(dt);
	     try{
	    	 sub.setUpdate_date(matter1.parse(str));
	     }catch(Exception e){
	    	 
	     }
	     
		BackSubjectDao.update(sub);
	}

	@Override
	public Subject getById(int id) {
		Subject sub=BackSubjectDao.getById(id);
		return sub;
	}

	
	@Override
	public void save(Object object) {
		Subject sub=(Subject)object;
		Date dt=new Date();
	     SimpleDateFormat matter1=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
	     SimpleDateFormat matter2=new SimpleDateFormat("yyyyMMddhhmmss");
	     String str=matter1.format(dt);
	     String nn=matter2.format(dt);
	     try{
	    	 sub.setCreate_date(matter1.parse(str));
	    	 sub.setUpdate_date(matter1.parse(str));
	     }catch(Exception e){
	    	 
	     }
	     for(int i=0;i<4;i++){
	    	 nn=nn+(int)Math.random()*10;
	     }
	     sub.setSerial_number(nn);
	     
		BackSubjectDao.save(sub);
		
	}







	@Override
	public double getTotalMoney(int id) {
		double num=BackSubjectDao.getTotalMoney(id);
		return num;
	}







	@Override
	public String gettouzi(int id) {
		List<SubjectBbinPurchassRecord> list=BackSubjectDao.gettouzi(id);
		JSONArray jlist=JSONArray.fromObject(list);
		return jlist.toString();
	}







	@Override
	public List list() {
		// TODO Auto-generated method stub
		return null;
	}

}
