package com.cornucopia.dao.Impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.AwardRecords;
import com.cornucopia.bean.Pushnotice;
import com.cornucopia.service.GgManagerDao;


@Component
public class GgManagerDaoImpl implements GgManagerDao  {

	@Autowired
	public SessionFactory sessionFactory;
	
	public Session getSession(){
		return this.sessionFactory.getCurrentSession();
	}
	public List ListAll() {
		Session session = getSession();
		String hql="from Pushnotice";
		 List list =session.createQuery(hql).list();
		return list;
	}
	public List Feed(){
		Session session = getSession();
		StringBuffer buffer = new StringBuffer();
		buffer.append(" from  Feedback  u  inner  join fetch u.member ");
		Query query = session.createQuery(buffer.toString());
		List list = query.list();
		System.out.println(list.size());
		return list;

		
	}
	public List<Pushnotice> list(String hql){
		Session session=getSession();
		List list=session.createQuery(hql).list();
		return list;
	}
			public Pushnotice chakan(int id){
				Session session=getSession();
				Pushnotice pushNotice =(Pushnotice) session.get(Pushnotice.class, id);
				return pushNotice;
	}
	public Pushnotice chakang(int id){
		Session session=getSession();
		Pushnotice pushNotice = (Pushnotice) session.get(Pushnotice.class, id);
		return pushNotice;
	}
		public void save(Object...objects){
			Session session=getSession();
			session.save(objects[0]);
		}
		public void updatelist(int id,String title,String content){
			Session session=getSession();
			String hql="update Pushnotice user set user.title='"+title+"', user.content='"+content+"' where user.id="+id;
			System.out.println(title+content);
			session.createSQLQuery(hql).executeUpdate();
		}
         public List<AwardRecords> ListCop(String creatTime,String endTime, int month) {
        	 Session session = getSession();
     		String hql="select sum(amount) from award_records where type=0 and isAward=1 ";
             if(month==1){
     			hql+=" and DATE_FORMAT( addTime, '%Y%m' ) = DATE_FORMAT( CURDATE( ) , '%Y%m' )";
     		}else if(month==2){
     			hql+=" and PERIOD_DIFF( date_format( now( ) , '%Y%m' ) , date_format( addTime, '%Y%m' ) ) =1 ";
     		}else if(month==3){
     			hql+=" and QUARTER(addTime)=QUARTER(now())";
     		}else {
				
     		if(creatTime!=null&&!"".equals(creatTime)){
        		 hql+=" and addTime>='"+creatTime+"' ";
        	 }
     		if(endTime!=null&&!"".equals(endTime)){
     			 hql+=" and addTime<='"+endTime+"' "; 
     		 }
     		}
             System.out.println("---"+hql);
     		 List list =session.createSQLQuery(hql).list();
     		return list;
}
		public List<AwardRecords> ListCop1(String creatTime,String endTime, int month) {
			 Session session = getSession();
	     		String hql="select sum(amount) from award_records where type=1 and isAward=1 ";
	     		if(month==1){
	     			hql+="and DATE_FORMAT( addTime, '%Y%m' ) = DATE_FORMAT( CURDATE( ) , '%Y%m' )";
	     		}else if(month==2){
	     			hql+=" and PERIOD_DIFF( date_format( now( ) , '%Y%m' ) , date_format( addTime, '%Y%m' ) ) =1 ";
	     		}else if(month==3){
	     			hql+=" and QUARTER(addTime)=QUARTER(now())";
	     		}else{
	     		if(creatTime!=null&&!"".equals(creatTime)){
	        		 hql+=" and addTime>='"+creatTime+"' ";
	        	 }
	     		if(endTime!=null&&!"".equals(endTime)){
	     			 hql+=" and addTime<='"+endTime+"' "; 
	     		 }
	     		}
	     		 List list2 =session.createSQLQuery(hql).list();
	     		return list2;
		}
		public List ListCop2(String creatTime,String endTime, int month) {
			 Session session = getSession();
	     		String hql="select sum(floor_amount) from finance_product_funds where type='SIMU' ";
	     		if(month==1){
	     			hql+=" and DATE_FORMAT( start_date, '%Y%m' ) = DATE_FORMAT( CURDATE( ) , '%Y%m' )";
	     		}else if(month==2){
	     			hql+=" and PERIOD_DIFF( date_format( now( ) , '%Y%m' ) , date_format( start_date, '%Y%m' ) ) =1 ";
	     		}else if(month==3){
	     			hql+=" and QUARTER(start_date)=QUARTER(now())";
	     		}else{
	     		if(creatTime!=null&&!"".equals(creatTime)){
	        		 hql+=" and start_date>='"+creatTime+"' ";
	        	 }
	     		if(endTime!=null&&!"".equals(endTime)){
	     			 hql+=" and start_date<='"+endTime+"' "; 
	     		 }
	     		}
	     		 List list3 =session.createSQLQuery(hql).list();
	     		return list3;
		}
		public List  ListCop3(String creatTime,String endTime, int month) {
			 Session session = getSession();
	     		String hql="select sum(amount) from Subject where type=0 ";
	     		if(month==1){
	     			hql+=" and DATE_FORMAT( start_date, '%Y%m' ) = DATE_FORMAT( CURDATE( ) , '%Y%m' )";
	     		}else if(month==2){
	     			hql+=" and PERIOD_DIFF( date_format( now( ) , '%Y%m' ) , date_format( start_date, '%Y%m' ) ) =1 ";
	     		}else if(month==3){
	     			hql+=" and QUARTER(start_date)=QUARTER(now())";
	     		}else{
	     		if(creatTime!=null&&!"".equals(creatTime)){
	        		 hql+=" and start_date>='"+creatTime+"' ";
	        	 }
	     		if(endTime!=null&&!"".equals(endTime)){
	     			 hql+=" and start_date<='"+endTime+"' "; 
	     		 }
	     		}
	     		 List list4 =session.createSQLQuery(hql).list();
	     		return list4;
		}
		public List  ListCop4(String creatTime,String endTime, int month) {
			 Session session = getSession();
	     		String hql="select sum(amount) from Subject where type=1 ";
	     		if(month==1){
	     			hql+=" and DATE_FORMAT( start_date, '%Y%m' ) = DATE_FORMAT( CURDATE( ) , '%Y%m' )";
	     		}else if(month==2){
	     			hql+=" and PERIOD_DIFF( date_format( now( ) , '%Y%m' ) , date_format( start_date, '%Y%m' ) ) =1 ";
	     		}else if(month==3){
	     			hql+=" and QUARTER(start_date)=QUARTER(now())";
	     		}else{
	     		if(creatTime!=null&&!"".equals(creatTime)){
	        		 hql+=" and start_date>='"+creatTime+"' ";
	        	 }
	     		if(endTime!=null&&!"".equals(endTime)){
	     			 hql+=" and start_date<='"+endTime+"' "; 
	     		 }
	     		}
	     		 List list5 =session.createSQLQuery(hql).list();
	     		return list5;
		}
		public List  ListCop5(String creatTime,String endTime, int month) {
			 Session session = getSession();
	     		String hql="select sum(market_price) from Sys_recharge_price_config where type='MOBILE' ";
	     		if(month==1){
	     			hql+=" and DATE_FORMAT( create_date, '%Y%m' ) = DATE_FORMAT( CURDATE( ) , '%Y%m' )";
	     		}else if(month==2){
	     			hql+=" and PERIOD_DIFF( date_format( now( ) , '%Y%m' ) , date_format( create_date, '%Y%m' ) ) =1 ";
	     		}else if(month==3){
	     			hql+=" and QUARTER(create_date)=QUARTER(now())";
	     		}else{
	     		if(creatTime!=null&&!"".equals(creatTime)){
	        		 hql+=" and create_date>='"+creatTime+"' ";
	        	 }
	     		if(endTime!=null&&!"".equals(endTime)){
	     			 hql+=" and create_date<='"+endTime+"' "; 
	     		 }
	     		}
	     		 List list6 =session.createSQLQuery(hql).list();
	     		return list6;
		}
		@Override
		public List  ListCop6(String creatTime,String endTime, int month) {
			Session session = getSession();
     		String hql="select sum(market_price) from Sys_recharge_price_config where type='OIL' ";
     		if(month==1){
     			hql+=" and DATE_FORMAT( create_date, '%Y%m' ) = DATE_FORMAT( CURDATE( ) , '%Y%m' )";
     		}else if(month==2){
     			hql+=" and PERIOD_DIFF( date_format( now( ) , '%Y%m' ) , date_format( create_date, '%Y%m' ) ) =1 ";
     		}else if(month==3){
     			hql+=" and QUARTER(create_date)=QUARTER(now())";
     		}else{
     		if(creatTime!=null&&!"".equals(creatTime)){
        		 hql+=" and create_date>='"+creatTime+"' ";
        	 }
     		if(endTime!=null&&!"".equals(endTime)){
     			 hql+=" and create_date<='"+endTime+"' "; 
     		 }
     		}
     		 List list7 =session.createSQLQuery(hql).list();
     		return list7;
		}
		@Override
		public List  ListCop7(String creatTime,String endTime, int month) {
			Session session = getSession();
     		String hql="select sum(amount) from Member_withdraw_record where channel_name='FUIOU' ";
     		if(month==1){
     			hql+=" and DATE_FORMAT( create_date, '%Y%m' ) = DATE_FORMAT( CURDATE( ) , '%Y%m' )";
     		}else if(month==2){
     			hql+=" and PERIOD_DIFF( date_format( now( ) , '%Y%m' ) , date_format( create_date, '%Y%m' ) ) =1 ";
     		}else if(month==3){
     			hql+=" and QUARTER(create_date)=QUARTER(now())";
     		}else{
     		if(creatTime!=null&&!"".equals(creatTime)){
        		 hql+=" and create_date>='"+creatTime+"' ";
        	 }
     		if(endTime!=null&&!"".equals(endTime)){
     			 hql+=" and create_date<='"+endTime+"' "; 
     		 }
     		}
     		 List list8 =session.createSQLQuery(hql).list();
     		return list8;
		}
		@Override
		public List ListCop8(String creatTime,String endTime, int month) {
			Session session = getSession();
     		String hql="select sum(amount) from Member_withdraw_record where channel_name='BEIFU' ";
     		if(month==1){
     			hql+=" and DATE_FORMAT( create_date, '%Y%m' ) = DATE_FORMAT( CURDATE( ) , '%Y%m' )";
     		}else if(month==2){
     			hql+=" and PERIOD_DIFF( date_format( now( ) , '%Y%m' ) , date_format( create_date, '%Y%m' ) ) =1 ";
     		}else if(month==3){
     			hql+=" and QUARTER(create_date)=QUARTER(now())";
     		}else{
     		if(creatTime!=null&&!"".equals(creatTime)){
        		 hql+=" and create_date>='"+creatTime+"' ";
        	 }
     		if(endTime!=null&&!"".equals(endTime)){
     			 hql+=" and create_date<='"+endTime+"' "; 
     		 }
     		}
     		 List list9 =session.createSQLQuery(hql).list();
     		return list9;
		}
		@Override
		public List  ListCop9(String creatTime,String endTime, int month) {
			 Session session = getSession();
			 String hql="select sum(floor_amount) from finance_product_funds where type='SIMU' ";
	     		if(month==1){
	     			hql+=" and DATE_FORMAT( start_date, '%Y%m' ) = DATE_FORMAT( CURDATE( ) , '%Y%m' )";
	     		}else if(month==2){
	     			hql+=" and PERIOD_DIFF( date_format( now( ) , '%Y%m' ) , date_format( start_date, '%Y%m' ) ) =1 ";
	     		}else if(month==3){
	     			hql+=" and QUARTER(start_date)=QUARTER(now())";
	     		}else{
	     		if(creatTime!=null&&!"".equals(creatTime)){
	        		 hql+=" and start_date>='"+creatTime+"' ";
	        	 }
	     		if(endTime!=null&&!"".equals(endTime)){
	     			 hql+=" and start_date<='"+endTime+"' "; 
	     		 }
	     		}
	     		 List list10 =session.createSQLQuery(hql).list();
	     		return list10;
		}
		@Override
		public List ListCop10(String creatTime,String endTime, int month) {
			 Session session = getSession();
	     		String hql="select sum(floor_amount) from Subject where type=0 ";
	     		if(month==1){
	     			hql+=" and DATE_FORMAT( start_date, '%Y%m' ) = DATE_FORMAT( CURDATE( ) , '%Y%m' )";
	     		}else if(month==2){
	     			hql+=" and PERIOD_DIFF( date_format( now( ) , '%Y%m' ) , date_format( start_date, '%Y%m' ) ) =1 ";
	     		}else if(month==3){
	     			hql+=" and QUARTER(start_date)=QUARTER(now())";
	     		}else{
	     		if(creatTime!=null&&!"".equals(creatTime)){
	        		 hql+=" and start_date>='"+creatTime+"' ";
	        	 }
	     		if(endTime!=null&&!"".equals(endTime)){
	     			 hql+=" and start_date<='"+endTime+"' "; 
	     		 }
	     		}
	     		 List list11 =session.createSQLQuery(hql).list();
	     		return list11;
		}
		@Override
		public List  ListCop11(String creatTime,String endTime, int month) {
			 Session session = getSession();
	     		String hql="select sum(floor_amount) from Subject where type=1 ";
	     		if(month==1){
	     			hql+=" and DATE_FORMAT( start_date, '%Y%m' ) = DATE_FORMAT( CURDATE( ) , '%Y%m' )";
	     		}else if(month==2){
	     			hql+=" and PERIOD_DIFF( date_format( now( ) , '%Y%m' ) , date_format( start_date, '%Y%m' ) ) =1 ";
	     		}else if(month==3){
	     			hql+=" and QUARTER(start_date)=QUARTER(now())";
	     		}else{
	     		if(creatTime!=null&&!"".equals(creatTime)){
	        		 hql+=" and start_date>='"+creatTime+"' ";
	        	 }
	     		if(endTime!=null&&!"".equals(endTime)){
	     			 hql+=" and start_date<='"+endTime+"' "; 
	     		 }
	     		}
	     		 List list12 =session.createSQLQuery(hql).list();
	     		return list12;
		}
		@Override
		public List  ListCop12(String creatTime,String endTime, int month) {
			Session session = getSession();
     		String hql="select sum(amount) from member_trade_record where trade_name LIKE '%鎵嬫満鍏呭�%'";
     		if(month==1){
     			hql+=" and DATE_FORMAT( create_date, '%Y%m' ) = DATE_FORMAT( CURDATE( ) , '%Y%m' )";
     		}else if(month==2){
     			hql+=" and PERIOD_DIFF( date_format( now( ) , '%Y%m' ) , date_format( create_date, '%Y%m' ) ) =1 ";
     		}else if(month==3){
     			hql+=" and QUARTER(create_date)=QUARTER(now())";
     		}else{
     		if(creatTime!=null&&!"".equals(creatTime)){
        		 hql+=" and create_date>='"+creatTime+"' ";
        	 }
     		if(endTime!=null&&!"".equals(endTime)){
     			 hql+=" and create_date<='"+endTime+"' "; 
     		 }
     		}
     		 List list13 =session.createSQLQuery(hql).list();
     		return list13;
		}
		@Override
		public List ListCop13(String creatTime,String endTime, int month) {
			Session session = getSession();
     		String hql="select sum(amount) from member_trade_record where trade_name LIKE '%鐭冲寲鍗″厖鍊�%'";
     		if(month==1){
     			hql+=" and DATE_FORMAT( create_date, '%Y%m' ) = DATE_FORMAT( CURDATE( ) , '%Y%m' )";
     		}else if(month==2){
     			hql+=" and PERIOD_DIFF( date_format( now( ) , '%Y%m' ) , date_format( create_date, '%Y%m' ) ) =1 ";
     		}else if(month==3){
     			hql+=" and QUARTER(create_date)=QUARTER(now())";
     		}else{
     		if(creatTime!=null&&!"".equals(creatTime)){
        		 hql+=" and create_date>='"+creatTime+"' ";
        	 }
     		if(endTime!=null&&!"".equals(endTime)){
     			 hql+=" and create_date<='"+endTime+"' "; 
     		 }
     		}
     		 List list14 =session.createSQLQuery(hql).list();
     		return list14;
		}
		@Override
		public List ListCop14(String creatTime,String endTime, int month) {
			Session session = getSession();
     		String hql="select sum(amount) from member_tally where 0=0";
     		if(month==1){
     			hql+=" and DATE_FORMAT( create_date, '%Y%m' ) = DATE_FORMAT( CURDATE( ) , '%Y%m' )";
     		}else if(month==2){
     			hql+=" and PERIOD_DIFF( date_format( now( ) , '%Y%m' ) , date_format( create_date, '%Y%m' ) ) =1 ";
     		}else if(month==3){
     			hql+=" and QUARTER(create_date)=QUARTER(now())";
     		}else{
     		if(creatTime!=null&&!"".equals(creatTime)){
        		 hql+=" and create_date>='"+creatTime+"' ";
        	 }
     		if(endTime!=null&&!"".equals(endTime)){
     			 hql+=" and create_date<='"+endTime+"' "; 
     		 }
     		}
     		 List list15 =session.createSQLQuery(hql).list();
     		return list15;
		}
		}
