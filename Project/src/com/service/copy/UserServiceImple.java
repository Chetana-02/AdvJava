package com.service.copy;

import com.dao.UserDaoImple;
import com.dao.Userdao;
import com.dto.User;

public class UserServiceImple implements UserService {
	
	private Userdao userDao;
	
	
	public UserServiceImple() {
		userDao= new UserDaoImple();
	}

	@Override
	public int registerUser(User user) {		
		return userDao.insertUser(user);
	}

	@Override
	public boolean login(User user) {
		return userDao.login(user);
	}
	
}
