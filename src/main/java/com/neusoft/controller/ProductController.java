package com.neusoft.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.domain.Comment;
import com.neusoft.domain.Product;
import com.neusoft.servce.ProductService;

@Controller
@RequestMapping("/Product") 
public class ProductController {
	@Autowired
	ProductService productService;
	
	@RequestMapping("/query")
	public ModelAndView query() {
		int productid = 1;
		Product product = productService.queryByProductid(productid);
			System.out.println("product----"+product.getProductname());
			ModelAndView mav = new ModelAndView();
			mav.addObject("product",product);
		//	mav.setViewName("/home/introduction.jsp");
			mav.setViewName("/comment/query");
			return mav;
	}
}