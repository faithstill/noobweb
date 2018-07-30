package com.neusoft.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.domain.Comment;
import com.neusoft.domain.Product;
import com.neusoft.servce.CommentService;
import com.neusoft.servce.ProductService;

@Controller
@RequestMapping("/introduction")
public class IntroductionController {
  @Autowired
  CommentService commentService;
  
  @Autowired
  ProductService productService;
	
  	@RequestMapping("/showbyid")
	public ModelAndView showbyid(HttpServletRequest request,HttpServletResponse rp)
	{
  		String product_id =request.getParameter("porductid");
  		System.out.println(product_id);
		int id = Integer.parseInt(product_id);
		List<Comment> commentlist = commentService.queryByProductid(id);
		Product product = productService.queryByProductid(id);
	//	System.out.println("product----"+product.getProductname());
		ModelAndView mav = new ModelAndView();
		mav.addObject("product",product);
		mav.addObject("commentlist",commentlist);
		mav.setViewName("/home/introduction.jsp");
		return mav;
 }
}
