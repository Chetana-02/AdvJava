package com.dao;

import java.util.ArrayList;

import com.dto.Account;

public interface AccountDao {
	 
	int insertAccount(Account account);
	int updateAccount(Account account);
	int deleteAccount(int acc_id);
	ArrayList<Account> selectAll(int userid);
	Account getAccount(int accountId);
	
}
