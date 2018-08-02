package com.neusoft.servce;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.neusoft.domain.Shoppingcar;
public interface ShopCarService {
	public abstract void addcart1(HttpServletRequest paramHttpServletRequest, HttpServletResponse paramHttpServletResponse,HttpSession session)
		    throws ServletException, IOException;

		  public abstract void showCart(HttpServletRequest paramHttpServletRequest, HttpServletResponse paramHttpServletResponse)
		    throws ServletException, IOException;

		  public abstract void deleteCart(HttpServletRequest paramHttpServletRequest, HttpServletResponse paramHttpServletResponse)
		    throws ServletException, IOException;

		public abstract List<Shoppingcar> queryByUser(int userid);

		public abstract void deleteSomeCart(HttpServletRequest request,
				HttpServletResponse response) throws ServletException, IOException;

		public abstract List init(HttpServletRequest request,
				HttpServletResponse response);

		public abstract void collectSomeCart(HttpServletRequest request,
				HttpServletResponse response);

		public abstract void showcollect(HttpServletRequest request,
				HttpServletResponse response) throws ServletException, IOException;

		public abstract void minamount(HttpServletRequest request,
				HttpServletResponse response) throws ServletException, IOException;

		public abstract void plusamount(HttpServletRequest request,
				HttpServletResponse response) throws ServletException, IOException;

		public abstract void showmyfoot(HttpServletRequest request,
				HttpServletResponse response) throws ServletException, IOException;
		
		
		
}
