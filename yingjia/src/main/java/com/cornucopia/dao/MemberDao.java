package com.cornucopia.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.FinanciaPlanner;
import com.cornucopia.bean.MembeWithdrawRecord;
import com.cornucopia.bean.Member;
import com.cornucopia.bean.MemberBankcards;
import com.cornucopia.bean.MemberDepositRecord;
import com.cornucopia.bean.Range;

@Component
public class MemberDao {
	
		@Autowired
		private SessionFactory sessionFactory;
		
		private Session getSession(){
			return this.sessionFactory.getCurrentSession();
		}
		
		public List<Member> ListMember() {
			Session session=getSession();
			String hql="from Member where 0=0";
			List<Member>list=session.createQuery(hql).list();			
			return list;
		}
		
		public List<Member> listMap(Map map){
			String hql="from Member where 0=0 ";
			Session session=getSession();
			hql=listHql(hql,map);
			List<Member> listMember=session.createQuery(hql).list();
			return listMember;
		}
		//拼接
		public String listHql(String hql,Map map){
			String qname=(String) map.get("qname");
			String qmember_name=(String) map.get("qmember_name");
			String qmobile_Phone=(String) map.get("qmobile_Phone");
			String qinvitationCode=(String) map.get("qinvitationCode");
			String qcreate_date=(String) map.get("qcreate_date");
			if(qname!=null&&!qname.equals("")){
				hql+=" and name like '%"+qname+"%'";
			}
			if(qmember_name!=null&&!qmember_name.equals("")){
				hql+=" and member_name like '%"+qmember_name+"%'";
			}
			if(qmobile_Phone!=null&&!qmobile_Phone.equals("")){
				hql+=" and mobile_Phone like '%"+qmobile_Phone+"%'";
			}
			if(qinvitationCode!=null&&!qinvitationCode.equals("")){
				hql+=" and invitationCode like '%"+qinvitationCode+"%'";
			}
			if(qcreate_date!=null&&!qcreate_date.equals("")){
				hql+=" and create_date like '%"+qcreate_date+"%'";
			}
			return hql;
		}
		//账号详情
		public Member selMemberOrder(int id) {
		Session session=getSession();
		 Member member=(Member) session.get(Member.class, id);
		return member;
	}


		//会员理财师管理
		public List<FinanciaPlanner> ListFinancial() {
			Session session=getSession();
			String hql="from FinanciaPlanner ";
			List<FinanciaPlanner>list=session.createQuery(hql).list();
			return list;
		}
		
		
		
		
		//会员绑卡管理
		public List<MemberBankcards>  cards(){
			Session session=getSession();
			 String hql="from MemberBankcards";
			 List cardslist=session.createQuery(hql).list();
			return cardslist;
		}
		//会员解绑银行卡
		public void card(int id){
			Session session=getSession();
			String delflag="1";
			String hql="update MemberBankcards u set u.delflag=? where u.id=?";
			Query query  =session.createQuery(hql); 
			query.setString(0,delflag);
			query.setInteger(1,id);
			query.executeUpdate();
		}
		//模糊查询
		public List<MemberBankcards> listCards(Map map){
		Session session=getSession();
		String hql="from MemberBankcards m where 0=0 ";
		hql=HqlCards(map, hql);
		List<MemberBankcards> memberBankcardsList=session.createQuery(hql).list();
		return memberBankcardsList;
	}
		public String HqlCards(Map map,String hql){
			String qmobile_Phone=(String)map.get("qmobile_Phone");
			String qmember_name=(String)map.get("qmember_name");
			String qcard_no=(String) map.get("qcard_no");
			String qcreate_date=(String)map.get("qcreate_date");
			if(qmobile_Phone!=null&&!qmobile_Phone.equals("")){
				hql+=" and m.member.mobile_Phone like '%"+qmobile_Phone+"%'";   
			}
			if(qmember_name!=null&&!qmember_name.equals("")){
				hql+=" and m.member.member_name like '%"+qmember_name+"%'";
			}
			if(qcard_no!=null&&!qcard_no.equals("")){
				hql+=" and m.card_no like '%"+qcard_no+"%'";
			}
			if(qcreate_date!=null&&!qcreate_date.equals("")){
				hql+=" and m.create_date like '%"+qcreate_date+"%'";
			}
			return hql;
		}
		
		
		

		
		
//		//删除集合中的一条数据
//		public List Remove(int id) {    
//		    List<MemberBankcards> students = this.cards();
//		    for (MemberBankcards stu : students) {  
//		        if (stu.getId() == id) {  
//		            students.remove(stu);  
//		            break;   
//		} 
//		    }
//			return students;
//		}
//		
//		//付息计划管理
//		//subject serial_no==合同编号 type==标的类型 name==标的名称
//		//amount==标的金额 bought==已购人数  period==标的周期  delflag=募集中 ==1以结束  exper
//		public List<Subject>SubjectAll(){
//			Session session=getSession();
//			String hql="from Subject";
//			List listAll=session.createQuery(hql).list();
//			return listAll;
//		}
//		 public List<Subject> selSubject(Map map){
//				Session session=getSession();
//				String hql="from Subject where 0=0 ";
//				hql=SubjectHql(map, hql);
//				List<Subject> subjectList=session.createQuery(hql).list();
//				return subjectList;
//			}
//			
//			public String SubjectHql(Map map,String hql){
//				String qname=(String) map.get("qname");
//				String qstatus=(String) map.get("qstatus");
//				String qtype=(String) map.get("qtype");		
//				if(qname!=null&&!qname.equals("")){
//					hql+=" and name like '%"+qname+"%'";
//				}
//				if(qstatus!=null&&!qstatus.equals("")){
//					hql+=" and status = '"+qstatus+"'";
//				}
//				if(qtype!=null&&!qtype.equals("")){
//					hql+=" and type = '"+qtype+"'";
//				}if(qname==null||qstatus==null||qtype==null){
//					hql+=" 0=0 ";
//				}
//				return hql;
//			}
//		
//			
			//充值管理
			//充值显示
		public List<MemberDepositRecord> Record(){
			Session session=getSession();
			String hql="from MemberDepositRecord where 0=0";
			List list=session.createQuery(hql).list();
			return list;
		}
		//充值模糊查询
		public List<MemberDepositRecord> listRecord(Map map){
		Session session=getSession();
		String hql="from MemberDepositRecord m where 0=0 ";
		hql=RecordHql(map, hql);
		List<MemberDepositRecord> list=session.createQuery(hql).list();
		return list;
	}
	
	public String RecordHql(Map map,String hql){
		String qserial_number=(String) map.get("qserial_number");
		String qmobile_Phone=(String)map.get("qmobile_Phone");
		String qstatus=(String) map.get("qstatus");
		String qpay_channel_order_no=(String)map.get("qpay_channel_order_no");
		String qcreate_date=(String)map.get("qcreate_date");
		if(qserial_number!=null&&!qserial_number.equals("")){
			hql+= " and m.serial_number like '%"+qserial_number+"%'";
		}
		if(qmobile_Phone!=null&&!qmobile_Phone.equals("")){
			hql+=" and m.member.mobile_Phone like '%"+qmobile_Phone+"%'";
		}
		if(qstatus!=null&&!qstatus.equals("")){
			hql+=" and m.status = '"+qstatus+"'";
		}
		if(qcreate_date!=null&&!qcreate_date.equals("")){
			hql+=" and m.create_date like '%"+qcreate_date+"%'";
		}
		System.out.println("hql:"+hql);
		return hql;
	}

	
	
	
	
	//提现管理
		public List<MembeWithdrawRecord> Wrecord(){
			Session session=getSession();
			String hql="from MembeWithdrawRecord";
			List list=session.createQuery(hql).list();
			return list;
		}
		
		//解冻
		public void Thaw(int id){
			Session session=getSession();
			Transaction trans=session.beginTransaction();
			String hql="update MembeWithdrawRecord user set user.status='1' where user.id="+id;
			Query queryupdate=session.createQuery(hql);
			int ret=queryupdate.executeUpdate();
			trans.commit();
		}
	//提现管理
	//模糊查询
		public List<MembeWithdrawRecord> withdrawMap(Map map){
			String hql="from MembeWithdrawRecord m where 0=0 ";
			hql=withdrawHql(map, hql);
			Session session=getSession();
			List<MembeWithdrawRecord> membeWithdrawRecordList=session.createQuery(hql).list();
			return membeWithdrawRecordList;
		}
		
		//条件查询
		public String withdrawHql(Map map,String hql){
			String qmember_name=(String) map.get("qmember_name");
			String qmobile_Phone=(String) map.get("qmobile_Phone");
			String qbank_card=(String)map.get("qbank_card");
			String qstatus=(String) map.get("qstatus");
			String qcreate_date=(String) map.get("qcreate_date");
			if(qmember_name!=null && !qmember_name.equals("")){
				hql+=" and m.member.member_name like '%"+qmember_name+"%'";
			}
			if(qmobile_Phone!=null && !qmobile_Phone.equals("")){
				hql+=" and m.member.mobile_Phone like '%"+qmobile_Phone+"%'";
			}
			if(qbank_card!=null && !qbank_card.equals("")){
				hql+=" and m.bank_card like '%"+qbank_card+"%'";
			}
			if(qstatus!=null && !qstatus.equals("")){
				hql+=" and m.status like '%"+qstatus+"%'";
			}
			if(qcreate_date!=null && !qcreate_date.equals("")){
				hql+=" and m.create_date like '%"+qcreate_date+"%'";
			}
			return hql;
		}
//		
//		//邀请显示
//		public List<AwardRecords> Listinvite(){
//			Session session=getSession();
//			String hql="from AwardRecords where 0=0";
//			List list=session.createQuery(hql).list();
//			return list;
//		}
//		
//		//邀请模糊查询
//		public List<MembeWithdrawRecord> inviteMap(Map map){
//			String hql="from AwardRecords m where 0=0 ";
//			hql=inviteHql(map, hql);
//			Session session=getSession();
//			List<MembeWithdrawRecord> membeWithdrawRecordList=session.createQuery(hql).list();
//			return membeWithdrawRecordList;
//		}
//		
//		public String inviteHql(Map map,String hql){
//			String qname=(String) map.get("name");
//			String qmobile_Phone=(String) map.get("qmobile_Phone");
//			String invitationCode=(String)map.get("invitationCode");
//			String invitedCode=(String) map.get("invitedCode");
//			String isAward1=(String) map.get("isAward1");
//			String isAward2=(String) map.get("isAward2");
//			if(qname!=null && !qname.equals("")){
//				hql+=" and m.member.name like '%"+qname+"%'";
//			}
//			if(qmobile_Phone!=null && !qmobile_Phone.equals("")){
//				hql+=" and m.member.mobile_Phone like '%"+qmobile_Phone+"%'";
//			}
//			if(invitationCode!=null && !invitationCode.equals("")){
//				hql+=" and m.member.invitationCode like '%"+invitationCode+"%'";
//			}
//			if(invitedCode!=null && !invitedCode.equals("")){
//				hql+=" and m.member.invitedCode like '%"+invitedCode+"%'";
//			}
//			if(isAward1!=null && !isAward1.equals("")){
//				hql+=" and m.type=0 and m.isAward = '"+isAward1+"'";
//			}
//			if(isAward2!=null && !isAward2.equals("")){
//				hql+=" and m.type=1 and m.isAward = '"+isAward2+"'";
//			}
//			return hql;
//		}
//		
//		//邀请奖励记录
//		public Member Awar(int id){
//			Session session=getSession();
//			Member Award=(Member)session.get(Member.class, id);
//			return Award;
//		}
		
		public List<Range> ListRangeAll(Map map) {
			Session session = getSession();
	 String sql="select * from "
	 		+ "(select mobile_Phone,member_name,invitationCode,invitedCode,sum(invest_amount) amount,"
	 		+ "case when max(enroll)=0 then '0' when max(enroll)=2 then '2' when max(enroll)=1 then '1'else '0' end enroll,"
	 		+ "case when max(invest)=0 then '0' when max(invest)=2 then'2' when max(invest)=1 then'1'else '0' end invest,max(create_date) create_date from"
	 		+ "(select  m.mobile_Phone,m.member_name,m.invitationCode,m.invitedCode,mm.invest_amount,"
	 		+ "case when a.type=0 and a.isAward=1 then '2' when a.type=0 and a.isAward!=1 then '1' else '0' end enroll,"
	 		+ "case when a.type=1  and a.isAward=1 then '2' when a.type=1  and a.isAward!=1 then '1' else '0' end invest,m.create_date "
	 		+ "from award_records a left join member m on a.invitingid=m.id left join member_account mm on m.id=mm.member_id)t "
	 		+ "group by t.mobile_Phone,t.member_name,t.invitationCode,t.invitedCode)tt where 0=0 ";
      sql=listHql(map,sql);
			  List list=session.createSQLQuery(sql).list();
	          List<Range> listrange=new ArrayList<Range>();
	        for(int i=0;i<list.size();i++){
	        	Object[] obj=(Object[])list.get(i);
	        	   Range range=new Range();
	               range.setMobile_Phone(obj[0].toString());
	               range.setMember_name(obj[1].toString());
	               range.setInvitationCode(obj[2].toString());
	               range.setInvitedCode(obj[3].toString());
	               int amous=0;
	        	   if(obj[4]==null){
	        		   amous=0;
	        	   }else{
	        		   amous=(int)Float.parseFloat(obj[4].toString());
	        	   }
	               range.setAmount(amous);
	               range.setType(obj[5].toString());
	               range.setIsAward(obj[6].toString());
	               range.setAddTime(obj[7].toString());
	              listrange.add(range);
	        }
			return listrange;
		}
		
		//条件查询
		public String listHql(Map map,String sql){
			String qmember_name=(String) map.get("qmember_name");
			String qmobile_Phone=(String) map.get("qmobile_Phone");
			String qinvitationCode=(String) map.get("qinvitationCode");
			String qinvitedCode=(String) map.get("qinvitedCode");
			String qtype=(String) map.get("qtype");
			String qisAward=(String) map.get("qisAward");
			if(qmember_name!=null&&!qmember_name.equals("")){
				sql+=" and member_name like '%"+qmember_name+"%'";
			}
			if(qmobile_Phone!=null&&!qmobile_Phone.equals("")){
				sql+=" and mobile_Phone like '%"+qmobile_Phone+"%'";
			}
			if(qinvitationCode!=null&&!qinvitationCode.equals("")){
				sql+=" and invitationCode like '%"+qinvitationCode+"%'";
			}
			if(qinvitedCode!=null&&!qinvitedCode.equals("")){
				sql+=" and invitedCode like '%"+qinvitedCode+"%'";
			}
			//注册
			if(qtype!=null&&!qtype.equals("")){
				if(qtype.equals("2")){
					sql+=" and tt.enroll ='2'";
				}else{
					sql+=" and tt.enroll !='2'";
				}
			}
			//类型
			if(qisAward!=null&&!qisAward.equals("")){
				if(qisAward.equals("2")){
					sql+=" and tt.invest ='2'";
			   	   }else{
			   		sql+=" and tt.invest !='2'";
			   	   }
				}
			return sql;
		}
		
}
