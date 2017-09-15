package com.niit.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.ManyToOne;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.CartDao;
import com.niit.dao.CartItemDao;
import com.niit.dao.ProductDao;
import com.niit.dao.UserDao;
import com.niit.model.Cart;
import com.niit.model.CartItem;
import com.niit.model.Product;
import com.niit.model.User;

@Controller
@Transactional
public class CartController {
	@Autowired
	ProductDao productdao;
	@Autowired
	UserDao userdao;
	@Autowired
	CartDao cartdao;
	@Autowired
	CartItemDao cartitemdao;
	
	@RequestMapping(value={"/cart/addtocart/{pid}"})
	public String addToCart(@PathVariable int pid, Principal principal, Model model) throws NullPointerException
	{
		System.out.println("-----inside controller-----");
		User user = userdao. getUserByUsername(principal.getName());//fetching user details
		System.out.println(user.getUserName());
		Product product = productdao.getProductById(pid);//fectching  user clicking product object based on id 
		System.out.println(product.getPname());
		CartItem cartItem = new CartItem(); //created  object for cartitem
		Cart cart = new Cart();//created  object for cart
		List<CartItem> cartItems;//created  object for list of cartitem
		System.out.println("-------Object instantiated--------");
		if (user.getCart() == null)//checks user already has cart.if user doesnt have cart then go to if statement
		{
			System.out.println("-------Cart not present--------");
			cart.setUser(user);//creating user for cart
			user.setCart(cart);//creating cart for user
			cartdao.saveCart(cart);//save or update the cart
			userdao.saveUser(user);//save or update the user
			System.out.println("-------Cart created for the user--------");
		}
		else {
			System.out.println("-------Cart already present--------");
			cart= user.getCart();//if the user already has cart means getting the cart under cart object
		}
		
		System.out.println("-------Creating cart item--------");
		if((cartItem = cartitemdao.getCartItemByProductId(pid,cart.getCartid()))!=null)//checking cartitem alreday exits in cart using card id and product id
         {
			System.out.println("-------Cart item already present--------");
			cartItem.setSubQty(cartItem.getSubQty() + 1);//if the item already exist and the user again select that item means it adds the quantity
			cartItem.setSubTotalCost(cartItem.getSubQty() * cartItem.getProduct().getPrice());//according to the quantity the price of product gets multiplies
			cartItem.setCart(cart);//setting the cart
            cartItems = cart.getCartItems();
        	
            System.out.println("-------Itrating cart itrating--------");
            
			for(CartItem c:cartItems) {
				if(c.getProduct().getPid() == cartItem.getProduct().getPid())//comparing current product with the existing cartitem
																			 //if that product already present just increment the quantity
				{
					c.setSubQty(cartItem.getSubQty());
					c.setSubTotalCost(cartItem.getSubTotalCost());
				}
					
			}
         }
		else{
			System.out.println("-------Cart item not present--------");
			cartItem=new CartItem();// if the cart item was empty
			cartItem.setProduct(product);//set the selected cartitem in cart
			cartItem.setSubQty(1);//make the quantity as 1.
			cartItem.setSubTotalCost(cartItem.getSubQty() * cartItem.getProduct().getPrice());
			cartItem.setCart(cart);
			System.out.println("-------Cart item  created--------");
			try {
				cartItems = cart.getCartItems();//cart items already present
				System.out.println("-------Cart item fetched--------");
				if(cartItems==null){
					cartItems = new ArrayList<CartItem>();//new cart item list created
					System.out.println("-------New Cart item created--------");
				}
			} catch (NullPointerException e) {
				e.printStackTrace();
				cartItems = new ArrayList<CartItem>();//new cart item list created
				System.out.println("-------New Cart item created--------");
			}
			cartItems.add(cartItem);//cart item values are set
			System.out.println("-------Cart items added to list--------");
		}

		cart.setCartItems(cartItems);
		double grandtotal = 0;
		int count = 0;
		for (CartItem ci : cartItems) 
		{
			grandtotal = grandtotal + ci.getSubTotalCost();
			count++;
		}

		cart.setGrandTotal(grandtotal);
		cart.setQty(count);
		cartdao.saveCart(cart);
		model.addAttribute("cart", cart);
        return "cart";
	}
	
	@RequestMapping("/cart")
	public String getCart(Model model,Principal principal) {
		User user = userdao.getUserByUsername(principal.getName());
		Cart cart = user.getCart();
		model.addAttribute("cart", cart);
		return "cart";
	}
	@RequestMapping("/cart/removecartitem/{cartitemid}")
	public String removeCartItem(@PathVariable int cartitemid ) {
		cartitemdao.deleteCartItem(cartitemid);
		return "redirect:/cart/getcart";
	}
	
}

