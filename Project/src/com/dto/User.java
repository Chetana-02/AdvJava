package com.dto;

public class User {
     private int userId;
     private String fname;
     private String mname;
     private String lname;
     private String uname;
     private String pass;
    
     
	public User() {
		
	}


	public int getUserId() {
		return userId;
	}


	public void setUserId(int userId) {
		this.userId = userId;
	}


	public String getFname() {
		return fname;
	}


	public void setFname(String fname) {
		this.fname = fname;
	}


	public String getMname() {
		return mname;
	}


	public void setMname(String mname) {
		this.mname = mname;
	}


	public String getLname() {
		return lname;
	}


	public void setLname(String lname) {
		this.lname = lname;
	}


	public String getUname() {
		return uname;
	}


	public void setUname(String uname) {
		this.uname = uname;
	}


	public String getPass() {
		return pass;
	}


	public void setPass(String pass) {
		this.pass = pass;
	}


	@Override
	public String toString() {
		return "User [userId=" + userId + ", fname=" + fname + ", mname=" + mname + ", lname=" + lname + ", uname="
				+ uname + ", pass=" + pass + "]";
	}
	
	

}