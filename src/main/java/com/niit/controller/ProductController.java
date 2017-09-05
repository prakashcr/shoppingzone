package com.niit.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.niit.dao.CategoryDao;
import com.niit.dao.ProductDao;
import com.niit.model.Product;

@Controller
@Transactional
public class ProductController {
	@Autowired
	ProductDao productdao;
	@Autowired
	CategoryDao categorydao;
	@Autowired
	HttpServletRequest request;

	@RequestMapping("/addproduct")
	public String showAddProduct(Model model) {
		model.addAttribute("cat", categorydao.retrieveAllCategory());
		model.addAttribute("product", new Product());
		return "addproduct";
	}

	@RequestMapping(value = "/saveproduct", method = RequestMethod.POST)
	public String DefaultPage(@ModelAttribute("product") @Valid Product product, BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("cat", categorydao.retrieveAllCategory());
			model.addAttribute("product", product);
			return "addproduct";

		}
		productdao.saveProduct(product);
		MultipartFile image = product.getImage();
		String imagepath = request.getServletContext().getRealPath("/resources/image");
		System.out.println("Directory:" + imagepath);
		Path path = Paths.get(imagepath + File.separator + product.getPid() + ".jpg");
		File imageFile = new File(path.toString());
		System.out.println("Path:" + path.toString());
		if(!imageFile.exists()){
			imageFile.mkdirs();
		}
		try {
			image.transferTo(imageFile);
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
		return "redirect:/productlist";
	}

	@RequestMapping(value = "/all/product/editProduct/{pid}")
	public String editProduct(@PathVariable int pid, Model model) {
		System.out.println("in edit controller");
		Product product = productdao.getProductById(pid);
		model.addAttribute("products", product);
		model.addAttribute("cat", categorydao.retrieveAllCategory());
		System.out.println("pid value is :" + pid);
		return "updateproduct";
	}

	@RequestMapping(value = "/all/product/updateProduct")
	public String updatePage(@ModelAttribute Product product) {
		productdao.updateProduct(product);

		MultipartFile image = product.getImage();
		String imagepath = request.getServletContext().getRealPath("/resources/images");
		System.out.println("Directory:" + imagepath);
		Path path = Paths.get(imagepath + File.pathSeparator + product.getPid() + ".jpg");
		System.out.println("Path:" + path.toString());
		try {
			image.transferTo(new File(path.toString()));
		} catch (IllegalStateException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}

		System.out.println("product is upated");
		return "redirect:/productlist";
	}

}
