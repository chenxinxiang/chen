package com.cornucopia.service;

import java.util.List;

import com.cornucopia.bean.Pushnotice;

public interface GgManagerDao {

	public List ListAll() ;

	public List Feed();
	
	//查询是否有该标题
	public List<Pushnotice> list(String hql);
	//根据id查询公告内容
			public Pushnotice chakan(int id);
	//编辑公告
	public Pushnotice chakang(int id);
	//添加
		public void save(Object...objects);
   //修改
		public void updatelist(int id,String title,String content);
		//红包统计
		public List ListCop();

		public List  ListCop1();

		public List  ListCop2();

		public List  ListCop3();
		
		public List  ListCop4();
		public List  ListCop5();

		public List  ListCop6();

		public List  ListCop7();
}
