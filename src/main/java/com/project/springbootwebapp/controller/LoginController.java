package com.project.springbootwebapp.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.project.springbootwebapp.service.LoginService;

@Controller
@SessionAttributes("namee")
public class LoginController {
//	@ResponseBody
//	public String loginMessage(@RequestParam String name, ModelMap model)
//	{
//		System.out.println("Name is "+name);
//		model.put("name", name);
//		return "login";
//	}
	@Autowired
	LoginService service;
	
	@RequestMapping(value="/login",method=RequestMethod.GET)
	public String loginMessage()
	{
		return "login";
	}
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String welcomeMessage(@RequestParam String name,@RequestParam String password,ModelMap model)
	{
		boolean isValidUser=service.validateUser(name, password);
		if(!isValidUser)
		{
			model.put("rMessage", "Invalid Credentials");
				return "login";
		}
//		model.put("password",password);
		model.addAttribute("namee",name);
		return "welcome";
	}
}
