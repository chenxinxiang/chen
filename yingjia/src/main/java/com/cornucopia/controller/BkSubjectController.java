package com.cornucopia.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cornucopia.bean.Subject;
import com.cornucopia.service.SubjectService;

@Controller
@RequestMapping("BKSubject")
public class BkSubjectController {

	@Resource
	private SubjectService backSubjectService;
	
	@RequestMapping("list")
	public String listall(Model model,String lname,String lstatus,String ltype){
		List list=backSubjectService.listall(lname, lstatus, ltype);
		model.addAttribute("list",list);
		model.addAttribute("status",lstatus);
		model.addAttribute("type",ltype);
		return "BkSubject";
	}
	
	@RequestMapping("save")
	public String save(Subject one){
		backSubjectService.save(one);
		return "redirect:/BKSubject/list";
	}
	
	@RequestMapping("toupdate")
	public @ResponseBody Subject toupdate(String id,Model model){
		int iid=Integer.parseInt(id);
		Subject sub=backSubjectService.getById(iid);
		return sub;
	}
	
	@RequestMapping("update")
	public String update(Subject sub){
		backSubjectService.update(sub);
		return "redirect:/BKSubject/list";
	}
	
	@RequestMapping("/getTotalMoney")
	@ResponseBody
	public double getTotalMoney(int id) {
		double num = backSubjectService.getTotalMoney(id);
		return num;
	}
	@RequestMapping("/gettouzi")
	@ResponseBody
	public String gettouzi(int id){
		String list=backSubjectService.gettouzi(id);
		return list;
	}
}
