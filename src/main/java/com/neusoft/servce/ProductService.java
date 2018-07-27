package com.neusoft.servce;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

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

@Controller
public class ProductService {
	
	@RequestMapping("/index")
	public String show(){
		
		return "/home/introduction.html";
	}
	@RequestMapping("/index2")
	public void show2(HttpServletRequest rq,HttpServletResponse rp) throws IOException{
				rp.sendRedirect("/ssm/home/introduction.html");
	}
}