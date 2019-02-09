package com.project.springbootwebapp.service;

import org.springframework.stereotype.Service;

@Service
public class LoginService {
	public boolean validateUser(String userName,String password)
	{
		return userName.equalsIgnoreCase("Aayush") && password.equalsIgnoreCase("kumar");
	}

}
