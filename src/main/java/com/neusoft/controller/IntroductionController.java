package com.neusoft.controller;
import java.util.ArrayList;
import java.util.List;

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
		
		
		
		
		mav.setViewName("/home/introduction.jsp");
		return mav;
 }
}
