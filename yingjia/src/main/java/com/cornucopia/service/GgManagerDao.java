package com.cornucopia.service;

import java.util.List;

import com.cornucopia.bean.AwardRecords;
import com.cornucopia.bean.Pushnotice;
import com.cornucopia.bean.Subject;


public interface GgManagerDao {

	public List ListAll() ;

	public List Feed();
	
	public List<Pushnotice> list(String hql);
			public Pushnotice chakan(int id);
	public Pushnotice chakang(int id);
		public void save(Object...objects);
		public void updatelist(int id,String title,String content);
		public List<AwardRecords> ListCop(String creatTime,String endTime, int month);

		public List<AwardRecords> ListCop1(String creatTime,String endTime, int month);

		public List ListCop2(String creatTime,String endTime, int month);

		public List<Subject> ListCop3(String creatTime,String endTime, int month);
		
		public List<Subject> ListCop4(String creatTime,String endTime, int month);
		public List ListCop5(String creatTime,String endTime, int month);

		public List ListCop6(String creatTime,String endTime, int month);

		public List ListCop7(String creatTime,String endTime, int month);

		public List ListCop8(String creatTime,String endTime, int month);

		public List ListCop9(String creatTime,String endTime, int month);

		public List<Subject> ListCop10(String creatTime,String endTime, int month);

		public List<Subject> ListCop11(String creatTime,String endTime, int month);

		public List ListCop12(String creatTime,String endTime, int month);

		public List ListCop13(String creatTime,String endTime, int month);

		public List ListCop14(String creatTime,String endTime, int month);

}
