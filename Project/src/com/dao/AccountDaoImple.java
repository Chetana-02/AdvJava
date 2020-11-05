package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.conn.MyConn;
import com.dto.Account;

public class AccountDaoImple implements AccountDao {
	
	private MyConn myConn;
	
	
	public AccountDaoImple() {
		  myConn = new MyConn();
		}

	@Override
	public int insertAccount(Account account) {
		int i = 0;
		try {
		Connection con = myConn.getConn();
		PreparedStatement s = con.prepareStatement("insert into Account(ifsc_no,cif_no,acnt_no,amt,branch,email_id,mob_no,aadhar_no,pan_no,userId) values(?,?,?,?,?,?,?,?,?,?)");
		s.setString(1, account.getIfsc());
		s.setString(2, account.getCif());		
		s.setString(3, account.getAcc());
		s.setString(4, account.getAmt());
		s.setString(5, account.getBran());
		s.setString(6, account.getEmail());
		s.setString(7, account.getMno());
		s.setString(8, account.getAno());
		s.setString(9, account.getPno());
		s.setInt(10,account.getUserid());

		i = s.executeUpdate();
		s.close();
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return i;
	}
		

	@Override
	public int updateAccount(Account account) {
		int i = 0;
		try {
		Connection con = myConn.getConn();
		PreparedStatement s = con.prepareStatement("update Account set ifsc_no=?,cif_no=?,acnt_no=?,amt=?,branch=?,email_id=?,mob_no=?,aadhar_no=?,pan_no=?  where acnt_id=?");
		s.setString(1, account.getIfsc());
		s.setString(2, account.getCif());		
		s.setString(3, account.getAcc());
		s.setString(4, account.getAmt());
		s.setString(5, account.getBran());
		s.setString(6, account.getEmail());
		s.setString(7, account.getMno());
		s.setString(8, account.getAno());
		s.setString(9, account.getPno());
		s.setInt(10,account.getAcc_id());
		
		i = s.executeUpdate();
		s.close();
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	@Override
	public int deleteAccount(int accoundId) {
		int i = 0;
		try {
		Connection con = myConn.getConn();
		PreparedStatement s = con.prepareStatement("delete from Account where acnt_id=?");
		
		s.setInt(1, accoundId);
		
		i = s.executeUpdate();
		s.close();
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	@Override
	public ArrayList<Account> selectAll(int userid) {
		ArrayList<Account> al = new ArrayList<>();
		try {
		Connection con = myConn.getConn();
		PreparedStatement s = con.prepareStatement("select * from Account where userId = ?");
		s.setInt(1, userid);
		ResultSet rs = s.executeQuery();
		while(rs.next()) {
			Account ac = new Account();
			ac.setAcc_id(rs.getInt("acnt_id")); 
			ac.setIfsc(rs.getString("ifsc_no")); 
			ac.setCif(rs.getString("cif_no")); 
			ac.setAcc(rs.getString("acnt_no")); 
			ac.setAmt(rs.getString("amt")); 
			ac.setBran(rs.getString("branch")); 
			ac.setEmail(rs.getString("email_id")); 
			ac.setMno(rs.getString("mob_no")); 
			ac.setAno(rs.getString("aadhar_no")); 
			ac.setPno(rs.getString("pan_no")); 
			ac.setUserid(rs.getInt("userId")); 

			al.add(ac);
		}
		s.close();
		}catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return al;
		
	}

	@Override
	public Account getAccount(int accountId) {
		Account ac1 = new Account();
		try {
		Connection con = myConn.getConn();
		PreparedStatement s = con.prepareStatement("select * from Account where acnt_id = ?");
		s.setInt(1, accountId);
		ResultSet rs = s.executeQuery();
		if(rs.next()) {			
			ac1.setAcc_id(rs.getInt("acnt_id")); 
			ac1.setIfsc(rs.getString("ifsc_no")); 
			ac1.setCif(rs.getString("cif_no")); 
			ac1.setAcc(rs.getString("acnt_no")); 
			ac1.setAmt(rs.getString("amt")); 
			ac1.setBran(rs.getString("branch")); 
			ac1.setEmail(rs.getString("email_id")); 
			ac1.setMno(rs.getString("mob_no")); 
			ac1.setAno(rs.getString("aadhar_no")); 
			ac1.setPno(rs.getString("pan_no")); 
			ac1.setUserid(rs.getInt("userId")); 	
		}
		s.close();
		}catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return ac1;
	}
		}


