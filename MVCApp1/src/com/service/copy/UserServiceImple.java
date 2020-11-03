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
	public int registerUser(User user1) {
		
		return userDao.insertUser(user1);
	}

	@Override
	public boolean login(User user1) {
		return userDao.login(user1);
	}
	
}
