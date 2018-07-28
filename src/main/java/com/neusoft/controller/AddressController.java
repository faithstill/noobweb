package com.neusoft.controller;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.domain.Address;
import com.neusoft.servce.AddressService;



@Controller
@RequestMapping("/address") 
public class AddressController {
	@Autowired
	AddressService addressService;
	
	@RequestMapping("/m1.action")
	public ModelAndView method1(){
	System.out.println("我是  User的  Hello");

	ModelAndView mav = new ModelAndView();
	mav.addObject("sitename", "欢迎使用注解");

	mav.setViewName("/hello.jsp");

	return mav;
	}
	
	@RequestMapping("/query")
	public ModelAndView query(){
		
//		userService.queryList();
//		
//		System.out.println("RestFul 风格的URL:");
		
		//做转账操作
		
		
		int userid = 1;
		List<Address> addresslist = addressService.queryByUser(userid);
		//System.out.println("userid---"+userid);
		ModelAndView mav = new ModelAndView();
		int i=1;
//		for(Address address: addresslist)
//		{
//			//System.out.println("address----"+address);
//			System.out.println("addresslist"+i);
//			mav.addObject("addresslist"+i,addresslist);
//			i++;
//		}
		//Request.set
		mav.addObject("addresslist",addresslist);
		mav.setViewName("/home/pay.jsp");
		return mav;
	}
	
	//<input type="text" name="jasonnb"  
	
	@RequestMapping("/add")
	public String address_add(Address address){
		//Address t_address = new Address(address.getUserid(),address.getName(),address.getPhone(),address.getProvince(),address.getCity(),address.getDetailedaddress());
		System.out.println("id:"+address.getUserid());
		System.out.println("name:"+address.getName());
		System.out.println("phone:"+address.getPhone());
		System.out.println("province:"+address.getProvince());
		System.out.println("city:"+address.getCity());
		System.out.println("detail:"+address.getDetailedaddress());
		
		addressService.address_add(address);
		return "/address/query";
		
	}
	

}
