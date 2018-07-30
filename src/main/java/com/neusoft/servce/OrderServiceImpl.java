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
	
	
	
	public boolean order_add(Orders order)
	{
		int suc = orderMapper.insertSelective(order);
		System.out.println("orderinsertsuc----"+suc);
		return suc>0;
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
		int suc = orderMapper.updateByPrimaryKey(order);
		return suc > 0;
	}
}