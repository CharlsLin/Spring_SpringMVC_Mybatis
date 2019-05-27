package com.ll.service.Impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ll.mapper.LoginMapper;
import com.ll.pojo.Login;
import com.ll.service.LoginService;

@Service
public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginMapper loginmapper;

	@Override
	public Login login(int id, String pwd) {
	   
		Login login = loginmapper.FindPwdById(id);
	   if(login.getPwd().equals(pwd)) {
		   return login;
	   }else {
		   return null;
	   }

	}

	
}
