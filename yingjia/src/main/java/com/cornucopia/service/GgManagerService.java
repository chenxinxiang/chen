package com.cornucopia.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.cornucopia.bean.AwardRecords;
import com.cornucopia.bean.Pushnotice;

@Service
@Transactional
public interface GgManagerService {

	public List<Pushnotice>listSubject();
	public List<Pushnotice> listPush_notice(String hl);
	public List<Pushnotice> chakan();
	public <T> T chakan(int id);
	public List<Pushnotice> chakang();
	public <T> T chakang(int id);
	public void save (Object...objects);
	public List<Pushnotice> updatelist();
	void updatelist(int id, String title, String content);
	public List listfeedback();
			public List<AwardRecords> ListCop(String creatTime,String endTime, int month);

			public List<AwardRecords> ListCop1(String creatTime,String endTime, int month);

			public List  ListCop2(String creatTime,String endTime, int month);

			public List  ListCop3(String creatTime,String endTime, int month);
			
			public List  ListCop4(String creatTime,String endTime, int month);
			public List  ListCop5(String creatTime,String endTime, int month);

			public List  ListCop6(String creatTime,String endTime, int month);

			public List  ListCop7(String creatTime,String endTime, int month);

			public List  ListCop8(String creatTime,String endTime, int month);

			public List  ListCop9(String creatTime,String endTime, int month);

			public List  ListCop10(String creatTime,String endTime, int month);

			public List  ListCop11(String creatTime,String endTime, int month);

			public List  ListCop12(String creatTime,String endTime, int month);

			public List  ListCop13(String creatTime,String endTime, int month);

			public List  ListCop14(String creatTime,String endTime, int month);

}
