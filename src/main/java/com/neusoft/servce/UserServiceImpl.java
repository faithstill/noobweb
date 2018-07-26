package com.neusoft.servce;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neusoft.dao.TUserMapper;
import com.neusoft.domain.TUser;


/**
 * <p><b>Project:</b>  		《ssm-0726》</p>
 * <p><b>Title:</b>   		UserServiceImpl</p>
 * <p><b>Description:</b> 	Description  </p>
 * <p><b>Company:</b>		www.neusoft.com.cn </p>
 * <p><b>Site:</b>			http://314649444.iteye.com/  </p>
 * 
 * @date 2018-7-26   下午2:04:03
 * @author 东软，张金山
 */
@Service
public class UserServiceImpl implements UserService {

	@Autowired
	TUserMapper userMapper;
	
	@Override
	public List queryList() {
		Long count = userMapper.countByExample(null);
		System.out.println("UserServiceImpl.queryList() :count :"+count);
		return null;
	}
	
	
	
	/**
	 * 转账
	 * 
	 *  
	 * 
	 * 
	 */
	@Override
	public boolean accountChange() {
		
		TUser user1 = userMapper.selectByPrimaryKey("1");
		TUser user2 = userMapper.selectByPrimaryKey("2");
		
		System.out.println("在第一个账户中减钱");
		user1.setAmount(user1.getAmount()-100);
		userMapper.updateByPrimaryKeySelective(user1);

		
		//int sum = 100/0;
		
		System.out.println("在第二个账户中加钱");
		user2.setAmount(user2.getAmount()+100);
		userMapper.updateByPrimaryKeySelective(user2);
			
		
		return false;
	}
	
	

}
