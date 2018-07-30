package com.neusoft.controller;


import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.domain.Address;
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
		
		System.out.println(producttype);System.out.println("error");
		ModelAndView mav = new ModelAndView();
		//System.out.println(producttype.equals("牛奶"));
		List<Product> productlist = productService.queryByType(producttype);
		System.out.println(producttype);
		mav.addObject("productlist_bytype",productlist);
		mav.setViewName("/test.jsp");

		return mav;
	}
	

	@RequestMapping("/queryByProducttypeandbrand")
	public ModelAndView queryByProducttypeandbrand(String type,String brand) {
		List<Product> productlist = productService.queryBuTypeAndBrand(type, brand);
			//System.out.println("product----"+product.getProductname());
			ModelAndView mav = new ModelAndView();
			mav.addObject("productlist_type_brand",productlist);
		//	mav.setViewName("/home/introduction.jsp");
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
	public ModelAndView queryByProductid(int productid) {
		
		Product product = productService.queryByProductid(productid);
			System.out.println("product----"+product.getProductname());
			ModelAndView mav = new ModelAndView();
			mav.addObject("product",product);
		//	mav.setViewName("/home/introduction.jsp");
			mav.setViewName("/comment/querybyproductid");
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