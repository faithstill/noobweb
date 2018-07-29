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
		
	@RequestMapping("/querybyproductid")
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
	public ModelAndView Comment_add(String comment_write,int product_id){
		int userid=1;
		//request.getSession(userid);
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String date = df.format(new Date());// new Date()为获取当前系统时间，也可使用当前时间戳
		String username="wz";
		//selectusernamebyid();
		//System.out.println(product_id);
		//System.out.println(date);
		Comment t_Comment = new Comment();
		t_Comment.setCommentdate(date);
		t_Comment.setContent(comment_write);
		t_Comment.setProductid(product_id);
		t_Comment.setUserid(userid);
		t_Comment.setUsername(username);
		commentService.add_comment(t_Comment);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/product/querybyid"); 
		return mav;
	}
	
	@RequestMapping("/deleteById")
	public ModelAndView comment_deleteById(int commentid)
	{
		commentService.del_commentbyid(commentid);
		ModelAndView mav = new ModelAndView();
		mav.setViewName("/product/querybyid"); 
		return mav;
	}
	
}

