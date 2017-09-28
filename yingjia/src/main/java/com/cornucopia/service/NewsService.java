package com.cornucopia.service;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.stereotype.Service;
import com.cornucopia.bean.News;
import com.cornucopia.bean.NewsType;

@Service
@Transactional
public interface NewsService {
	
	
		public void saveNewsTypeAll(NewsType newsType);
		
		public void saveNewsAll(News news);
		
		public List<NewsType> listNewsTypeAll();
		
		public List<News> listNewsAll(String title,String typeid);
		
		public void updateNewsType(NewsType newsType);

		public void updateNews(News news);
		
		public NewsType getTypeById(int id);
		
		public News getNewsById(int id);
				
		public void deleteNews(int id);
		
}
