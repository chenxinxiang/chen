package com.cornucopia.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import com.cornucopia.bean.News;
import com.cornucopia.bean.NewsType;
import com.cornucopia.service.NewsService;
import com.cornucopia.serviceImpl.NewsServiceImpl;

@Controller
@RequestMapping("/news")
public class NewsController {

	@Autowired
	private NewsService newsServiceImpl;
	
	@RequestMapping("/listTypeAll")
	public String listTypeAll(Model model){
		List<NewsType> newsTypeList=newsServiceImpl.listNewsTypeAll();
		model.addAttribute("newsTypeList",newsTypeList);
		return "BgConsultation";
	}
	
	@RequestMapping("/listNewsAll")
	public String listNewsAll(Model model){
		List<News> newsList=newsServiceImpl.listNewsAll();
		model.addAttribute("newsList",newsList);
		List<NewsType> newsTypeList=newsServiceImpl.listNewsTypeAll();
		model.addAttribute("newsTypeList",newsTypeList);
		return "BgNews";
	}	
	
	
	@RequestMapping("/addType")
	public String addType(NewsType newsType){
		this.newsServiceImpl.saveNewsTypeAll(newsType);
		return "redirect:/news/listTypeAll";
	}
		
	
	
	
	@RequestMapping("/toAddNews")
	public String toAddNews(Model model){
		System.out.println("333");
		return "redirect:/news/addNews";
	}
	
	@RequestMapping("/addNews")
	public String addNews(News news,int typeid){
		if(typeid!=-1){
			NewsType newsType=newsServiceImpl.getTypeById(typeid);
			news.setNewsType(newsType);
			System.out.println("444");
			System.out.println(typeid+"-----");
		}
		this.newsServiceImpl.saveNewsAll(news);	
		System.out.println("555");
		return "redirect:/news/listNewsAll";
	}
				
	
	@RequestMapping("/deleteNews/{id}")
	public String deleteNews(@PathVariable("id") int id){
		this.newsServiceImpl.deleteNews(id);
		System.out.println(id+"-----");
		return "redirect:/news/listNewsAll";
	}
	

	@RequestMapping("/updateType")
	public String updateType(NewsType newsType){
		System.out.println(newsType.getId());
			newsServiceImpl.updateNewsType(newsType);
			System.out.println(newsType.getName()+" "+newsType.getSort()+"  "+newsType.getInfo());
		return "redirect:/news/listTypeAll";
	}
	
	
	@RequestMapping("/initData/{id}")
	public String initData(Model model,@PathVariable("id") int id){
		System.out.println(id);
		News news=this.newsServiceImpl.getNewsById(id);
		List<NewsType> newsTypeList=newsServiceImpl.listNewsTypeAll();
		model.addAttribute("newsTypeList",newsTypeList);
		model.addAttribute("news",news);
		System.out.println("333");		
		return "NewsUpdate";
	}
		
	@RequestMapping("/updateNews")
	public String updateNews(News news,int typeid){		
		if(typeid!=-1){
			news.setNewsType(newsServiceImpl.getTypeById(typeid));
		}
			this.newsServiceImpl.updateNews(news);
			System.out.println("444");
			System.out.println(news.getId()+" "+news.getTitle()+" "+news.getInfo());
		return "redirect:/news/listNewsAll";
	}
	
	
	
	//模糊查询
	@RequestMapping("/queryNews")
	public String queryNews(String title,String name,Model model){
		if(!title.equals("")||title!=null&&name==null||name.equals("")){
			System.out.println(title);
			List<News> newsList=this.newsServiceImpl.newsList(title);
			model.addAttribute("newsList",newsList);
		}
		if(!name.equals("")||name!=null&&title==null||title.equals("")){
			System.out.println(name);
			List<News> newsList=this.newsServiceImpl.newsListTo(name);
			model.addAttribute("newsList",newsList);		
		}
		return "BgNews";
	}
	
}
