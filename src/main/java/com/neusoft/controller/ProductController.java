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
import com.neusoft.domain.Comment;
import com.neusoft.domain.Product;
import com.neusoft.domain.ProductExample;
import com.neusoft.domain.ProductExample.Criteria;
import com.neusoft.servce.ProductService;

@Controller
@RequestMapping("/product") 
public class ProductController {
	@Autowired
	ProductService productService;
	
<<<<<<< HEAD
	@RequestMapping("/querybyid")
	public ModelAndView query() {
=======
	@RequestMapping("/queryall")
	public ModelAndView queryall() {
		ModelAndView mav = new ModelAndView();
		List<Product> productlist = productService.queryall();
		mav.addObject("productlist",productlist);
		mav.setViewName("/test.jsp");

		return mav;
	}
	
	@RequestMapping("/queryByType")
	public ModelAndView queryByType(String producttype) {
		ModelAndView mav = new ModelAndView();
		//System.out.println(producttype.equals("牛奶"));
		List<Product> productlist = productService.queryByType(producttype);
		mav.addObject("productlist_bytype",productlist);
		mav.setViewName("/test.jsp");

		return mav;
	}
	
	@RequestMapping("/queryByName")
	public ModelAndView queryByNmae(String productname) {
		ModelAndView mav = new ModelAndView();
		//System.out.println(productname.equals("特仑苏"));
		List<Product> productlist = productService.queryByName(productname);
		mav.addObject("productlist_byname",productlist);
		for(Product product:productlist)
		{
			System.out.println(product);
		}
		mav.setViewName("/test.jsp");
		
		return mav;
	}
	
	@RequestMapping("/queryByProductid")
	public ModelAndView queryByProductid() {
>>>>>>> 8dad6cc4daf70c2f1be268126f6bfe30c9353b49
		int productid = 1;
		Product product = productService.queryByProductid(productid);
			System.out.println("product----"+product.getProductname());
			ModelAndView mav = new ModelAndView();
			mav.addObject("product",product);
<<<<<<< HEAD
		//	mav.setViewName("/home/introduction.jsp");
			mav.setViewName("/comment/querybyproductid");
=======
			//mav.setViewName("/home/introduction.jsp");
			mav.setViewName("/comment/query");

>>>>>>> 8dad6cc4daf70c2f1be268126f6bfe30c9353b49
			return mav;
	}
	
	@RequestMapping("/add")
	public ModelAndView product_add(Product product){
//		System.out.println("id:"+product.getUserid());
//		System.out.println("name:"+product.getName());
//		System.out.println("phone:"+product.getPhone());
//		System.out.println("province:"+product.getProvince());
//		System.out.println("city:"+product.getCity());
//		System.out.println("detail:"+product.getDetailedproduct());
		
		productService.product_add(product);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/product/query"); 
		return mav;
		
	}
		
	@RequestMapping("/deleteById")
	public ModelAndView product_deleteById(int productid)
	{
		productService.product_deleteById(productid);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/product/query"); 
		return mav;
		
	}
	
	@RequestMapping("/update_queryById")
	public  ModelAndView update_queryById(int productid)
	{
		//System.out.println("up-que");
		ModelAndView mav = new ModelAndView();
		Product product =  productService.product_queryById(productid);
		mav.addObject("update_product",product);
		mav.setViewName("/home/productupdate.jsp"); 
		return mav;
	}
	
	@RequestMapping("/update")
	public ModelAndView product_update(Product product)
	{
		productService.product_update(product);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/product/query");
		return mav;
	}

}