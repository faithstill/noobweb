package com.neusoft.servce;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.dao.UserMapper;
import com.neusoft.domain.UserExample.Criteria;
import com.neusoft.domain.User;
import com.neusoft.domain.UserExample;
@Service
public class UserServiceimpl implements UserService{
	@Autowired
	private UserMapper userMapper;
	@Override
	public List<User> getUserList(User user) {
		// TODO Auto-generated method stub
		return userMapper.getUserList(user);
	}

	@Override
	public void insertUser(User user) {
		// TODO Auto-generated method stub
		userMapper.insertUser(user);
	}

	@Override
	public void updateUser(User user) {
		// TODO Auto-generated method stub
		userMapper.updateUser(user);
	}

	@Override
	public void deleteUser(User user) {
		// TODO Auto-generated method stub
		//userMapper.deleteUser(user);
		userMapper.deleteByPrimaryKey(user.getUserid());
	}

	@Override
	public User loginValidate(User user) {
		// TODO Auto-generated method stub
		return userMapper.loginValidate(user);
	}
	
	public User queryById(int userid)
	{
		User user = userMapper.selectByPrimaryKey(userid);
		return user;
	}
	
	public User queryByNmae(String username)
	{
		UserExample userexm = new UserExample();
		Criteria cr = userexm.createCriteria();
		cr.andUsernameEqualTo(username);
		
		List<User> userlist = userMapper.selectByExample(userexm);
		if(userlist != null)
		{	
			User user = userlist.get(0);
			return user;
		}
		else 
		{
			return null;
		}
		
	}
}
