package com.cornucopia.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cornucopia.bean.OverseaConfig;
import com.cornucopia.bean.Subject;
import com.cornucopia.service.SubjectService;

@Controller
@RequestMapping("BKOversea")
public class BKOverseaController {

	@Resource
	private SubjectService backOversea;
	
	@RequestMapping("list")
	public String list(Model model){
		List list=backOversea.list();
		model.addAttribute("list", list);
		return "BKOversea";
	}
	
	@RequestMapping("toupdate")
	public @ResponseBody OverseaConfig toupdate(String id,Model model){
		int iid=Integer.parseInt(id);
		OverseaConfig one=backOversea.getById(iid);
		return one;
	}
	
	@RequestMapping("update")
	public String update(OverseaConfig one){
		backOversea.update(one);
		return "redirect:/BKOversea/list";
	}
	
	@RequestMapping("save")
	public String save(OverseaConfig one){
		backOversea.save(one);
		return "redirect:/BKOversea/list";
	}
	@RequestMapping("gettouzi")
	@ResponseBody
	public String gettouzi(int id){
		
		return backOversea.gettouzi(id);
	}
}
