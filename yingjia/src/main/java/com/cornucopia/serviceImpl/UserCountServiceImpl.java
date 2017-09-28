package com.cornucopia.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;

import com.cornucopia.dao.UserCountDao;
import com.cornucopia.service.UserCountService;

@Component
public class UserCountServiceImpl implements UserCountService {

	@Resource
	private UserCountDao userCountDao;
	@Override
	public List listAll() {
		return this.userCountDao.listAll();
	}

}
