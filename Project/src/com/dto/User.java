package com.dto;

public class User {
     private int userId;
     private String fname;
     private String mname;
     private String lname;
     private int anum;
     private int pnum;
     private String address;
     private String monum;
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

	public int getAnum() {
		return anum;
	}

	public void setAnum(int anum) {
		this.anum = anum;
	}

	public int getPnum() {
		return pnum;
	}

	public void setPnum(int pnum) {
		this.pnum = pnum;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMonum() {
		return monum;
	}

	public void setMonum(String monum) {
		this.monum = monum;
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
		return "User [userId=" + userId + ", fname=" + fname + ", mname=" + mname + ", lname=" + lname + ", anum="
				+ anum + ", pnum=" + pnum + ", address=" + address + ", monum=" + monum + ", uname=" + uname + ", pass="
				+ pass + "]";
	}
		
}
