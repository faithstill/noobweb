package com.neusoft.servce;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.dao.ProductMapper;
import com.neusoft.domain.Product;
import com.neusoft.domain.ProductExample;
import com.neusoft.domain.ProductExample.Criteria;

@Service
public class SearchServiceimpl implements SearchService { 
	@Autowired
	ProductMapper productMapper;

	@Override
	public void searchbyname(String key) {
		// TODO Auto-generated method stub
		ProductExample produc = new ProductExample();
		Criteria cr = produc.createCriteria();
		cr.andProductnameLike("%key");
		cr.andProductnameLike("%key%");
		cr.andProductnameLike("key%");
		List<Product> product = productMapper.selectByExample(produc);
		
		
	}
}
