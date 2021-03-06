package com.neusoft.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.domain.Address;
import com.neusoft.domain.OrderContent;
import com.neusoft.domain.Orders;
import com.neusoft.domain.User;
import com.neusoft.servce.AddressService;
import com.neusoft.servce.OrderContentService;
import com.neusoft.servce.OrderService;
import com.neusoft.servce.ProductService;
import com.neusoft.servce.UserService;


@Controller
@RequestMapping("/trade") 
public class TradeController {
	
	@Autowired
	UserService userService;
	
	@Autowired
	ProductService productService;
	
	@Autowired
	OrderService orderService;
	
	@Autowired
	OrderContentService ordercontentService;
	
	@Autowired
	AddressService addressService;


	@RequestMapping("/pay")
	public ModelAndView pay(int orderid)
	{
		ModelAndView mav = new ModelAndView();
		Orders order = orderService.order_queryById(orderid);
		User user = userService.queryById(order.getUserid());
		if("unpaid".equals(order.getTradeStatus())){
		if(user.getMoney()<order.getAmount())
		{
			System.out.println("payfail-----moneynotenough");
			mav.addObject("orderid", orderid);
			mav.setViewName("/home/fail.jsp");
		}
		else{
			user.setMoney(user.getMoney()-order.getAmount());
			userService.updateUser(user);
			orderService.order_pay(orderid);
			
			int addressid=order.getAddressid();
			Address address=addressService.address_queryById(addressid);
			
			mav.addObject("address",address);
			mav.addObject("amount",order.getAmount());
			mav.setViewName("/home/success.jsp");
		}
		}
		else{
			mav.setViewName("/alreadypaid.jsp");
		}
		return mav;
	}
	
	@RequestMapping("/refund")
	public ModelAndView refund(int orderid)
	{
		ModelAndView mav = new ModelAndView();
		Orders order = orderService.order_queryById(orderid);
		User user = userService.queryById(order.getUserid());
		if("redelivered".equals(order.getTradeStatus())){
		
			user.setMoney(user.getMoney()+order.getAmount());
			userService.updateUser(user);
			orderService.order_refund(orderid);
			mav.addObject("orderid", orderid);
			mav.setViewName("/home/houtaisucc.jsp");
		
		}
		else{
			mav.setViewName("/success.jsp");
		}
		return mav;
	}
}
