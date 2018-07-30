package com.neusoft.servce;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.dao.OrderContentMapper;
import com.neusoft.domain.OrderContent;
import com.neusoft.domain.OrderContentExample;
import com.neusoft.domain.OrderContentExample.Criteria;

@Service
public class OrderContentServiceImpl implements OrderContentService{
	@Autowired
	OrderContentMapper orderContentMapper;
	
	public List queryByOrder(int orderid){
		OrderContentExample ordcexm = new OrderContentExample();
		Criteria cr = ordcexm.createCriteria();
		cr.andOrderidEqualTo(orderid);
		List<OrderContent> OrderContents = orderContentMapper.selectByExample(ordcexm);
		return OrderContents;
	}
	
	public boolean ordercontent_add(OrderContent orderContent)
	{
		int suc = orderContentMapper.insertSelective(orderContent);
		System.out.println("orderinsertsuc----"+suc);
		return suc>0;
	}
}
