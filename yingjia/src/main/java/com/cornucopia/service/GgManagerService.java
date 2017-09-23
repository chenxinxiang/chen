package com.cornucopia.service;

import java.util.List;


public interface GgManagerService {

	//查询所有公告，新闻
	public List listSubject();
	//查询是否有该标题
	public List  listPush_notice(String hl);
	//根据id查询公告内容
	public List  chakan();
	public <T> T chakan(int id);
	//编辑公告
	public List  chakang();
	public <T> T chakang(int id);
	//添加公告
	public void save (Object...objects);
    //修改公告
	public List  updatelist();
	void updatelist(int id, String title, String content);
	//查询所有反馈意见表
	public List listfeedback();
	//红包统计
	public List  listCop();
	public List  listCop1();
	//收益统计
	public List  listCop2();
	public List  listCop3();
	public List  listCop4();
	public List  listCop5();
	public List  listCop6();
	public List  listCop7();
	
}
