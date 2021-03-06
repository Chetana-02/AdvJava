package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.conn.MyConn;
import com.dto.Expense;
import com.mysql.cj.protocol.Resultset;
import com.service.copy.ExpenseService;

public class ExpenseDaoImple implements ExpenseDao {
	
	private MyConn myConn;

	public ExpenseDaoImple() {
		myConn = new MyConn();
	}

	@Override
	public int insertExpense(Expense expense) {
		int i=0;
		try {
			Connection con = myConn.getConn();
			PreparedStatement s = con.prepareStatement(
					"insert into expense(item_name,pur_date,price,user_id) values(?,?,?,?)");
			s.setString(1, expense.getItemName());
			s.setString(2, expense.getPurchaseDate());
			s.setFloat(3,expense.getPrice());
			s.setInt(4, expense.getUserId());
			i=s.executeUpdate();
			s.close();
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	@Override
	public int updateExpense(Expense expense) {
		int i =0;
		try {
			Connection con = myConn.getConn();
			PreparedStatement s = con.prepareStatement(
					"update expense set item_name=?,pur_date=?,price=? where exp_id=?");
			s.setString(1, expense.getItemName());
			s.setString(2, expense.getPurchaseDate());
			s.setFloat(3,expense.getPrice());
			s.setInt(4, expense.getExpenseId());
			i=s.executeUpdate();
			s.close();
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	
	public int deleteExpense(int expenseId) {
		int i =0;
		try {
			Connection con = myConn.getConn();
			PreparedStatement s = con.prepareStatement(
					"delete from expense where exp_id=?");
			s.setInt(1, expenseId);			
			i=s.executeUpdate();
			s.close();
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return i;
	}

	@Override
	public ArrayList<Expense> selectAll(int userId) {
            ArrayList<Expense> al = new ArrayList<>();
            try {
			Connection con = myConn.getConn();
			PreparedStatement s = con.prepareStatement(
					"select * from expense where user_id=?");
			s.setInt(1, userId);
			ResultSet rs = s.executeQuery();
			while (rs.next()) {
				Expense exp = new Expense();
				exp.setExpenseId(rs.getInt("exp_id"));
				exp.setItemName(rs.getString("item_name"));
				exp.setPrice(rs.getFloat("price"));
				exp.setPurchaseDate(rs.getString("pur_date"));
				exp.setUserId(rs.getInt("user_id"));

				al.add(exp);
			}
			
			s.close();
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return al;
	}

	@Override
	public Expense getExpense(int expenseId) {
		    Expense exp = new Expense();
            try {
			Connection con = myConn.getConn();
			PreparedStatement s = con.prepareStatement(
					"select * from expense where exp_id=?");
			s.setInt(1, expenseId);
			ResultSet rs = s.executeQuery();
			if (rs.next()) {
				exp.setExpenseId(rs.getInt("exp_id"));
				exp.setItemName(rs.getString("item_name"));
				exp.setPrice(rs.getFloat("price"));
				exp.setPurchaseDate(rs.getString("pur_date"));
				exp.setUserId(rs.getInt("user_id"));

			}
			
			s.close();
		}catch(ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
		return exp;
	}

}
