package com.service.copy;

import com.dto.User;

public interface UserService {
	int registerUser(User user);
	boolean login(User user);
}
