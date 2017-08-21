package com.niit.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.niit.dao.ProductDao;
import com.niit.model.Product;

@Controller
public class ProductController {
	@Autowired
	ProductDao productdao;

	@RequestMapping(value = "/addproduct")
	public String goToaddproductPage(Model model) {
		model.addAttribute("product", new Product());
		return "addproduct";
	}

	@RequestMapping(value = "/saveproduct", method = RequestMethod.POST)
	public String DefaultPage(@ModelAttribute Product product) {
	
		productdao.saveProduct(product);
		MultipartFile image = product.getImage();
		Path path = Paths.get("C:\\Users\\COMPUTER\\workspace 2\\shoppingzone\\src\\main\\webapp\\resources\\image\\"
				+ product.getPid() + ".jpg");
		try {
			image.transferTo(new File(path.toString()));
		} catch (IllegalStateException e) {
			
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return "redirect:/productlist";
	}

	@RequestMapping(value = "/productlist")
	public String showAllProduct(Model model) {
		List<Product> product = productdao.getAllProducts();
		model.addAttribute("products", product);
		return "productlist";
	}

	@RequestMapping(value = "/deleteProduct/{pid}")
	public String deleteProduct(@PathVariable int pid) {
		productdao.deleteProduct(pid);
		return "productlist";
	}

	@RequestMapping(value = "/all/product/editProduct/{pid}")
	public String editProduct(@PathVariable int pid, Model model) {
		System.out.println("in edit controller");
		Product product = productdao.getProductById(pid);
		model.addAttribute("products", product);
		System.out.println("pid value is :" + pid);
		return "updateproduct";
	}

	@RequestMapping(value = "/all/product/updateProduct")
	public String updatePage(@ModelAttribute Product product) {
		productdao.updateProduct(product);
		
		MultipartFile image = product.getImage();
		Path path = Paths.get("C:\\Users\\COMPUTER\\workspace 2\\shoppingzone\\src\\main\\webapp\\resources\\image\\"
				+ product.getPid() + ".jpg");
		try {
			image.transferTo(new File(path.toString()));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		System.out.println("product is upated");
		return "redirect:/body";
	}

}
