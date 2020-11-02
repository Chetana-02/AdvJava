package com.dao;

import com.dto.User;

public interface Userdao {
	int insertUser(User user);
	boolean login(User user);
}
