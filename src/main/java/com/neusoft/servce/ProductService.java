package com.neusoft.servce;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.neusoft.dao.ProductMapper;
import com.neusoft.domain.Product;
import com.neusoft.domain.Product;
import com.neusoft.domain.ProductExample;
import com.neusoft.domain.ProductExample.Criteria;


	
public interface ProductService {
	
	
	public List queryall();
	public List queryByType(String producttype);
	public List queryByName(String productname);
	public List queryByBrand(String productbrand);
	public Product queryByProductid(int productid);
	public boolean product_deleteById(int productid);
	public boolean product_add(Product product);
	public boolean product_update(Product product);
	public Product product_queryById(int productid);
	public List queryBuTypeAndBrand(String producttype ,String productbrand);
	public List orderprice(List<Product> products);
	public List ordersales(List<Product> products);
	public List orderlikenum(List<Product> products);

}
