package com.niit.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.niit.dao.CategoryDao;
import com.niit.model.Category;

@Controller
@Transactional
public class CategoryController {
	@Autowired
	CategoryDao categorydao;

	@RequestMapping("/admin/addcategory")
	public String showCategory(Model model) {
		model.addAttribute("category", new Category());
		return "addcategory";

	}

	@RequestMapping(value = "/savecat", method = RequestMethod.POST)
	public String saveCategory(@ModelAttribute("category") Category category) {
		categorydao.saveCategory(category);
		return "redirect:body";
	}

}