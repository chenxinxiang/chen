package com.cornucopia.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.cornucopia.bean.AwardRecords;
import com.cornucopia.bean.Pushnotice;
import com.cornucopia.bean.Subject;
import com.cornucopia.dao.Impl.GgManagerDaoImpl;
import com.cornucopia.service.GgManagerDao;
import com.cornucopia.service.GgManagerService;

@Service
public class GgManagerServiceImpl implements GgManagerService {

	@Autowired
	@Qualifier("ggManagerDaoImpl")
	private GgManagerDaoImpl manager;
	
	public List<Pushnotice> listSubject(){
		return manager.ListAll();
}
	
	public List listfeedback() {
		return manager.Feed();
	}

	public List<Pushnotice> listPush_notice(String hql) {
		System.out.println("1");
		return this.manager.list(hql);
	}


	public Pushnotice chakan(int id) {
		return manager.chakan(id);
	}
	public Pushnotice chakang(int id) {
		return manager.chakan(id);
	}

	public List<Pushnotice> chakan() {
		return null;
	}

	public List<Pushnotice> chakang() {
		// TODO Auto-generated method stub
		return null;
	}
		public void save(Object... objects) {
			manager.save(objects);
			System.out.println(objects);
		}
    

		public List<Pushnotice> updatelist() {
			// TODO Auto-generated method stub
			return null;
		} 
	public void updatelist(int id, String title, String content) {
		this.manager.updatelist(id, title,content);

	}

	public List<AwardRecords> ListCop(String creatTime,String endTime, int month) {
		return manager.ListCop(creatTime, endTime,month);
	}

	public List<AwardRecords> ListCop1(String creatTime,String endTime, int month) {
		return manager.ListCop1(creatTime, endTime,month);
	}

	public List  ListCop2(String creatTime, String endTime, int month) {
		return manager.ListCop2(creatTime, endTime,month);
	}

	public List<Subject> ListCop3(String creatTime, String endTime, int month) {
		return manager.ListCop3(creatTime, endTime,month);
	}

	public List<Subject> ListCop4(String creatTime, String endTime, int month) {
		return manager.ListCop4(creatTime, endTime,month);
	}

	public List  ListCop5(String creatTime,String endTime, int month) {
		return manager.ListCop5(creatTime, endTime,month);
	}

	public List  ListCop6(String creatTime,String endTime, int month) {
		return manager.ListCop6(creatTime, endTime,month);
	}

	public List  ListCop7(String creatTime,String endTime, int month) {
		return manager.ListCop7(creatTime, endTime,month);
	}

	public List  ListCop8(String creatTime,String endTime, int month) {
		return manager.ListCop8(creatTime, endTime,month);
	}

	public List  ListCop9(String creatTime, String endTime, int month) {
		return manager.ListCop9(creatTime, endTime,month);
	}

	public List<Subject> ListCop10(String creatTime, String endTime, int month) {
		return manager.ListCop10(creatTime, endTime,month);
	}

	public List<Subject> ListCop11(String creatTime, String endTime, int month) {
		return manager.ListCop11(creatTime, endTime,month);
	}

	public List  ListCop12(String creatTime,String endTime, int month) {
		return manager.ListCop12(creatTime, endTime,month);
	}

	public List  ListCop13(String creatTime,String endTime, int month) {
		return manager.ListCop13(creatTime, endTime,month);
	}

	public List  ListCop14(String creatTime,String endTime, int month) {
		return manager.ListCop14(creatTime, endTime,month);
	}

	


}
