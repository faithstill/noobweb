package com.neusoft.servce;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.neusoft.domain.Shoppingcar;
public interface ShopCarService {
	public abstract void addcart1(HttpServletRequest paramHttpServletRequest, HttpServletResponse paramHttpServletResponse)
		    throws ServletException, IOException;

		  public abstract void showCart(HttpServletRequest paramHttpServletRequest, HttpServletResponse paramHttpServletResponse)
		    throws ServletException, IOException;

		  public abstract void deleteCart(HttpServletRequest paramHttpServletRequest, HttpServletResponse paramHttpServletResponse)
		    throws ServletException, IOException;

		public abstract List<Shoppingcar> queryByUser(int userid);
		
}
