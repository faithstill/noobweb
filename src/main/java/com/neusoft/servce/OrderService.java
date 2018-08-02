package com.neusoft.servce;

import java.util.Date;
import java.util.List;


import com.neusoft.domain.Orders;

public interface OrderService {
	public List queryByUser(int userid);
	public Orders order_queryById(int orderid);
	
	public List query();
	public int order_add(Orders order);
	public boolean order_deleteById(int orderid);
	
	public boolean order_update(Orders order);
	
	public boolean order_pay(int orderid);
	public boolean order_delivery(int orderid);
	public boolean order_finish(int orderid);
	public boolean order_redelivery(int orderid);
	public boolean order_refund(int orderid);
	public boolean order_cancel(int orderid);
	
	public List queryByNameAndTime(String username,Date begintime,Date endtime);
}
