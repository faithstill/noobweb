package com.neusoft.controller;

import com.neusoft.dao.ProductMapper;
import com.neusoft.dao.ShoppingcarMapper;
import com.neusoft.domain.Address;
import com.neusoft.domain.OrderContent;
import com.neusoft.domain.Product;
import com.neusoft.domain.Shoppingcar;
import com.neusoft.domain.ShoppingcarExample;
import com.neusoft.servce.ShopCarService;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
@Controller
@RequestMapping("/shopping")
public class ShopCarController {
	 
	  @Autowired
	  ShopCarService shopCarService;
	  @Autowired
	  ProductMapper productmapper;	 

	  
	  @RequestMapping("/where")
	  public ModelAndView where(String buyoradd,String productnum,String productid,HttpServletRequest request,
			  HttpSession session){
		  System.out.println("productlid-----"+productid);
		  System.out.println("productnum----"+productnum);
		  session.setAttribute("productid", productid);
		  session.setAttribute("productnum",productnum);
		  String id=(String) session.getAttribute("username");
		  System.out.println("id-----"+id);
		  	ModelAndView mav = new ModelAndView();
			if("buy".equals(buyoradd)){
				mav.setViewName("");
			}
			else if ("cart".equals(buyoradd)){
				mav.setViewName("/shopping/add");
			}
			else{
				mav.setViewName("/home");
			}
			return mav;
			 }
	  
	  @RequestMapping({"/enter"})
	  public void query(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException
	  {
	    request.getRequestDispatcher("/home/introduction.jsp").forward(request, response);
	  }

	  
	  @RequestMapping({"/add"})
	  public void addCart(HttpServletRequest request, HttpServletResponse response,HttpSession session) throws ServletException, IOException
	  {
	    int userid;
	    String productid;
	    String amount;
	    if(session.getAttribute("userid")!=null){
	    	userid=(Integer) session.getAttribute("userid");
	    	session.setAttribute("userid", userid);
	    	System.out.println("productlid--add---"+userid);
	    }
	    if(session.getAttribute("productid")!=null){
	    	 productid=(String) session.getAttribute("productid");
	    	  request.setAttribute("productid", productid);
	    }
	    if(session.getAttribute("productnum")!=null){
	    	 amount=(String) session.getAttribute("productnum");
	    	 request.setAttribute("amount", amount);
	 		System.out.println("productnum---add-"+amount);
	    }
	    shopCarService.addcart1(request, response,session);
	  }
	  
	  @RequestMapping({"/show"})
	  public void showCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    HttpSession session = request.getSession();
	    shopCarService.showCart(request, response);
	  }
	  @RequestMapping({"/delete"})//一条一条删
	  public void deleteCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  ModelAndView mav = new ModelAndView();
		  shopCarService.deleteCart(request, response);
		 
	  }
	  @RequestMapping({"/showmyfoot"})//一条一条删
	  public void showmyfoot(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		  shopCarService.showmyfoot(request, response);
		 
	  }
	  
	  @RequestMapping("/deletesome")
	  @ResponseBody 
	  //根据商品id删除
	 public Map  deleteSomeCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{	
		  Map result = new HashMap();
		  result.put("success", false);
		 shopCarService.deleteSomeCart(request, response);
		 
		 
		  result.put("success", true);

		 return result;
	}
	  
	  @RequestMapping("/collection")
	  @ResponseBody 
	  //根据商品id删除
	 public Map  collectSomeCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{	
		  Map result = new HashMap();
		  result.put("success", false);
		 shopCarService.collectSomeCart(request, response);
		 
		 
		  result.put("success", true);

		 return result;
	}
	  @RequestMapping("/showcollection")
	 public void  showcollect(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{	
		 shopCarService.showcollect(request, response);
		 
	}
	  @RequestMapping("/min")
		 public void  updateamount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
		{	
		  // String a =request.getParameter("orderid");
		   shopCarService.minamount(request, response);
		  	 
		}
	  @RequestMapping("/plus")
		 public void  plusamount(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
		{	
		  // String a =request.getParameter("orderid");
		   shopCarService.plusamount(request, response);
		  	 
		}
	  
	  
	  
	  //查询到该用户的购物车信息
	  @RequestMapping("/query")
		public ModelAndView query(){
			int userid = 5;
			List<Shoppingcar>cartList = shopCarService.queryByUser(userid);
			ModelAndView mav = new ModelAndView();		
			mav.addObject("carList",cartList);
			mav.setViewName("/home/pay.jsp");
			return mav;
		}
	  
	  
	  
	  
	  
	  @RequestMapping("/jiesuan")
		  @ResponseBody 
	  public void pay(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
		{	  
		  /* 
		   * 结算接口，被结算产品的产品id和总价，可以利用此实现订单生成.
		   */
		  if(request.getParameterValues("checkID[]")!=null)
		  {
			  if(request.getParameterValues("count[]")!=null)
			  {
				  System.out.println("得到了");
			  }
			  else 
			  {
				  System.out.println("没得到");
			  }
			  			  
			/* List<Shoppingcar>cartList = shopCarService.init(request, response);//先调用init获取购物车信息
			 String checkID[]  = request.getParameterValues("checkID[]");//获取勾选的商品行
			 String totalprice = request.getParameter("totalprice"); //总价
			 for(int i =0 ;i <checkID.length;i++)
			  {			
				 int Productid = cartList.get(Integer.parseInt( checkID[i])).getProductid();//获取待删除的产品id
			      List cartproductList = new ArrayList();
			      if (cartList != null)
			        {
			      for (Shoppingcar list : cartList)
		          {
		            Product p = productmapper.selectByPrimaryKey(Productid);//获取到产品信息
		            cartproductList.add(p);		            
		          }
			        }
			  }			
			    shopCarService.deleteSomeCart(request, response);//点击结算时同时删除购物车内容，该操作一定要在订单提交后操作！！！！
*/		  }
		  else
			  System.out.println("fffff");
		 
		}

}



