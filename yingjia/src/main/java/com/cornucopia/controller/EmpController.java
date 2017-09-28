package com.cornucopia.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.cornucopia.bean.Pushnotice;
import com.cornucopia.service.EmpService;



@Controller
@RequestMapping("/item")
public class EmpController {
     	
    @Resource
	public EmpService empServiceImpl;
	
    
	@RequestMapping("/listmap")
	   public String listmap(Model model){
			List userlist=empServiceImpl.list();
			System.out.println("+++++++"+userlist.size());
			model.addAttribute("userlist",userlist);
			return "listmap";
	}
	@RequestMapping("/listxian")
   public String listxian(Model model,String title){
		System.out.println("hfodhoh"+title);
		Map map=new HashMap();
		map.put("title", title);
		List userlist=empServiceImpl.list(map);
		model.addAttribute("userlist",userlist);
		return "empList";
	    }
	
	@RequestMapping("/update")
	public String update(Pushnotice push,int id){
		this.empServiceImpl.update(push);
		return "redirect:/item/listxian";
	  }
	
	@RequestMapping("/toUpdate/{id}")
	public String toUpdate(Model model,@PathVariable("id")int id){
		Pushnotice pushnotice=empServiceImpl.getById(id);
		model.addAttribute("pushnotice",pushnotice);
		return "update";
	} 
	
	
	@RequestMapping("/delete/{id}")
	public String delect(@PathVariable("id")int id){
		this.empServiceImpl.delete(id);
		System.out.println(id);
		return "redirect:/item/listxian";
		}
	
	
	@RequestMapping("/toSave")
	public String toSave(){
		return "save";
	} 
	
	@RequestMapping("/save")
	public String save(Pushnotice pushnotice){
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String time=df.format(new Date());// new Date()为获取当前系统时间
		pushnotice.setUpdate_Date(time);
		this.empServiceImpl.save(pushnotice);
		return "redirect:/item/listxian";
	}	
}


