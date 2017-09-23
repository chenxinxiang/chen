package com.cornucopia.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.cornucopia.bean.Pushnotice;
import com.cornucopia.service.GgManagerDao;
import com.cornucopia.service.GgManagerService;

@Service
public class GgManagerServiceImpl implements GgManagerService{

	@Autowired
	@Qualifier("ggManagerDaoImpl")
	private GgManagerDao manager;
	
	//查询所有公告，新闻
	public List  listSubject(){
		return manager.ListAll();
}
	//查询所有反馈意见表
	
	public List listfeedback() {
		return manager.Feed();
	}

	public List  listPush_notice(String hql) {
		System.out.println("1");
		return this.manager.list(hql);
	}

	//根据ID查询公告内容

	public Pushnotice chakan(int id) {
		return manager.chakan(id);
	}
	//编辑公告
	public Pushnotice chakang(int id) {
		return manager.chakan(id);
	}

	public List  chakan() {
		return null;
	}

	public List  chakang() {
		// TODO Auto-generated method stub
		return null;
	}
	//添加
		public void save(Object... objects) {
			manager.save(objects);
			System.out.println(objects);
		}
    

		public List  updatelist() {
			// TODO Auto-generated method stub
			return null;
		}
		//修改
	public void updatelist(int id, String title, String content) {
		this.manager.updatelist(id, title,content);

	}
	//红包统计
	@Override
	public List   listCop() {
		// TODO Auto-generated method stub
		return manager.ListCop();
	}
	//红包统计
	@Override
	public List  listCop1() {
		// TODO Auto-generated method stub
		return manager.ListCop1();
	}
     //收益统计
	@Override
	public List  listCop2() {
		// TODO Auto-generated method stub
		return manager.ListCop2();
	}

	@Override
	public List  listCop3() {
		// TODO Auto-generated method stub
		return manager.ListCop3();
	}
	@Override
	public List  listCop4() {
		// TODO Auto-generated method stub
		return manager.ListCop4();
	}

	@Override
	public List  listCop5() {
		// TODO Auto-generated method stub
		return manager.ListCop5();
	}

	@Override
	public List  listCop6() {
		// TODO Auto-generated method stub
		return manager.ListCop6();
	}

	@Override
	public List  listCop7() {
		// TODO Auto-generated method stub
		return manager.ListCop7();
	}

	


}
