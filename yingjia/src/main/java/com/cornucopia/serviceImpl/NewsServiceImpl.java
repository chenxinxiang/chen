package com.cornucopia.serviceImpl;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.cornucopia.bean.News;
import com.cornucopia.bean.NewsType;
import com.cornucopia.dao.NewsDao;
import com.cornucopia.service.NewsService;

@Service
@Transactional
public class NewsServiceImpl implements NewsService{
	
		@Autowired
		private NewsDao newsDao;
	
		public void saveNewsTypeAll(NewsType newsType){
			this.newsDao.saveNewsTypeAll(newsType);
		}
		
		public void saveNewsAll(News news){
			this.newsDao.saveNewsAll(news);
		}
		
		public List<NewsType> listNewsTypeAll(){
			return this.newsDao.listNewsTypeAll();	
		}
		
		public List<News> listNewsAll(String title,String typeid){
			return this.newsDao.listNewsAll(title, typeid);
		}
		
		public void updateNewsType(NewsType newsType){
			this.newsDao.updateNewsType(newsType);
		}

		public void updateNews(News news){
			System.out.println("111");
			this.newsDao.updateNews(news);
		}
		
		public NewsType getTypeById(int id){
			return this.newsDao.getTypeById(id);
		}
		
		public News getNewsById(int id){
			return this.newsDao.getNewsById(id);
		}
				
		public void deleteNews(int id){
			News ns=newsDao.getNewsById(id);
			this.newsDao.deleteNews(ns);	
		}
		
}
