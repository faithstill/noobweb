package com.neusoft.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.domain.Orders;
import com.neusoft.servce.OrderService;


@Controller
@RequestMapping("/order") 
public class OrderController {
	@Autowired
	OrderService orderService;
	
	@RequestMapping("/queryByUser")
	public ModelAndView queryByUser(int userid) {
		ModelAndView mav = new ModelAndView();
		List<Orders> orderlist = orderService.queryByUser(userid);
		mav.addObject("orderlist_ByUser",orderlist);
		mav.setViewName("/test.jsp");

		return mav;
	}
	
	@RequestMapping("/query")
	public ModelAndView query() {
		ModelAndView mav = new ModelAndView();
		List<Orders> orderlist = orderService.query();
		mav.addObject("orderlist",orderlist);
		mav.setViewName("/test.jsp");

		return mav;
	}
	
	@RequestMapping("/queryByorderid")
	public ModelAndView queryByorderid(int orderid) {
		Orders order = orderService.order_queryById(orderid);
			ModelAndView mav = new ModelAndView();
			mav.addObject("order",order);
			//mav.setViewName("/home/introduction.jsp");
			//mav.setViewName("/comment/querybyorderid");
			return mav;
	}
	
	@RequestMapping("/add")
	public ModelAndView order_add(Orders order){
//		System.out.println("id:"+order.getUserid());
//		System.out.println("name:"+order.getName());
//		System.out.println("phone:"+order.getPhone());
//		System.out.println("province:"+order.getProvince());
//		System.out.println("city:"+order.getCity());
//		System.out.println("detail:"+order.getDetailedorder());
		
		orderService.order_add(order);
		ModelAndView mav = new ModelAndView();
		//mav.setViewName("/order/query"); 
		return mav;
		
	}
		
	@RequestMapping("/deleteById")
	public ModelAndView order_deleteById(int orderid)
	{
		orderService.order_deleteById(orderid);
		ModelAndView mav = new ModelAndView();
		//mav.setViewName("/order/query"); 
		return mav;
		
	}
	
	@RequestMapping("/update_queryById")
	public  ModelAndView update_queryById(int orderid)
	{
		//System.out.println("up-que");
		ModelAndView mav = new ModelAndView();
		Orders order =  orderService. order_queryById(orderid);
		mav.addObject("update_order",order);
		//mav.setViewName("/home/orderupdate.jsp"); 
		return mav;
	}
	
	@RequestMapping("/update")
	public ModelAndView order_update(Orders order)
	{
		orderService.order_update(order);
		ModelAndView mav = new ModelAndView();
		//mav.setViewName("/order/query");
		return mav;
	}
	
	@RequestMapping("/pay")
	public ModelAndView order_pay(int orderid)
	{
		ModelAndView mav = new ModelAndView();
		boolean suc= orderService.order_pay(orderid);
		//mav.setViewName("/order/query");
		return mav;
	}
	
}
