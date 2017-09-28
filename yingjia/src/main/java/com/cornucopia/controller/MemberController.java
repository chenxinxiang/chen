package com.cornucopia.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cornucopia.bean.AwardRecords;
import com.cornucopia.bean.Member;
import com.cornucopia.bean.Range;
import com.cornucopia.bean.SubjectPurchaseRecord;
import com.cornucopia.service.MemberService;


@Controller
@RequestMapping("/mem")
public class MemberController {
	
	@Resource
	private MemberService MemberServiceImpl;
	
	
	@RequestMapping("/member")
	public String member(Model model){
		List userlist=this.MemberServiceImpl.listMember();
		model.addAttribute("userlist", userlist);
		return "member";
	}
	
	//账号管理模糊查询
	@RequestMapping("/selUser")
	public String selUser(String qname,String qmobile_Phone,String qmember_name,String qcreate_date ,String qinvitationCode,Model model){
		Map map=new HashMap();
		map.put("qname",qname);
		map.put("qmobile_Phone",qmobile_Phone);
		map.put("qinvitationCode",qinvitationCode);
		map.put("qmember_name",qmember_name);
		map.put("qcreate_date",qcreate_date);
		List list=this.MemberServiceImpl.listMap(map);
		model.addAttribute("userlist",list);
		return "member";
	}
//	
	@RequestMapping("memberOrder")
	public String aa(String id,Model model){
		int orderid=Integer.parseInt(id);
		Member member=this.MemberServiceImpl.selMemberOrder(orderid);
		model.addAttribute("user", member);
		return "memberOrder";
	}

	
	
	
	
	//会员理财师管理
	@RequestMapping("/FinanciaPlanner")
	public String FinanciaPlanner(Model model){
		List  list=MemberServiceImpl.ListFinancial();
		model.addAttribute("list", list);
		return "financial_planner";
	}

	
	
	//会员绑卡管理
	@RequestMapping("/cards")
	public String cardslist(Model model){
		List cardslist=MemberServiceImpl.cardsList();
		model.addAttribute("cardslist",cardslist);
		return "Card";
	}
	//解绑银行卡
	@RequestMapping("/car")
	public String cared(int id,Model model){
		this.MemberServiceImpl.card(id);
		List cardslist=MemberServiceImpl.cardsList();
		model.addAttribute("cardslist",cardslist);
		return "Card";
	}
	//模糊查询
		@RequestMapping("/listCards")
		public String listCards(String qmobile_Phone,String qmember_name,String qcard_no,String qcreate_date,Model model){
			Map map =new HashMap();
			map.put("qmobile_Phone",qmobile_Phone );
			map.put("qmember_name",qmember_name );
			map.put("qcard_no",qcard_no );
			map.put("qcreate_date",qcreate_date );
			List list=this.MemberServiceImpl.listCards(map);
			model.addAttribute("cardslist", list);
			return "Card";
		}
		
		
	//充值管理
	//充值显示
	@RequestMapping("/Record")
	public String Record(Model model){
			List list=MemberServiceImpl.Record();
			model.addAttribute("list",list);
			return "recharge";
	}
	@RequestMapping("/selRecord")
	public String selRecord(String serial_number,String mobile_Phone,String date,String time,Model model ){
		System.out.println(serial_number +"---"+mobile_Phone+"----"+date+"-------"+time);
		 Map map =new HashMap();
		 map.put("member_id", 0);
		 map.put("qserial_number",serial_number);
		 map.put("qmobile_Phone",mobile_Phone);
		 map.put("qstatus",date);
		 map.put("qcreate_date",time);
		 List list=this.MemberServiceImpl.listRecord(map);
		 model.addAttribute("list",list);
		return "recharge";
	}
	
	//更新
	@RequestMapping("/replace")
	public String replace(){
		return "redirect:/Record";
	}

	
	
	
	//提现管理
	//显示
	@RequestMapping("/Wrecor")
	public String Wrecor(Model model){
		List list=this.MemberServiceImpl.Wrecord();
		model.addAttribute("list", list);
		return "withdraw";
	}
	//解冻
	@RequestMapping("/Thaw")
	public String Thaw(String id,Model model){
		this.MemberServiceImpl.Thaw(Integer.parseInt(id));
		List list=this.MemberServiceImpl.Wrecord();
		model.addAttribute("list", list);
		return "withdraw";
	}
	//审核
	@RequestMapping("/Audit")
	public String Auudit(String id,Model model){
		this.MemberServiceImpl.Audit(Integer.parseInt(id));
		List list=this.MemberServiceImpl.Wrecord();
		model.addAttribute("list", list);
		return "withdraw";
	}
	
	//提现模糊
	@RequestMapping("/selWrecor")
	public String selWrecor(String qmember_name, String qmobile_Phone,String qbank_card,String qstatus,String qcreate_date,Model model){
		Map map=new HashMap();
		map.put("qmember_name",qmember_name);
		map.put("qmobile_Phone",qmobile_Phone);
		map.put("qbank_card",qbank_card);
		map.put("qstatus",qstatus);
		map.put("qcreate_date",qcreate_date);
		List list=this.MemberServiceImpl.withdrawMap(map);
		model.addAttribute("list",list);
		return "withdraw";
	}
	
	
	
	
	
	@RequestMapping("/listAll")
	public String SubjectAll(Model model,@RequestParam(required=false)String qname,String qstatus,String qtype){
		Map map=new HashMap();
		map.put("qname", qname);
		map.put("qstatus", qstatus);
		map.put("qtype", qtype);
		List<SubjectPurchaseRecord> subjectList=MemberServiceImpl.listRange(map);
		model.addAttribute("subjectList", subjectList);
		model.addAttribute("qname",qname );
		model.addAttribute("qstatus",qstatus );
		model.addAttribute("qtype",qtype );
		return "interest";
	}
	@RequestMapping("/Subject")
	public String selSubject(String qname,String qstatus,String qtype,Model model ){
		if(qstatus!=null && qstatus.equals("-1")){
			qstatus=null;
		}
		if(qtype!=null && qtype.equals("-1")){
			qtype=null;
		}
		Map map=new HashMap();
		map.put("qname", qname);
		map.put("qstatus", qstatus);
		map.put("qtype", qtype);
		List<SubjectPurchaseRecord> subjectList=MemberServiceImpl.listRange(map);
		model.addAttribute("subjectList", subjectList);
		model.addAttribute("qname",qname );
		model.addAttribute("qstatus",qstatus );
		model.addAttribute("qtype",qtype );
		return "interest";
		
	}
	//体验金付息
		@RequestMapping("/listNews")
		public String listNews(int id,Model model){
			System.out.println("ID:"+id);
			List<SubjectPurchaseRecord> SubjectPurchaseRecord=this.MemberServiceImpl.getById(id);
			model.addAttribute("subjectBbinPurchaseRecordList", SubjectPurchaseRecord);
			return "interest2";
		}
		@RequestMapping("/update")
		public String update(int id,Model model){
			Map map =new HashMap();
			this.MemberServiceImpl.update(id);
			List<SubjectPurchaseRecord> subjectList=MemberServiceImpl.listRange(map);
			model.addAttribute("subjectList", subjectList);
			return "interest";
		}
		//付息列表
		@RequestMapping("/listFuxi")
		public String listFuxi(int id,Model model){
			List list=this.MemberServiceImpl.listAll(id);
			model.addAttribute("subjectPurchaseRecordsList", list);
			return "interest3";
		}
		//付息修改
		@RequestMapping("/updateFuxi")
		public String updateFuxi(int id,Model model){
			Map map=new HashMap();
			this.MemberServiceImpl.updateFuXi(id);
			List<SubjectPurchaseRecord> subjectList=MemberServiceImpl.listRange(map);
			model.addAttribute("subjectList",subjectList);
			return "interest";
		}
		
		//主页面显示
		@RequestMapping("/inviteList")
		public String invite(Model model){
			Map map=new HashMap();
			List list=this.MemberServiceImpl.listRangeAll2(map);
			model.addAttribute("rangeList",list);
			return "invite";
		}
		
		//邀请模糊查询
		@RequestMapping("/selinvite")
		public String selinvite(String qmember_name,String qmobile_Phone,String qinvitationCode,String qinvitedCode,String qisAward1 ,String qisAward2,Model model ){
		Map map=new HashMap();
		map.put("qmember_name",qmember_name );
		map.put("qmobile_Phone",qmobile_Phone );
		map.put("qinvitationCode",qinvitationCode );
		map.put("qinvitedCode",qinvitedCode );
		map.put("qtype",qisAward1 );
		map.put("qisAward",qisAward2 );
		List<Range> rangeList=MemberServiceImpl.listRangeAll2(map);
		model.addAttribute("rangeList", rangeList);
			return "invite";
		}
		//奖励记录
		@RequestMapping("/Reward")
		public String Reward(Model model,String id){
			System.out.println(id+"------------");
			List list1=new ArrayList();
			List list2=new ArrayList();
			List list3 =new ArrayList();
			 List aw=this.MemberServiceImpl.Reward(Integer.parseInt(id));
			 List aw2=this.MemberServiceImpl.Reward2(Integer.parseInt(id));
	    for(int i=0;i<aw.size();i++){
	    	Member mem=new Member();
	        	Object[] obj=(Object[])aw.get(i);
			   mem.setMobile_Phone(obj[0].toString());
			   mem.setInvitedCode(obj[1].toString());
			   list1.add(mem);
		}
	    for(int i=0;i<aw2.size();i++){
	    	AwardRecords awar=new AwardRecords();
	        	Object[] obj2=(Object[])aw2.get(i);
	        	awar.setType(Integer.parseInt(obj2[1].toString()));
	        	awar.setAddTime(obj2[2].toString());
	        	 int amous=0;
	      	   if(obj2[3]==null){
	      		   amous=0;
	      	   }else{
	      		   amous=(int)Float.parseFloat(obj2[3].toString());
	      	   }
	        	awar.setAmount(amous);
			   list2.add(awar);
		}
	    for(int i=0;i<aw2.size()/2;i++){
	    	Member mem2=new Member();
	        	Object[] obj3=(Object[])aw2.get(i);
	        	mem2.setMobile_Phone(obj3[0].toString());
			   list3.add(mem2);
		}
		    model.addAttribute("awardRecordsList", list1);
		    model.addAttribute("user", list2);
		    model.addAttribute("user2", list3);
		    return "invitation2";
		}

	
}
