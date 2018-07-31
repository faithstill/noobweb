package com.neusoft.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.domain.Product;
import com.neusoft.servce.ProductService;

@Controller
public class HomeController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping("/home")
	public ModelAndView homeController(HttpSession session){
		int loginflag=0;//0为没登录，1为已经登录
		Object username = session.getAttribute("username");
		if(username!=null){
			loginflag=1;
		}
		System.out.println("session"+loginflag);
		int productid1 = 1;
		int productid2 = 2;
		int productid3 = 3;
		Product product1 = productService.queryByProductid(productid1);
		Product product2 = productService.queryByProductid(productid2);
		Product product3 = productService.queryByProductid(productid3);
		List<Product> productlist = new ArrayList();
		if(product1!=null)
			productlist.add(product1);
		if(product2!=null)
			productlist.add(product2);
		if(product3!=null)
			productlist.add(product3);
		if(productlist!=null)
		for(Product product:productlist)
			System.out.println(product.getMainPicture());
		//List<Address> addresslist = addressService.queryByUser(userid);
		ModelAndView mav = new ModelAndView();
		mav.addObject("loginflag", loginflag);
		mav.addObject("username",username);
		mav.addObject("productlist_discount",productlist);
		mav.addObject("productlist_new",productlist);
		mav.addObject("product_main",product1);
		mav.setViewName("/home/home.jsp");
		return mav;
	}

}
