package com.cornucopia.dao;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.loader.plan.exec.process.spi.ReturnReader;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.Resources;
import com.cornucopia.bean.UserRole;
import com.cornucopia.bean.Users;

@Component
public class UserDaoImpl  {

	@Autowired
	public SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	// ��ѯ�û�����Ϣ
	public List ListAll() {
		Session session = getSession();
		 StringBuffer buffer = new StringBuffer();
         buffer.append( " from  Users  u  inner  join fetch u.userrole ");
        Query query = session.createQuery(buffer.toString());
		 List list =   query.list();
		 System.out.println(list.size());
		return list;
		
	}

	
	//����û����ѯ��Ϣ
	public  Users getByName(String name) {
		Session session=getSession();
		String hql="from Users u where u.user_name='"+name+"'";
		List<Users> list=session.createQuery(hql).list();
		if(list.size()>0){
			return list.get(0);
		}
		return null;
	}
	
	public void saveUser(Users users ){
		Session session=getSession();
		session.save(users);
	}
	public void saveUserRole(UserRole userRole){
		Session session=getSession();
		session.save(userRole);
	}
	public List<Users> userList(){
		Session session=getSession();
		String hql="from Users";
		List<Users> userList=session.createQuery(hql).list();
		return userList;
	}
	public List<UserRole>roleList(){
		Session session=getSession();
		String hql="from UserRole";
		List<UserRole>roleList=session.createQuery(hql).list();
		return roleList;
		
	}
	public Users getByUid(int uid){
		Session session=getSession();
		Users users=(Users) session.get(Users.class, uid);
		return users;
	}
	public UserRole getByRid(int rid){
		Session session=getSession();
		UserRole userRole=(UserRole) session.get(UserRole.class, rid);
		return userRole;
	}
	public void deleteUser(int uid){
		Session session=getSession();
		Users users=getByUid(uid);
		users.setUserrole(null);
		session.delete(users);
	}
	public void update(Users users){
		System.out.println("users:"+users.getUserrole().getCname());
		Session session=getSession();
		session.update(users);
	}
}