package com.jk.entity.user;

import java.io.Serializable;

import com.google.gson.annotations.Expose;

public class User  implements Serializable{
	
	private Integer userId;
	
	private String userAccount;
	
	@Expose
	private String userPwd;
	
	private int loginFailNum;
	
	
	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserAccount() {
		return userAccount;
	}

	public void setUserAccount(String userAccount) {
		this.userAccount = userAccount;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public int getLoginFailNum() {
		return loginFailNum;
	}

	public void setLoginFailNum(int loginFailNum) {
		this.loginFailNum = loginFailNum;
	}

	

	
	
}
