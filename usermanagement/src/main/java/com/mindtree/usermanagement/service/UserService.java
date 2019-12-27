package com.mindtree.usermanagement.service;

import java.util.List;

import com.mindtree.usermanagement.model.User;

public interface UserService {
	
	public User addUser(User user);
	
	public String deleteUser(String name);
	
	public List<User> getAllUsers();

}
