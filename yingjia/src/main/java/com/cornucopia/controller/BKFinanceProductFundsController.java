package com.cornucopia.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cornucopia.bean.FinanceProductFunds;
import com.cornucopia.service.SubjectService;

@Controller
@RequestMapping("BKFina")
public class BKFinanceProductFundsController {

	@Resource
	private SubjectService BKFinanceProductFundsService;
	

	@RequestMapping("list")
	public String listall(Model model,String lname,String lstatus,String ltype){
		List list=BKFinanceProductFundsService.listall(lname, lstatus, ltype);
		model.addAttribute("list", list);
		model.addAttribute("status",lstatus);
		model.addAttribute("type",ltype);
		return "";
	}
	
	@RequestMapping("toupdate")
	public @ResponseBody FinanceProductFunds toupdate(String id,Model model){
		int iid=Integer.parseInt(id);
		FinanceProductFunds fpf=BKFinanceProductFundsService.getById(iid);
		return fpf;
	}
	
	@RequestMapping("aa")
	public String update(FinanceProductFunds fpf){
		BKFinanceProductFundsService.update(fpf);
		return "";
	}
}
