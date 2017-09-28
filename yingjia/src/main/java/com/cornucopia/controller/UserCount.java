package com.cornucopia.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cornucopia.service.UserCountService;

@Controller
@RequestMapping("/user")
public class UserCount {

	@Resource
	private UserCountService userCountServiceImpl;
	
	@RequestMapping("/list")
	public String list(Model model){
		List list=this.userCountServiceImpl.listAll();
		model.addAttribute("list", list);
		return "userList";
	}

}
