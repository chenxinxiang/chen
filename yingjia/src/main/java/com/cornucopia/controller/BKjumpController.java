package com.cornucopia.controller;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.ui.Model;
import org.apache.ibatis.annotations.Delete;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cornucopia.bean.Resources;
import com.cornucopia.bean.UserRole;
import com.cornucopia.bean.Users;
import com.cornucopia.service.UserService;
import com.cornucopia.service.UserService2;
import com.cornucopia.serviceImpl.UserService2Impl;

@Controller
@RequestMapping("BgItem")
public class BKjumpController {
	
	@Resource
	private UserService2 userService2Impl;
	@Resource
	private UserService userServiceImpl;
	
	@Resource
	private UserService userRoleServiceImpl;
	
	@Resource
	private UserService userRolesResources; 
	// 后台主页
	@RequestMapping("BgMain")
	public String BgMain() {
		return "BgMain";
	}
	// 后台默认主页
		@RequestMapping("BgIndex")
		public String BgIndex() {
			return "BgIndex";
		}
	// 后台左侧
	@RequestMapping("BgLeft")
	public String BgLeft() {
		return "BgLeft";
	}

	// 后台顶部
	@RequestMapping("BgTop")
	public String BgTop() {
		return "BgTop";
	}

	// 后台默认页面
	@RequestMapping("BgDefault")
	public String BgDefault() {
		return "BgDefault";
	}

	// 后台表单
	@RequestMapping("Bgform")
	public String Bgform() {
		return "Bgform";
	}

	// 后台模块编辑
	@RequestMapping("BgImgList")
	public String BgImgList() {
		return "BgImgList";
	}

	// 后台模块表单
	@RequestMapping("BgImgTable")
	public String BgImgTable() {
		return "BgImgTable";
	}

	// 后台登陆
	@RequestMapping("BgLogin")
	public String BgLogin() {
		return "BgLogin";
	}

	// 后台右侧
	@RequestMapping("BgRight")
	public String BgRight() {
		return "BgRight";
	}

	// 后台表格
	@RequestMapping("BgTab")
	public String BgTab() {
		return "BgTab";
	}

	// 后台功能
	@RequestMapping("BgTools")
	public String BgTools() {
		return "BgTools";
	}
	
	//后台学院管理
	@RequestMapping("BgConsultation")
	public String BgConsultation() {
		return "BgConsultation";
	}
	
	//后台学院管理
	@RequestMapping("BgTration")
	public String BgTration(){
		return "BgTration";
	}

	// 后台用户权限管理
	@RequestMapping("BgUserPermission")
	public String BgUserPermission(Model model){
		List UsersList=userServiceImpl.ListAll();
		model.addAttribute("UsersList",UsersList);
		return "BgUserPermission";
	}
	//后台用户显示
	@RequestMapping("user")
	public String list(Model model){
		List userList=userService2Impl.userList();
		model.addAttribute("userList", userList);
		return "BgUserPermission";
	}
	//用户添加
	@RequestMapping("toAddUser")
	public String toAddUser(Model model){
		List<UserRole>roleList=userService2Impl.roleList();
		model.addAttribute("roleList",roleList );
		return "userAdd";
	}
	//角色添加
		@RequestMapping("toAddRole")
		public String toAddRole(Model model){
			return "roleAdd";
		}
		
	@RequestMapping("/userAdd")
	public String userAdd(Users users,int cid){
		System.out.println(cid);
		if (cid!=-1) {
			UserRole userRole=this.userService2Impl.getByRid(cid);
			users.setUserrole(userRole);
		}
		userService2Impl.saveUser(users);
		return "redirect:/BgItem/user";
	}
	@RequestMapping("/roleAdd")
	public String roleAdd(UserRole userRole){
		this.userService2Impl.saveUserRole(userRole);
		return "redirect:/BgItem/user";
	}
	@RequestMapping("/delete")
	public String deleteUser(int id){
		this.userService2Impl.deleteUser(id);
		return "redirect:/BgItem/user";
	}
	@RequestMapping("/initData")
	public String initDate(Model model,int id){
		Users users=this.userService2Impl.getByUid(id);
		List<UserRole> list=this.userService2Impl.roleList();
		model.addAttribute("users", users);
		model.addAttribute("list", list);
		return "userEidt";
	}
	@RequestMapping("/update")
	public String update(Users users,int cid){
		if (cid!=-1) {
			users.setUserrole(this.userService2Impl.getByRid(cid));
		}
		this.userService2Impl.update(users);
		return "redirect:/BgItem/user";
	}
	// 后台用户权限管理
	@RequestMapping("BgUserRoles")
	public String BgUserRoles(Model model) {
		List<UserRole> UserRoleList=userRoleServiceImpl.ListAll();
		model.addAttribute("UserRoleList",UserRoleList);
		return "BgUserRoles";
	}
	
	// 后台用户权限管理
	@ResponseBody
		@RequestMapping("Ztree")
		public String Ztree(Model model,int id) {
		System.out.println("初始化");
			 List<Resources> list=userRolesResources.ListAll(); 
			List<Integer> bool=userRoleServiceImpl.ListAlltrue(id);
		        StringBuffer json=new StringBuffer("[");  
		        String data="";  
		        for (int i = 0; i < list.size(); i++) {  
		            json.append("{id:"+list.get(i).getResources_id()+",");  
		            json.append("pId:"+list.get(i).getResources_higher()+",");  
		            json.append("name:\""+list.get(i).getResources_name()+"\",");  
		            if (list.get(i).getIsParent() !=0) {  
		                json.append("isParent:"+list.get(i).getIsParent()+",");  
		            }  
		            for (int y = 0; y < bool.size(); y++) {  
		            if (list.get(i).getResources_id() ==bool.get(y)) {  
		            	
		            	System.out.println(bool.get(y));
		            	//默认勾选
		                json.append("checked:true,");  
		                //勾选后默认打开
		                json.append("open:"+list.get(i).getResources_id()+",");  
		            }  
		            }
		            if (list.get(i).getChkDisabled()==1) { 
		            	 json.append("checked:true,");  
		                json.append("chkDisabled:true,");  
		            }  
		            data=json.substring(0,json.lastIndexOf(","))+"},";  
		            json=new StringBuffer(data);  
		        }  
		        data=json.substring(0, json.length()-1)+"]";  
		        System.out.println(data);  
		        return data;  
		}
	
}
	