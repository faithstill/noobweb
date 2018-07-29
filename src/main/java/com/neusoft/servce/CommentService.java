package com.neusoft.servce;

import java.util.List;

import com.neusoft.domain.Comment;

public interface CommentService {
	public List queryByProductid(int productid);
	public List queryByUserid(int userid);
	public boolean add_comment(Comment comment);
	public boolean del_commentbyid(int id);
	
}
