package com.neusoft.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.domain.User;
import com.neusoft.servce.ProductService;
import com.neusoft.servce.UserService;

@Controller
@RequestMapping("/person")
public class PersonController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private	ProductService productService;
	
	int loginflag=0;//0为没登录，1为已经登录
	public void init(HttpSession session){
		Object username = session.getAttribute("username");
		if(username!=null){
			loginflag=1;	
	}
	}
	
	@RequestMapping("/index")
	public ModelAndView personindex(HttpSession session){
		
		
		
		init(session);
		System.out.println(loginflag);
		Object username = session.getAttribute("username");
		int  userid =(Integer) session.getAttribute("userid");
		ModelAndView mav = new ModelAndView();
		if(username==null){
			mav.setViewName("/login.jsp");
		} else{
			User user = userService.queryById(userid);
			mav.addObject("username",user.getUsername());
			mav.addObject("usermoney",user.getMoney());
			
			
			
			mav.addObject("loginflag",loginflag);
			mav.setViewName("/person/index.jsp");
		}
		return mav;

}
}
