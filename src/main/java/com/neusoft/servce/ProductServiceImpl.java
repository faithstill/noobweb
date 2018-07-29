package com.neusoft.servce;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.dao.ProductMapper;
import com.neusoft.domain.Product;
import com.neusoft.domain.Product;
import com.neusoft.domain.ProductExample;
import com.neusoft.domain.ProductExample.Criteria;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	ProductMapper productMapper;
	
	
	public List queryall()
	{
		ProductExample proexm = new ProductExample();
		Criteria cr = proexm.createCriteria();
		cr.andProductidIsNotNull();
		List<Product>  products =  productMapper.selectByExample(proexm);
		return  products;
	}
	
	public List queryByType(String producttype)
	{
		ProductExample proexm = new ProductExample();
		Criteria cr = proexm.createCriteria();
		cr.andTypeEqualTo(producttype);
		List<Product>  products =  productMapper.selectByExample(proexm);
		return  products;
	}
	
	public List queryByName(String productname)
	{
		ProductExample proexm = new ProductExample();
		Criteria cr = proexm.createCriteria();
		//cr.andProductnameEqualTo(productname)
		cr.andProductnameLike(productname);
		cr.andProductnameLike("%"+productname+"%");
//		cr.andProductnameLike("productname%");
		List<Product>  products =  productMapper.selectByExample(proexm);
		return  products;
	}
	
	public  Product queryByProductid(int productid){
		ProductExample produc = new ProductExample();
		
		
		Product product = productMapper.selectByPrimaryKey(productid); 
//		System.out.println(product.size());
		return product;
	}
	
	public boolean product_add(Product product)
	{
		int suc = productMapper.insertSelective(product);
		System.out.println("productinsertsuc----"+suc);
		return suc>0;
	}
	
	public boolean product_deleteById(int productid)
	{
		int suc = productMapper.deleteByPrimaryKey(productid);
		System.out.println("product_deleteByIdsuc----"+suc);
		return suc>0;
	}
	
	public Product product_queryById(int productid)
	{
		Product product = productMapper.selectByPrimaryKey(productid);
		return product;
	}
	
	public boolean product_update(Product product)
	{
		int suc = productMapper.updateByPrimaryKey(product);
		System.out.println(suc);
		return suc>0;
	}
}
