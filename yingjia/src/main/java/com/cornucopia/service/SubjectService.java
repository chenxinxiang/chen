package com.cornucopia.service;

import java.util.List;

public interface SubjectService {

	public List list();
	public List listall(String name, String status, String type);
	public <T> T getById(int id);
	public void save (Object object);
	public void update(Object object);
	public double getTotalMoney(int id);
	public <T>T gettouzi(int id);
}
