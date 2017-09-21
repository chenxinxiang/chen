package com.cornucopia.serviceImpl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.Subject;
import com.cornucopia.dao.BackSubjectDao;
import com.cornucopia.service.SubjectService;

@Component
@Transactional
public class BackSubjectService implements SubjectService{//��̨��Ʋ�Ʒ������
	
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
		// TODO Auto-generated method stub
		
	}







	@Override
	public double getTotalMoney(int id) {
		double num=BackSubjectDao.getTotalMoney(id);
		return num;
	}

}
