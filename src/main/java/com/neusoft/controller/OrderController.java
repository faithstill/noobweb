package com.neusoft.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.domain.Address;
import com.neusoft.domain.OrderContent;
import com.neusoft.domain.Orders;
import com.neusoft.domain.Product;
import com.neusoft.domain.User;
import com.neusoft.domain.littleorder;
import com.neusoft.servce.AddressService;
import com.neusoft.servce.OrderContentService;
import com.neusoft.servce.OrderService;
import com.neusoft.servce.ProductService;
import com.neusoft.servce.UserService;


@Controller
@RequestMapping("/order") 
public class OrderController {
	@Autowired
	OrderService orderService;
	@Autowired
	OrderContentService orderContentService;
	@Autowired
	ProductService productService;
	@Autowired
	AddressService addressService;
	@Autowired
	UserService userService;
	
	@RequestMapping("/queryByUser")
	public ModelAndView queryByUser(int userid) {
		ModelAndView mav = new ModelAndView();
		List<Orders> orderlist = orderService.queryByUser(userid);
		mav.addObject("orderlist_ByUser",orderlist);
		mav.setViewName("/test.jsp");

		return mav;
	}
	
	
	
	@RequestMapping("/queryall")
	public ModelAndView query() {
		ModelAndView mav = new ModelAndView();
		List<Orders> orderlist = orderService.query();
		List order_firstproduct = new ArrayList(); 
		List addresslist = new ArrayList();
		List userlist = new ArrayList();
		List contentnumlist = new ArrayList();
		for(Orders order:orderlist)
		{
			//int size = orderContentService.queryNumByOrder(order.getOrderid());
			List<OrderContent> ordercontentlist = orderContentService.queryByOrder(order.getOrderid());
			int num = ordercontentlist.size();
			contentnumlist.add(num);
//			for(OrderContent ordercontent:ordercontentlist)
//			{
//				System.out.println(ordercontent.getOrderid());
//			}
			int o_productid;
			if(ordercontentlist.size()>0)
			{
				o_productid = ordercontentlist.get(0).getProductid();
				String productname = productService.queryByProductid(o_productid).getProductname();
				order_firstproduct.add(productname);
			}
			else
			{
				order_firstproduct.add("没选商品？？？啥玩意");
			}
			
			String username = userService.queryById(order.getUserid()).getUsername();
			userlist.add(username);		
			Address address = addressService.address_queryById(order.getAddressid());
			addresslist.add(address);
		}
	
			//System.out.println(contentnumlist);
		
		mav.addObject("userlist",userlist);
		mav.addObject("contentnumlist",contentnumlist);
		mav.addObject("addresslist",addresslist);
		mav.addObject("orderlist",orderlist);
		mav.addObject("order_firstproduct",order_firstproduct);
		mav.setViewName("/admin/orders.jsp");
		
		return mav;
	}
	
	@RequestMapping("/queryByUserid")
	public ModelAndView queryByUserid(int userid) {
		ModelAndView mav = new ModelAndView();
		List<Orders> orderlist = orderService.queryByUser(userid);
		List<Product> order_firstproduct = new ArrayList(); 
		List addresslist = new ArrayList();
		List contentnumlist = new ArrayList();
		for(Orders order:orderlist)
		{
			//int size = orderContentService.queryNumByOrder(order.getOrderid());
			List<OrderContent> ordercontentlist = orderContentService.queryByOrder(order.getOrderid());
			int num = ordercontentlist.size();
			contentnumlist.add(num);
//			for(OrderContent ordercontent:ordercontentlist)
//			{
//				System.out.println(ordercontent.getOrderid());
//			}
			int o_productid;
			if(ordercontentlist.size()>0)
			{
				o_productid = ordercontentlist.get(0).getProductid();
				Product productname = productService.queryByProductid(o_productid);
				order_firstproduct.add(productname);
			}
			
			Address address = addressService.address_queryById(order.getAddressid());
			addresslist.add(address);
		}
	
			//System.out.println(contentnumlist);
		mav.addObject("contentnumlist",contentnumlist);
		mav.addObject("addresslist",addresslist);
		mav.addObject("orderlist",orderlist);
		mav.addObject("order_firstproduct",order_firstproduct);
		mav.setViewName("/person/order.jsp");
		
		return mav;
	}
	
//    @InitBinder
//    public void initBinder(WebDataBinder binder, WebRequest request) {
//        //转换日期格式
//        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
////        注册自定义的编辑器
//        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
//        
//    }
	
	@RequestMapping("/queryByNameAndTime")
	public ModelAndView queryByNameAndTime(String username,@DateTimeFormat(pattern="yyyy-MM-dd") Date begintime, @DateTimeFormat(pattern="yyyy-MM-dd") Date endtime) {
		
		ModelAndView mav = new ModelAndView();
		//selectByUserandTime
		List<Orders> orderlist = new ArrayList<Orders>();
		orderlist = orderService.queryByNameAndTime(username,begintime,endtime);

		List order_firstproduct = new ArrayList(); 
		List addresslist = new ArrayList();
		List userlist = new ArrayList();
		for(Orders order:orderlist)
		{
			//int size = orderContentService.queryNumByOrder(order.getOrderid());
			List<OrderContent> ordercontentlist = orderContentService.queryByOrder(order.getOrderid());
//			for(OrderContent ordercontent:ordercontentlist)
//			{
//				System.out.println(ordercontent.getOrderid());
//			}
			int o_productid;
			if(ordercontentlist.size()>0)
			{
				o_productid = ordercontentlist.get(0).getProductid();
				String productname = productService.queryByProductid(o_productid).getProductname();
				order_firstproduct.add(productname);
			}
			else
			{
				order_firstproduct.add("没选商品？？？啥玩意");
			}
			
			String usernames = userService.queryById(order.getUserid()).getUsername();
			userlist.add(usernames);		
			Address address = addressService.address_queryById(order.getAddressid());
			addresslist.add(address);
		}
		mav.addObject("userlist",userlist);
		mav.addObject("addresslist",addresslist);
		mav.addObject("orderlist",orderlist);
		mav.addObject("order_firstproduct",order_firstproduct);
		mav.setViewName("/admin/orders.jsp");
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
	public ModelAndView order_add(HttpServletRequest request,HttpSession session,int addressid,double total_price){
		//System.out.println("aaaaaaaaaaaaaaadresss------------"+addressid);
		// addressid1 =Integer.parseInt(request.getParameter("addressid"));
		//int userid = Integer.parseInt((String) session.getAttribute("userid"));
		//int userid = Integer.parseInt(jtable.getValueAt(xx,xx).toString();
		//int userid = 1;
		Integer userid=(Integer) session.getAttribute("userid");

		List<littleorder> llist= new ArrayList();
		llist= (List<littleorder>)session.getAttribute("lorderlist");
		List<Integer> productlist=new ArrayList();
		List<Integer> productamountlist=new ArrayList();

		for(int i=0;i<llist.size();i++){
			productlist.add(llist.get(i).getProductid());
			System.out.print("id --- "+llist.get(i).getProductid());
			productamountlist.add(llist.get(i).getNumber());
			System.out.println("-------------amount --- "+llist.get(i).getNumber());
		}
		
		
		
		
		/*
		 *addressid=address1 
		 *userid,addressid,productidlist,productamountlist,total_price
		 */
		
		
		Orders order = new Orders();
		
		order.setUserid(userid);
		order.setAddressid(addressid);
		int orderid = orderService.order_add(order);
		ModelAndView mav = new ModelAndView();
		//System.out.println(orderid);
		for(int i=0;i<productlist.size();i++)
		{
			OrderContent orderContent = new OrderContent();
			orderContent.setOrderid(orderid);
			orderContent.setProductid(productlist.get(i));
			orderContent.setAmount(productamountlist.get(i));
			orderContentService.ordercontent_add(orderContent);
		}
		
		mav.addObject("orderid",orderid);
		mav.setViewName("/home/succ_nb.jsp");
		
		
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
		List<OrderContent> ordercontentlist = orderContentService.queryByOrder(order.getOrderid());
		List<String> productnamelist = new ArrayList<String>();
		for(OrderContent ordercontent :ordercontentlist){
			
		String productname = productService.queryByProductid(ordercontent.getProductid()).getProductname();
		productnamelist.add(productname);
		//System.out.println(productname);
		}
		String username = userService.queryById(order.getUserid()).getUsername();
		Address address = addressService.address_queryById(order.getAddressid());
		mav.addObject("productnamelist",productnamelist);
		mav.addObject("address",address);
		mav.addObject("username",username);
		mav.addObject("ordercontentlist",ordercontentlist);
		mav.addObject("update_order",order);
		mav.setViewName("/admin/orderupdate.jsp"); 
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
		mav.setViewName("/success.jsp");
		return mav;
	}
	
	@RequestMapping("/redelivery")
	public ModelAndView order_redelivery(int orderid)
	{
		ModelAndView mav = new ModelAndView();
		boolean suc= orderService.order_redelivery(orderid);
		//mav.setViewName("/order/query");
		mav.setViewName("/success.jsp");
		return mav;
	}
	
	@RequestMapping("/refund")
	public ModelAndView order_refund(int orderid)
	{
		ModelAndView mav = new ModelAndView();
		boolean suc= orderService.order_refund(orderid);
		Orders order = orderService.order_queryById(orderid);
		if(order.getTradeStatus().equals("unpaid"))
		{
			mav.setViewName("/success.jsp");
		}

		return mav;
	}
	
	@RequestMapping("/cancel")
	public ModelAndView order_cancel(int orderid)
	{
		ModelAndView mav = new ModelAndView();
		boolean suc= orderService.order_cancel(orderid);
		mav.setViewName("/success.jsp");
		return mav;
	}
}
