package com.passwordauthentification;

import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.util.ByteSource;

public class MD5Aauthentification {
	
	//�����û������ܣ����������û���������������
	public String MD5Chains(String name,String password){
		 String hashAlgorithmName = "MD5";  
		 name+=password+"name";
	        int hashIterations = 1024;  
	        ByteSource credentialsSalt = ByteSource.Util.bytes(name); 
	        Object obj = new SimpleHash(hashAlgorithmName, name, credentialsSalt, hashIterations); 
	        String passworld=String.valueOf(obj);
	        System.out.println(passworld+"���ܺ�");
		      return passworld;
	}

}
