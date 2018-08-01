package com.neusoft.controller;


import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
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
	
	String path_or="D:\\myeclipse\\ssm-0726\\src\\main\\webapp\\images\\"; //根据自己的电脑路径设置
	
	
	@RequestMapping("/queryall")
	public ModelAndView queryall() {
		ModelAndView mav = new ModelAndView();
		//System.out.println("qurall");
		List<Product> productlist = productService.queryall();
		
		mav.addObject("productlist",productlist);
		mav.addObject("length", productlist.size());
		mav.setViewName("/admin/products.jsp");
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
		System.out.println("quer-name----"+productname);
		List<Product> productlist = productService.queryByName(productname);
		for(Product product:productlist)
		{
			System.out.println(product.getProductid());
		}
		mav.addObject("productlist",productlist);
		mav.addObject("length", productlist.size());
		mav.setViewName("/admin/products.jsp");
		
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
	public ModelAndView product_add(Product product,MultipartFile pic,MultipartFile pic1,
			MultipartFile pic2,MultipartFile pic3) throws IllegalStateException, IOException{
//		System.out.println("id:"+product.getUserid());
//		System.out.println("name:"+product.getName());
//		System.out.println("phone:"+product.getPhone());
//		System.out.println("province:"+product.getProvince());
//		System.out.println("city:"+product.getCity());
//		System.out.println("detail:"+product.getDetailedproduct());
		System.out.println("pic----"+pic.isEmpty());
		System.out.println("pic----"+pic1.isEmpty());
	//	System.out.println("pic----"+pic2.isEmpty());
	//	System.out.println("pic----"+pic3.isEmpty());
		if(pic.isEmpty()==false){
		String rndFileName = UUID.randomUUID().toString();
		String originalFilename = pic.getOriginalFilename();
		String ext =originalFilename.substring(originalFilename.lastIndexOf("."),originalFilename.length());
		String path = path_or+rndFileName+ext;
		File dest = new File(path);
		pic.transferTo(dest);
		product.setMainPicture(rndFileName+ext);
		System.out.println("图片于"+path);
		}
		if(pic1.isEmpty()==false){
			String rndFileName = UUID.randomUUID().toString();
			String originalFilename = pic1.getOriginalFilename();
			String ext =originalFilename.substring(originalFilename.lastIndexOf("."),originalFilename.length());
			String path1 = path_or+rndFileName+ext;
			File dest1 = new File(path1);
			product.setSidePicture1(rndFileName+ext);
			pic1.transferTo(dest1);
			System.out.println("图片于"+path1);
		}
		if(pic2.isEmpty()==false){
			String rndFileName = UUID.randomUUID().toString();
			String originalFilename = pic2.getOriginalFilename();
			String ext =originalFilename.substring(originalFilename.lastIndexOf("."),originalFilename.length());
			String path2 = path_or+rndFileName+ext;
			File dest2 = new File(path2);
			product.setSidePicture2(rndFileName+ext);
			pic2.transferTo(dest2);
			System.out.println("图片于"+path2);
		}
		if(pic3.isEmpty()==false){
			String rndFileName = UUID.randomUUID().toString();
			String originalFilename = pic3.getOriginalFilename();
			String ext =originalFilename.substring(originalFilename.lastIndexOf("."),originalFilename.length());
			String path3 = path_or+rndFileName+ext;
			File dest3 = new File(path3);
			product.setSidePicture3(rndFileName+ext);
			pic3.transferTo(dest3);
			System.out.println("图片于"+path3);
		}
		productService.product_add(product);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/updatesuccess.jsp");
		return mav;
	}
		
	@RequestMapping("/deleteById")
	public ModelAndView product_deleteById(int productid)
	{
		System.out.println("del----"+productid);
		productService.product_deleteById(productid);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/product/query"); 
		return mav;
		
	}
	@RequestMapping("/delete")
	@ResponseBody
	public boolean product_delete(int productid)
	{
		System.out.println("del---"+productid);
		productService.product_deleteById(productid);
		return true;
	}
	
	@RequestMapping("/update_queryById")
	public  ModelAndView update_queryById(int productid)
	{
		//System.out.println("up-que");
		ModelAndView mav = new ModelAndView();
		Product product =  productService.product_queryById(productid);
		mav.addObject("update_product",product);
		mav.setViewName("/admin/productupdate.jsp"); 
		return mav;
	}
	
	@RequestMapping("/update")
	public ModelAndView product_update(Product product)
	{
		productService.product_update(product);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/admin/updatesuccess.jsp");
		return mav;
	}
}