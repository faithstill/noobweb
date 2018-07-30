package com.neusoft.controller;



import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.domain.User;

import com.neusoft.servce.UserService;

@Controller

public class LoginController {
	@Autowired
	private UserService userService;

	/*登陆*/
	@RequestMapping(value = "/user_login", method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request, HttpSession session, User user) {
		ModelAndView mav = new ModelAndView();
		User u = userService.loginValidate(user);		//loginValidate函数只用到了user中的username和password
		if (u != null) {				//用户名和密码均正确，判断用户类型
			if (user.getFlag() == 0) {	//flag==0，代表管理员
				session.setAttribute("admin",u.getUsername());
				mav.setViewName("/admin.jsp");		//后台界面
			} else {					//flag==1，代表非管理员，即客户
				mav.setViewName("/home/pay.jsp");	//支付界面
			}
		}else {							//用户名或密码不正确，还停留在登陆界面，并输出错误提示
			mav.setViewName("/login.jsp");
			mav.addObject("status", "用户名或密码错误");
		}
		return mav;

	}

	
	/*注册*/
	@RequestMapping(value = "/user_register", method = RequestMethod.POST)
	public ModelAndView register(HttpServletRequest request, HttpSession session, User user) {
		ModelAndView mav = new ModelAndView();
		userService.insertUser(user);		//insertUser函数可以将用户信息插入数据库当中
		mav.setViewName("/home/pay.jsp");	//然后跳转到支付界面
		return mav;
		
		
	}
	
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public ModelAndView admin(HttpServletRequest request) throws IOException {
		ModelAndView mav = new ModelAndView();
		mav.addObject("host", request.getRemoteHost());
		mav.addObject("date", new Date());
		Runtime.getRuntime().availableProcessors();
		mav.setViewName("/main.jsp");
		
		return mav;
	
	}
		
}
