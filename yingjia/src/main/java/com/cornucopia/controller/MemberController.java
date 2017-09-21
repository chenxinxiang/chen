package com.cornucopia.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cornucopia.bean.Member;
import com.cornucopia.bean.MemberAccount;
import com.cornucopia.service.MemberService;

@Controller
@RequestMapping("/mem")
public class MemberController {
	
	@Resource
	private MemberService memberServiceImpl;
	
	
	@RequestMapping("/member")
	public String member(Model model){
		List userlist=this.memberServiceImpl.listMember();
		model.addAttribute("userlist", userlist);
		return "member";
	}
	
	@RequestMapping("/selUser")

	public String selUser(String qname,String qmobile_Phone,String qmember_name,String qinvitationCode,String qcreate_date,Model model){
		Map map=new HashMap();
		map.put("qname",qname);
		map.put("qmobile_Phone",qmobile_Phone);
		map.put("qmember_name",qmember_name);
		map.put("qinvitationCode",qinvitationCode);
		map.put("qcreate_date",qcreate_date);
		List list=memberServiceImpl.listMap(map);
		return qcreate_date;
	}

	public String selUser(String name,String mobile_Phone,String member_name,String create_date,Model model){
			String hql="from Member m where "
					+ "m.name like '%"+name+"%' "
					+ "and m.mobile_Phone like '%"+mobile_Phone+"%' "
					+ "and m.member_name like '%"+member_name+"%' "
					+ "and m.create_date like '%"+create_date+"%'"; 
			List<Member> list=this.memberServiceImpl.selMember(hql);
			model.addAttribute("userlist", list);
			return "member";
	}
	
	//账号详情
	@RequestMapping("memberOrder")
	public String aa(String id,Model model){
		int orderid=Integer.parseInt(id);
		Member member=this.memberServiceImpl.selMemberOrder(orderid);
		MemberAccount account=this.memberServiceImpl.capital(orderid);
		model.addAttribute("user", member);
		model.addAttribute("list", account);
		return "memberOrder";
	}
	
	//会员理财师管理
	@RequestMapping("/FinanciaPlanner")
	public String FinanciaPlanner(Model model){
		List  list=memberServiceImpl.ListFinancial();
		model.addAttribute("list", list);
		return "financial_planner";
	}
	
	
	//会员绑卡管理
	@RequestMapping("/cards")
	public String cardslist(Model model){
		List cardslist=memberServiceImpl.cardsList();
		model.addAttribute("cardslist",cardslist);
		return "Card";
	}
	//解绑银行卡
	@RequestMapping("/car")
	public String cared(int id,Model model){
		this.memberServiceImpl.card(id);
		List cardslist=memberServiceImpl.cardsList();
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
		List list=this.memberServiceImpl.listCards(map);
		model.addAttribute("cardslist", list);
		return "Card";
		
	}
	
	//付息计划管理 
	//投资金额*年化率/365*周期 
	//subject serial_no==合同编号 type==标的类型 name==标的名称
	//amount==标的金额 bought==已购人数  period==标的周期  delflag=募集中 ==1以结束  exper_status 体验金是否可以购买（0：否，1：是）
	@RequestMapping("/Subject")
	public String SubjectAll(Model model){
		List list=this.memberServiceImpl.SubjectAll();
		System.out.println(list.size());
		model.addAttribute("list", list);
		return "interest";
	}
	
	@RequestMapping("/selSubject")
	public String selSubject(String qname,String qstatus,String qtype,Model model ){
			Map map=new HashMap();
			map.put("qname",qname);
			map.put("qstatus",qstatus);
			map.put("qtype",qtype);
			System.out.println(qtype);
		List list=this.memberServiceImpl.selSubject(map);
		System.out.println(list.size());
		model.addAttribute("list", list);
		return "interest";
	}
	
	
	//充值管理
	//充值显示
	@RequestMapping("/Record")
	public String Record(Model model){
			List list=memberServiceImpl.Record();
			model.addAttribute("list",list);
			return "recharge";
	}
	@RequestMapping("/selRecord")
	public String selRecord(String qserial_number,String qmobile_Phone,String qstatus,String qcreate_date,Model model ){
		 Map map =new HashMap();
		 map.put("member_id", 0);
		 map.put("qserial_number",qserial_number);
		 map.put("qmobile_Phone",qmobile_Phone);
		 map.put("qstatus",qstatus);
		 map.put("qcreate_date",qcreate_date);
		 List list=this.memberServiceImpl.listRecord(map);
		 System.out.println("大小:"+list.size());
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
		List list=this.memberServiceImpl.Wrecord();
		model.addAttribute("list", list);
		return "withdraw";
	}
	//解冻
	@RequestMapping("/Thaw")
	public String Thaw(String id,Model model){
		this.memberServiceImpl.Thaw(Integer.parseInt(id));
		List list=this.memberServiceImpl.Wrecord();
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
		List list=this.memberServiceImpl.withdrawMap(map);
		model.addAttribute("list",list);
		return "withdraw";
	}
	
	//邀请显示
	@RequestMapping("/inviteList")
	public String invite(Model model){
		List list=this.memberServiceImpl.Listinvite();
		model.addAttribute("list",list);
		return "invite";
	}
	//邀请迷糊查询
	@RequestMapping("/selinvite")
	public String selinvite(String name,String mobile_Phone,String invitationCode,String invitedCode,String isAward1 ,String isAward2,Model model ){
		System.out.println(name);
		Map map =new HashMap();
		map.put("name",name);
		map.put("invitationCode",invitationCode);
		map.put("mobile_Phone",mobile_Phone);
		map.put("invitedCode",invitedCode);
		map.put("isAward1",isAward1);
		map.put("isAward2",isAward2);
		List list=this.memberServiceImpl.inviteMap(map);
		model.addAttribute("list",list);
		return "invite";
	}
	
}
