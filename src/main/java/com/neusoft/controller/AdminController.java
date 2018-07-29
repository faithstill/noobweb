package com.neusoft.controller;



import java.io.IOException;
import java.util.Date;
import java.util.List;

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

public class AdminController {
	@Autowired
	private UserService userService;

	@RequestMapping(value = "/user_list", method = RequestMethod.GET)
	public ModelAndView getUserList(HttpServletRequest request, HttpSession session, User user) {
		ModelAndView mav = new ModelAndView();
		List<User> u = userService.getUserList(user);
		mav.addObject("showUser", u);
		mav.setViewName("/user.jsp");
		return mav;

	}

	
		
}
