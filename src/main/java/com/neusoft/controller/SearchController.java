package com.neusoft.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.domain.Product;
import com.neusoft.servce.ProductService;
import com.neusoft.controller.ProductController;

@Controller
@RequestMapping("/search") 
public class SearchController {
	
	@Autowired
	ProductService productService;
	
	@RequestMapping("/bytype")
	public ModelAndView Searchbytype(HttpServletRequest request,HttpServletResponse rp) throws IOException{
		String search_type=request.getParameter("search_type");
		String Search_type=new String(search_type.getBytes("ISO-8859-1"),"UTF-8");
		System.out.println(Search_type);
		
		ModelAndView mav = new ModelAndView();
		//System.out.println(producttype.equals("牛奶"));
		List<Product> productlist = productService.queryByType(Search_type);
		mav.addObject("productlist",productlist);
		mav.setViewName("/home/search.jsp");
		return mav;
		}
	
	@RequestMapping("/bytypeandbrand")
	public ModelAndView Searchbytypeandbrand(String type,String brand){
		System.out.println(type);
		System.out.println(brand);
		List<Product> productlist = productService.queryBuTypeAndBrand(type, brand);
		//System.out.println("product----"+product.getProductname());
		ModelAndView mav = new ModelAndView();
		mav.addObject("productlist",productlist);
		System.out.println(productlist.size());
		mav.setViewName("/home/search.jsp");
		return mav;
	}
	
	@RequestMapping("/byname")
	public ModelAndView Searchbyname(String name){
		List<Product> productlist = productService.queryByName(name);
		ModelAndView mav = new ModelAndView();
		mav.addObject("productlist",productlist);
		mav.setViewName("/home/search.jsp");
		return mav;
	}
	@RequestMapping("/byid")
	public ModelAndView Searchbyid(HttpServletRequest request,HttpServletResponse rp) throws IOException{
		
		String product_id =request.getParameter("productid");
		int productid = Integer.parseInt(product_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("id",productid);
		mav.setViewName("/comment/querybyproductid");
		return mav;
}
}
