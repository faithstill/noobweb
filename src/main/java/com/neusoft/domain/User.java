package com.neusoft.domain;



public class User {
    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.userid
     *
     * @mbg.generated Fri Jul 27 14:27:21 CST 2018
     */
    private Integer userid;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.username
     *
     * @mbg.generated Fri Jul 27 14:27:21 CST 2018
     */
    private String username;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.password
     *
     * @mbg.generated Fri Jul 27 14:27:21 CST 2018
     */
    private String password;

    /**
     *
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column user.money
     *
     * @mbg.generated Fri Jul 27 14:27:21 CST 2018
     */
    private Double money;
    
    private int flag;
    
    private String status;
    private String role;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.userid
     *
     * @return the value of user.userid
     *
     * @mbg.generated Fri Jul 27 14:27:21 CST 2018
     */
    public Integer getUserid() {
        return userid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.userid
     *
     * @param userid the value for user.userid
     *
     * @mbg.generated Fri Jul 27 14:27:21 CST 2018
     */
    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.username
     *
     * @return the value of user.username
     *
     * @mbg.generated Fri Jul 27 14:27:21 CST 2018
     */
    public String getUsername() {
        return username;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.username
     *
     * @param username the value for user.username
     *
     * @mbg.generated Fri Jul 27 14:27:21 CST 2018
     */
    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.password
     *
     * @return the value of user.password
     *
     * @mbg.generated Fri Jul 27 14:27:21 CST 2018
     */
    public String getPassword() {
        return password;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.password
     *
     * @param password the value for user.password
     *
     * @mbg.generated Fri Jul 27 14:27:21 CST 2018
     */
    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column user.money
     *
     * @return the value of user.money
     *
     * @mbg.generated Fri Jul 27 14:27:21 CST 2018
     */
    public Double getMoney() {
        return money;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column user.money
     *
     * @param money the value for user.money
     *
     * @mbg.generated Fri Jul 27 14:27:21 CST 2018
     */
    public void setMoney(Double money) {
        this.money = money;
    }

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	private String code; 
    
    public String getCode() { 
        return code; 
    } 
     
    public void setCode(String code) { 
        this.code = code; 
    }     
  
}