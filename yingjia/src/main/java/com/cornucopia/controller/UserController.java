package com.cornucopia.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("item")
public class UserController {

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
	
}
