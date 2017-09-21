package com.cornucopia.service;

import java.util.List;
import com.cornucopia.bean.UserRole;
import com.cornucopia.bean.Users;

public interface UserService2 {

	public void saveUser(Users users );
	public void saveUserRole(UserRole userRole);
	public List<Users> userList();
	public List<UserRole>roleList();
	public Users getByUid(int uid);
	public UserRole getByRid(int rid);
	public void deleteUser(int uid);
	public void update(Users users);

}
