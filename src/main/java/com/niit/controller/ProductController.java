package com.niit.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.ProductDao;
import com.niit.model.Product;

@Controller
	public class ProductController 
	{
	 @Autowired
	 ProductDao productdao;
	 
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String DefaultPage (@ModelAttribute Product product,Model model){
		model.addAttribute("product",Product.class);
		productdao.saveproduct(product);
	return ""; 
	}
}
