package com.neusoft.servce;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.dao.ProductMapper;
import com.neusoft.domain.Product;
import com.neusoft.domain.ProductExample;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	ProductMapper productMapper;
	public  Product queryByProductid(int num){
		ProductExample produc = new ProductExample();
		//Criteria cr = produc.createCriteria();
		//cr.andProductidEqualTo(num);
	//	cr.andProductidEqualTo(1);
		Product product = productMapper.selectByPrimaryKey(num); 
//		System.out.println(product.size());
		return product;
	}

}
