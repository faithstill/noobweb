package com.neusoft.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.domain.OrderContent;
import com.neusoft.domain.Orders;
import com.neusoft.servce.OrderContentService;
import com.neusoft.servce.OrderService;


@Controller
@RequestMapping("/order") 
public class OrderController {
	@Autowired
	OrderService orderService;
	@Autowired
	OrderContentService orderContentService;
	
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
		//List<Map> order_ordercontent = new ArrayList(); 
		for(Orders order:orderlist)
		{
			//int size = orderContentService.queryNumByOrder(order.getOrderid());
			List<OrderContent> ordercontent = orderContentService.queryByOrder(order.getOrderid());
			int o_productid = ordercontent.get(0).getProductid();
			
		}
		
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
	public ModelAndView order_add(int userid,int addressid){
		//System.out.println("id:"+addressid);
//		System.out.println("name:"+order.getName());
//		System.out.println("phone:"+order.getPhone());
//		System.out.println("province:"+order.getProvince());
//		System.out.println("city:"+order.getCity());
//		System.out.println("detail:"+order.getDetailedorder());
		Orders order = new Orders();
		
		order.setUserid(userid);
		order.setAddressid(addressid);
		int orderid = orderService.order_add(order);
		ModelAndView mav = new ModelAndView();
		System.out.println(orderid);
		mav.addObject("orderid",orderid);
		mav.setViewName("/orderContent/add"); 
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
	
	@RequestMapping("/delivery")
	public ModelAndView order_delivery(int orderid)
	{
		ModelAndView mav = new ModelAndView();
		boolean suc= orderService.order_delivery(orderid);
		//mav.setViewName("/delivery");
		return mav;
	}
	
	@RequestMapping("/finish")
	public ModelAndView order_finish(int orderid)
	{
		ModelAndView mav = new ModelAndView();
		boolean suc= orderService.order_finish(orderid);
		//mav.setViewName("/order/query");
		return mav;
	}
	
	@RequestMapping("/redelivery")
	public ModelAndView order_redelivery(int orderid)
	{
		ModelAndView mav = new ModelAndView();
		boolean suc= orderService.order_redelivery(orderid);
		//mav.setViewName("/order/query");
		return mav;
	}
	
	@RequestMapping("/refund")
	public ModelAndView order_refund(int orderid)
	{
		ModelAndView mav = new ModelAndView();
		boolean suc= orderService.order_refund(orderid);
		//mav.setViewName("/order/query");
		return mav;
	}
}
