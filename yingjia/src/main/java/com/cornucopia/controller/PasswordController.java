package com.cornucopia.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cornucopia.bean.Users;
import com.cornucopia.service.UserPasswordService;
import com.cornucopia.serviceImpl.UserPasswordServiceImpl;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
@RequestMapping("password")
public class PasswordController {

	@Autowired
	@Qualifier("userPasswordServiceImpl")
	private UserPasswordService ups;
	@RequestMapping("update")
	public String updatePassword(String newps,String userName){
		this.ups.updateUserPassword(userName, newps);
		return "redirect:/BgItem/BgLogin";
	}
	@RequestMapping("show")
	public String show(){
		return "passwordManager";
	}
	
//	@RequestMapping("verify")
//	public String verify(String newpassword,HttpServletRequest request){
//		System.out.println("password验证");
//		boolean b=false;
//		if(newpassword.equals(request.getSession().getAttribute("userPs"))){
//			b=true;
//		}
//		Map<String,Boolean> map=new HashMap<String,Boolean>(); 
//		map.put("valid", b);
//		System.out.println(b);
//		ObjectMapper mapper=new ObjectMapper();
//		String res="";
//				try {
//					res =mapper.writeValueAsString(map);
//				} catch (JsonGenerationException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				} catch (JsonMappingException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				} catch (IOException e) {
//					// TODO Auto-generated catch block
//					e.printStackTrace();
//				}
//				System.out.println(res);
//		return "";
//	}
//	
	@RequestMapping("old")
	public void oldps(String oldps, HttpServletResponse response,HttpServletRequest request){
		System.out.println("ps:come in");
		try {
			PrintWriter pw=response.getWriter();
			if(request.getSession().getAttribute("userPs").equals(oldps)){
				pw.print("ok");
				pw.flush();
				pw.close();
			}
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
}
