package com.cornucopia.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.AwardRecords;
import com.cornucopia.bean.FinanciaPlanner;
import com.cornucopia.bean.MembeWithdrawRecord;
import com.cornucopia.bean.Member;
import com.cornucopia.bean.MemberAccount;
import com.cornucopia.bean.MemberBankcards;
import com.cornucopia.bean.MemberDepositRecord;
import com.cornucopia.bean.Subject;

@Component
public class MemberDao {
	
		@Autowired
		private SessionFactory sessionFactory;
		
		private Session getSession(){
			return this.sessionFactory.getCurrentSession();
		}
		
		public List<Member> ListMember() {
			Session session=getSession();
			String hql="from Member";
			List<Member>list=session.createQuery(hql).list();
			return list;
		}

		public List<Member> selMember(String hql){
			Session session=getSession();
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
		
		public Member selMemberOrder(int id) {
			Session session=getSession();
			 Member member=(Member) session.get(Member.class, id);
			return member;
		}
		public MemberAccount capital(int id) {
			Session session=getSession();
			String hql="from MemberAccount where member_id="+id;
			MemberAccount account=(MemberAccount)session.createQuery(hql);
			return account;
		}
		
		
		public List<FinanciaPlanner> ListFinancial() {
			Session session=getSession();
			String hql="from FinanciaPlanner ";
			List<FinanciaPlanner>list=session.createQuery(hql).list();
			return list;
		}
		
		public List<MemberBankcards>  cards(){
			Session session=getSession();
			 String hql="from MemberBankcards";
			 List cardslist=session.createQuery(hql).list();
			return cardslist;
		}
		
		public void cards(int id){
			Session session=getSession();
			Transaction trans=session.beginTransaction();
			String hql="update MemberBankcards user set user.delflag=1 where user.id="+id;
			Query queryupdate=session.createQuery(hql);
			int ret=queryupdate.executeUpdate();
			trans.commit();
		}
		
		public List<MemberBankcards> listCards(Map map){
			Session session=getSession();
			String hql="from MemberBankcards m where 0=0 ";
			hql=Hql(map, hql);
			List<MemberBankcards> memberBankcardsList=session.createQuery(hql).list();
			return memberBankcardsList;
		}
		
		public String Hql(Map map,String hql){
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
		
		
		public List Remove(int id) {    
		    List<MemberBankcards> students = this.cards();
		    for (MemberBankcards stu : students) {  
		        if (stu.getId() == id) {  
		            students.remove(stu);  
		            break;   
		} 
		    }
			return students;
		}
		
		
		public List<Subject>SubjectAll(){
			Session session=getSession();
			String hql="from Subject";
			List listAll=session.createQuery(hql).list();
			return listAll;
		}
		
		 public List<Subject> selSubject(Map map){
				Session session=getSession();
				String hql="from Subject where 0=0 ";
				hql=SubjectHql(map, hql);
				List<Subject> subjectList=session.createQuery(hql).list();
				return subjectList;
			}
			
			public String SubjectHql(Map map,String hql){
				String qname=(String) map.get("qname");
				String qstatus=(String) map.get("qstatus");
				String qtype=(String) map.get("qtype");		
				if(qname!=null&&!qname.equals("")){
					hql+=" and name like '%"+qname+"%'";
				}
				if(qstatus!=null&&!qstatus.equals("")){
					hql+=" and status = '"+qstatus+"'";
				}
				if(qtype!=null&&!qtype.equals("")){
					hql+=" and type = '"+qtype+"'";
				}if(qname==null||qstatus==null||qtype==null){
					hql+=" 0=0 ";
				}
				return hql;
			}
		
		public List<MemberDepositRecord> Record(){
			Session session=getSession();
			String hql="from MemberDepositRecord";
			List list=session.createQuery(hql).list();
			return list;
		}
		
public List<MemberDepositRecord> listRecord(Map map){
		Session session=getSession();
		String hql="from MemberDepositRecord m where 0=0 ";
		hql=RecordHql(map, hql);
		List<MemberDepositRecord> listMemberDepositRecord=session.createQuery(hql).list();
		return listMemberDepositRecord;
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
		
		
		public List<MembeWithdrawRecord> Wrecord(){
			Session session=getSession();
			String hql="from MembeWithdrawRecord";
			List list=session.createQuery(hql).list();
			return list;
		}
		
		public void Thaw(int id){
			Session session=getSession();
			Transaction trans=session.beginTransaction();
			String hql="update MembeWithdrawRecord user set user.status='1' where user.id="+id;
			Query queryupdate=session.createQuery(hql);
			int ret=queryupdate.executeUpdate();
			trans.commit();
		}
		
		
		public List<MembeWithdrawRecord> withdrawMap(Map map){
			String hql="from MembeWithdrawRecord m where 0=0 ";
			hql=withdrawHql(map, hql);
			Session session=getSession();
			List<MembeWithdrawRecord> membeWithdrawRecordList=session.createQuery(hql).list();
			return membeWithdrawRecordList;
		}
		
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
		
		
		public List<AwardRecords> Listinvite(){
			Session session=getSession();
			String hql="from AwardRecords where 0=0";
			List list=session.createQuery(hql).list();
			return list;
		}
		
		public List<MembeWithdrawRecord> inviteMap(Map map){
			String hql="from AwardRecords m where 0=0 ";
			hql=inviteHql(map, hql);
			Session session=getSession();
			List<MembeWithdrawRecord> membeWithdrawRecordList=session.createQuery(hql).list();
			System.out.println(hql);
			return membeWithdrawRecordList;
		}
		
		public String inviteHql(Map map,String hql){
			String qname=(String) map.get("name");
			String qmobile_Phone=(String) map.get("qmobile_Phone");
			String invitationCode=(String)map.get("invitationCode");
			String invitedCode=(String) map.get("invitedCode");
			String isAward1=(String) map.get("isAward1");
			String isAward2=(String) map.get("isAward2");
			if(qname!=null && !qname.equals("")){
				hql+=" and m.member.name like '%"+qname+"%'";
			}
			if(qmobile_Phone!=null && !qmobile_Phone.equals("")){
				hql+=" and m.member.mobile_Phone like '%"+qmobile_Phone+"%'";
			}
			if(invitationCode!=null && !invitationCode.equals("")){
				hql+=" and m.member.invitationCode like '%"+invitationCode+"%'";
			}
			if(invitedCode!=null && !invitedCode.equals("")){
				hql+=" and m.member.invitedCode like '%"+invitedCode+"%'";
			}
			if(isAward1!=null && !isAward1.equals("")){
				hql+=" and m.type=0 and m.isAward = '"+isAward1+"'";
			}
			if(isAward2!=null && !isAward2.equals("")){
				hql+=" and m.type=1 and m.isAward = '"+isAward2+"'";
			}
			return hql;
		}
		
}
