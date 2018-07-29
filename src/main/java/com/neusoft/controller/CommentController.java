package com.neusoft.controller;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;




import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.neusoft.domain.Comment;
import com.neusoft.servce.CommentService;

@Controller
@RequestMapping("/comment") 
public class CommentController {

	@Autowired
	CommentService commentService;
		
	@RequestMapping("/query")
	public ModelAndView querybyid(){		
		int productid = 1;
		List<Comment> commentlist = commentService.queryByProductid(productid);
		ModelAndView mav = new ModelAndView();
		System.out.println(commentlist.size());
		mav.addObject("commentlist",commentlist);
		//mav.setViewName("/Product/query");
		mav.setViewName("/home/introduction.jsp");
		return mav;
	}
		
		
	@RequestMapping("/add")
	public String Comment_add(String comment_write,int product_id){
		int userid=1;
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String date = df.format(new Date());// new Date()为获取当前系统时间，也可使用当前时间戳
		System.out.println(product_id);
		System.out.println(date);
		//Address t_address = new Address(address.getUserid(),address.getName(),address.getPhone(),address.getProvince(),address.getCity(),address.getDetailedaddress());
//		System.out.println("data:"+ comment.getCommentdate());
//		System.out.println("content:"+comment.getContent());
//		System.out.println("commentid:"+comment.getCommentId());
//		System.out.println("productid:"+comment.getProductid());
//		System.out.println("userid:"+comment.getUserid());
		//CommentService.add_comment(comment);
		//addressService.address_add(address);
		System.out.println(comment_write);
		return "/Product/query";
	}
		

}

