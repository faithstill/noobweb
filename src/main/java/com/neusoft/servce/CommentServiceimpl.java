package com.neusoft.servce;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.neusoft.domain.Comment;
import com.neusoft.domain.CommentExample;
import com.neusoft.domain.CommentExample.Criteria;
import com.neusoft.dao.CommentMapper;

@Service
public class CommentServiceimpl implements CommentService{

	
	@Autowired
	CommentMapper CommentMapper;
	
	@Override
	public List queryByProductid(int productid) {
		// TODO Auto-generated method stub
		CommentExample Comexm = new CommentExample();
		Criteria cr = Comexm.createCriteria();
		cr.andProductidEqualTo(productid);
		List<Comment> Comments = CommentMapper.selectByExample(Comexm);
		Comments.size();
		return Comments;
	}

	@Override
	public List queryByUserid(int userid) {
		// TODO Auto-generated method stub
		CommentExample Comexm = new CommentExample();
		Criteria cr = Comexm.createCriteria();
		cr.andUseridEqualTo(userid);
		List<Comment> Comments = CommentMapper.selectByExample(Comexm);
		return Comments;
	}

	@Override
	public boolean add_comment(Comment comment) {
		// TODO Auto-generated method stub
		int suc = CommentMapper.insertSelective(comment);
		System.out.println("Commentinsertsuc----"+suc);
		return suc>0;
	}

	@Override
	public boolean del_commentbyid(int id) {
		// TODO Auto-generated method stub
		int suc =CommentMapper.deleteByPrimaryKey(id);
		System.out.println("Commentdel-----"+suc);
		return suc>0;
	}

}
