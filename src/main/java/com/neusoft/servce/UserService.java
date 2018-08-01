package com.neusoft.servce;

import java.util.List;



import com.neusoft.domain.User;

public interface UserService{
	public List<User> getUserList(User user);
	public void insertUser(User user);
	public void updateUser(User user);
	public void deleteUser(User user);
	public User loginValidate(User user);
	public User queryById(int userid);
	public User queryByNmae(String username);
}

