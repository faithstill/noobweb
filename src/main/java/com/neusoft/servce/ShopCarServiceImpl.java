package com.neusoft.servce;

import com.neusoft.dao.ProductMapper;
import com.neusoft.dao.ShoppingcarMapper;
import com.neusoft.dao.UserMapper;
import com.neusoft.domain.Product;
import com.neusoft.domain.ProductExample;
import com.neusoft.domain.Shoppingcar;
import com.neusoft.domain.ShoppingcarExample;
import com.neusoft.domain.ShoppingcarExample.Criteria;
import com.neusoft.domain.User;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShopCarServiceImpl implements ShopCarService {
	@Autowired
	ProductMapper productmapper;
	@Autowired
	UserMapper usermapper;

	@Autowired
	ShoppingcarMapper shopcarmapper;

	public List init(HttpServletRequest request, HttpServletResponse response) {
		try {
			if ((Integer) request.getSession().getAttribute("userid") == null) {
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out = response.getWriter();
				out.println("<script>alert('用户未登录或登录已过期，请重新登录，点确定后自动跳转到登录界面')</script>");
				out.println("<script>window.location.href='/noobweb/login.jsp';</script>");
				out.flush();
				out.close();
				System.out.println("未登录");
			} else {
				int userid = ((Integer) request.getSession().getAttribute(
						"userid")).intValue();
				User user = usermapper.selectByPrimaryKey(userid);
				request.getSession().setAttribute("cartListnew", null);
				if (user != null) {
					ShoppingcarExample example = new ShoppingcarExample();
					ShoppingcarExample.Criteria cr = example.createCriteria();
					cr.andUseridEqualTo(userid);
					List<Shoppingcar> cartList = shopcarmapper
							.selectByExample(example);
					return cartList;
				} else {
					response.setContentType("text/html;charset=utf-8");
					PrintWriter out = response.getWriter();
					out.println("<script>alert('用户不存在,请重新登录，点确定后将自动跳转到登录界面')</script>");
					out.println("<script>window.location.href='/noobweb/home/login.html';</script>");
					out.flush();
					out.close();
					System.out.println("未登录");
				}

			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}


	public void showCart(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			if (init(request, response) != null) {
				List<Shoppingcar> cartList = init(request, response);
				request.setAttribute("cartList", cartList);
				List cartproductList = new ArrayList();
				if (cartList != null) {
					for (Shoppingcar list : cartList) {
						Product p = productmapper.selectByPrimaryKey(list
								.getProductid());
						cartproductList.add(p);
						/*
						 * ProductExample example = new ProductExample();
						 * ProductExample.Criteria cr =
						 * example.createCriteria();
						 * cr.andProductidEqualTo(list.getProductid()); Product
						 * p = (Product) productmapper.selectByExample(example);
						 */

					}
					request.setAttribute("a", 0);
					request.setAttribute("cartproductList", cartproductList);
					request.getRequestDispatcher("/home/shopcart.jsp").forward(
							request, response);
				}
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public void deleteCart(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			int userid = (Integer) request.getSession().getAttribute("userid");
			String productid = request.getParameter("productid");
			System.out.println(productid);
			int productId = Integer.parseInt(productid);
			ShoppingcarExample example = new ShoppingcarExample();
			ShoppingcarExample.Criteria cr = example.createCriteria();
			cr.andProductidEqualTo(productId);
			cr.andUseridEqualTo(userid);
			shopcarmapper.deleteByExample(example);
			request.getRequestDispatcher("/shopping/show").forward(request,
					response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public List<Shoppingcar> queryByUser(int userid) {
		User user = usermapper.selectByPrimaryKey(userid);
		if (user != null) {
			ShoppingcarExample example = new ShoppingcarExample();
			ShoppingcarExample.Criteria cr = example.createCriteria();
			cr.andUseridEqualTo(userid);
			List<Shoppingcar> cartList = shopcarmapper.selectByExample(example);
			return cartList;
		} else {
			System.out.println("用户不存在");
		}
		return null;
	}

	@Override
	public void deleteSomeCart(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		try {
			if (request.getParameterValues("checkID[]") != null) {
				List<Shoppingcar> cartList = init(request, response);
				int userid = (Integer) request.getSession().getAttribute("userid");
				System.out.println(userid);
				String checkID[] = request.getParameterValues("checkID[]");
				for (int i = 0; i < checkID.length; i++) {
					int Productid = cartList.get(Integer.parseInt(checkID[i])).getProductid();// 获取待删除的产品id
					ShoppingcarExample example = new ShoppingcarExample();
					ShoppingcarExample.Criteria cr = example.createCriteria();
					cr.andProductidEqualTo(Productid);
					cr.andUseridEqualTo(userid);
					shopcarmapper.deleteByExample(example);
				}
				
			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}
	}

	@Override
	public void addcart1(HttpServletRequest paramHttpServletRequest,
			HttpServletResponse paramHttpServletResponse, HttpSession session)
			throws ServletException, IOException {
		try {
			System.out.println("userid-----"+session.getAttribute("userid"));
			System.out.println("product-----"+session.getAttribute("productid"));
			System.out.println("amount-----"+session.getAttribute("productnum"));
			if (session.getAttribute("userid")!=null && session.getAttribute("productid")!=null && 
				session.getAttribute("productnum")!=null){
				int userid;
				int productid;
				int amount;
				userid = (Integer) session.getAttribute("userid");
				productid =  Integer.parseInt((String) session.getAttribute("productid"));
				amount = Integer.parseInt((String) session.getAttribute("productnum"));
			List<Shoppingcar> cartList = init(paramHttpServletRequest, paramHttpServletResponse);
			int tag = 0;
			for (Shoppingcar list : cartList) {
				System.out.println(list);
				if (list.getProductid() == productid) {
					int quantity = list.getAmount();
					amount += quantity;
					list.setAmount(amount);
					ShoppingcarExample example = new ShoppingcarExample();
					ShoppingcarExample.Criteria cr = example.createCriteria();
					cr.andProductidEqualTo(productid);
					cr.andUseridEqualTo(userid);
					shopcarmapper.updateByExample(list, example);
					tag++;
				}
			}
			if (tag == 0) {
				Shoppingcar shopcar = new Shoppingcar();
				shopcar.setUserid(userid);
				shopcar.setProductid(productid);
				shopcar.setAmount(amount);
				shopcarmapper.insert(shopcar);
			}
			paramHttpServletRequest.getRequestDispatcher("/home/succ_addcart.jsp").forward(
					paramHttpServletRequest, paramHttpServletResponse);
		}
			else{
				paramHttpServletRequest.getRequestDispatcher("/home").forward(
						paramHttpServletRequest, paramHttpServletResponse);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		
	}
}
