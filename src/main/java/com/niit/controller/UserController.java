package com.niit.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.UserDao;
import com.niit.model.User;

@Controller
public class UserController
{
@Autowired
UserDao userDao;
	@RequestMapping(value="/registerform")
	public String goToRegisterPage(Model model)
	{
		model.addAttribute("user",new User());
		return "register";
		}
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public String LoginPage( @ModelAttribute("user") @Valid User user,BindingResult result, Model model){
		if(result.hasErrors()){
		model.addAttribute("user",user);
		return "register";
		}
		userDao.saveUser(user);
return "login";
}
	@RequestMapping(value="/login")
	public String goToPage(Model model)
	{
		model.addAttribute("user",new User());
		return "login";
		}
	
}


