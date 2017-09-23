package com.cornucopia.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;import com.cornucopia.bean.AwardRecords;
import com.cornucopia.bean.Member;
import com.cornucopia.bean.Range;
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
		
		
		
	//付息计划管理 
	//投资金额*年化率/365*周期 
	//subject serial_no==合同编号 type==标的类型 name==标的名称
	//amount==标的金额 bought==已购人数  period==标的周期  delflag=募集中 ==1以结束  exper_status 体验金是否可以购买（0：否，1：是）
//	@RequestMapping("/Subject")
//	public String SubjectAll(Model model){
//		List list=this.MemberServiceImpl.SubjectAll();
//		System.out.println(list.size());
//		model.addAttribute("list", list);
//		return "interest";
//	}
//	@RequestMapping("/selSubject")
//	public String selSubject(String qname,String qstatus,String qtype,Model model ){
//			Map map=new HashMap();
//			map.put("qname",qname);
//			map.put("qstatus",qstatus);
//			map.put("qtype",qtype);
//			System.out.println(qtype);
//		List list=this.MemberServiceImpl.selSubject(map);
//		System.out.println(list.size());
//		model.addAttribute("list", list);
//		return "interest";
//	}
		
		
		
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
	
	
	
	
	//邀请显示
	@RequestMapping("/inviteList")
	public String invite(Model model){
		Map map=new HashMap();
		List list=this.MemberServiceImpl.listRangeAll(map);
		model.addAttribute("list",list);
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
	List<Range> rangeList=MemberServiceImpl.listRangeAll(map);
	model.addAttribute("rangeList", rangeList);
	
		return "invite";
//	}
//	//邀请奖励记录
//	@RequestMapping("/Awarer")
//	public String Awer(int id,Model model){
//		System.out.println(id);
//		Member awas=this.MemberServiceImpl.Awares(id);
//		model.addAttribute("list",awas);
//		return "Reg";
//	}
	
}
}
