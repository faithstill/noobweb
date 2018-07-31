package com.neusoft.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	
	ModelAndView mav = new ModelAndView();
	
	public void init(HttpSession session){
		int loginflag=0;//0为没登录，1为已经登录
		Object username = session.getAttribute("username");
		if(username!=null){
			loginflag=1;	
	}
		mav.addObject("loginflag",loginflag);
		mav.addObject("username",username);
	}
	
	@RequestMapping("/bytype")
	public ModelAndView Searchbytype(HttpServletRequest request,HttpServletResponse rp,HttpSession session) throws IOException{
		
		init(session);
		String search_type=request.getParameter("search_type");
		String Search_type=new String(search_type.getBytes("ISO-8859-1"),"UTF-8");
		System.out.println(Search_type);
		List<Product> productlist = productService.queryByType(Search_type);
		String by="bytype";
		mav.addObject("productlist",productlist);
		
		mav.addObject("by",by);
		mav.addObject("key1",search_type);
		mav.addObject("num",productlist.size());
		mav.setViewName("/home/search.jsp");
		return mav;
		}
	
	@RequestMapping("/bybrand")
	public ModelAndView Searchbybrand(HttpServletRequest request,HttpServletResponse rp,HttpSession session) throws IOException{
		init(session);
		String search_brand=request.getParameter("search_brand");
		String Search_brand=new String(search_brand.getBytes("ISO-8859-1"),"UTF-8");
		System.out.println(Search_brand);
		
		ModelAndView mav = new ModelAndView();
		//System.out.println(producttype.equals("牛奶"));
		String by="bybrand";
		List<Product> productlist = productService.queryByBrand(Search_brand);
		mav.addObject("productlist",productlist);
		mav.addObject("num",productlist.size());
		mav.addObject("by",by);
		mav.addObject("key1",Search_brand);
		mav.setViewName("/home/search.jsp");
		return mav;
		}
	
	@RequestMapping("/bytypeandbrand")
	public ModelAndView Searchbytypeandbrand(String type,String brand,HttpSession session){
		init(session);
		List<Product> productlist = productService.queryBuTypeAndBrand(type, brand);
		//System.out.println("product----"+product.getProductname());
		String by="bybrandandtype";
		ModelAndView mav = new ModelAndView();
		mav.addObject("productlist",productlist);
		mav.addObject("num",productlist.size());
		mav.addObject("key1",type);
		mav.addObject("key2",brand);
		mav.setViewName("/home/search.jsp");
		return mav;
	}
	
	@RequestMapping("/byname")
	public ModelAndView Searchbyname(String key,HttpSession session){
		init(session);
		List<Product> productlist = productService.queryByName(key);
		ModelAndView mav = new ModelAndView();
		String by="byname";
		mav.addObject("num",productlist.size());
		mav.addObject("key1", key);
		mav.addObject("productlist",productlist);
		mav.addObject("by",by);
		mav.setViewName("/home/search.jsp");
		return mav;
	}
	@RequestMapping("/byid")
	public ModelAndView Searchbyid(HttpServletRequest request,HttpServletResponse rp,HttpSession session) throws IOException{
		init(session);
		String product_id =request.getParameter("productid");
		int productid = Integer.parseInt(product_id);
		ModelAndView mav = new ModelAndView();
		mav.addObject("id",productid);
		mav.setViewName("/comment/querybyproductid");
		return mav;
}
}
