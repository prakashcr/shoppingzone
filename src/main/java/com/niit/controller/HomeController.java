
package com.niit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping(value = { "/", "/body" })
	public String Headerpage() {
		return "body";
	}

	@RequestMapping("/contactus")
	public String contactus() {

		return "contactus";
	}

	@RequestMapping("/aboutus")
	public String aboutus() {

		return "aboutus";
	}

	@RequestMapping("/help")
	public String help() {

		return "help";
	}
}