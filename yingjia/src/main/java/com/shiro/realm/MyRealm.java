package com.shiro.realm;

import java.util.Set;

import javax.annotation.Resource;

import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;

import com.cornucopia.bean.Users;
import com.cornucopia.service.UserService;


public class MyRealm extends AuthorizingRealm{
	
	@Resource
	private UserService userRoleServiceImpl;
	@Resource
	private UserService userServiceImpl;

	@Override
	protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principals) {
		String userName=(String) principals.getPrimaryPrincipal();
		System.out.println(userName+"genju");
		SimpleAuthorizationInfo authorizationInfo=new SimpleAuthorizationInfo();
		authorizationInfo.setRoles((Set<String>)userRoleServiceImpl.ListAllByName(userName));
		authorizationInfo.setStringPermissions((Set<String>)userRoleServiceImpl.ListResourcesByName(userName));
		return authorizationInfo;
	}

	@Override
	protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
		String userName=(String) token.getPrincipal();
		Users user=userServiceImpl.getByName(userName);
		if(user!=null){
			AuthenticationInfo authcInfo=new SimpleAuthenticationInfo(user.getName(), user.getPassword(), "xx");
			return authcInfo;
		}else{
			return null;
		}
	}

}
