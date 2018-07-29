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
	
	@RequestMapping("/query")
	public ModelAndView query(){
		int userid = 1;
		List<Address> addresslist = addressService.queryByUser(userid);
		//System.out.println("userid---"+userid);
		ModelAndView mav = new ModelAndView();
		
//		for(Address address: addresslist)
//		{
//			//System.out.println("address----"+address);
//			System.out.println("addresslist"+i);
//			mav.addObject("addresslist"+i,addresslist);
//			i++;
//		}
		mav.addObject("addresslist",addresslist);
		mav.setViewName("/home/pay.jsp");
		//mav.setViewName("/test.jsp");
		return mav;
	}
	
	
	
	@RequestMapping("/add")
	public ModelAndView address_add(Address address){
		//Address t_address = new Address(address.getUserid(),address.getName(),address.getPhone(),address.getProvince(),address.getCity(),address.getDetailedaddress());
		System.out.println("id:"+address.getUserid());
		System.out.println("name:"+address.getName());
		System.out.println("phone:"+address.getPhone());
		System.out.println("province:"+address.getProvince());
		System.out.println("city:"+address.getCity());
		System.out.println("detail:"+address.getDetailedaddress());
		
		addressService.address_add(address);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/address/query"); 
		return mav;
		
	}
		
	@RequestMapping("/deleteById")
	public ModelAndView address_deleteById(int addressid)
	{
		addressService.address_deleteById(addressid);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/address/query"); 
		return mav;
		
	}
	
	@RequestMapping("/update_queryById")
	public  ModelAndView update_queryById(int addressid)
	{
		//System.out.println("up-que");
		ModelAndView mav = new ModelAndView();
		Address address =  addressService.address_queryById(addressid);
		mav.addObject("update_address",address);
		mav.setViewName("/home/addressupdate.jsp"); 
		return mav;
	}
	
	@RequestMapping("/update")
	public ModelAndView address_update(Address address)
	{
		addressService.address_update(address);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/address/query");
		return mav;
	}
}
