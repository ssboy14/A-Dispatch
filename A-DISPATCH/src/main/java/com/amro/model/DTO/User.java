package com.amro.model.DTO;

public class User {
	private int userId;
	private String userName;
	private String password;
	private int userCode;
	
	public User() {
		
	}
	
	
	public User(int userId, String userName, String password, int userCode) {
		super();
		this.userId = userId;
		this.userName = userName;
		this.password = password;
		this.userCode = userCode;
	}


	public int getUserId() {
		return userId;
	}


	public void setUserId(int userId) {
		this.userId = userId;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public int getUserCode() {
		return userCode;
	}


	public void setUserCode(int userCode) {
		this.userCode = userCode;
	}


	@Override
	public String toString() {
		return "User [userId=" + userId + ", userName=" + userName + ", password=" + password + ", userCode=" + userCode
				+ "]";
	}
	
	
	
	

}
