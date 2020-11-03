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
	public int insertUser(User user1) {
		int i = 0;
		try {
		Connection con = myConn.getConn();
		PreparedStatement s = con.prepareStatement("insert into user1(user_name,user_pass) values(?,?)");
		s.setString(1, user1.getUserName());
		s.setString(2, user1.getUserPass());
		i = s.executeUpdate();
		s.close();
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	@Override
	public boolean login(User user1) {
         boolean flag = false;		
         try {
		Connection con = myConn.getConn();
		PreparedStatement s = con.prepareStatement(
				"select * from user1 where user_name=? and user_pass=?");
		s.setString(1, user1.getUserName());
		s.setString(2, user1.getUserPass());
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

	

