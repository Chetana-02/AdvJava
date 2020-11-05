package com.service.copy;

import java.util.ArrayList;

import com.dto.Account;

public interface AccountService {
	
	int addAccount(Account account);
	int removeAccount(int acc_id);
	int modifyAccount(Account account);
	ArrayList<Account> AccountList(int userId);
	Account findAccount(int accountId);
     
}
