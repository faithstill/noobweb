package com.neusoft.domain;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.type.Alias;

/**
 * <p><b>Project:</b>  		《mybatis0725-01》</p>
 * <p><b>Title:</b>   		User</p>
 * <p><b>Description:</b> 	Description  </p>
 * <p><b>Company:</b>		www.neusoft.com.cn </p>
 * <p><b>Site:</b>			http://314649444.iteye.com/  </p>
 * 
 * @date 2018-7-25   上午9:06:34
 * @author 东软，张金山
 */
@Alias("myuser")
public class User {
	
	private String userid;
	private String username;
	private String password;
	private Double amount;
	
	
	private List userids = new ArrayList();
	
	
	public User() {
		super();
		// TODO Auto-generated constructor stub
	}
	public User(String userid, String username, String password, Double amount) {
		super();
		this.userid = userid;
		this.username = username;
		this.password = password;
		this.amount = amount;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Double getAmount() {
		return amount;
	}
	public void setAmount(Double amount) {
		this.amount = amount;
	}
	@Override
	public String toString() {
		return "User [userid=" + userid + ", username=" + username
				+ ", password=" + password + ", amount=" + amount + "]";
	}
	public List getUserids() {
		return userids;
	}
	public void setUserids(List userids) {
		this.userids = userids;
	}
	
	

}
