package com.cornucopia.service;

import java.util.List;

public interface SubjectService {

	public List listall(String name, String status, String type);
	public <T> T getById(int id);
	public void save (Object object);
	public void update(Object object);
	public double getTotalMoney(int id);
}
