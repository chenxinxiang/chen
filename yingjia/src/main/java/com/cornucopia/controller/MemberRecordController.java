package com.cornucopia.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cornucopia.bean.MemberTradeRecord;
import com.cornucopia.service.MemberRecordService;

@Controller
@RequestMapping("/memberRecord")
public class MemberRecordController {

	@Autowired
	private MemberRecordService memberRecordServiceImpl;
	
	@RequestMapping("/listRecordAll")
	public String listRecordAll(Model model,String trade_no,String mobile_Phone){
		System.out.println(trade_no+"  "+mobile_Phone);
		Map map=new HashMap();
		map.put("trade_no", trade_no);
		map.put("mobile_Phone", mobile_Phone);
		List<MemberTradeRecord> mrList=this.memberRecordServiceImpl.mrList(map);
		model.addAttribute("trade_no",trade_no);		
		model.addAttribute("mobile_Phone",mobile_Phone);	
		model.addAttribute("mrList",mrList);
		return "MemberRecord";
	}
	
	
//	@RequestMapping("/listMemberAll")
//	public String listMemberAll(Model model){
//		List<Member> memberList=this.memberRecordServiceImpl.memberList();
//		model.addAttribute("memberList",memberList);
//		return "MemberRecord";
//	}
	
	
	
	
//	//模糊查询
//	@RequestMapping("/queryRecordAll")
//	public String queryRecordAll(String trade_no,String mobile_Phone,Model model){
//		if(!trade_no.equals("")||trade_no!=null&&mobile_Phone==null||mobile_Phone.equals("")){
//			System.out.println(trade_no);
//			List<MemberTradeRecord> mtrList=this.memberRecordServiceImpl.mtrList(trade_no);
//			model.addAttribute("mtrList", mtrList);
//		}
//		if(!mobile_Phone.equals("")||mobile_Phone!=null&&(trade_no==null||trade_no.equals(""))){
//			List<Member> memList=this.memberRecordServiceImpl.memList(mobile_Phone);
//			model.addAttribute("memList", memList);
//		}
//		return "MemberRecord";
//	}
//			
}
