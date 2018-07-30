package com.neusoft.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.domain.OrderContent;
import com.neusoft.servce.OrderContentService;


@Controller
@RequestMapping("/ordercontent") 
public class OrderContentController {
	@Autowired
	OrderContentService ordercontentService;
	
	@RequestMapping("/queryByOrder")
	public ModelAndView queryByOrder(int orderid) {
		ModelAndView mav = new ModelAndView();
		List<OrderContent> ordercontentlist = ordercontentService.queryByOrder(orderid);
		mav.addObject("ordercontentcontentlist_ByUser",ordercontentlist);
		mav.setViewName("/test.jsp");

		return mav;
	}
	

	
	@RequestMapping("/add")
	public ModelAndView orderContent_add(OrderContent orderContent){
//		System.out.println("id:"+ordercontentcontent.getUserid());
//		System.out.println("name:"+ordercontentcontent.getName());
//		System.out.println("phone:"+ordercontentcontent.getPhone());
//		System.out.println("province:"+ordercontentcontent.getProvince());
//		System.out.println("city:"+ordercontentcontent.getCity());
//		System.out.println("detail:"+ordercontentcontent.getDetailedordercontentcontent());
		
		ordercontentService.ordercontent_add(orderContent);
		ModelAndView mav = new ModelAndView();
		
		return mav;
		
	}

	
	
	
}
