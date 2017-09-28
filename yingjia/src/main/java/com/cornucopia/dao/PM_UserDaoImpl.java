package com.cornucopia.dao;

import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.activiti.engine.identity.User;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.cornucopia.bean.Resources;
import com.cornucopia.bean.Users;

@Component
public class PM_UserDaoImpl {

	@Autowired
	public SessionFactory sessionFactory;

	public Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	// ��ѯ�û�������Ϣ
	public List ListAll() {
		Session session = getSession();
		StringBuffer buffer = new StringBuffer();
		buffer.append(" from  Users  u  inner  join fetch u.userrole ");
		Query query = session.createQuery(buffer.toString());
		List list = query.list();
		System.out.println(list.size());
		return list;

	}

	// �����û�����ѯ��Ϣ
	public Users getByName(String name) {
		Users users = new Users();
		Session session = getSession();
		String hql = "from Users u where u.user_name='" + name + "'";
		List<Users> list = session.createQuery(hql).list();
		if (list.size() > 0) {
			return list.get(0);
		}
		return users;
	}

	// �����û�����ѯ��Ϣ
	public Boolean getByNameOrTrue(String name) {
		Session session = getSession();
		String hql = "from Users u where u.user_name='" + name + "'";
		List<Users> list = session.createQuery(hql).list();
		if (list.size() > 0) {
			return false;
		}
		return true;
	}

	// �����ֻ����ж��Ƿ���ע��
	public Boolean getByPhone(String mobile_Phone) {
		Session session = getSession();
		String hql = "from Users u where u.mobile_Phone='" + mobile_Phone + "'";
		List<Users> list = session.createQuery(hql).list();
		if (list.size() > 0) {
			return false;
		}
		return true;
	}

	// ɾ�����߸���
	public void SaveOrUpdate(Object object) {
		Session session = getSession();
		session.saveOrUpdate(object);
	}

	// ɾ���û�
	public void DelUsers(Object objects) {
		Session session = getSession();
		session.delete(objects);
	}

}