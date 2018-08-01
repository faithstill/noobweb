package com.neusoft.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.domain.Address;
import com.neusoft.domain.Orders;
import com.neusoft.domain.Shoppingcar;
import com.neusoft.domain.littleorder;
import com.neusoft.servce.AddressService;
import com.neusoft.servce.OrderService;
import com.neusoft.servce.ProductService;
import com.neusoft.servce.ShopCarService;



@Controller
@RequestMapping("/address") 
public class AddressController {
	
	@Autowired
	AddressService addressService;
	
	@Autowired
	OrderService orderService;
	
	@Autowired
	ShopCarService shopcarService;
	
	@Autowired
	ProductService productService;
	
	
	int loginflag=0;//0为没登录，1为已经登录
	public void init(HttpSession session){
		Object username = session.getAttribute("username");
		if(username!=null){
			loginflag=1;	
	}
	}
	
	@RequestMapping("/query")
	public ModelAndView query(HttpSession session){
		int userid = (Integer) session.getAttribute("userid");
		List<Address> addresslist = addressService.queryByUser(userid);
		ModelAndView mav = new ModelAndView();
		mav.addObject("addresslist",addresslist);
		mav.setViewName("/person/address.jsp");
		
		return mav;
	}
	
	@RequestMapping("/payquery")
	public ModelAndView payquery(HttpSession session){
		init(session);
		ModelAndView mav = new ModelAndView();
		if(session.getAttribute("userid")!=null){
		int userid = (Integer) session.getAttribute("userid");
		List<Address> addresslist = addressService.queryByUser(userid);
	//	List<Orders> orders=orderService.queryByUser(userid);
		List<Shoppingcar> carlist=shopcarService.queryByUser(userid);
		
		List<littleorder> lorderlist= new ArrayList();
		float pricefinal=0;System.out.println("carlist------"+carlist.size());
		
		for(int i=0;i<carlist.size();i++){
		 littleorder lorder=new littleorder();
		 lorder.setProductid(carlist.get(i).getProductid());
		 lorder.setName(productService.product_queryById(carlist.get(i).getProductid()).getProductname());
		 lorder.setPrice(productService.product_queryById(carlist.get(i).getProductid()).getPrice());
		 lorder.setNumber(carlist.get(i).getAmount());
		 lorder.setAmount((lorder.price)*(lorder.number));
		 lorder.setPicture(productService.product_queryById(carlist.get(i).getProductid()).getMainPicture());
		 pricefinal=pricefinal+lorder.amount;
		 lorderlist.add(lorder);
		 System.out.println("lordername-----"+lorder.name);
		}
		for(int i=0;i<lorderlist.size();i++){
			System.out.println("lorder----"+lorderlist.get(i).name);
		}
		mav.addObject("addresslist",addresslist);
		mav.addObject("lorderlist",lorderlist);
		mav.addObject("pricefinal", pricefinal);
		session.setAttribute("lorderlist",lorderlist);
		session.setAttribute("pricefinal", pricefinal);
		mav.setViewName("/home/pay.jsp");
		/**
		 * productidlist
		 * productAmount
		 * pricefinal
		 *  
		 * 
		 */
		}
		else{
			System.out.println("payquery dont have session");
		}
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
	
	@RequestMapping("/payadd")
	public ModelAndView address_add1(Address address,HttpSession session){
		//Address t_address = new Address(address.getUserid(),address.getName(),address.getPhone(),address.getProvince(),address.getCity(),address.getDetailedaddress());
		//System.out.println("id:"+address.getUserid());
		ModelAndView mav = new ModelAndView();
		if(session.getAttribute("userid")!=null){
		address.setUserid(Integer.parseInt((String) session.getAttribute("userid")));
		System.out.println("name:"+address.getName());
		System.out.println("phone:"+address.getPhone());
		System.out.println("province:"+address.getProvince());
		System.out.println("city:"+address.getCity());
		System.out.println("detail:"+address.getDetailedaddress());
		
		addressService.address_add(address);
		mav.setViewName("/address/payquery"); 
		}
		return mav;
	}
	
	@RequestMapping("/queryAddress")
	@ResponseBody 
	public Address queryAddress(int addressid)
	{
		System.out.println("qweqwe");
		System.out.println("adr-que----------"+addressid);
		Address address =  addressService.address_queryById(addressid);
		System.out.println("query---"+address.getName());
		return address;
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
