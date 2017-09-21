package com.cornucopia.service;

import java.util.List;
import java.util.Set;

import com.cornucopia.bean.Resources;

public interface UserService {
	
	public <T>List<T> ListAll(Object...objects) ;
	public void save (Object...objects);
	public void delete(Object object);
	public void update(Object object);
	public <T> T getById(int id);
	public <T> T getByName(String name);
	public <T>List<T> ListAlltrue(int id);
	public <T>Set<String> ListAllByName(Object object);
	public <T>Set<String> ListResourcesByName(String name);
	public List listall(String name, String status, String type);
}
 