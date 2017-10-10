package com.cornucopia.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cornucopia.bean.Member;
import com.cornucopia.bean.MemberAccount;
import com.cornucopia.bean.MemberBankcards;
import com.cornucopia.service.FrontProductService;
import com.cornucopia.service.MemberAddSerivce;
import com.cornucopia.service.MemberCenterService;


@Controller
@RequestMapping("fontmember")
public class MemberAddController {

	@Autowired
	@Qualifier("memberAddServiceImpl")
	private MemberAddSerivce mas;
	
	@Autowired
	@Qualifier("memberCenterServiceImpl")
	private MemberCenterService mcs;
	
	@Autowired
	@Qualifier("frontProductServiceImpl")
	private FrontProductService frontProductServiceImpl;
	
	@RequestMapping("zhu")
	public String touzi(){
		return "memberDepositsHistory";
	}
	@RequestMapping("bbinrecord")
	public String bbin(){
		return "memberBbinRecord";
	}
	@RequestMapping("bound")
	public String bound(HttpSession session){
		session.setAttribute("shengList", this.mcs.getSheng());
		return "memberBound";
	}
	
	@RequestMapping("czjl")
	public String czjl(HttpSession session){
		Member member = (Member) session.getAttribute("member");
		if(member!=null){
			List sList=this.mcs.bankCark(member.getId());
			if(sList.size()>0){
				MemberBankcards memberBank=(MemberBankcards) sList.get(0);
				session.setAttribute("memberBank", memberBank);
			}else{
				//跳转到绑卡页面
				return "redirect:/fontmember/bound";
			}
		}else {
			//跳转到登录页面
			return "redirect:/frontIframeLogin";
		}
		return "memberAccountCz";
	}
	
	@RequestMapping("woyaotikuan")
	public String woyaotikuan(HttpSession session){
		MemberAccount memberAccount=(MemberAccount) session.getAttribute("memberAccount");
		Member member = (Member) session.getAttribute("member");
		if(member==null){
			return "redirect:/frontIframeLogin";
		}else{
			List sList=this.mcs.bankCark(member.getId());
			if(sList.size()>1){
				session.setAttribute("idCard", sList.get(0));
			}else{
				//跳转到绑卡页面
				return "redirect:/fontmember/bound";
			}
			if(memberAccount==null){
				memberAccount=this.frontProductServiceImpl.ListAllByMemberId(member.getId());
				session.setAttribute("memberAccount", memberAccount);
			}
		}
		return "memberTiKuan";
	}
	
	@RequestMapping("safe")
	public String licaishi(HttpSession session){
		Member member = (Member) session.getAttribute("member");
		if(member!=null){
			List sList=this.mcs.bankCark(member.getId());
			if(sList.size()>1){
				session.setAttribute("idCard", sList.get(0));
			}else{
				session.setAttribute("idCard", "");
			}
			
			String phone=member.getMobile_Phone().substring(0, 7);
			session.setAttribute("phone", phone);
			String str1="";
			String str2="";
			System.out.println(member.getIdentity()=="");
			if(member.getIdentity()==""){
				System.out.println("come in");
				session.setAttribute("str1", str1);
				session.setAttribute("str2", str2);
			}else{
				str1=member.getIdentity().substring(0, 3);
				str2=member.getIdentity().substring(15, 10);
				session.setAttribute("str1", str1);
				session.setAttribute("str2", str2);
			}
		}else {
			//跳转到登录页面
			return "redirect:/frontIframeLogin";
		}
		return "font_desk/memberMain/memberSafe";
	}
	
	@RequestMapping("bangkaRen")
	public String bangkaRen(){
		return "font_desk/memberMain/memberBoundRen";
	}
	
	@RequestMapping("updatepas")
	public String updatepas(HttpSession session){
		Member member = (Member) session.getAttribute("member");
		if(member==null){
			//跳转到登录页面
			return "redirect:/frontIframeLogin";
		}
		return "font_desk/memberMain/Updatepas";
	}
	

	@RequestMapping("tikuan")
	public String tikuan(HttpSession session){
		Member member = (Member) session.getAttribute("member");
		if(member==null){
			//跳转到登录页面
			return "redirect:/frontIframeLogin";
		}
		return "font_desk/memberMain/tikuanPas";
	}
	
	@RequestMapping("updateMemberTps")
	public String updateMemberTps(HttpSession session){
		Member member = (Member) session.getAttribute("member");
		if(member==null){
			//跳转到登录页面
			return "redirect:/frontIframeLogin";
		}
		return "font_desk/memberMain/tikuanupdate";
	}
	
}
