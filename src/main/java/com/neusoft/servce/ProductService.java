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

/**
 * <p><b>Project:</b>  		《ssm-0726》</p>
 * <p><b>Title:</b>   		UserService</p>
 * <p><b>Description:</b> 	Description  </p>
 * <p><b>Company:</b>		www.neusoft.com.cn </p>
 * <p><b>Site:</b>			http://314649444.iteye.com/  </p>
 * 
 * @date 2018-7-26   下午2:03:19
 * @author 东软，张金山
 */
/**
 * 用户操作的 业务的抽象
 * @author jshand
 *
 */
	
public interface ProductService {
	
	
	public List queryall();
	public List queryByType(String producttype);
	public List queryByName(String productname);
	public Product queryByProductid(int productid);
	public boolean product_deleteById(int productid);
	public boolean product_add(Product product);
	public boolean product_update(Product product);
	public Product product_queryById(int productid);
	public List queryBuTypeAndBrand(String producttype ,String productbrand);

}
