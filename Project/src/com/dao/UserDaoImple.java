package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.conn.MyConn;
import com.dto.User;
import com.mysql.cj.protocol.Resultset;

public class UserDaoImple implements Userdao {
	
	private MyConn myConn;
	
	public UserDaoImple() {
		  myConn  = new MyConn();
		}

	@Override
	public int insertUser(User user) {
		int i = 0;
		try {
		Connection con = myConn.getConn();
		PreparedStatement s = con.prepareStatement("insert into user3(Fname,Mname,Lname,Aadhar_No,Pan_No,Mob_No,Adrs,user_Name,user_Pass) values(?,?,?,?,?,?,?,?,?)");
		s.setString(1, user.getFname());
		s.setString(2, user.getMname());
		s.setString(3, user.getLname());
		s.setString(4, user.getAnum());
		s.setInt(5, user.getPnum());
		s.setString(6, user.getMonum());
		s.setString(7, user.getAddress());
		s.setString(8, user.getUname());
		s.setString(9, user.getPass());

		i = s.executeUpdate();
		s.close();
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	@Override
	public boolean login(User user) {
         boolean flag = false;		
         try {
		Connection con = myConn.getConn();
		PreparedStatement s = con.prepareStatement(
				"select * from user3 where user_Name=? and user_Pass=?");
		s.setString(1, user.getUname());
		s.setString(2, user.getPass());
		ResultSet rs = s.executeQuery();
		if(rs.next()) {
			flag = true;
		}
		s.close();
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}	
		return flag;
	}
}

	

