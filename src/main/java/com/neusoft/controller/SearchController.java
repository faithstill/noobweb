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
	public ModelAndView Searchbytype(HttpServletRequest request,HttpServletResponse rp,HttpSession session,
			String orderpattern) throws IOException{
		
		init(session);
		if (session.getAttribute("plist")!=null){
			session.removeAttribute("plist");
		}
		String search_type=request.getParameter("search_type");
		String Search_type=new String(search_type.getBytes("ISO-8859-1"),"UTF-8");
		String orderpattern1=request.getParameter("orderpattern");
		List<Product> productlist= null;
		if(orderpattern1 != null){
			if ("byprice".equals(orderpattern)){
			productlist=productService.orderprice(productService.queryByType(Search_type));
			}
			else{
				productlist=productService.orderprice(productService.queryByType(Search_type));
			}
		}
		else {
				productlist = productService.queryByType(Search_type);
		}
		String by="bytype";
		mav.addObject("productlist",productlist);
		mav.addObject("by",by);
		mav.addObject("key1",search_type);
		mav.addObject("num",productlist.size());
		session.setAttribute("plist",productlist);
		mav.setViewName("/home/search.jsp");
		return mav;
		}
	
	@RequestMapping("/bybrand")
	public ModelAndView Searchbybrand(HttpServletRequest request,HttpServletResponse rp,HttpSession session) throws IOException{
		init(session);
		if (session.getAttribute("plist")!=null){
			session.removeAttribute("plist");
		}
		String search_brand=request.getParameter("search_brand");
		String Search_brand=new String(search_brand.getBytes("ISO-8859-1"),"UTF-8");
		
		ModelAndView mav = new ModelAndView();
		//System.out.println(producttype.equals("牛奶"));
		String by="bybrand";
		List<Product> productlist = productService.queryByBrand(Search_brand);
		mav.addObject("productlist",productlist);
		mav.addObject("num",productlist.size());
		mav.addObject("by",by);
		mav.addObject("key1",Search_brand);
		session.setAttribute("plist",productlist);
		mav.setViewName("/home/search.jsp");
		return mav;
		}
	
	@RequestMapping("/bytypeandbrand")
	public ModelAndView Searchbytypeandbrand(String type,String brand,HttpSession session){
		init(session);
		List<Product> productlist = productService.queryBuTypeAndBrand(type, brand);
		//System.out.println("product----"+product.getProductname());
		if (session.getAttribute("plist")!=null){
			session.removeAttribute("plist");
		}
		String by="bybrandandtype";
		ModelAndView mav = new ModelAndView();
		mav.addObject("productlist",productlist);
		mav.addObject("num",productlist.size());
		mav.addObject("key1",type);
		mav.addObject("key2",brand);
		mav.addObject("by", by);
		session.setAttribute("plist",productlist);
		mav.setViewName("/home/search.jsp");
		return mav;
	}
	
	@RequestMapping("/byname")
	public ModelAndView Searchbyname(String key,HttpSession session){
		init(session);
		List<Product> productlist = productService.queryByName(key);
		if (session.getAttribute("plist")!=null){
			session.removeAttribute("plist");
		}
		ModelAndView mav = new ModelAndView();
		String by="byname";
		mav.addObject("num",productlist.size());
		mav.addObject("key1", key);
		mav.addObject("productlist",productlist);
		mav.addObject("by",by);
		session.setAttribute("plist",productlist);
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
	
	@RequestMapping("/getlist")
	public  ModelAndView getlist(HttpSession session,HttpServletRequest request,HttpServletResponse rp){
		init(session);
		String howtogo=request.getParameter("howtoorder");
		List<Product> plist =(List<Product>)session.getAttribute("plist");
		session.removeAttribute("plist");
		if(plist==null){
			mav.setViewName("/home");
		}
		else{
		ModelAndView mav = new ModelAndView();
		if(howtogo != null){
			if ("price".equals(howtogo)){
				plist=productService.orderprice(plist);
				System.out.println("price");
			}
			else if ("sales".equals(howtogo)){
				
				plist=productService.ordersales(plist);
			}
		}
		else {
				plist = plist;
		}
		mav.addObject("productlist",plist);
		mav.setViewName("home/search.jsp");
		}
		return mav;
	}
}