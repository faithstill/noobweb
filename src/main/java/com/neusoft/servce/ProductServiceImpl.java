package com.neusoft.servce;

import java.util.Collections;
import java.util.Comparator;
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
		System.out.println(producttype);
		ProductExample proexm = new ProductExample();
		Criteria cr = proexm.createCriteria();
		cr.andTypeEqualTo(producttype);
		List<Product>  products =  productMapper.selectByExample(proexm);
		System.out.println(products.size());
		return  products;
	}
	
	public List queryBuTypeAndBrand(String producttype ,String productbrand){
		
		ProductExample proexm = new ProductExample();
		Criteria cr = proexm.createCriteria();
		cr.andTypeEqualTo(producttype);
		cr.andBrandEqualTo(productbrand);
		List<Product>  products =  productMapper.selectByExample(proexm);
		return  products;
	}
	
	public List queryByName(String productname)
	{
		ProductExample proexm = new ProductExample();
		Criteria cr = proexm.createCriteria();
		//cr.andProductnameEqualTo(productname)
		//cr.andProductnameLike(productname);
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

	@Override
	public List queryByBrand(String productbrand) {
		//System.out.println(producttype);
		ProductExample proexm = new ProductExample();
		Criteria cr = proexm.createCriteria();
		cr.andBrandEqualTo(productbrand);
		List<Product>  products = productMapper.selectByExample(proexm);
		System.out.println(products.size());
		return  products;
	}

	@Override
	public List orderprice(List<Product> products) {
		if (products.size()==0){
			return products;
		}
		else{	
			   Collections.sort(products, new Comparator<Product>(){	   
			@Override
			public int compare(Product p1, Product p2) {
				if(p1.getPrice() > p2.getPrice()){
			        return 1;
			      }
			   if(p1.getPrice() == p2.getPrice()){
			      return 0;
			     }
			    return -1;
			  }
			   });  
		 System.out.println("排序后的结果："+products); 
			}
			return products;
		}

	@Override
	public List ordersales(List<Product> products) {
		if (products.size()==0){
			return products;
		}
		else{	
			   Collections.sort(products, new Comparator<Product>(){	   
			@Override
			public int compare(Product p1, Product p2) {
				if(p1.getSales() > p2.getSales()){
			        return 1;
			      }
			   if(p1.getSales() == p2.getSales()){
			      return 0;
			     }
			    return -1;
			  }
			   });  
		 System.out.println("排序后的结果："+products); 
			}
			return products;
		}

	@Override
	public List orderlikenum(List<Product> products) {
		if (products.size()==0){
			return products;
		}
		else{	
			   Collections.sort(products, new Comparator<Product>(){	   
			@Override
			public int compare(Product p1, Product p2) {
				if(p1.getLikenum() > p2.getLikenum()){
			        return 1;
			      }
			   if(p1.getLikenum() == p2.getLikenum()){
			      return 0;
			     }
			    return -1;
			  }
			   });  
		 System.out.println("排序后的结果："+products); 
			}
			return products;
		}
	}
