package com.service.copy;

import java.util.ArrayList;

import com.dao.AccountDao;
import com.dao.AccountDaoImple;
import com.dto.Account;

public class AccountServiceImple implements AccountService {

	private AccountDao accountDao;

	public AccountServiceImple() {
		accountDao = new AccountDaoImple();
	}

	@Override
	public int addAccount(Account account) {
		return accountDao.insertAccount(account);
	}

	@Override
	public int modifyAccount(Account account) {
		    return accountDao.updateAccount(account);
		}

	@Override
	public int removeAccount(int accoundId) {
		      return accountDao.deleteAccount(accoundId);
		}

	@Override
	public ArrayList<Account> AccountList(int userId) {
		   return accountDao.selectAll(userId);
		}

	@Override
	public Account findAccount(int accountId) {
		return accountDao.getAccount(accountId);
	}
	
}
