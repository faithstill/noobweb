package com.neusoft.controller;


import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neusoft.domain.Product;
import com.neusoft.servce.ProductService;

@Controller
@RequestMapping("/Product") 
public class ProductController {
	@Autowired
	ProductService productService;
	
	
	@RequestMapping("/query")
	public String query(HttpServletRequest request,HttpServletResponse rp) throws IOException{
		int userid = 1;
		Product product = productService.queryByProductid(userid);
			System.out.println("product----"+product.getProductname());
		request.setAttribute("product", product);
	//	rp.sendRedirect("/noobweb/home/introduction.html");
		return "/home/introduction.jsp";
	}
}