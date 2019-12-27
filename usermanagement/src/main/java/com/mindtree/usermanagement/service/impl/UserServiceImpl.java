package com.mindtree.usermanagement.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mindtree.usermanagement.model.User;
import com.mindtree.usermanagement.repository.UserRepo;
import com.mindtree.usermanagement.service.UserService;

@Service
public class UserServiceImpl implements UserService{
	
	@Autowired
	UserRepo userRepo;

	@Override
	public User addUser(User user) {
		
		User savedUser = userRepo.save(user);
		
		return savedUser;
	}

	@Override
	public String deleteUser(String name) {
		
		userRepo.deleteById(name);
		
		return name;
	}

	@Override
	public List<User> getAllUsers() {
		
		List<User> usersList = userRepo.findAll();
		
		return usersList;
	}

}
