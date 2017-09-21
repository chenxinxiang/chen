package com.cornucopia.controller;

import java.util.Iterator;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cornucopia.bean.Subject;
import com.cornucopia.bean.SubjectPurchaseRecord;
import com.cornucopia.service.SubjectService;
import com.cornucopia.service.UserService;

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
	
	@RequestMapping("tosave")
	public String tosave(){
		return "tosave";
	}
	
	@RequestMapping("toupdate")
	public @ResponseBody Subject toupdate(String id,Model model){
		int iid=Integer.parseInt(id);
		Subject sub=backSubjectService.getById(iid);
		return sub;
	}
	
	public String update(Subject sub){
		backSubjectService.update(sub);
		return "BkSubject";
	}
	
	@RequestMapping("/getTotalMoney")
	@ResponseBody
	public double getTotalMoney(int id) {
		Subject sub = this.backSubjectService.getById(id);
		double num = 0;
		Set<SubjectPurchaseRecord> sets = sub.getSubjectPurchaseRecord();
		System.out.println(sets.size());
//		if (sets.size() != 0) {
//			Iterator<SubjectPurchaseRecord> records = sets.iterator();
//			while (records.hasNext()) {
//				SubjectPurchaseRecord rec = records.next();
//				num += rec.getAmount();
//			}
//		}
		return num;
	}
}
