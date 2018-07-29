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

	@RequestMapping(value = "/user_login", method = RequestMethod.POST)
	public ModelAndView login(HttpServletRequest request, HttpSession session, User user) {
		ModelAndView mav = new ModelAndView();
		User u = userService.loginValidate(user);
		if (u != null) {
			if (user.getFlag() == 0) {
				session.setAttribute("admin",u.getUsername());
				mav.setViewName("/admin.jsp");
			} else {
				mav.setViewName("/home/pay.jsp");
			}
		}else {
			mav.setViewName("/login.jsp");
			mav.addObject("status", "用户名或密码错误");
		}
		return mav;

	}

	@RequestMapping(value = "/user_register", method = RequestMethod.POST)
	public ModelAndView register(HttpServletRequest request, HttpSession session, User user) {
		ModelAndView mav = new ModelAndView();
		userService.insertUser(user);
		mav.setViewName("/home/pay.jsp");
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
