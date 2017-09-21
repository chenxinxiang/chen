package com.cornucopia.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cornucopia.service.UserService;

@Controller
@RequestMapping("PM_RolesItem")
public class PM_RolesController {
	@Resource
	private UserService userRolesResources;
	// 添加用户权限
	@RequestMapping("PM_RolesAdd")
	public String BgRight(String msg, int id) {
		
		userRolesResources.save(msg,id);
		return "BgUserRoles";
	}
}
