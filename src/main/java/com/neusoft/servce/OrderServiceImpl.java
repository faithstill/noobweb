package com.neusoft.servce;

import java.util.Date;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.dao.OrdersMapper;
import com.neusoft.domain.Orders;
import com.neusoft.domain.OrdersExample;
import com.neusoft.domain.OrdersExample.Criteria;


@Service
public class OrderServiceImpl implements OrderService{
	@Autowired
	OrdersMapper orderMapper;
	
	public List queryByUser(int userid)
	{
		OrdersExample ordexm = new OrdersExample();
		Criteria cr = ordexm.createCriteria();
		cr.andUseridEqualTo(userid);
		List<Orders> orders =  orderMapper.selectByExample(ordexm);
		return  orders;
	}
	
	public List query()
	{
		OrdersExample ordexm = new OrdersExample();
		Criteria cr = ordexm.createCriteria();
		cr.andOrderidIsNotNull();
		List<Orders> orders =  orderMapper.selectByExample(ordexm);
		return  orders;
	}
	
	public Orders order_queryById(int orderid)
	{
		Orders order = orderMapper.selectByPrimaryKey(orderid);
		return order;
	}
	
	public List<Orders> queryByNameAndTime(String username,Date begintime,Date endtime)
	{
		List<Orders> orderlist = orderMapper.selectByUserandTime(username,begintime,endtime);
		return orderlist;
	}
	
	
	
	
	
	public int order_add(Orders order)
	{
		int suc = orderMapper.insertSelective(order);
		//System.out.println(order.getOrderid());
		//order.getOrderid();
		
		//System.out.println("orderinsertsuc----"+suc);
		return order.getOrderid();
	}
	
	public boolean order_deleteById(int orderid)
	{
		int suc = orderMapper.deleteByPrimaryKey(orderid);
		System.out.println("order_deleteByIdsuc----"+suc);
		return suc>0;
	}
	
	
	public boolean order_update(Orders order)
	{
		int suc = orderMapper.updateByPrimaryKey(order);
		System.out.println(suc);
		return suc>0;
	}
	
	public boolean order_pay(int orderid)
	{
		Orders order = orderMapper.selectByPrimaryKey(orderid);
			
		order.setPayTime(new Date());
		order.setTradeStatus("paid");
		int suc = orderMapper.updateByPrimaryKey(order);
		return suc > 0;
	}
	
	public boolean order_delivery(int orderid)
	{
		Orders order = orderMapper.selectByPrimaryKey(orderid);
		
		order.setDeliveryTime(new Date());
		order.setTradeStatus("delivered");
		int suc = orderMapper.updateByPrimaryKey(order);
		return suc > 0;
	}
	
	public boolean order_finish(int orderid)
	{
		Orders order = orderMapper.selectByPrimaryKey(orderid);
		
		order.setFinishTime(new Date());
		order.setTradeStatus("finished");
		int suc = orderMapper.updateByPrimaryKey(order);
		return suc > 0;
	}
	
	public boolean order_redelivery(int orderid)
	{
		Orders order = orderMapper.selectByPrimaryKey(orderid);
		
		order.setRedeliveryTime(new Date());
		order.setTradeStatus("redelivered");
		int suc = orderMapper.updateByPrimaryKey(order);
		return suc > 0;
	}
	public boolean order_refund(int orderid)
	{
		Orders order = orderMapper.selectByPrimaryKey(orderid);
		
		order.setRefundTime(new Date());
		order.setTradeStatus("refunded");
		int suc = orderMapper.updateByPrimaryKey(order);
		return suc > 0;
	}
	
	public boolean order_cancel(int orderid)
	{
		Orders order = orderMapper.selectByPrimaryKey(orderid);
		order.setCancelTime(new Date());
		order.setTradeStatus("canceled");
		int suc = orderMapper.updateByPrimaryKey(order);
		return suc > 0;
	}
}
