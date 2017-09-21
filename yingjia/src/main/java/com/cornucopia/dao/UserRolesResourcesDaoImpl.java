package com.cornucopia.dao;

import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.Resources;
import com.cornucopia.bean.UserRole;
@Component
public class UserRolesResourcesDaoImpl {
	
	@Autowired
	public SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	
	//查询板块信息
		public  List<Resources> ListAll() {
			System.out.println("开始查询");
			Session session = getSession();
			List<Resources> UserRoleList = session.createQuery("from Resources").list();
			System.out.println(UserRoleList.size()+"aaa");
			return UserRoleList;
		}
		public void save(Object...objects) {
			Session session = getSession();
			int id=(int) objects[1];
			delete(id);
			String[] sourceStrArray = ((String)objects[0]).split(",");
			for (int i = 0; i < sourceStrArray.length; i++) {
				int i1=(Integer.parseInt(sourceStrArray[i]));
				UserRole userRole=(UserRole)session.get(UserRole.class, id);  
				Resources resources=(Resources)session.get(Resources.class,i1);
				userRole.getResour().add(resources);  
				resources.getResour().add(userRole);
			}
		}
		
		public void delete(int id) {
			Session session = getSession();
			String sql="delete  from role_res where rid="+id;
			session.createSQLQuery(sql).executeUpdate();
			session.flush();
			
		}

}
