package com.service.copy;

import com.dto.User;

public interface UserService {
	int registerUser(User user1);
	boolean login(User user1);
}
