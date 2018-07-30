package com.neusoft.servce;

import java.util.List;


import com.neusoft.domain.Orders;

public interface OrderService {
	public List queryByUser(int userid);
	public List query();
	public boolean order_add(Orders order);
	public boolean order_deleteById(int orderid);
	public Orders order_queryById(int orderid);
	public boolean order_update(Orders order);
	
	public boolean order_pay(int orderid);
}
