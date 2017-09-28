package com.cornucopia.service;

import java.util.List;
import java.util.Map;

import com.cornucopia.bean.Feedback;
import com.cornucopia.bean.Pushnotice;

public interface EmpService {
	public List list(Map map);
	   
	   public List<Feedback> list();
	   
	   public void update(Pushnotice user);
		
		public void delete(int id) ;
		
		public Pushnotice getById(int id) ;
		public void save(Pushnotice pushnotice);


}
