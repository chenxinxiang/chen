package com.cornucopia.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.transaction.Transactional;

import org.springframework.stereotype.Component;

import com.cornucopia.bean.Feedback;
import com.cornucopia.bean.Pushnotice;
import com.cornucopia.dao.UresDao;
import com.cornucopia.service.EmpService;

@Component
@Transactional
public class EmpServiceImpl implements EmpService{

	@Resource
	private UresDao userDao;
	@Override
	 public List list(Map map){	   
		return this.userDao.listadd(map); 
	   }

	@Override
	public List<Feedback> list(){	   
		return this.userDao.listemp();
		
   }

	@Override
	public void update(Pushnotice user){
		this.userDao.update(user);
  
	  }

	@Override
	public void delete(int id) {
		   this.userDao.delete(id);
		}

	@Override
	public Pushnotice getById(int id) {
		return this.userDao.getById(id);
	}

	@Override
	public void save(Pushnotice pushnotice) {
		this.userDao.save(pushnotice);
	}

}
