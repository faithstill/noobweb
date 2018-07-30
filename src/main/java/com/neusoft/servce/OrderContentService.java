package com.neusoft.servce;

import java.util.List;

import com.neusoft.domain.OrderContent;

public interface OrderContentService {
	public List queryByOrder(int orderid);
	public boolean ordercontent_add(OrderContent orderContent);
}
