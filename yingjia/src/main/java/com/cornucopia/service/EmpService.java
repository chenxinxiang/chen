package com.cornucopia.service;

import java.util.List;
import java.util.Map;

import com.cornucopia.bean.Feedback;
import com.cornucopia.bean.Pushnotice;

public interface EmpService {
	public List list(Map map);
	   
	   //意见反馈
	   public List<Feedback> list();
	   
	   //修改
	   public void update(Pushnotice user);
		
	    //删除
		public void delete(int id) ;
		/*修改
		 * 获取要的id
		 */
		public Pushnotice getById(int id) ;
		/**
		 *添加
		 * @param pushnotice
		 */
		public void save(Pushnotice pushnotice);


}
