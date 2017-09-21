package com.cornucopia.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.News;
import com.cornucopia.bean.NewsType;

@Component
public class NewsDao {

	@Autowired
	private SessionFactory sessionFactory;
	
	public Session getSession(){
		return sessionFactory.getCurrentSession();
	}
	
	public void saveNewsTypeAll(NewsType newsType){
		Session session=getSession();
		session.save(newsType);
	}
	
	public void saveNewsAll(News news){
		Session session=getSession();
		session.save(news);
	}
	
	public List<NewsType> listNewsTypeAll(){
		Session session=getSession();
		String hql="from NewsType";
		List<NewsType> listNewsTypeAll=session.createQuery(hql).list();
		return listNewsTypeAll;
	}
	
	public List<News> listNewsAll(){
		Session session=getSession();
		String hql="from News";
		List<News> listNewsAll=session.createQuery(hql).list();
		return listNewsAll;
	}
	
	public void updateNewsType(NewsType newsType){
		Session session=getSession();
		session.update(newsType);
	}
	
	public void updateNews(News news){
		Session session=getSession();
		System.out.println("222");
		session.update(news);		
	}
	
	public NewsType getTypeById(int id){
		Session session=getSession();
		NewsType newsType=(NewsType)session.get(NewsType.class, id);
		return newsType;
	}
	
	public News getNewsById(int id){
		Session session=getSession();
		News news=(News)session.get(News.class, id);
		return news;
	}
	
	
	public void deleteNews(News news){
		System.out.println(news.getSort());
		Session session=getSession();
		session.delete(news);
	}
	
	//根据title和类别进行模糊查询
	public List<News> newsList(String title){
		Session session=getSession();
		String hql="from News n1 where n1.title like '%"+title+"%'";
		System.out.println(hql);
		List<News> newsList=session.createQuery(hql).list();
		return newsList;
	}
	
	public List<News> newsListTo(String name)	{
		Session session=getSession();
		String hql="from News where newsType.name like '%"+name+"%'";
		System.out.println(hql);
		List<News> newsList=session.createQuery(hql).list();
		return newsList;
	}
}
