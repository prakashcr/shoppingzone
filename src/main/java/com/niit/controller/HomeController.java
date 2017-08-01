package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class HomeController
{

	@RequestMapping(value = { "/", "/body"})
	public String Headerpage()
	{
		return "body";
	}

	
}
