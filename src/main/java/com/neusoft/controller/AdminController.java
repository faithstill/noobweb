package com.neusoft.controller;



import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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
		for(User user1 :u) {
			if(user1.getFlag()==0) {
				user1.setRole("管理员");
			}if(user1.getFlag()==1){
				user1.setRole("普通用户");
			}
		}
		mav.addObject("showUser", u);
		mav.addObject("length", u.size());
		mav.setViewName("/user.jsp");
		return mav;

	}
	@RequestMapping(value = "/user_del", method = RequestMethod.GET)
	@ResponseBody
	public Map<String,Boolean> deleteUser(HttpServletRequest request, HttpSession session, User user) {
		Map<String,Boolean> map =new HashMap <String,Boolean>();
		userService.deleteUser(user);
		map.put("result", true);
		return map;

	}
	
	
	@RequestMapping(value = "/insert_user", method = RequestMethod.POST)
	public ModelAndView insertUser(HttpServletRequest request, HttpSession session, User user) {
		 userService.insertUser(user);
		 return new ModelAndView("redirect:/user_list");

	}
	@RequestMapping(value = "/user_update", method = RequestMethod.GET)
	public ModelAndView updateUser(HttpServletRequest request, HttpSession session, User user) {
		ModelAndView mav = new ModelAndView();
		User u = userService.getUserList(user).get(0);		
		mav.addObject("show", u);
		mav.setViewName("/user_update.jsp");
		return mav;

	}
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public ModelAndView updater(HttpServletRequest request, HttpSession session, User user) {
		 userService.updateUser(user);
		 return new ModelAndView("redirect:/user_list");

	}	
}
