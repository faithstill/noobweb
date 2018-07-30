package com.neusoft.servce;

import java.util.List;


import com.neusoft.domain.Orders;

public interface OrderService {
	public List queryByUser(int userid);
	public Orders order_queryById(int orderid);
	
	public List query();
	public boolean order_add(Orders order);
	public boolean order_deleteById(int orderid);
	
	public boolean order_update(Orders order);
	
	public boolean order_pay(int orderid);
	public boolean order_delivery(int orderid);
	public boolean order_finish(int orderid);
}
