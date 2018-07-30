package com.neusoft.controller;

import com.neusoft.domain.Address;
import com.neusoft.domain.Shoppingcar;
import com.neusoft.servce.ShopCarService;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
@RequestMapping({"/user"})
public class ShopCarController {

	  @Autowired
	  ShopCarService shopCarService;

	  @RequestMapping({"/enter"})
	  public void query(HttpServletRequest request, HttpServletResponse response)
	    throws ServletException, IOException
	  {
	    request.getRequestDispatcher("/home/introduction.jsp").forward(request, response);
	  }

	  @RequestMapping({"/add"})
	  public void addCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	  {
	    HttpSession session = request.getSession();
	    session.setAttribute("userid", 2);
	    request.setAttribute("productid", 1);
	    request.setAttribute("amount", 10);
	    shopCarService.addcart1(request, response);
	  }
	  @RequestMapping({"/show"})
	  public void showCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	    HttpSession session = request.getSession();
	    session.setAttribute("userid", 2);
	    shopCarService.showCart(request, response);
	  }
	  @RequestMapping({"/delete"})
	  public void deleteCart(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  shopCarService.deleteCart(request, response);
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
	}