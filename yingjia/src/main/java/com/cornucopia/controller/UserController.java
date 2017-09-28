package com.cornucopia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("item2")
public class UserController {
	@RequestMapping("home")
	public String home(){
		return "home";
	}
	@RequestMapping("login")
	public String login(){
		return "login";
	}
	@RequestMapping("kcenter")
	public String kcenter(){
		return "kcenter";
	}
	@RequestMapping("subject")
	public String subject(){
		return "subject";
	}
	@RequestMapping("TradingSoftware")
	public String TradingSoftware(){
		return "TradingSoftware";
	}
	@RequestMapping("Help")
	public String Help(){
		return "Help";
	}
	@RequestMapping("oversea")
	public String oversea(){
		return "oversea";
	}
	@RequestMapping("mobileappdownload")
	public String mobileappdownload(){
		return "mobileappdownload";
	}
	
	@RequestMapping("NewsCenter")
	public String NewsCenter(){
		return "NewsCenter";
	}
	@RequestMapping("finance")
	public String finance(){
		return "finance";
	}
	// 主页
	@RequestMapping("Index")
	public String Index() {
		return "Index";
	}
	
	// 关于我们
	@RequestMapping("about")
	public String about() {
		return "About";
	}

	@RequestMapping("Contact")
	public String Contact() {
		return "Contact";
	}

	@RequestMapping("Example")
	public String Example() {
		return "Example";
	}

	@RequestMapping("Join")
	public String Join() {
		return "Join";
	}

	@RequestMapping("NewsC")
	public String NewsC() {
		return "News-Content";
	}

	@RequestMapping("News")
	public String News() {
		return "News";
	}

	@RequestMapping("Login")
	public String Login() {
		return "Login";
	}

	@RequestMapping("Product1")
	public String Product1() {
		return "Product1";
	}

	@RequestMapping("Product2")
	public String Product2() {
		return "Product2";
	}

	@RequestMapping("Product3")
	public String Product3() {
		return "Product3";
	}

	@RequestMapping("Solution")
	public String Solution() {
		return "Solution";
	}

	@RequestMapping("About")
	public String About() {
		return "About";
	}

	// 注册
	@RequestMapping("Register")
	public String Register() {
		return "Register";
	}
	@RequestMapping("frontShopping")
	public String frontShopping(){
		return "frontShopping";
	}
	
	
}
