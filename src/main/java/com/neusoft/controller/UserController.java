package com.neusoft.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neusoft.servce.UserService;

/**
 * <p><b>Project:</b>  		《springmvc02》</p>
 * <p><b>Title:</b>   		UserController</p>
 * <p><b>Description:</b> 	Description  </p>
 * <p><b>Company:</b>		www.neusoft.com.cn </p>
 * <p><b>Site:</b>			http://314649444.iteye.com/  </p>
 * 
 * @date 2018-7-24   上午11:06:45
 * @author 东软，张金山
 */
@Controller
@RequestMapping("/user")  //在类上声明 @requestMapping 窄化配置
public class UserController {

	@Autowired
	UserService userService;
	
	
	@RequestMapping("/query")
	public String  query(){
		
//		userService.queryList();
//		
//		System.out.println("RestFul 风格的URL:");
		
		//做转账操作
		userService.accountChange();
		
		return "";
	}
	
	
}
