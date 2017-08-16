package com.jk.entity.user;

public class UserResponse extends User{

	private Long loginFailDate;
	

	public Long getLoginFailDate() {
		return loginFailDate;
	}

	public void setLoginFailDate(Long loginFailDate) {
		this.loginFailDate = loginFailDate;
	}

	
	
}
