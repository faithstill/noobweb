package com.neusoft.controller;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
	public ModelAndView showbyid(HttpServletRequest request,HttpServletResponse rp,HttpSession session)
	{
  		int loginflag=0;//0为没登录，1为已经登录
		Object username = session.getAttribute("username");
		if(username!=null){
			loginflag=1;	
	}
  		int ComentlistLen=10;
  		String product_id =request.getParameter("porductid");
  		String  Commentpage=request.getParameter("Commentpage");
  		if (Commentpage == null){
  			Commentpage="1";
  		}
		int id = Integer.parseInt(product_id);
		int Commentpage1=Integer.parseInt(Commentpage);
		List<Comment> commentlist_div=new ArrayList();
		List<Comment> commentlist = commentService.queryByProductid(id);
		int Csize= commentlist.size();
		Product product = productService.queryByProductid(id);
	//	System.out.println("product----"+product.getProductname());
		ModelAndView mav = new ModelAndView();
		mav.addObject("product",product);
		mav.addObject("loginflag",loginflag);
		mav.addObject("username",username);
		mav.addObject("commentlistsize",Csize);
		if (commentlist!=null&&commentlist.size()>Commentpage1*ComentlistLen) {     
		for(int i =(Commentpage1-1)*ComentlistLen;i<Commentpage1*ComentlistLen;i++){
				commentlist_div.add(commentlist.get(i));
			}
		} else if(commentlist != null && commentlist.size()<=Commentpage1*ComentlistLen && commentlist.size()>(Commentpage1-1)*ComentlistLen){
			for(int i =(Commentpage1-1)*ComentlistLen;i<commentlist.size();i++){
				commentlist_div.add(commentlist.get(i));
			}
		}
			else if (commentlist !=null && commentlist.size()<=(Commentpage1-1)*ComentlistLen){
				commentlist_div=null;
			}
		mav.addObject("commentlist",commentlist_div);
		mav.addObject("Commentpage",Commentpage1);
		
		/*
		 * 
		 * 我的足迹，在此处写入cookie
		 * 
		 * 
		 */
		
		//给浏览器回写cookie
	     String cookieValue;
         String historyCookie = null;
		
		//得到请求中带来的cookie值
		Cookie[] cookies = request.getCookies();
		for (int i = 0; cookies != null && i < cookies.length; i++){
			if (cookies[i].getName().equals("historyCookie") ){
				historyCookie = cookies[i].getValue();
			}
		}
		
		//如果为空返回当前商品的id
		if (historyCookie == null){
			cookieValue = product_id;
		}
		else
		{
		
		LinkedList<String> list = new LinkedList<String>( Arrays.asList((historyCookie.split("\\,"))));
		
		//对不同的情况进行分析返回id的值
		if (list.contains(product_id)){
			list.remove(product_id);
		}/*else{
			if (list.size() >= 5){
				list.removeLast();
			}
		}*/
		list.addFirst(product_id);
		
		StringBuffer sb = new StringBuffer();
		for (String sid : list){
			sb.append(sid + ",");
		}
		sb.deleteCharAt(sb.length()-1);
		
		cookieValue =  sb.toString();
		}
		Cookie cookie = new Cookie("historyCookie", cookieValue);
		cookie.setMaxAge(1*24*3600);
		cookie.setPath("/noobweb");
		rp.addCookie(cookie);
		
		mav.setViewName("/home/introduction.jsp");
		return mav;
 }
}
